`timescale 1ns / 1ps


module Pipeline0(
    input wire clk,
    input wire rst,
    input wire[31:0] instruction,
    input wire pause,

    output reg[31:0] pipeline0_out
    );


always @ (posedge clk) begin
    if (rst) begin
        pipeline0_out = 32'd0;
    end
    else if(~pause) begin
        pipeline0_out = instruction;
    end
    else begin

    end
end

endmodule