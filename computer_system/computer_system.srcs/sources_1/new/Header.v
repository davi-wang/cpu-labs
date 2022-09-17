`timescale 1ns / 1ps
`define AddrBus 31:0
`define InscBus 31:0
`define RegBus 31:0
`define RegAddrBus 4:0
`define RegWidth 32
`define AluBus 5:0
//NOP
`define ZeroWord 32'h00000000
`define NopRegAddr 5'b00000
// ALU control signal : alu_ctrl
`define ALU_NOP         6'd0    // nop op
`define ALU_ADD         6'd1
`define ALU_ADDU        6'd2
`define ALU_SUB         6'd3
`define ALU_SUBU        6'd4
`define ALU_AND         6'd5
`define ALU_OR          6'd6
`define ALU_XOR         6'd7
`define ALU_NOR         6'd8
`define ALU_SLT         6'd9
`define ALU_SLTU        6'd10
`define ALU_LEFT        6'd11
`define ALU_LEFTR       6'd12 // c
`define ALU_RIGHTL      6'd13
`define ALU_RIGHTLR     6'd14
`define ALU_RIGHTA      6'd15
`define ALU_RIGHTAR     6'd16
`define ALU_BRANCH      6'd17
`define ALU_MEM         6'd18
`define ALU_LB          6'd19
`define ALU_LBU         6'd20
`define ALU_LH          6'd21
`define ALU_LHU         6'd22
`define ALU_LW          6'd23
`define ALU_SB          6'd24
`define ALU_SH          6'd25
`define ALU_SW          6'd26
`define ALU_MFC0        6'd27
`define ALU_MTC0        6'd28
`define ALU_EXE         6'd29
`define ALU_TGE         6'd30
`define ALU_TGEU        6'd31
`define ALU_TLT         6'd32
`define ALU_TLTU        6'd33
`define ALU_SYSCALL     6'd34
`define ALU_TEQ         6'd35
`define ALU_TNE         6'd36


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

`define EX_SYSCALL 6'b001100

`define EX_TEQ 6'b110100
`define EX_TEQI 5'b01100
`define EX_TGE 6'b110000
`define EX_TGEI 5'b01000
`define EX_TGEIU 5'b01001
`define EX_TGEU 6'b110001
`define EX_TLT 6'b110010
`define EX_TLTI 5'b01010
`define EX_TLTIU 5'b01011
`define EX_TLTU 6'b110011
`define EX_TNE 6'b110110
`define EX_TNEI 5'b01110
`define EX_ERET 32'b01000010000000000000000000001100


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
