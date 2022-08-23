`timescale 1ns / 1ps
`include"Header.v"
module Extend_load(
    input [2:0] extend_load,
    input [31:0] In_imm,

    output wire [31:0] Out_imm
    );

assign Out_imm = (extend_load == `EXTEND_LOAD_8s)? {{24{In_imm[7]}}, In_imm[7:0]}:
                (extend_load == `EXTEND_LOAD_16s)? {{16{In_imm[15]}}, In_imm[15:0]}:
                (extend_load == `EXTEND_LOAD_8u)? {{24{0}}, In_imm[7:0]}:
                (extend_load == `EXTEND_LOAD_16u)? {{16{0}}, In_imm[15:0]}:
                In_imm;

endmodule
