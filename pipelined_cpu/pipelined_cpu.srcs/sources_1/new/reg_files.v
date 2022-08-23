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


module reg_files(
    input clk,
    input rst,

    input wire [4:0] reg1_addr,
    input wire [4:0] reg2_addr,
    input wire [31:0] W_data,
    input wire [4:0] W_reg_addr,
    input wire reg_we,
    output [31:0] reg1_data,
    output [31:0] reg2_data 
    );
    integer i;
    reg [31:0] registers [31:0];
    
    initial begin
        for(i=0;i<32;i=i+1) registers[i]<=32'b0;
    end
    
    always@(posedge clk)begin           
        if (reg_we) registers[W_reg_addr] <= W_data;
    end
    
    assign reg1_data = registers[reg1_addr];
    assign reg2_data = registers[reg2_addr];
    
endmodule
