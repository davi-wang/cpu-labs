`define RstEnable 1'b0
`define RstDisable 1'b1

`define RegBus 31:0
`define RegAddrBus 4:0
`define RegWidth 32
`define ZeroWord 32'h00000000
`define InterruptNotAssert 1'b0
`define InterruptAssert 1'b1

`define CP0_REG_COUNT 5'b01001
`define CP0_REG_COMPARE 5'b01011
`define CP0_REG_STATUS 5'b01100
`define CP0_REG_CAUSE 5'b01101
`define CP0_REG_EPC 5'b01110
`define WriteEnable 1'b1

//op

