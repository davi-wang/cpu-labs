`timescale 1ns / 1ps


module Computer(
    input I_clk,
    input I_rst_n,

    // vga ports
    output [3:0] O_r,
    output [3:0] O_g,
    output [3:0] O_b,
    output O_hsync,
    output O_vsync,

    //button ports
    input I_mid_btn,
    input I_left_btn,
    input I_right_btn,
    input I_up_btn,
    input I_down_btn
    );

    // CPU output
    wire [31:0] cpu_pc;
    wire [31:0] cpu_dmem_waddr;
    wire [31:0] cpu_dmem_wdata;

    // 数据RAM 或 显存 写使能
    wire cpu_we;
    wire dmem_we, gmem_we;
    assign dmem_we = cpu_dmem_waddr[17] ? 1'b0 : cpu_we;
    assign gmem_we = cpu_dmem_waddr[17] ? cpu_we : 1'b0;

    // 数据 RAM
    wire[31:0] ram_data;
    // 指令 ROM
    wire[31:0] rom_data;
    // 外设输入
    wire [31:0] confreg_data;
    // CPU 读数据线 由地址决定是读 数据RAM 或 外设
    wire [31:0] cpu_ram_data;
    assign is_confreg_addr = cpu_dmem_waddr[31:16] == 16'hbfaf ? 1'b1 : 1'b0;
    assign cpu_ram_data = is_confreg_addr ? confreg_data : ram_data;


    // cpu
    // CPU cpu0(
    //     .clk(I_clk),
    //     .rstn(I_rst_n),
    //     .inst_rom_addr(cpu_pc),
    //     .inst_rom_rdata(rom_data),
    //     .data_ram_wen(cpu_we),
    //     .data_ram_wdata(cpu_dmem_wdata),
    //     .data_ram_addr(cpu_dmem_waddr),
    //     .data_ram_rdata(ram_data)
    // );
    reg clk;
    always@(posedge I_clk or negedge I_rst_n)begin

        if(!I_rst_n) clk <= 0;
        else begin
            clk <= ~clk;
        end
    end
    CPU cpu0(
        .clk(clk),
        .rst(I_rst_n),
        .pc(cpu_pc),
        .insc(rom_data),
        .dmem_we(cpu_we),
        .dmem_wdata(cpu_dmem_wdata),
        .dmem_waddr(cpu_dmem_waddr),
        .dmem_rdata(cpu_ram_data)
    );

    // RAM for CPU
    RAM data_memory(
        .clk(clk),
        .en_wt_mem(dmem_we),
        .addr(cpu_dmem_waddr),
        .write_data(cpu_dmem_wdata),

        .data_out(ram_data)
    );

    ROM instruction_memory(
        .addr(cpu_pc[11:2]),
        .ins_out(rom_data)
    );

    vgahwd vga0(
        .clk(clk),
        .rstn(I_rst_n),
        .waddr(cpu_dmem_waddr),
        .wdata(cpu_dmem_wdata),
        .we(gmem_we),
        . red(O_r),
        . green(O_g),
        . blue(O_b),
        . hsync(O_hsync),
        . vsync(O_vsync)
    );

    button_input button(
        .clk(clk),
        .nrst(I_rst_n),

<<<<<<< HEAD
        .confreg_addr(cpu_dmem_waddr),
        .confreg_read_data(confreg_data),

        .mid_btn_key(I_mid_btn),
        .left_btn_key(I_left_btn),
        .right_btn_key(I_right_btn),
        .up_btn_key(I_up_btn),
        .down_btn_key(I_down_btn)
    );
=======
    // Buttons button(
    //     .clk(I_clk),
    //     .rst(I_rst_n),


    //     .confreg_addr(),
    //     .confreg_read_data(),

    //     .mid_btn_key(mid_btn_key),
    //     .left_btn_key(left_btn_key),
    //     .right_btn_key(right_btn_key),
    //     .up_btn_key(up_btn_key),
    //     .down_btn_key(down_btn_key)
    // );
>>>>>>> exception-new

endmodule
