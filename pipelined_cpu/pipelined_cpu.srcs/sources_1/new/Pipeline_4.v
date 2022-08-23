`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/23 14:29:43
// Design Name: 
// Module Name: Pipeline_4
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


module Pipeline_4(
       input wire          clk,
       input wire          rst,
       input wire[31:0]    In_alu_result,
       input wire[31:0]    In_read_mem_data,
       input wire[31:0]    In_jmp_dst,
       input wire[31:0]    In_extended_imm,
       input wire[4:0]     In_destination_reg,

       input wire[2:0]     In_cu_reg_src,
       input wire          In_en_reg_write,
       input wire          In_en_lw_mem_wb,

       output reg[31:0]    Out_alu_result,
       output reg[31:0]    Out_read_mem_data,
       output reg[31:0]    Out_jmp_dst,
       output reg[31:0]    Out_extended_imm,
       output reg[4:0]     Out_destination_reg,

       output reg[2:0]     Out_cu_reg_src,
       output reg          Out_en_reg_write,
       output reg          Out_en_lw_mem_wb
    );
    
    always@(posedge clk)begin
        if(!rst) begin
        Out_alu_result      <= 32'd0;
        Out_read_mem_data   <= 32'd0;
        Out_jmp_dst        <= 32'd0;
        Out_extended_imm    <= 32'd0;
        Out_destination_reg <= 32'd0;
        Out_cu_reg_src      <= 3'd0;
        Out_en_reg_write    <= 0;
        Out_en_lw_mem_wb    <= 0;
    end
    else begin
        Out_alu_result      <= In_alu_result;
        Out_read_mem_data   <= In_read_mem_data;
        Out_jmp_dst        <= In_jmp_dst;
        Out_extended_imm    <= In_extended_imm;
        Out_destination_reg <= In_destination_reg;
        Out_cu_reg_src      <= In_cu_reg_src;
        Out_en_reg_write    <= In_en_reg_write;
        Out_en_lw_mem_wb    <= In_en_lw_mem_wb;
    end
    
    end
    
endmodule
