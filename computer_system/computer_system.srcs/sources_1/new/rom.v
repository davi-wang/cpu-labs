`timescale 1ns / 1ps

module ROM(
    input wire[9:0] addr,

    output wire[31:0] ins_out
    );

Instruction_memory im(
    .a(addr),
    .spo(ins_out)
);

endmodule
