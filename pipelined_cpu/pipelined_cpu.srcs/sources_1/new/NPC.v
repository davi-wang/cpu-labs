`timescale 1ns / 1ps
`include "Header.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/22 20:30:41
// Design Name: 
// Module Name: NPC
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


module NPC(
    input [31:0] pc,
    input [3:0] jump_ctrl,
    input [25:0] instr_index,
    input [15:0] instr_offset,
    input [31:0] reg1_data,
    input [31:0] reg2_data,
    
    output  reg [31:0]npc,
    output  reg [31:0]des_inst_addr,
    output  reg pip_flush
    
    );
    
    always@(*)begin
        pip_flush = 1;
        case(jump_ctrl)
            `JUMP_SEQ: begin
                npc = pc + 4;
                pip_flush = 0;
            end
            `JUMP_BEQ: begin
                if (reg1_data == reg2_data)
                    npc = {pc + {{14{instr_offset[15]}}, {instr_offset, 2'b00}}}; 
                else begin
                    npc = pc+4;
                    pip_flush = 0;
                end
            end
            `JUMP_BNE: 
                if (reg1_data != reg2_data)
                    npc = {pc + {{14{instr_offset[15]}}, {instr_offset, 2'b00}}}; 
                else begin
                    npc = pc+4;
                    pip_flush = 0;
                end
            `JUMP_BLEZ:
                if ($signed(reg1_data) <= 0)
                    npc = {pc + {{14{instr_offset[15]}}, {instr_offset, 2'b00}}}; 
                else begin
                    npc = pc+4;
                    pip_flush = 0;
                end
            `JUMP_BLTZ:
                if ($signed(reg1_data) < 0)
                    npc = {pc + {{14{instr_offset[15]}}, {instr_offset, 2'b00}}}; 
                else begin
                    npc = pc+4;
                    pip_flush = 0;
                end
            `JUMP_BGEZ:
                if ($signed(reg1_data) >= 0)
                    npc = {pc + {{14{instr_offset[15]}}, {instr_offset, 2'b00}}}; 
                else begin
                    npc = pc+4;
                    pip_flush = 0;
                end
            `JUMP_BGTZ:
                if ($signed(reg1_data) > 0)
                    npc = {pc + {{14{instr_offset[15]}}, {instr_offset, 2'b00}}}; 
                else begin
                    npc = pc+4;
                    pip_flush = 0;
                end
            `JUMP_J:
                npc = {pc[31:28], instr_index, 2'b00};

            `JUMP_JAL : begin
                npc = {pc[31:28], instr_index, 2'b00};
                des_inst_addr = npc+4;     
                end

            `JUMP_JR : npc = reg1_data;
            `JUMP_JALR: begin
                npc = reg1_data;
                des_inst_addr = npc+4;
                end
            default: begin
                npc = pc;
                pip_flush = 0;
                end
        endcase
        // if (npc == pc+4) pip_flush = 0;
        
    end
    
endmodule
