`timescale 1ns / 1ps
`include "Header.v"

module CU(input wire rst,
                    input wire stallreq_id,
                    output reg [3:0]stall);
    
    always@(*) begin
        if (!rst)begin
            stall <= 4'b0000;
            end else if (stallreq_id) begin
            stall <= 4'b0010;
            end else begin
            stall <= 4'b0000;
        end
    end
    
endmodule
