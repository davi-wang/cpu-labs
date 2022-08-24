`timescale 1ns / 1ps


// jump control signal : jump
`define JUMP_PAUSE      4'd0     // PAUSE
`define JUMP_SEQ        4'd1     // PC + 4
`define JUMP_BEQ        4'd2     // {PC + 4 + offset}
`define JUMP_BNE        4'd3     // {PC + 4 + offset}
`define JUMP_BLEZ       4'd4     // {PC + 4 + offset}
`define JUMP_BLTZ       4'd5     // {PC + 4 + offset}
`define JUMP_BGEZ       4'd6     // {PC + 4 + offset}
`define JUMP_BGTZ       4'd7     // {PC + 4 + offset}
`define JUMP_J          4'd8     // {PC[31:28], instr_index, 2'b00}
`define JUMP_JAL        4'd9     // {PC[31:28], instr_index, 2'b00}
`define JUMP_JR         4'd10    // register
`define JUMP_JALR       4'd11    // register

// ALU control signal : alu_ctrl
`define ALU_DEFAULT     5'd0    // output source2
`define ALU_ADD         5'd1
`define ALU_ADDU        5'd2
`define ALU_SUB         5'd3
`define ALU_SUBU        5'd4
`define ALU_AND         5'd5
`define ALU_OR          5'd6
`define ALU_XOR         5'd7 
`define ALU_NOR         5'd8
`define ALU_SLT         5'd9
`define ALU_SLTU        5'd10 
`define ALU_LEFT        5'd11
`define ALU_LEFTR       5'd12 // c
`define ALU_RIGHTL      5'd13
`define ALU_RIGHTLR     5'd14
`define ALU_RIGHTA      5'd15
`define ALU_RIGHTAR     5'd16

// extend bits for ALU : extend_alu
`define EXTEND_ALU_NOP      2'd0      // nop
`define EXTEND_ALU_HIGH     2'd1      // set high 16 bits
`define EXTEND_ALU_UNSIGNED 2'd2      // 16 -> 32
`define EXTEND_ALU_SIGNED   2'd3      // 16 -> 32

// extend bits for load : extend_load
`define EXTEND_LOAD_NOP      3'd0      // nop
`define EXTEND_LOAD_8s       3'd1      // 8 -> 32
`define EXTEND_LOAD_16s      3'd3      // 16 -> 32
`define EXTEND_LOAD_8u       3'd4      // 8 -> 32
`define EXTEND_LOAD_16u      3'd5      // 16 -> 32


// data source signal : data_src
`define DATA_SRC_ALU    3'd1     // ALU
`define DATA_SRC_MEM    3'd2     // from data memory
`define DATA_SRC_JAL    3'd3     // from (jump_destination + 4)
`define DATA_SRC_IMM    3'd4     // imm

// write register signal : wt_reg
`define WT_REG_RT       2'd0      // rt
`define WT_REG_RD       2'd1      // rd
`define WT_REG_31       2'd2      // GPR[31] 


// `define ALU_RESULT      3'b001
// `define MEM_DATA        3'b010 
// `define EXTENDED_IMM    3'b011 
// `define JUMP_DST        3'b100 
