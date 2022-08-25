`include "Header.v"

module id (
    input rst,
    input wire[31:0] pc_i,         //pc value
    input wire[31:0] inst_i,        //instruction code

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
    
    wire[5:0] op = inst_i[31:26];
    wire[4:0] op2 = inst_i[10:6];
    wire[5:0] func = inst_i[5:0];
    wire[4:0] op4 = inst_i[20:16];

    wire[4:0] rs = inst_i[25:21];
    wire[4:0] rt = inst_i[20:16];

    reg valid;
    reg immed[31:0];


    //TODO:DECODE INSTRUCTIONS TO WRITE VALUE TO OUTPUT









endmodule