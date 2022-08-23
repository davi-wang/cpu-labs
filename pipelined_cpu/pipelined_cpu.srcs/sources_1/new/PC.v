`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/22 19:52:06
// Design Name: 
// Module Name: PC
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


module PC(
    input clk,
    input rst,
    input [31:0]npc,
    input stall,
    
    output reg [31:0]pc
    );
    
    always@(posedge clk or negedge rst) begin
        if(!rst)
            pc = 32'd0;
        else if( !stall )
            pc = npc;  
    end
    
endmodule
