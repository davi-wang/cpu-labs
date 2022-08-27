`timescale 1ns / 1ps

module RAM(
    input wire clk,
    input wire en_wt_mem,
    input wire[31:0] addr,
    input wire[31:0] write_data,

    output wire[31:0] data_out
    );

Data_memory dm(
    .a(addr),
    .d(write_data),
    .clk(clk),
    .we(en_wt_mem),
    .spo(data_out)
);

endmodule
