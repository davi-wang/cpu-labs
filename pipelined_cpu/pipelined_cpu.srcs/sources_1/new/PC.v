`include "Header.v"
`timescale 1ns / 1ps


module PC(input clk,
          input rst,
          input [31:0] target,
          input [3:0]stall,
          input flag,
          output reg [31:0]pc);
    
    always@(posedge clk or negedge rst) begin
        if (!rst) begin
            pc <= `ZeroWord;
        end else if(stall[0] != 1'b1) begin
            if (flag == 1) begin
                pc <= target;
                end else begin
                pc <= pc + 4;
            end
        end
    end
endmodule
