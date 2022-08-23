`timescale 1ns / 1ps
`include "Header.v"

module Pipeline1(
    input wire clk,
    input wire rst,

    // data and instrcution
    input wire[31:0] reg1_data_in,
    input wire[31:0] reg2_data_in,
    input wire[31:0] instruction,

    // CU signals
    input wire en_wt_reg,
    input wire en_wt_mem,

    input wire alu_reg_imm,
    input wire[3:0] alu_ctrl,
    input wire[1:0] extend_alu,
    input wire[2:0] extend_load,
    input wire[1:0] data_src,
    input wire[1:0] wt_reg,


    // data and instrcution
    output reg[31:0] reg1_data_out,
    output reg[31:0] reg2_data_out,
    output reg[31:0] instruction_out,

    // CU signals
    output reg en_wt_reg_out,
    output reg en_wt_mem_out,

    output reg alu_reg_imm_out,
    output reg[3:0] alu_ctrl_out,
    output reg[1:0] extend_alu_out,
    output reg[2:0] extend_load_out,
    output reg[1:0] data_src_out,
    output reg[1:0] wt_reg_out
    );


always @ (posedge clk) begin
    if (rst || instruction == 32'd0) begin
        reg1_data_out <= 32'd0;
        reg2_data_out <= 32'd0;
        instruction_out <= 32'd0;

        en_wt_reg <= 0;
        en_wt_mem <= 0;
        alu_reg_imm <= 0;
        alu_ctrl <= 4'd0;
        extend_alu <= 2'd0; 
        extend_load <= 3'd0;
        data_src <= 2'd0;
        wt_reg <= 2'd0;
    end
    else begin
        reg1_data_out <= reg1_data_in;
        reg2_data_out <= reg2_data_in;
        instruction_out <= instruction;
        
        en_wt_reg_out <= en_wt_reg;
        en_wt_mem_out <= en_wt_mem;
        alu_reg_imm_out <= alu_reg_imm;
        alu_ctrl_out <= alu_ctrl;
        extend_alu_out <= extend_alu;
        extend_load_out <= extend_load;
        data_src_out <= data_src;
        wt_reg_out <= wt_reg;
    end
end

endmodule