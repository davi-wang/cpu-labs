`timescale 1ns / 1ps
`include"Header.v"


module ALU_Unit(
    input clk,
    input reset,
    
    input [31:0]in_data1,
    input [31:0]in_data2,
    input [4:0]shift,
    input [4:0]alu_op,
    
    // output reg overflow,
    // output reg zero_out, 
    output [31:0] result
    
    );
    
    reg [32:0]mid_result;
    
    always@(*) begin
        mid_result[32] = 0;
        // zero_out = 0;
        // overflow = 0;
        case(alu_op)
            `ALU_ADD:begin
                 mid_result = {in_data1[31], in_data1}+{in_data2[31],in_data2};
                 // assign overflow = (mid_result[32] != mid_result[31]) ? 1:0;
                 // assign zero_out = (mid_result == 33'd0) ? 1:0;
                 end
            `ALU_ADDU: begin
                 mid_result = {1'b0, in_data1}+{1'b0,in_data2};
                 // assign overflow = (mid_result[32] ==1) ? 1:0;
                 // assign zero_out = (mid_result == 33'd0) ? 1:0;
                 end
            `ALU_SUB: begin 
                mid_result = {in_data1[31], in_data1}-{in_data2[31],in_data2};
                // assign overflow = (mid_result[32] != mid_result[31]) ? 1:0;
                // assign zero_out = (mid_result == 33'd0) ? 1:0;
                end
            `ALU_SUBU: begin
                 mid_result = {1'b0, in_data1}-{1'b0,in_data2};
                 // assign overflow = (mid_result[32] ==1) ? 1:0;
                 // assign zero_out = (mid_result == 33'd0) ? 1:0;
                 end
            `ALU_AND: mid_result[31:0] = in_data1 & in_data2;
            `ALU_OR : mid_result[31:0] = in_data1 | in_data2;
            `ALU_XOR: mid_result[31:0] = in_data1 ^ in_data2;
            `ALU_NOR: mid_result[31:0] = ~(in_data1 | in_data2);
            `ALU_SLT: mid_result[31:0] = ($signed(in_data1) < $signed(in_data2)) ? 32'd1:0;
            `ALU_SLTU:mid_result[31:0] = (in_data1 < in_data2) ? 32'd1 : 32'd0;
            `ALU_LEFT: mid_result[31:0] = in_data2 << shift;
            `ALU_LEFTR: mid_result[31:0] = in_data2 << in_data1;
            `ALU_RIGHTL: mid_result[31:0] = in_data2 >> shift;
            `ALU_RIGHTLR: mid_result[31:0] = in_data2 >> in_data1;
            `ALU_RIGHTA: mid_result[31:0] = $signed(in_data2) >>> shift;
            `ALU_RIGHTAR: mid_result[31:0] = $signed(in_data2) >>> in_data1;
            `ALU_DEFAULT: mid_result[31:0] =  32'd0;     
        endcase
   
        
    end
    assign result = mid_result[31:0];
    
    
endmodule
