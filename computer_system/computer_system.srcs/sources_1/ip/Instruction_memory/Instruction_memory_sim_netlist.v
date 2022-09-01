// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Sep  1 21:21:31 2022
// Host        : DESKTOP-4TH2AOF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/assignment/Hardware_practice/MIPS-master-branch/hardware-labs/computer_system/computer_system.srcs/sources_1/ip/Instruction_memory/Instruction_memory_sim_netlist.v
// Design      : Instruction_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Instruction_memory,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module Instruction_memory
   (a,
    spo);
  input [7:0]a;
  output [31:0]spo;

  wire [7:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "Instruction_memory.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  Instruction_memory_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "Instruction_memory.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module Instruction_memory_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [31:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:0] = \^spo [29:0];
  GND GND
       (.G(\<const0> ));
  Instruction_memory_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31],\^spo [29:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module Instruction_memory_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [30:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [30:0]spo;

  Instruction_memory_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module Instruction_memory_rom
   (spo,
    a);
  output [30:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[20]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[29]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;

  MUXF8 \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .O(spo[0]),
        .S(a[7]));
  MUXF7 \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_3_n_0 ),
        .I1(\spo[0]_INST_0_i_4_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h618042CE20C3A318)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1E801A0062167A05)) 
    \spo[0]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000088801010A21)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001011000C00460)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(\spo[10]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h0301000400020000)) 
    \spo[10]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC040819000260501)) 
    \spo[10]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200226010C2A825)) 
    \spo[10]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_4_n_0 ),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h100C020608000240)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020720100000)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0408590C4268501)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01240AA800C25819)) 
    \spo[11]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_2_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[12]_INST_0_i_4_n_0 ),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h0000002004000080)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000080040069001)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000002000818C)) 
    \spo[12]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  MUXF8 \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .O(spo[13]),
        .S(a[7]));
  MUXF7 \spo[13]_INST_0_i_1 
       (.I0(\spo[13]_INST_0_i_3_n_0 ),
        .I1(\spo[13]_INST_0_i_4_n_0 ),
        .O(\spo[13]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[13]_INST_0_i_2 
       (.I0(\spo[13]_INST_0_i_5_n_0 ),
        .I1(\spo[13]_INST_0_i_6_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000404400000300)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20C40C8840069001)) 
    \spo[13]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000081A000000000)) 
    \spo[13]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0400000430000C00)) 
    \spo[13]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  MUXF8 \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[14]),
        .S(a[7]));
  MUXF7 \spo[14]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_3_n_0 ),
        .I1(\spo[14]_INST_0_i_4_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_5_n_0 ),
        .I1(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0228002000050030)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008001000000000)) 
    \spo[14]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000092000000000)) 
    \spo[14]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4004450400000000)) 
    \spo[14]_INST_0_i_6 
       (.I0(a[6]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[15]_INST_0_i_2_n_0 ),
        .I3(a[4]),
        .I4(\spo[15]_INST_0_i_3_n_0 ),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'h0000090000000000)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041904611)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000022020C004412)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  MUXF8 \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[16]),
        .S(a[7]));
  MUXF7 \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_3_n_0 ),
        .I1(\spo[16]_INST_0_i_4_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_5_n_0 ),
        .I1(\spo[16]_INST_0_i_6_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h1F0D6B4BF39FBC5F)) 
    \spo[16]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0BC907543C7A1A17)) 
    \spo[16]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h10505441341E9484)) 
    \spo[16]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101010010F2F3B0B)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  MUXF8 \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[17]),
        .S(a[7]));
  MUXF7 \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_3_n_0 ),
        .I1(\spo[17]_INST_0_i_4_n_0 ),
        .O(\spo[17]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_5_n_0 ),
        .I1(\spo[17]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0CD0040881710B02)) 
    \spo[17]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h296BA54628120A31)) 
    \spo[17]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h410004081D405951)) 
    \spo[17]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0022008000251418)) 
    \spo[17]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  MUXF8 \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .O(spo[18]),
        .S(a[7]));
  MUXF7 \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_3_n_0 ),
        .I1(\spo[18]_INST_0_i_4_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_5_n_0 ),
        .I1(\spo[18]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hC508110010001411)) 
    \spo[18]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1500700060004200)) 
    \spo[18]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0C5D5A0003085100)) 
    \spo[18]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h111158100110E393)) 
    \spo[18]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  MUXF8 \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(\spo[19]_INST_0_i_2_n_0 ),
        .O(spo[19]),
        .S(a[7]));
  MUXF7 \spo[19]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_3_n_0 ),
        .I1(\spo[19]_INST_0_i_4_n_0 ),
        .O(\spo[19]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[19]_INST_0_i_2 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(\spo[19]_INST_0_i_6_n_0 ),
        .O(\spo[19]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hA831980499DD1B4D)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E8C048A8A88AA8)) 
    \spo[19]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3775756017577577)) 
    \spo[19]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA3FAFB5)) 
    \spo[19]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  MUXF8 \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .O(spo[1]),
        .S(a[7]));
  MUXF7 \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_3_n_0 ),
        .I1(\spo[1]_INST_0_i_4_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0484150A0649A818)) 
    \spo[1]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD1119135C006B021)) 
    \spo[1]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040150400000000)) 
    \spo[1]_INST_0_i_5 
       (.I0(a[6]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h010000107440C060)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  MUXF8 \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .O(spo[20]),
        .S(a[7]));
  MUXF7 \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_3_n_0 ),
        .I1(\spo[20]_INST_0_i_4_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[20]_INST_0_i_2 
       (.I0(\spo[20]_INST_0_i_5_n_0 ),
        .I1(\spo[20]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000020218040003)) 
    \spo[20]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000259455559)) 
    \spo[20]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[6]),
        .O(\spo[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h014048080040440C)) 
    \spo[20]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2000000021300010)) 
    \spo[20]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[20]_INST_0_i_6_n_0 ));
  MUXF8 \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .O(spo[21]),
        .S(a[7]));
  MUXF7 \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_3_n_0 ),
        .I1(\spo[21]_INST_0_i_4_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_5_n_0 ),
        .I1(\spo[21]_INST_0_i_6_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h8C30A9889C25072A)) 
    \spo[21]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0B17494140850278)) 
    \spo[21]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1555554555557544)) 
    \spo[21]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0078005901395011)) 
    \spo[21]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  MUXF8 \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_2_n_0 ),
        .O(spo[22]),
        .S(a[7]));
  MUXF7 \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_3_n_0 ),
        .I1(\spo[22]_INST_0_i_4_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_5_n_0 ),
        .I1(\spo[22]_INST_0_i_6_n_0 ),
        .O(\spo[22]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000100600000026)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A0002034130148)) 
    \spo[22]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000001040000005)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0008124000020000)) 
    \spo[22]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[7]),
        .I3(\spo[23]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(\spo[23]_INST_0_i_3_n_0 ),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h0008011900114091)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440408800000008)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA0000100000000)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  MUXF8 \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[24]),
        .S(a[7]));
  MUXF7 \spo[24]_INST_0_i_1 
       (.I0(\spo[24]_INST_0_i_3_n_0 ),
        .I1(\spo[24]_INST_0_i_4_n_0 ),
        .O(\spo[24]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[24]_INST_0_i_2 
       (.I0(\spo[24]_INST_0_i_5_n_0 ),
        .I1(\spo[24]_INST_0_i_6_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hA899880A1080044C)) 
    \spo[24]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3000000020228200)) 
    \spo[24]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFDFFFD)) 
    \spo[24]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000040A82DA5A5)) 
    \spo[24]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[25]_INST_0_i_4_n_0 ),
        .O(spo[25]));
  LUT6 #(
    .INIT(64'h0000000002150015)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007EFEFEFE)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000214110148)) 
    \spo[25]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA000001000000A)) 
    \spo[25]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_4_n_0 ));
  MUXF8 \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .O(spo[26]),
        .S(a[7]));
  MUXF7 \spo[26]_INST_0_i_1 
       (.I0(\spo[26]_INST_0_i_3_n_0 ),
        .I1(\spo[26]_INST_0_i_4_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h8CAA861E05110572)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0D59E01429450219)) 
    \spo[26]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5715576037576567)) 
    \spo[26]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000521FD1B5)) 
    \spo[26]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  MUXF8 \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(\spo[27]_INST_0_i_2_n_0 ),
        .O(spo[27]),
        .S(a[7]));
  MUXF7 \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_3_n_0 ),
        .I1(\spo[27]_INST_0_i_4_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_5_n_0 ),
        .I1(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h888E8B2001D34F00)) 
    \spo[27]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0E1581428072509)) 
    \spo[27]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5717556737576562)) 
    \spo[27]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000001002D785DD)) 
    \spo[27]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  MUXF8 \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .O(spo[28]),
        .S(a[7]));
  MUXF7 \spo[28]_INST_0_i_1 
       (.I0(\spo[28]_INST_0_i_3_n_0 ),
        .I1(\spo[28]_INST_0_i_4_n_0 ),
        .O(\spo[28]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(\spo[28]_INST_0_i_6_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h04143121221D0812)) 
    \spo[28]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h034F214422910071)) 
    \spo[28]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000800)) 
    \spo[28]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001011072224000)) 
    \spo[28]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  MUXF8 \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .O(spo[29]),
        .S(a[7]));
  MUXF7 \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_3_n_0 ),
        .I1(\spo[29]_INST_0_i_4_n_0 ),
        .O(\spo[29]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[29]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_5_n_0 ),
        .I1(\spo[29]_INST_0_i_6_n_0 ),
        .O(\spo[29]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hF8C3EAE4C98F525B)) 
    \spo[29]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1C703272E97A5617)) 
    \spo[29]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5010500010121015)) 
    \spo[29]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000017B10119153)) 
    \spo[29]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_6_n_0 ));
  MUXF8 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_3_n_0 ),
        .I1(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(\spo[2]_INST_0_i_6_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0950191010C5A81A)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80420862C1300621)) 
    \spo[2]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1502557700D40002)) 
    \spo[2]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000001020E90165)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  MUXF8 \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .O(spo[30]),
        .S(a[7]));
  MUXF7 \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_3_n_0 ),
        .I1(\spo[31]_INST_0_i_4_n_0 ),
        .O(\spo[31]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[31]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_5_n_0 ),
        .I1(\spo[31]_INST_0_i_6_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hA0A0800000050048)) 
    \spo[31]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008400210010408)) 
    \spo[31]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h055F565515575A02)) 
    \spo[31]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000158595)) 
    \spo[31]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  MUXF8 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[7]));
  MUXF7 \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_3_n_0 ),
        .I1(\spo[3]_INST_0_i_4_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h008C804810B1A988)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02410A26C3900511)) 
    \spo[3]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1302000054575F00)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000013034)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  MUXF8 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[7]));
  MUXF7 \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(\spo[4]_INST_0_i_4_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h8004120C2080291B)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8001058100076250)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1507000000304550)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000408000117)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  MUXF8 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[7]));
  MUXF7 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(\spo[5]_INST_0_i_4_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h03310C022A29119D)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80C8480840269001)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2040620700406202)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0010000088D51A48)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  MUXF8 \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[6]),
        .S(a[7]));
  MUXF7 \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_3_n_0 ),
        .I1(\spo[6]_INST_0_i_4_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h000400A800420119)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC800008010150200)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000108000400)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h050000100000000A)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  MUXF8 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[7]));
  MUXF7 \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(\spo[7]_INST_0_i_4_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0008000A00018101)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2004848040069001)) 
    \spo[7]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002081208000400)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0301000400220000)) 
    \spo[7]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[8]_INST_0 
       (.I0(a[5]),
        .I1(\spo[9]_INST_0_i_1_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_1_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h000C000400000003)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[9]_INST_0 
       (.I0(a[5]),
        .I1(\spo[9]_INST_0_i_1_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(\spo[9]_INST_0_i_3_n_0 ),
        .O(spo[9]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[3]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040069001)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000440000003)) 
    \spo[9]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
