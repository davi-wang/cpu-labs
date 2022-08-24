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
                 input wire [4:0] reg1_addr,
                 input wire [4:0] reg2_addr,
                 input wire [31:0] W_data,
                 input wire [4:0] W_reg_addr,
                 input wire reg_we,
                 input re1,
                 input re2,
                 output reg [31:0] reg1_data,
                 output reg [31:0] reg2_data);
    integer i;
    reg [31:0] registers [31:0];
    
    initial begin
        for(i = 0;i<32;i = i+1) registers[i]<= 32'b0;
    end
    
    always@(posedge clk) begin
        if (reg_we && W_reg_addr != 32'h0) begin
            registers[W_reg_addr] <= W_data;
        end
    end
    
    always @(*) begin
        if(!rst) begin
            reg1_data <= 32'h0;
        end else if (reg1_addr == 32'h0) begin
            reg1_data <= 32'h0;
        end else if (reg1_addr)
    end
    
endmodule
