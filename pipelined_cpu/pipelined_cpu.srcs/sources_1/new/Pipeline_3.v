`timescale 1ns / 1ps
`include"Header.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/23 13:57:01
// Design Name: 
// Module Name: Pipeline_3
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


module Pipeline_3(
    input clk,
    input rst,
    input wire[31:0]   In_alu_result,
    input wire[31:0]   In_reg2_data,
    input wire[31:0]   In_jmp_dst,
    input wire[31:0]   In_extended_imm,
    input wire[4:0]    In_dest_reg,
    
    input wire         en_mem_write_in,
    input wire[2:0]    cu_reg_src_in,
    input wire         en_reg_write_in,
    
    output reg[31:0]   Out_alu_result,
    output reg[31:0]   Out_reg2_data,
    output reg[31:0]   Out_jmp_dst,
    output reg[31:0]   Out_extended_imm,
    output reg[4:0]    Out_dest_reg,
    
    output reg         en_mem_write_out,
    output reg[2:0]    cu_reg_src_out,
    output reg         en_reg_write_out
    
    );
    
    always@(posedge clk)begin
        if(!rst)begin 
            Out_alu_result     <= 32'd0;
            Out_reg2_data      <= 32'd0;
            Out_jmp_dst        <= 32'd0;
            Out_extended_imm   <= 32'd0;
            Out_dest_reg       <=32'd0;
            
            en_mem_write_out   <= 3'd0;
            cu_reg_src_out     <= 0;
            en_reg_write_out   <= 0;
            end
        else begin
            Out_alu_result     <= In_alu_result;
            Out_reg2_data      <= In_reg2_data;
            Out_jmp_dst        <= In_jmp_dst;
            Out_extended_imm   <= In_extended_imm;
            Out_dest_reg       <= In_dest_reg;
            
            en_mem_write_out   <= en_mem_write_in;
            cu_reg_src_out     <= cu_reg_src_in;
            en_reg_write_out   <= en_reg_write_in;
        end
        
    end
    
    endmodule
