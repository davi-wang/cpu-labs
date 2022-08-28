
// 双读一写 地址线5位 数据线32位
module regfile(
    input         clk,

    input  [ 4:0] raddr1,
    output [31:0] rdata1,
    input  [ 4:0] raddr2,
    output [31:0] rdata2,

    input         we,       // 写使能信号
    input  [ 4:0] waddr,
    input  [31:0] wdata
);
// 寄存器组 5位地址线可寻址32个寄存器 每个寄存器32位宽
reg [31:0] rf[31:0];

always @(posedge clk) begin
    if (we) rf[waddr]<= wdata;
end

// 地址0 永远输出全0
assign rdata1 = (raddr1==5'b0) ? 32'b0 : rf[raddr1];
assign rdata2 = (raddr2==5'b0) ? 32'b0 : rf[raddr2];

endmodule
