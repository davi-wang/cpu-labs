`timescale 1ns / 1ps


module Pipeline0(
    input wire clk,
    input wire rst,
    input wire[31:0] instruction,
    input wire pip_pause,
    input wire pip_flush,

    output wire[31:0] instruction_out
    );

reg[31:0] instruction_register;

assign instruction_out = {32{~pip_pause}} & instruction_register;

always @ (posedge clk) begin
    if (~rst || pip_flush) begin
        instruction_register <= 32'd0;
    end
    else if(pip_pause) begin
    
    end
    else begin
        instruction_register <= instruction;
    end
end

endmodule