module id (
    input rst,
    input wire[31:0] pc_i,
    input wire[31:0] inst_i,

    input wire[31:0] reg1_data_i,
    input wire[31:0] reg2_data_i,

    output reg reg1_read_o,
    output reg reg2_read_o,
    output reg[4:0] reg1_addr_o,
    output reg[4:0] reg2_addr_o,

    output reg[3:0] alu_op,
    output reg[31:0] reg1_o,
    output reg[31:0] reg2_o,
    output reg[4:0] wd_o,
    output reg wreg_o
);
    
endmodule