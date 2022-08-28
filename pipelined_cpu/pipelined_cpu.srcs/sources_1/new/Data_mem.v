`timescale 1ns / 1ps
`include"Header.v"
module Data_mem(input wire clk,
                input wire en_wt_mem,
                input wire[31:0] addr,
                input wire[31:0] memw_data,
                output wire[31:0] memr_data);
    
    reg [7:0] memory [1023:0];
    wire [15:0] addr_ = addr;
    assign addr_ = addr[15:0];
    assign memr_data = {memory[addr_+3],memory[addr_+2],memory[addr_+1],memory[addr_]};
    
    always @(posedge clk ) begin
        if(en_wt_mem) begin
            memory[addr_+3] <= memw_data[31:24];
            memory[addr_+2] <= memw_data[23:16];
            memory[addr_+1] <= memw_data[15:8];
            memory[addr_+0] <= memw_data[7:0];
        end
    end



endmodule
