`include "Header.v"
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2022/08/16 09:53:10
// Design Name:
// Module Name: registers
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module reg_files(input clk,
                 input rst,
                 input wire [`RegAddrBus] reg1_addr,
                 input wire [`RegAddrBus] reg2_addr,
                 input wire [`RegBus] W_data,
                 input wire [`RegAddrBus] W_reg_addr,
                 input wire reg_we,
                 input re1,
                 input re2,
                 output reg [`RegBus] reg1_data,
                 output reg [`RegBus] reg2_data);
    integer i;
    reg [`RegBus] registers [31:0];
    
    
    always@(posedge clk) begin
        if (reg_we && W_reg_addr != `NopRegAddr) begin
            registers[W_reg_addr] <= W_data;
        end
    end
    
    always @(*) begin
        if (!rst) begin
            reg1_data <= `ZeroWord;
            for(i = 0;i < 32; i=i+1)begin
                registers[i] <= `ZeroWord;
            end
            end else if (reg1_addr == `NopRegAddr) begin
            reg1_data <= `ZeroWord;
            end else if (reg1_addr == W_reg_addr && reg_we && re1) begin //forwarding
            reg1_data <= W_data;
            end else if (re1) begin
            reg1_data <= registers[reg1_addr];
            end else begin
            reg1_data <= `ZeroWord;
        end
    end
    
    always @(*) begin
        if (!rst) begin
            reg2_data <= `ZeroWord;
            end else if (reg2_addr == `ZeroWord) begin
            reg2_data <= `ZeroWord;
            end else if (reg2_addr == W_reg_addr && reg_we && re2) begin //forwarding
            reg2_data <= W_data;
            end else if (re2) begin
            reg2_data <= registers[reg2_addr];
            end else begin
            reg2_data <= `ZeroWord;
        end
    end
    
endmodule
