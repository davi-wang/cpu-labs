`timescale 1ns / 1ps

module Instruction_mem(
    input wire[31:0]  addr,

    output wire[31:0] ins_out
    );

// reg[7:0] memory[1024:0];
// wire[31:0] head;

ins_mem im(
    .a(addr[31:2]),
    .spo(ins_out)
);


// assign head = addr;
// assign ins_out = {memory[head+3], memory[head+2], memory[head+1], memory[head]};

endmodule