`timescale 1ns / 1ps
`include "Header.v"

module Extend_Sign(
    input [1:0] extend_ctrl,
    input [15:0] In_imm,

    output wire [31:0] Out_imm
    );
    
assign Out_imm = (extend_ctrl == `EXTEND_ALU_UNSIGNED)? {{16{1'b0}}, In_imm}:
                (extend_ctrl == `EXTEND_ALU_HIGH)? {In_imm, {16{1'b0}}}:
                (extend_ctrl == `EXTEND_ALU_SIGNED)? {{(16){In_imm[15]}}, In_imm}:
                32'd0;
    
endmodule
