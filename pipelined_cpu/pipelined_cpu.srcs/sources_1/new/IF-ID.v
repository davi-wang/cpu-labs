`include "Header.v"
`timescale 1ns / 1ps
module IF_ID (
    input clk,
    input rst,

    input [3:0]stall,
    input [31:0] if_pc,
    input [31:0] insc_i,

    output reg [31:0] id_pc,
    output reg [31:0] insc_o
);


    always @(posedge clk ) begin
        if(!rst) begin
            id_pc <= `ZeroWord;
            insc_o <= `ZeroWord;
        end else if (stall[1] == 1'b1) begin
            id_pc <= `ZeroWord;
            insc_o <= `ZeroWord;
        end else if (stall[1] == 1'b0) begin
            id_pc <= if_pc;
            insc_o <= insc_i;
        end
    end
    
endmodule