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
`define ALU_DEFAULT     4'd0    // output source2
`define ALU_ADD         4'd1
`define ALU_ADDU        4'd2
`define ALU_SUB         4'd3
`define ALU_SUBU        4'd4
`define ALU_AND         4'd5
`define ALU_OR          4'd6
`define ALU_XOR         4'd7 
`define ALU_NOR         4'd8
`define ALU_SLT         4'd9
`define ALU_SLTU        4'd10 
`define ALU_LEFT        4'd11
`define ALU_RIGHTL      4'd12
`define ALU_RIGHTA      4'd13

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
`define DATA_SRC_ALU    2'd1     // ALU
`define DATA_SRC_MEM    2'd2     // from data memory
`define DATA_SRC_JAL    2'd3     // from (jump_destination + 4)

// write register signal : wt_reg
`define WT_REG_RT       2'd0      // rt
`define WT_REG_RD       2'd1      // rd
`define WT_REG_31       2'd2      // GPR[31] 
