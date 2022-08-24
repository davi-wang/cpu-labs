`timescale 1ns / 1ps

module Instruction_mem(
    input wire[31:0]  addr,

    output wire[31:0] ins_out
    );

reg[7:0] memory[127:0];
wire[31:0] head;


assign head = addr;
assign ins_out = {memory[head+3], memory[head+2], memory[head+1], memory[head]};

endmodule