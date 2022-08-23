`timescale 1ns / 1ps

module Data_mem(
    input wire clock,
    input wire w_m,
    input wire[31:0] addr,
    input wire[31:0] write,

    output wire[31:0] read
);


reg[7:0] memory[1023:0];
wire[31:0] head;

assign head = addr-32'h10010000;
assign read = {memory[head+3], memory[head+2], memory[head+1], memory[head]};

always @ (posedge clock) begin
    if (w_m) begin
        memory[head+3] <= write[31:24];
        memory[head+2] <= write[23:16];
        memory[head+1] <= write[15:8];
        memory[head] <= write[7:0];
    end
end
endmodule