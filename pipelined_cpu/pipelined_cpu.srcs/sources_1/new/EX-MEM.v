`include "Header.v"
`timescale 1ns / 1ps
module EX_MEM (
    
    input  clk,
    input  rst,
    input [3:0]stall,
    input [`RegAddrBus] w_reg_addr_i,
    input wreg_i,
    input [`RegBus] wdata_i,
    input [`AddrBus] wmem_addr_i,
    input [`AluBus] alu_op_ex_o,
    input [`RegBus] wmme_data_i,

    output reg[`RegAddrBus] w_reg_addr_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o,
    output reg [`AddrBus] wmem_addr_o,
    output reg [`AluBus] alu_op_mem,
    output reg [`RegBus] wmme_data_o
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