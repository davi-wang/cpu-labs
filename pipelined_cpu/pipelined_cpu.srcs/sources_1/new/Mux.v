`include "Header.v"
`timescale 1ns / 1ps

module forwarding_mux(
    input [31:0]reg_data,
    input [31:0]write_data,
    input [31:0]alu_result,
    input [1:0] mux_ctrl,
    
    output wire[31:0] out_mux 
);

assign out_mux = (mux_ctrl==2'b01)? alu_result:
                 (mux_ctrl==2'b10)? write_data:
                 reg_data;

endmodule


module alu_data_mux(
    input [31:0] mux_data,
    input [31:0] extended_imm,
    input mux_ctrl,
    output wire [31:0] alu_data2
);

assign alu_data2 = (mux_ctrl) ? extended_imm : mux_data;

endmodule


module dest_reg_mux(
    input [4:0]rt,
    input [4:0]rd,
    input [1:0]mux_ctrl,
    
    output wire [4:0]dest_reg_out
);

assign dest_reg_out = (mux_ctrl == `WT_REG_RD) ? rd :
                      (mux_ctrl == `WT_REG_31) ? 5'b11111 :
                      rt;
    
endmodule



module w_reg_data_mux(
    input [31:0]alu_result,
    input [31:0]dmem_data,
    input [31:0]extended_imm,
    input [31:0]jump_dest,
    input [2:0] mux_ctrl,
    
    output wire [31:0]data_mux_out
);


assign data_mux_out = (mux_ctrl == `DATA_SRC_JAL) ? jump_dest:
                      (mux_ctrl == `DATA_SRC_IMM) ? extended_imm:
                      (mux_ctrl == `DATA_SRC_MEM) ? dmem_data:
                      alu_result; // DATA_SRC_ALU
    
endmodule