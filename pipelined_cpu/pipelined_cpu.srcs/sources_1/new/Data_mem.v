`timescale 1ns / 1ps
`include"Header.v"
module Data_mem(input wire clk,
                input wire en_wt_mem,
                input wire[31:0] addr,
                input wire[31:0] memw_data,
                output wire[31:0] memr_data);
    
    reg [7:0] memory [31:0];
    
    
    assign memr_data = {memory[addr],memory[addr+1],memory[addr+2],memory[addr+3]};
    
    always @(posedge clk ) begin
        if(en_wt_mem) begin
            {memory[addr],memory[addr+1],memory[addr+2],memory[addr+3]} <= memw_data;
        end
    end



endmodule
