`timescale 1ns / 1ps
`include "Header.v"

module control_unit(
    input wire rst,
    input wire [1:0]stallreq_id,

    output reg [3:0]stall 
    );


    always@(*) begin
        if(!rst)begin
                stall <=  4'b0000;
        end
        else begin
                if(stallreq_id==`STALL_EXE)
                        stall <= 4'b0111;
                else if(stallreq_id==`STALL_MEM)
                        stall <= 4'b1111;
                else
                        stall <=  4'b0000;
        end
    end



endmodule