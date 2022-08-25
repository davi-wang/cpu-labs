`timescale 1ns / 1ps
`include"Header.v"

module EX(input clk,
                input reset,
                input [31:0]in_data1,
                input [31:0]in_data2,
                input [3:0]alu_op_i,
                input [2:0]alu_op_sel_i,
                input [4:0] wd_i,          //write addr of reg
                input wreg_i,              //write enable
                output reg [4:0] wd_o,     //write addr of reg
                output reg wreg_o,         //write enalbe
                output reg[31:0] wdata_o); //result
    
    reg [32:0]mid_result;
    
    always@(*) begin
        if (!reset) begin
            mid_result[32] <= 0;
            end else begin
            case(alu_op_i)
                `ALU_ADD:begin
                    mid_result <= {in_data1[31], in_data1}+{in_data2[31],in_data2};
                end
                `ALU_ADDU: begin
                    mid_result <= {1'b0, in_data1}+{1'b0,in_data2};
                end
                `ALU_SUB: begin
                    mid_result <= {in_data1[31], in_data1}-{in_data2[31],in_data2};
                end
                `ALU_SUBU: begin
                    mid_result <= {1'b0, in_data1}-{1'b0,in_data2};
                end
                `ALU_AND: mid_result[31:0]     <= in_data1 & in_data2;
                `ALU_OR : mid_result[31:0]     <= in_data1 | in_data2;
                `ALU_XOR: mid_result[31:0]     <= in_data1 ^ in_data2;
                `ALU_NOR: mid_result[31:0]     <= ~(in_data1 | in_data2);
                `ALU_SLT: mid_result[31:0]     <= ($signed(in_data1) < $signed(in_data2))? 32'd1:0;
                `ALU_SLTU:mid_result[31:0]     <= (in_data1 < in_data2)? 32'd1:32'd0;
                `ALU_LEFT: mid_result[31:0]    <= in_data2 << in_data1[4:0];
                `ALU_RIGHTL: mid_result[31:0]  <= in_data2 >> in_data1[4:0];
                `ALU_RIGHTA: mid_result[31:0]  <= $signed(in_data2) >> in_data1[4:0];
                `ALU_DEFAULT: mid_result[31:0] <= 32'd0;
            endcase
        end
    end
    
    always @(*) begin
        wd_o    <= wd_i;
        wreg_o  <= wreg_i;
        wdata_o <= mid_result;
    end
    
endmodule
