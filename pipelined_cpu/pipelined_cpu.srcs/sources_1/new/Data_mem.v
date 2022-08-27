`timescale 1ns / 1ps
`include"Header.v"
module Data_mem(
    input wire clk,
    input wire en_wt_mem,
    input wire[31:0] addr,
    input wire[31:0] memw_data,
    input wire[4:0] mem_sec,
    output wire[31:0] memr_data
    );


    always @(*) begin
        
    end

endmodule