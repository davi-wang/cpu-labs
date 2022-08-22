`timescale 1ns / 1ps

// jump control signal
`define JUMP_SEQ        2'd0     // PC + 4
`define JUMP_J          2'd1     // {PC[31:28], instr_index, 2'b00}
`define JUMP_BEQ        2'd2     // {PC + 4 + offset}
`define JUMP_REG        2'd3     // register

// ALU control signal
`define ALU_DEFAULT     4'd0    // output source1
`define ALU_ADD         4'd1
`define ALU_SUB         4'd2
`define ALU_AND         4'd3
`define ALU_OR          4'd4
`define ALU_XOR         4'd5 
`define ALU_NOR         4'd6
`define ALU_SLT         4'd7
`define ALU_SLTU        4'd8 
`define ALU_SLTI        4'd9
`define ALU_SLTIU       4'd10
`define ALU_LEFT        4'd11
`define ALU_RIGHTL      4'd12
`define ALU_RIGHTA      4'd13

// extend bits
`define EXTEND_NOP      2'd0      // nop
`define EXTEND_HIGH     2'd1      // set high 16 bits
`define EXTEND_UNSIGNED 2'd2      // 16 -> 32
`define EXTEND_SIGNED   2'd3      // 16 -> 32


// data source signal
`define DATA_SRC_IMM    2'd0     // immediate number
`define DATA_SRC_ALU    2'd1     // ALU
`define DATA_SRC_MEM    2'd2     // from data memory
`define DATA_SRC_JAL    2'd3     // from (jump_destination + 4)

// write register signal
`define WT_REG_RT       2'd0      // rt
`define WT_REG_RD       2'd1      // rd
`define WT_REG_31       2'd2      // GPR[31] 
