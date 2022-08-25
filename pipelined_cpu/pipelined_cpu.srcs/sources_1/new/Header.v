`timescale 1ns / 1ps


//NOP
`define ZeroWord 32'h00000000
`define NopRegAddr 5'b00000

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
`define ALU_DEFAULT     5'd0    // nop op
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

// instrcution code
`define SPECIAL 6'b000000
`define EX_OR 6'b100101
`define EX_AND 6'b100100
`define EX_XOR 6'b100110
`define EX_NOR  6'b100111
`define EX_ANDI 6'b001100
`define EX_ORI 6'b001101
`define EX_XORI 6'b001110
`define EX_LUI 6'b001111

 `define EX_SLL 6'b000000
 `define EX_SLLV 6'b000100
 `define EX_SRL 6'b000010
 `define EX_SRLV 6'b000110
 `define EX_SRA 6'b000011
 `define EX_SRAV 6'b000111

 `define EX_ADD 6'b100000
 `define EX_ADDU 6'b100001
 `define EX_SUB 6'b100010
 `define EX_SUBU 6'b100011
 `define EX_SLTU 6'b101010
 `define EX_SLT 6'b101011
 `define EX_SLTI 6'b001010
 `define EX_SLTIU 6'b001011
 `define EX_ADDI 6'b001000
 `define EX_ADDIU 6'b001001

// `define ALU_RESULT      3'b001
// `define MEM_DATA        3'b010 
// `define EXTENDED_IMM    3'b011 
// `define JUMP_DST        3'b100 

`define RstEnable 1'b0
`define RstDisable 1'b1

`define RegBus 31:0
`define RegAddrBus 4:0
`define RegWidth 32
`define InterruptNotAssert 1'b0
`define InterruptAssert 1'b1

//cp0 REG
`define CP0_REG_COUNT 5'b01001
`define CP0_REG_COMPARE 5'b01011
`define CP0_REG_STATUS 5'b01100
`define CP0_REG_CAUSE 5'b01101
`define CP0_REG_EPC 5'b01110
`define WriteEnable 1'b1

//op
`define EXE_MFC0_OP  4'd14
`define EXE_MTC0_OP  4'd14   

//stall
`define STALL_EXE    2'b10
`define STALL_MEM    2'b10
`define STALL_DEFAULT    2'b00