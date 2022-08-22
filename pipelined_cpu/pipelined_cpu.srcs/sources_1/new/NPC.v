`timescale 1ns / 1ps
`include "Header.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/22 20:30:41
// Design Name: 
// Module Name: NPC
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


module NPC(
    input [31:0]i_addr,
    input [1:0] j_ctrl,
    input [25:0] instr_part,
    input [31:0] reg_data,
    output  wire [31:0]pc
    
    );
    
    wire [25:0]instr_index = instr_part;
    wire [15:0]offset = instr_part[15:0];
    
    assign pc = (j_ctrl == `JUMP_J)? {i_addr[31:28], instr_index, 2'b00}:
                (j_ctrl == `JUMP_BEQ)? i_addr + (offset<<2):
                (j_ctrl == `JUMP_REG)? reg_data:
                i_addr+4;
    
endmodule
