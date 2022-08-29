`include "Header.v"
`timescale 1ns / 1ps
module MEM_WB (
    input clk,
    input  rst,
    input [`RegAddrBus] w_reg_addr_mem,
    input wreg_mem,
    input [`RegBus] wdata_mem,

    output reg[`RegAddrBus] w_reg_addr_wb,
    output reg wreg_wb,
    output reg[`RegBus] wdata_wb
);

    always @(posedge clk) begin
        if(!rst) begin
            w_reg_addr_wb <= `NopRegAddr;
            wreg_wb <= 1'b0;
            wdata_wb <= `ZeroWord;
        end else begin
            w_reg_addr_wb <= w_reg_addr_mem;
            wreg_wb <= wreg_mem;
            wdata_wb <= wdata_mem;
        end
    end
    
endmodule