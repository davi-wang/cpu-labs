`include "Header.v"
`timescale 1ns / 1ps
module MEM (
    input  rst,
    input [4:0] w_reg_addr_i,
    input wreg_i,
    input [31:0] wdata_i,
    input [4:0] alu_op_i,
    input [31:0] wmem_addr_i,
    input [31:0] wmem_data_i,
    input [31:0] dmem_data_i,

    output reg [31:0] wmem_addr_o,
    output reg wmem_o,
    output reg [31:0] wmem_data_o,
    output reg [3:0] wmem_sec,
    output reg[4:0] w_reg_addr_o,
    output reg wreg_o,
    output reg[31:0] wdata_o
);

    always @(*) begin
        if(!rst) begin
            w_reg_addr_o <= `NopRegAddr;
            wreg_o <= 1'b0;
            wdata_o <= `ZeroWord;
            wmem_addr_o <= `ZeroWord;
            wmem_o <= 1'b0;
            wmem_data_o <= `ZeroWord;
            wmem_sec <= 4'b0000;
        end else begin
            w_reg_addr_o <= w_reg_addr_i;
            wreg_o <= wreg_i;
            wdata_o <= wdata_i;
            wmem_addr_o <= `ZeroWord;
            wmem_o <= 1'b0;
            wmem_data_o <= `ZeroWord;
            wmem_sec <= 4'b0000;

            case(alu_op_i)
                `EX_LB:begin
                    
                end
                
                `EX_LH:begin
                    
                end

                `EX_LHU:begin
                    
                end

                `EX_LW:begin
                    
                end

                `EX_SB:begin
                    
                end

                `EX_SH:begin
                    
                end

                `EX_SW:begin
                    
                end
            endcase
        end
    end
    
endmodule