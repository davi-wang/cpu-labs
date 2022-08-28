`include "Header.v"
`timescale 1ns / 1ps
module IF_ID (
    input clk,
    input rst,

    input [3:0]stall,
    input [`AddrBus] if_pc,
    input [`InscBus] insc_i,

    output reg [`AddrBus] id_pc,
    output reg [`InscBus] insc_o
);


    always @(posedge clk ) begin
        if(!rst) begin
            id_pc <= `ZeroWord;
            insc_o <= `ZeroWord;
        end 
        else if (stall[1] == 1'b1 && stall[2] == 1'b0) begin
            id_pc <= `ZeroWord;
            insc_o <= `ZeroWord;
        end 
        else if (stall[1] == 1'b0) begin
            id_pc <= if_pc;
            insc_o <= insc_i;
        end
    end
    
endmodule