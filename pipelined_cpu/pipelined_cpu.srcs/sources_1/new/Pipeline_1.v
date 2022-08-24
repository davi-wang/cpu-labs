`timescale 1ns / 1ps
`include "Header.v"

module Pipeline1(
    input wire clk,
    input wire rst,

    // data and instrcution
    input wire[31:0] instruction,
    input wire[31:0] reg1,
    input wire[31:0] reg2,

    // CU signals
    input wire en_wt_reg,
    input wire en_wt_mem,

    input wire alu_reg_imm,
    input wire[3:0] alu_ctrl,
    input wire[1:0] extend_alu,
    input wire[2:0] extend_load,
    input wire[2:0] data_src,
    input wire[1:0] wt_reg,
    input wire[4:0] load_dst,
    input wire[4:0] rs_f,
    input wire[4:0] rt_f,


    // pipeline control signals
    input wire pip_flush,


    // data and instrcution
    output wire[31:0] reg1_out,
    output wire[31:0] reg2_out,
    output wire[31:0] instruction_out,

    // CU signals
    output wire en_wt_reg_out,
    output wire en_wt_mem_out,

    output wire alu_reg_imm_out,
    output wire[3:0] alu_ctrl_out,
    output wire[1:0] extend_alu_out,
    output wire[2:0] extend_load_out,
    output wire[2:0] data_src_out,
    output wire[1:0] wt_reg_out,

    output reg pip_pause,
    output wire[4:0] rs_f_out,
    output wire[4:0] rt_f_out
    );



reg[31:0] instruction_register;
reg[31:0] reg1_register;
reg[31:0] reg2_register;
reg en_wt_reg_register;
reg en_wt_mem_register;
reg alu_reg_imm_register;
reg[3:0] alu_ctrl_register;
reg[1:0] extend_alu_register;
reg[2:0] extend_load_register;
reg[2:0] data_src_register;
reg[1:0] wt_reg_register;
reg[4:0] load_dst_register;
reg[4:0] rs_f_register;
reg[4:0] rt_f_register;

assign instruction_out = {32{~pip_pause}} & instruction_register;
assign reg1_out = {32{~pip_pause}} & reg1_register;
assign reg2_out = {32{~pip_pause}} & reg2_register;

assign en_wt_reg_out = ~pip_pause & en_wt_reg_register;
assign en_wt_mem_out = ~pip_pause & en_wt_mem_register;
assign alu_reg_imm_out = ~pip_pause & alu_reg_imm_register;
assign alu_ctrl_out = {4{~pip_pause}} & alu_ctrl_register;
assign extend_alu_out = {2{~pip_pause}} & extend_alu_register;
assign extend_load_out = {3{~pip_pause}} & extend_load_register;
assign data_src_out = {3{~pip_pause}} & data_src_register;
assign wt_reg_out = {2{~pip_pause}} & wt_reg_register;
assign rs_f_out = {5{~pip_pause}} & rs_f_register;
assign rt_f_out = {5{~pip_pause}} & rt_f_register;


always @ (posedge clk) begin
    if (~rst || pip_flush) begin
        instruction_register <= 32'd0;
        reg1_register <= 32'd0;
        reg2_register <= 32'd0;

        en_wt_reg_register <= 0;
        en_wt_mem_register <= 0;
        alu_reg_imm_register <= 0;
        alu_ctrl_register <= 4'd0;
        extend_alu_register <= 2'd0; 
        extend_load_register <= 3'd0;
        data_src_register <= 3'd0;
        wt_reg_register <= 2'd0;
        load_dst_register <= 5'd0;
        rs_f_register <= 5'd0;
        rt_f_register <= 5'd0;
        pip_pause <= 0;

    end else if (pip_pause) begin
        load_dst_register <= 5'd0;
        pip_pause <= 0;
    end
    else begin
        instruction_register <= instruction;
        reg1_register <= reg1;
        reg2_register <= reg2;
        
        en_wt_reg_register <= en_wt_reg;
        en_wt_mem_register <= en_wt_mem;
        alu_reg_imm_register <= alu_reg_imm;
        alu_ctrl_register <= alu_ctrl;
        extend_alu_register <= extend_alu;
        extend_load_register <= extend_load;
        data_src_register <= data_src;
        wt_reg_register <= wt_reg;
        load_dst_register <= load_dst;
        rs_f_register <= rs_f;
        rt_f_register <= rt_f;
        pip_pause <= (load_dst_register != 5'd0 && (load_dst_register == rs_f || load_dst_register == rt_f));
    end
end

endmodule