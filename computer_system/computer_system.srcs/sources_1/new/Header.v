`timescale 1ns / 1ps
`define AddrBus 31:0
`define InscBus 31:0
`define RegBus 31:0
`define RegAddrBus 4:0
`define RegWidth 32
`define AluBus 4:0

//NOP
`define ZeroWord 32'h00000000
`define NopRegAddr 5'b00000

// ALU control signal : alu_ctrl
`define ALU_NOP     5'd0    // nop op
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
`define ALU_BRANCH      5'd17
`define ALU_MEM         5'd18
`define ALU_LB          5'd19
`define ALU_LBU         5'd20
`define ALU_LH          5'd21
`define ALU_LHU         5'd22
`define ALU_LW          5'd23
`define ALU_SB          5'd24
`define ALU_SH          5'd25
`define ALU_SW          5'd26
`define ALU_MFC0        5'd27
`define ALU_MTC0        5'd28

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
`define EX_SLTU 6'b101011
`define EX_SLT 6'b101010
`define EX_SLTI 6'b001010
`define EX_SLTIU 6'b001011
`define EX_ADDI 6'b001000
`define EX_ADDIU 6'b001001

`define EX_J 6'b000010
`define EX_JAL 6'b000011
`define EX_JALR 6'b001001
`define EX_JR 6'b001000
`define EX_BEQ 6'b000100
`define EX_BGEZ 5'b00001
`define EX_BGTZ 6'b000111
`define EX_BNE 6'b000101
`define EX_BLTZ 5'b00000
`define EX_BLEZ 6'b000110

`define EX_LB 6'b100000
`define EX_LBU 6'b100100
`define EX_LH 6'b100001
`define EX_LHU 6'b100101
`define EX_LW 6'b100011
`define EX_SB 6'b101000
`define EX_SH 6'b101001
`define EX_SW 6'b101011

`define RstEnable 1'b0
`define RstDisable 1'b1

//cp0 REG
`define InterruptNotAssert 1'b0
`define InterruptAssert 1'b1

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


// button activate
`define UP_BUTTON    4'b0001
`define DOWN_BUTTON    4'b0010
`define LEFT_BUTTON    4'b0100
`define RIGHT_BUTTON    4'b1000
`define DEFAULT_BUTTON    4'b0000
