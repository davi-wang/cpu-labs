
// 支持 加法 减法 逻辑右移 的算术逻辑单元
module alu(
    input clk,
    input [1:0] alu_ctrl,

    input [31:0] alu_num1,
    input [31:0] alu_num2,
    output [31:0] alu_result

);
// 控制信号 00 缺省值; 01 加法; 10 减法; 11 右移
wire op_add, op_sub, op_srl;
assign op_add = (alu_ctrl == 2'd1) ? 1'b1 : 1'b0;
assign op_sub = (alu_ctrl == 2'd2) ? 1'b1 : 1'b0;
assign op_srl = (alu_ctrl == 2'd3) ? 1'b1 : 1'b0;

// 加法器 负责加减法运算
wire [31:0] adder_a;
wire [31:0] adder_b;
wire        adder_cin;
wire [31:0] adder_result;
wire        adder_cout;

assign adder_a   = alu_num1;
assign adder_b   = (op_sub) ? ~alu_num2 : alu_num2;
assign adder_cin = (op_sub) ? 1'b1      : 1'b0;
assign {adder_cout, adder_result} = adder_a + adder_b + adder_cin;

// 移位器
wire [31:0] shift_result;
assign shift_result = alu_num1 >> alu_num2;

assign alu_result = 
    ({32{op_add}} & adder_result) |
    ({32{op_sub}} & adder_result) |
    ({32{op_srl}} & shift_result);

endmodule