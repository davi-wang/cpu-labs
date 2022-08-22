`timescale 1ns / 1ps
`include "Header.v"

module control_unit(
            input wire rst,

            input wire[5:0] operation,
            input wire[4:0] rt,
            input wire[4:0] s,
            input wire[5:0] func,

            output wire en_wt_reg,
            output wire en_wt_mem,
            output wire en_load,

            output wire alu_reg_imm,
            output wire[3:0] alu_ctrl,
            output wire[1:0] extend_ctrl,
            output wire[1:0] data_src,
            output wire[1:0] wt_reg,
            output wire[1:0] jump
       );

// R
assign r_ins = (operation == 6'd0) ? 1 : 0;
assign ins_sll = (r_ins && func == 6'b000000) ? 1 : 0;
assign ins_srl = (r_ins && func == 6'b000010) ? 1 : 0;
assign ins_sra = (r_ins && func == 6'b000011) ? 1 : 0;
assign ins_sllv = (r_ins && func == 6'b000100) ? 1 : 0;
assign ins_srlv = (r_ins && func == 6'b000110) ? 1 : 0;
assign ins_srav = (r_ins && func == 6'b000111) ? 1 : 0;
assign ins_jr = (r_ins && func == 6'b001000) ? 1 : 0;
assign ins_jalr = (r_ins && func == 6'b001001) ? 1 : 0;
assign ins_add = (r_ins && func == 6'b100000) ? 1 : 0;
assign ins_addu = (r_ins && func == 6'b100001) ? 1 : 0;
assign ins_sub = (r_ins && func == 6'b100010) ? 1 : 0;
assign ins_subu = (r_ins && func == 6'b100011) ? 1 : 0;
assign ins_and = (r_ins && func == 6'b100100) ? 1 : 0;
assign ins_xor = (r_ins && func == 6'b100110) ? 1 : 0;
assign ins_nor = (r_ins && func == 6'b100111) ? 1 : 0;
assign ins_or = (r_ins && func == 6'b100101) ? 1 : 0;
assign ins_slt = (r_ins && func == 6'b101010) ? 1 : 0;
assign ins_sltu = (r_ins && func == 6'b101011 ) ? 1 : 0;

// I
assign ins_addi = (operation == 6'b001000) ? 1 : 0;
assign ins_addiu = (operation == 6'b001001) ? 1 : 0;
assign ins_slti = (operation == 6'b001010) ? 1 : 0;
assign ins_sltiu = (operation == 6'b001011) ? 1 : 0;
assign ins_andi = (operation == 6'b001100) ? 1 : 0;
assign ins_ori = (operation == 6'b001101) ? 1 : 0;
assign ins_xori = (operation == 6'b001110) ? 1 : 0;
assign ins_lui = (operation == 6'b001111) ? 1 : 0;
assign ins_lb = (operation == 6'b100000) ? 1 : 0;
assign ins_lh = (operation == 6'b100001) ? 1 : 0;
assign ins_lw = (operation == 6'b100011) ? 1 : 0;
assign ins_lbu = (operation == 6'b100100) ? 1 : 0;
assign ins_lhu = (operation == 6'b100101) ? 1 : 0;
assign ins_sb = (operation == 6'b101000) ? 1 : 0;
assign ins_sh = (operation == 6'b101001) ? 1 : 0;
assign ins_sw = (operation == 6'b101011) ? 1 : 0;
assign ins_beq = (operation == 6'b000100) ? 1 : 0;
assign ins_bne = (operation == 6'b000101) ? 1 : 0;
assign ins_blez = (operation == 6'b000110) ? 1 : 0;
assign ins_bgtz = (operation == 6'b000111) ? 1 : 0;
assign ins_bgez = (operation == 6'b000001 && rt == 5'd1) ? 1 : 0;
assign ins_bltz = (operation == 6'b000001 && rt == 5'd0) ? 1 : 0;

// J
assign ins_j = (operation == 6'b000010) ? 1 : 0;
assign ins_jal = (operation == 6'b000011) ? 1 : 0;


assign alu_reg_imm = (ins_addi || ins_addiu || ins_slti || ins_sltiu || ins_andi || ins_ori || 
               ins_xori || ins_lui || ins_sb || ins_sh || ins_sw || ins_lb || ins_lh || 
               ins_lw || ins_lbu || ins_lhu ) ? 1 : 0;

assign alu_ctrl = (ins_addi || ins_add) ? `ALU_ADD:
           (ins_addiu || ins_addu || ins_sb || ins_sh || ins_sw || ins_lb || ins_lbu || ins_lhu ||
                ins_lh || ins_lw) ? `ALU_ADDU:
           (ins_sub) ? `ALU_SUB :
           (ins_sub || ins_subu) ? `ALU_SUBU :
           (ins_slti || ins_slt) ? `ALU_SLT :
           (ins_sltu || ins_sltiu) ? `ALU_SLTU :
           (ins_and || ins_andi) ? `ALU_AND :
           (ins_or || ins_ori) ? `ALU_OR :
           (ins_xor || ins_xori) ? `ALU_XOR :
           (ins_nor) ? `ALU_NOR :
           (ins_sllv || ins_sll) ? `ALU_LEFT :
           (ins_srlv || ins_srl) ? `ALU_RIGHTL :
           (ins_srav || ins_sra) ? `ALU_RIGHTA :
           `ALU_DEFAULT;  // output the second ALU input

assign extend_ctrl =
        (ins_lui) ? `EXTEND_HIGH :
        (ins_addi || ins_slti) ? `EXTEND_SIGNED :
        (ins_andi || ins_sltiu || ins_addiu || ins_ori | ins_xori || ins_sb || ins_sh ||
        ins_sw || ins_lb || ins_lbu || ins_lhu || ins_lh || ins_lw) ? `EXTEND_UNSIGNED : 
        `EXTEND_NOP;

assign data_src = 
        (ins_lb || ins_lbu || ins_lhu || ins_lh || ins_lw) ? `DATA_SRC_MEM : 
        (ins_jal || ins_jalr) ? `DATA_SRC_JAL : `DATA_SRC_ALU;

assign wt_reg =
       (ins_sltiu || ins_andi || ins_ori || ins_lui || ins_addi || ins_addiu || ins_slti || 
       ins_xori || ins_lb || ins_lbu || ins_lhu || ins_lh || ins_lw) ? `WT_REG_RT :
       (ins_jal) ? `WT_REG_31 : `WT_REG_RD;

assign jump =
       (ins_beq || ins_bne || ins_blez || ins_bgtz || ins_bgez || ins_bltz) ? `JUMP_BEQ :
       (ins_j || ins_jal)  ? `JUMP_J :
       (ins_jr || ins_jalr) ? `JUMP_REG : `JUMP_SEQ;

assign en_wt_reg =
        (ins_lui || r_ins || ins_addi || ins_addiu || ins_sltiu || ins_andi || 
        ins_ori || ins_xori || ins_add || ins_addu || ins_sub || ins_subu ||
        ins_slt || ins_sltu || ins_slti || ins_sltiu || ins_and || ins_or || 
        ins_nor || ins_xor || ins_sll || ins_srl || ins_sra || ins_sllv || ins_srlv || 
        ins_srav || ins_lb || ins_lbu || ins_lhu || ins_lh || ins_lw || ins_jal || ins_jalr) ? 1 : 0;

assign en_wt_mem = (ins_sb || ins_sh || ins_sw) ? 1 : 0;

assign en_load = (ins_lb || ins_lbu || ins_lhu || ins_lh || ins_lw) ? 1 : 0;


endmodule