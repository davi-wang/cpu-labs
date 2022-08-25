`include "Header.v"
`timescale 1ns / 1ps
module ID_EX (
    
    input clk,
    input rst,

    input [3:0] alu_op_id,
    input [31:0] reg1_id,
    input [31:0] reg2_id,
    input [3:0] stall,
    input wreg_id,
    input [4:0] w_reg_addr_id,
    
    output reg [3:0] alu_op_ex,
    output reg [31:0] reg1_ex,
    output reg [31:0] reg2_ex,
    output reg wreg_ex,
    output reg [4:0] w_reg_addr_ex
);
    
    always @(posedge clk ) begin
        if(!rst) begin
            alu_op_ex <= 4'h0;
            reg1_ex <= `ZeroWord;
            reg2_ex <= `ZeroWord;
            wreg_ex <= 1'b0;
            w_reg_addr_ex <= 5'b0;
        end else if(stall[2] == 1'b1)begin
            alu_op_ex <= 4'h0;
            reg1_ex <= `ZeroWord;
            reg2_ex <= `ZeroWord;
            wreg_ex <= 1'b0;
            w_reg_addr_ex <= 5'b0;
        end else begin
            alu_op_ex <= alu_op_id;
            reg1_ex <= reg1_id;
            reg2_ex <= reg2_id;
            wreg_ex <= wreg_id;
            w_reg_addr_ex <= w_reg_addr_id;
        end
    end
endmodule