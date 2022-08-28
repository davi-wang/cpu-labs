
// 控制单元 输入指令的操作码字段 输出控制信号
module controlunit(
    input [5:0] op_code,
    input [5:0] func,

    output [1:0] alu_op,
    output c_ra1,
    output c_ra2,
    output c_alu1,
    output c_alu2,
    output c_wa,
    output [1:0] c_wd,
    output c_num,
    output reg_we,
    output mem_wen

);

// 译码单元: 将操作码转化为各类指令
wire i_lui, i_addiu, i_add, i_lw, i_sw, i_beq, i_j, i_srl;
assign i_lui   = (op_code == 6'b001111) ? 1'b1 : 1'b0;
assign i_addiu = (op_code == 6'b001001) ? 1'b1 : 1'b0;
assign i_add   = (op_code == 6'b000000 & func == 6'b100000) ? 1'b1 : 1'b0;
assign i_lw    = (op_code == 6'b100011) ? 1'b1 : 1'b0;
assign i_sw    = (op_code == 6'b101011) ? 1'b1 : 1'b0;
assign i_beq   = (op_code == 6'b000100) ? 1'b1 : 1'b0;
assign i_j     = (op_code == 6'b000010) ? 1'b1 : 1'b0;
assign i_srl   = (op_code == 6'b000000 & func == 6'b000010) ? 1'b1 : 1'b0;

// 根据指令类型 输出控制信号
assign alu_op = 
    ({2{i_add | i_addiu | i_lw | i_sw}} & 2'b01) |
    ({2{i_srl}} & 2'b11) ;
    // 语句 J lui 不用到 alu 输出 00

assign c_ra1  = (i_sw | i_srl) ? 1'b1 : 1'b0 ;
assign c_ra2  = (i_lw | i_sw)  ? 1'b1 : 1'b0 ;
assign c_alu1 = (i_add | i_addiu | i_srl ) ? 1'b1 : 1'b0 ;
assign c_alu2 = (i_add | i_lw | i_sw) ?  1'b1 : 1'b0 ;
assign c_num  = (i_srl)   ?  1'b1 : 1'b0 ;
assign c_wa   = (i_add | i_srl)  ?  1'b1 : 1'b0 ;
assign c_wd = 
    ({2{i_lui}} & 2'b00) |
    ({2{i_lw }} & 2'b01) |
    ({2{i_add | i_addiu | i_srl}} & 2'b10) |
    ({2{i_sw | i_beq | i_j     }} & 2'b11) ;

// 写使能
assign reg_we = (i_sw | i_beq | i_j) ? 1'b0 : 1'b1 ;
// sw 写主存，不写寄存器
assign mem_wen = (i_sw) ? 1'b1 : 1'b0 ;


endmodule
