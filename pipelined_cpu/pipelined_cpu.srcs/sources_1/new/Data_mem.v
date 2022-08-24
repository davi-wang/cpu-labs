`timescale 1ns / 1ps
`include"Header.v"
module Data_mem(
    input wire clk,
    input wire en_wt_mem,
    input wire[31:0] addr,
    input wire[31:0] write_data,
    input wire[2:0] extend,

    output wire[31:0] data_mem_out
    );


reg[7:0] memory[64:0];
wire[31:0] head;

assign head = addr;
assign data_mem_out = {memory[head+3], memory[head+2], memory[head+1], memory[head]};

always @ (posedge clk) begin
    if (en_wt_mem) begin
        if (extend == `EXTEND_LOAD_8s) begin
            memory[head] = write_data[7:0];
        end
        else if (extend == `EXTEND_LOAD_16s) begin
            memory[head+1] = write_data[15:8];
            memory[head] = write_data[7:0];
        end else begin
            memory[head+3] = write_data[31:24];
            memory[head+2] = write_data[23:16];
            memory[head+1] = write_data[15:8];
            memory[head] = write_data[7:0];
        end
    end
end
endmodule