`timescale 1ns / 1ps
`include "Header.v"

module CU(input wire rst,
          input wire [1:0] stallreq_id,
          input [31:0] exception_i,
          input [31:0] cp0_epc_i,
          output reg [`RegBus] new_pc,
          output reg flush,
          output reg [3:0]stall);
    
    always@(*) begin
        if (!rst)begin
            stall <= 4'b0000;
            flush <= 1'b0;
            new_pc <= `ZeroWord;
        end else if(exception_i != `ZeroWord) begin
            flush <= 1'b1;
            stall <= 4'b0000;
            case (exception_i)
                32'h00000001: begin
                    new_pc <= 32'h00000020;
                end 
                32'h00000008: begin
                    new_pc <= 32'h00000020;
                end
                32'h0000000a: begin
                    new_pc <= 32'h00000020;
                end
                32'h0000000d: begin
                    new_pc <= 32'h00000020;
                end
                32'h0000000e: begin
                    new_pc <= 32'h00000020;
                end
                32'h0000000c: begin
                    new_pc <= cp0_epc_i;
                end
                default: begin
                    
                end
            endcase
        end
        else if (stallreq_id == 2'b01) begin
            stall <= 4'b0010;
            flush <= 1'b0;
            end else if (stallreq_id == 2'b10)begin
            stall <= 4'b0111;
            flush <= 1'b0;
            end else if (stallreq_id == 2'b11) begin
            stall <= 4'b0111;
            flush <= 1'b0;
        end
        else begin
            stall <= 4'b0000;
        end
    end
    
endmodule
