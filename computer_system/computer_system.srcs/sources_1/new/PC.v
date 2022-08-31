`include "Header.v"
`timescale 1ns / 1ps


module PC(input clk,
          input rst,
          input [`AddrBus] target,
          input [3:0]stall,
          input flag,
          input [`AddrBus] new_pc,
          input flush,
          output reg [`AddrBus]pc);
    
    always@(posedge clk or negedge rst) begin
        if (!rst) begin
            pc <= `ZeroWord;
            end else if (flush == 1'b1) begin
            pc <= new_pc;
            end else if (stall[0] == 1'b0) begin
            if (flag == 1) begin
                pc <= {24'h000000, target[11:0]};   //TODO DELETE
                end else begin
                pc <= pc + 4;
            end
        end
    end
endmodule
