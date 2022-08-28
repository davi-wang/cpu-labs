`timescale 1ns / 1ps
`include "Header.v"

module CU(input wire rst,
          input wire [1:0] stallreq_id,
          output reg [3:0]stall);
    
    always@(*) begin
        if (!rst)begin
            stall <= 4'b0000;
            end else if (stallreq_id == 2'b01) begin
            stall <= 4'b0010;
            end else if (stallreq_id == 2'b10)begin
            stall <= 4'b0111;
            end else if (stallreq_id == 2'b11) begin
            stall <= 4'b0111;
        end
        else begin
            stall <= 4'b0000;
        end
    end
    
endmodule
