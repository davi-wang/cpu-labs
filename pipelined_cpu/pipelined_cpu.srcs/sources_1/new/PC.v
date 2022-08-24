`timescale 1ns / 1ps


module PC(
    input clk,
    input rst,
    input [31:0]npc,
    input pip_pause,
    
    output reg [31:0]pc
    );
    
    always@(posedge clk or negedge rst) begin
        if(!rst)
            pc = 32'd0;
        else if( !pip_pause )
            pc = npc;  
    end
    
endmodule
