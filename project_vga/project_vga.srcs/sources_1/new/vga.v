`timescale 1ns / 1ps


// VGA 接口的硬件控制器 附带了外设端口
module vgahwd 
#(
    parameter WIDTH = 10'd640,
    parameter HEIGHT = 10'd480,
    // 根据屏幕分辨率查表填入
    parameter H_SYNC_END = 10'd96,      // sync(a)
    parameter H_DATA_BEGIN = 10'd144,   // = sync(a) + porch(b)
    parameter H_DATA_END = 10'd784,     // = begin + 水平分辨率
    parameter H_END = 10'd800,          // = scan time(e)
    // 与前四项同理
    parameter V_SYNC_END = 10'd2,       // = sync(f)
    parameter V_DATA_BEGIN = 10'd35,    // = sync(f) + porch(g)
    parameter V_DATA_END = 10'd515,     // = begin + 垂直分辨率
    parameter V_END = 10'd525           // = scan time(k)
)
(
    input clk,
    input rstn,

    input [31:0] waddr,
    input [31:0] wdata,
    input we,

    output [3:0] red,
    output [3:0] green,
    output [3:0] blue,
    output hsync,
    output vsync
);
    reg vga_clk;           // 模块内部时钟 控制发送rgb信号的频率
    reg [9:0] hcount;      // 行扫描计数
    reg [9:0] vcount;      // 列扫描计数

    reg [11:0] gmem[19199:0];
    // waddr 字节编址 截断低2位后得到每地址32位的存储单元 32位数据将转化为内部12位存储
    wire [14:0] gmem_waddr;
    assign gmem_waddr = waddr[16:2];

    always @(posedge clk) begin
        if (we) gmem[gmem_waddr] <= {wdata[23:20], wdata[15:12], wdata[7:4]};
    end



// --- driver ---

    // 将输入时钟分频至指定频率
    reg clk_counter;
    always @(posedge clk) begin
        // 100MHz > 25MHz 每两个上升沿翻转一次
        if (clk_counter == 1'b1) begin
            clk_counter <= 1'b0;
            vga_clk <= ~vga_clk;
        end
        else clk_counter <= 1'b1;
    end

    // 行列计数器 (扫描信号)
    always @(posedge vga_clk) begin
        if (hcount == H_END-1) hcount <= 10'd0;
        else hcount <= hcount + 10'd1;
    end
    always @(posedge vga_clk) begin
        if (hcount == H_END-1) begin
            if (vcount == V_END-1) vcount <= 10'd0;
            else vcount <= vcount + 10'd1;
        end
    end

    // 同步信号
    assign hsync = (hcount >= H_SYNC_END) ? 1'b1 : 1'b0 ;
    assign vsync = (vcount >= V_SYNC_END) ? 1'b1 : 1'b0 ;

    // 数据信号 
    // 组合逻辑生成地址 读取显存
    // reg [11:0] display_data;
    wire [4:0] multiplier = 5'd5;   // 160 = 32 * 5
    wire [9:0] pixel_x, pixel_y;
    wire [14:0] linear_addr; // 显存线性地址 0~19199 
    assign pixel_x = (hcount - H_DATA_BEGIN) >> 2;
    assign pixel_y = (vcount - V_DATA_BEGIN) >> 2;
    assign linear_addr = ((pixel_y * multiplier) << 5) + {5'b0, pixel_x};
    // always @(posedge vga_clk) begin
    //     display_data <= gmem[linear_addr];
    // end

    wire data_active;
    assign data_active = ((hcount >= H_DATA_BEGIN-1) && (hcount < H_DATA_END-1)) && 
                         ((vcount >= V_DATA_BEGIN-1) && (vcount < V_DATA_END-1));

    assign red   = data_active ? gmem[linear_addr][11:8] : 4'b0;
    assign green = data_active ? gmem[linear_addr][7:4]  : 4'b0;
    assign blue  = data_active ? gmem[linear_addr][3:0]  : 4'b0;

    // 像素条纹
    // assign red   = data_active ? {4{pixel_y[0]}} : 4'b0;
    // assign green = data_active ? {4{pixel_y[1]}}  : 4'b0;
    // assign blue  = data_active ? {4{pixel_y[2]}}  : 4'b0;


endmodule

// --- dmem port ---
    // wire [14:0] gmem_addr;
    // wire [15:0] gmem_wdata, gmem_rdata;
    // wire mem_we;
    // 数据宽度为 16bits
    // gmem0 gmem(
    //     .a(gmem_addr),
    //     .d(gmem_wdata),
    //     .spo(gmem_rdata),
    //     .clk(clk),
    //     .we(mem_we)
    // );
    // assign mem_we = vga_clk ? 1'b0 : 1'b1;
    // assign gmem_addr = vga_clk ? 
    //     linear_addr : 
    //     waddr[16:2];
    // assign gmem_wdata = vga_clk ? 
    //     16'b0 : 
    //     {wdata[23:20], wdata[15:12], wdata[7:4]};