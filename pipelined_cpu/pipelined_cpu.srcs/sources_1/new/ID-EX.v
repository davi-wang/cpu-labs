`include "Header.v"
`timescale 1ns / 1ps
module ID_EX (
    
    input clk,
    input rst,

    input [`AluBus] alu_op_id,
    input [`RegBus] reg1_id,
    input [`RegBus] reg2_id,
    input [3:0] stall,
    input wreg_id,
    input [`RegAddrBus] w_reg_addr_id,
    input [`AddrBus] link_addr_id,
    input [`InscBus] insc_id,

    output reg [`InscBus] insc_ex,
    output reg [`RegAddrBus] alu_op_ex,
    output reg [`RegBus] reg1_ex,
    output reg [`RegBus] reg2_ex,
    output reg wreg_ex,
    output reg [`RegAddrBus] w_reg_addr_ex,
    output reg [31:0] link_addr_ex
);
    
    always @(posedge clk ) begin
        if(!rst) begin
            alu_op_ex <= 4'h0;
            reg1_ex <= `ZeroWord;
            reg2_ex <= `ZeroWord;
            wreg_ex <= 1'b0;
            w_reg_addr_ex <= 5'b0;
            link_addr_ex <= `ZeroWord;
            insc_ex <= `ZeroWord;
        end else if(stall[2] == 1'b1 && stall[3] == 1'b0)begin
            alu_op_ex <= 4'h0;
            reg1_ex <= `ZeroWord;
            reg2_ex <= `ZeroWord;
            wreg_ex <= 1'b0;
            w_reg_addr_ex <= 5'b0;
            link_addr_ex <= `ZeroWord;
            insc_ex <= `ZeroWord;
        end else if(stall[2] == 1'b0) begin
            alu_op_ex <= alu_op_id;
            reg1_ex <= reg1_id;
            reg2_ex <= reg2_id;
            wreg_ex <= wreg_id;
            w_reg_addr_ex <= w_reg_addr_id;
            link_addr_ex <= link_addr_id;
            insc_ex <= insc_id;
        end
    end
endmodule