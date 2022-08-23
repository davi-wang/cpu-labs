`timescale 1ns / 1ps
`include "Header.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/22 19:32:08
// Design Name: 
// Module Name: Extending_Sign
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Extend_Sign(
    input [1:0] extend_alu,
    input [15:0] In_imm,

    output wire [31:0] Out_imm
    );
    
assign Out_imm = (extend_ctrl == `EXTEND_ALU_UNSIGNED)? {{16{0}}, In_imm}:
                (extend_ctrl == `EXTEND_ALU_HIGH)? {In_imm, {16{0}}}:
                (extend_ctrl == `EXTEND_ALU_SIGNED)? {{(16){In_imm[15]}}, In_imm}:
                32'd0;
    
endmodule
