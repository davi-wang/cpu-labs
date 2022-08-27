`include "Header.v"
`timescale 1ns / 1ps
module EX_MEM (
    
    input  clk,
    input  rst,
    input [3:0]stall,
    input [4:0] w_reg_addr_i,
    input wreg_i,
    input [31:0] wdata_i,
    input [31:0] wmem_addr_i,
    input [4:0] alu_op_ex_o,
    input [31:0] wmme_data_i,

    output reg[4:0] w_reg_addr_o,
    output reg wreg_o,
    output reg[31:0] wdata_o,
    output reg [31:0] wmem_addr_o,
    output reg [4:0] alu_op_mem,
    output reg [31:0] wmme_data_o
);

    always @(posedge clk ) begin
        if(!rst) begin
            w_reg_addr_o <= `NopRegAddr;
            wreg_o <= 1'b0;
            wdata_o <= `ZeroWord;
            wmem_addr_o <= `ZeroWord;
            alu_op_mem <= 1'b00000;
            wmme_data_o <= `ZeroWord;
        end else begin
            w_reg_addr_o <= w_reg_addr_i;
            wreg_o <= wreg_i;
            wdata_o <= wdata_i;
            wmem_addr_o <= wmem_addr_i;
            alu_op_mem <= alu_op_ex_o;
            wmme_data_o <= wmme_data_i;
        end
    end
    
endmodule