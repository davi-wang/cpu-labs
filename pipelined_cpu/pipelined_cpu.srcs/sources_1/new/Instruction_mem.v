`timescale 1ns / 1ps

module Instruction_mem(
    input wire[31:0]  addr,

    output wire[31:0] ins_out
    );

reg[7:0] memory[127:0];
wire[31:0] head;
initial begin
    $readmemb("D:/assignment/Hardware_practice/MIPS-CPU/hardware-labs/test_code/test_load_inst_2.txt", memory);
end

assign head = addr;
assign ins_out = {memory[head+3], memory[head+2], memory[head+1], memory[head]};

endmodule