// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Sep  1 22:28:14 2022
// Host        : LAPTOP-FNQMD2JI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/repos/hardware-labs/computer_system/computer_system.srcs/sources_1/ip/Instruction_memory/Instruction_memory_sim_netlist.v
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
  input [8:0]a;
  output [31:0]spo;

  wire [8:0]a;
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
  (* c_addr_width = "9" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "512" *) 
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
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

(* C_ADDR_WIDTH = "9" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "512" *) 
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
  input [8:0]a;
  input [31:0]d;
  input [8:0]dpra;
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
  wire [8:0]a;
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
  input [8:0]a;

  wire [8:0]a;
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
  input [8:0]a;

  wire [8:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_7_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_7_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_7_n_0 ;
  wire \spo[16]_INST_0_i_8_n_0 ;
  wire \spo[16]_INST_0_i_9_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_7_n_0 ;
  wire \spo[17]_INST_0_i_8_n_0 ;
  wire \spo[17]_INST_0_i_9_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_7_n_0 ;
  wire \spo[18]_INST_0_i_8_n_0 ;
  wire \spo[18]_INST_0_i_9_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_7_n_0 ;
  wire \spo[19]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
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
  wire \spo[21]_INST_0_i_7_n_0 ;
  wire \spo[21]_INST_0_i_8_n_0 ;
  wire \spo[21]_INST_0_i_9_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_7_n_0 ;
  wire \spo[22]_INST_0_i_8_n_0 ;
  wire \spo[22]_INST_0_i_9_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_7_n_0 ;
  wire \spo[23]_INST_0_i_8_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_7_n_0 ;
  wire \spo[24]_INST_0_i_8_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_7_n_0 ;
  wire \spo[25]_INST_0_i_8_n_0 ;
  wire \spo[25]_INST_0_i_9_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_7_n_0 ;
  wire \spo[26]_INST_0_i_8_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_7_n_0 ;
  wire \spo[27]_INST_0_i_8_n_0 ;
  wire \spo[27]_INST_0_i_9_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_7_n_0 ;
  wire \spo[28]_INST_0_i_8_n_0 ;
  wire \spo[28]_INST_0_i_9_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[29]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_7_n_0 ;
  wire \spo[29]_INST_0_i_8_n_0 ;
  wire \spo[29]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_7_n_0 ;
  wire \spo[31]_INST_0_i_8_n_0 ;
  wire \spo[31]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;

  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_2_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0000000044004202)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  MUXF8 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_3_n_0 ),
        .I1(\spo[0]_INST_0_i_4_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ),
        .S(a[4]));
  MUXF7 \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_7_n_0 ),
        .I1(\spo[0]_INST_0_i_8_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h20B2A016962DE1A2)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h56B1323023037B25)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABA834501731AB66)) 
    \spo[0]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h82A0008251647CE8)) 
    \spo[0]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[10]_INST_0 
       (.I0(a[4]),
        .I1(\spo[10]_INST_0_i_1_n_0 ),
        .I2(a[8]),
        .I3(\spo[10]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h0000000030000800)) 
    \spo[10]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  MUXF7 \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_4_n_0 ),
        .I1(\spo[10]_INST_0_i_5_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_6_n_0 ),
        .I1(\spo[10]_INST_0_i_7_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hB100E00000088800)) 
    \spo[10]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8009200002280020)) 
    \spo[10]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB0422800984020D3)) 
    \spo[10]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00651848000A2121)) 
    \spo[10]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[11]_INST_0 
       (.I0(a[4]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[8]),
        .I3(\spo[11]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_3_n_0 ),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h0000000050090481)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_4_n_0 ),
        .I1(\spo[11]_INST_0_i_5_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_6_n_0 ),
        .I1(\spo[11]_INST_0_i_7_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hB0F80500104D0802)) 
    \spo[11]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h803902220020B240)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h74280A88952D8003)) 
    \spo[11]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00651848000A2129)) 
    \spo[11]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[12]_INST_0 
       (.I0(a[4]),
        .I1(\spo[12]_INST_0_i_1_n_0 ),
        .I2(a[8]),
        .I3(\spo[12]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[12]_INST_0_i_3_n_0 ),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h0000000000012010)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  MUXF7 \spo[12]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_4_n_0 ),
        .I1(\spo[12]_INST_0_i_5_n_0 ),
        .O(\spo[12]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[12]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_6_n_0 ),
        .I1(\spo[12]_INST_0_i_7_n_0 ),
        .O(\spo[12]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00000540000D0002)) 
    \spo[12]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0011002000001040)) 
    \spo[12]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0020020004050012)) 
    \spo[12]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000002A04020141)) 
    \spo[12]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \spo[13]_INST_0 
       (.I0(a[4]),
        .I1(\spo[13]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(a[8]),
        .I4(\spo[13]_INST_0_i_2_n_0 ),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h0000000000102161)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_2 
       (.I0(\spo[13]_INST_0_i_3_n_0 ),
        .I1(\spo[13]_INST_0_i_4_n_0 ),
        .I2(a[6]),
        .I3(\spo[9]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(\spo[13]_INST_0_i_5_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1201820480802020)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004160104040400)) 
    \spo[13]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h10000000200FE010)) 
    \spo[13]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[14]_INST_0 
       (.I0(a[4]),
        .I1(\spo[14]_INST_0_i_1_n_0 ),
        .I2(a[8]),
        .I3(\spo[14]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_3_n_0 ),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h0000000001004415)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  MUXF7 \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_4_n_0 ),
        .I1(\spo[14]_INST_0_i_5_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[14]_INST_0_i_3 
       (.I0(\spo[14]_INST_0_i_6_n_0 ),
        .I1(\spo[14]_INST_0_i_7_n_0 ),
        .O(\spo[14]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000014043112)) 
    \spo[14]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h130102A001801420)) 
    \spo[14]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0200800000550100)) 
    \spo[14]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0002020200000009)) 
    \spo[14]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[15]_INST_0_i_2_n_0 ),
        .I3(a[4]),
        .I4(\spo[15]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[15]));
  MUXF7 \spo[15]_INST_0_i_1 
       (.I0(\spo[15]_INST_0_i_4_n_0 ),
        .I1(\spo[15]_INST_0_i_5_n_0 ),
        .O(\spo[15]_INST_0_i_1_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001008000200000)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC000600004222502)) 
    \spo[15]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0110010900011825)) 
    \spo[15]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[16]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[16]_INST_0_i_3_n_0 ),
        .O(spo[16]));
  MUXF7 \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_4_n_0 ),
        .I1(\spo[16]_INST_0_i_5_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_6_n_0 ),
        .I1(\spo[16]_INST_0_i_7_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_3 
       (.I0(\spo[16]_INST_0_i_8_n_0 ),
        .I1(\spo[16]_INST_0_i_9_n_0 ),
        .O(\spo[16]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00000000030343F3)) 
    \spo[16]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011555000)) 
    \spo[16]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7125729B133733FD)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h59D5135DA3579579)) 
    \spo[16]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8123FB7C2757D17B)) 
    \spo[16]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE5761BAB0217DDCF)) 
    \spo[16]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[17]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[17]_INST_0_i_3_n_0 ),
        .O(spo[17]));
  MUXF7 \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_4_n_0 ),
        .I1(\spo[17]_INST_0_i_5_n_0 ),
        .O(\spo[17]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_6_n_0 ),
        .I1(\spo[17]_INST_0_i_7_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[17]_INST_0_i_3 
       (.I0(\spo[17]_INST_0_i_8_n_0 ),
        .I1(\spo[17]_INST_0_i_9_n_0 ),
        .O(\spo[17]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h000000000510401E)) 
    \spo[17]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001554000)) 
    \spo[17]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4202640410446620)) 
    \spo[17]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44000240C28014E3)) 
    \spo[17]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h011352092002C04A)) 
    \spo[17]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8B1001A9A20174E2)) 
    \spo[17]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[18]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[18]_INST_0_i_3_n_0 ),
        .O(spo[18]));
  MUXF7 \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_4_n_0 ),
        .I1(\spo[18]_INST_0_i_5_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_6_n_0 ),
        .I1(\spo[18]_INST_0_i_7_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_3 
       (.I0(\spo[18]_INST_0_i_8_n_0 ),
        .I1(\spo[18]_INST_0_i_9_n_0 ),
        .O(\spo[18]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h000000000110692B)) 
    \spo[18]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040555000)) 
    \spo[18]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h208B120424882002)) 
    \spo[18]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4E868E4A30AC0466)) 
    \spo[18]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h49484D180C000581)) 
    \spo[18]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h004C080000400081)) 
    \spo[18]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[19]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[19]_INST_0_i_3_n_0 ),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h0000000004070F0F)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  MUXF7 \spo[19]_INST_0_i_2 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(\spo[19]_INST_0_i_6_n_0 ),
        .O(\spo[19]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[19]_INST_0_i_3 
       (.I0(\spo[19]_INST_0_i_7_n_0 ),
        .I1(\spo[19]_INST_0_i_8_n_0 ),
        .O(\spo[19]_INST_0_i_3_n_0 ),
        .S(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[19]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[0]),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6417D4E02004E4E6)) 
    \spo[19]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4FC0CEF44C4C4EE7)) 
    \spo[19]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4161791D40D010D1)) 
    \spo[19]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AA820882209)) 
    \spo[19]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[19]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_3_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0000000040000848)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  MUXF8 \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_4_n_0 ),
        .I1(\spo[1]_INST_0_i_5_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_6_n_0 ),
        .I1(\spo[1]_INST_0_i_7_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ),
        .S(a[4]));
  MUXF7 \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_8_n_0 ),
        .I1(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h402260041449050A)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4001F00A42440163)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h02402012BAA9B380)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000841443CE8)) 
    \spo[1]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h3000BBBB30008888)) 
    \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[4]),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_3_n_0 ),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \spo[20]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(\spo[20]_INST_0_i_4_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5420891420000000)) 
    \spo[20]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  MUXF7 \spo[20]_INST_0_i_3 
       (.I0(\spo[20]_INST_0_i_5_n_0 ),
        .I1(\spo[20]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000001500000)) 
    \spo[20]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002000020222623)) 
    \spo[20]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111091510111184)) 
    \spo[20]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[21]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[21]_INST_0_i_3_n_0 ),
        .O(spo[21]));
  MUXF7 \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_4_n_0 ),
        .I1(\spo[21]_INST_0_i_5_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_6_n_0 ),
        .I1(\spo[21]_INST_0_i_7_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[21]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_8_n_0 ),
        .I1(\spo[21]_INST_0_i_9_n_0 ),
        .O(\spo[21]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000011118460)) 
    \spo[21]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000051155555)) 
    \spo[21]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h60117302DBB95477)) 
    \spo[21]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555555D5C865961)) 
    \spo[21]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8B00682266D70608)) 
    \spo[21]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1B080397197C80D0)) 
    \spo[21]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[22]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[22]_INST_0_i_3_n_0 ),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[7]),
        .I1(\spo[22]_INST_0_i_4_n_0 ),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(\spo[22]_INST_0_i_5_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  MUXF7 \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_6_n_0 ),
        .I1(\spo[22]_INST_0_i_7_n_0 ),
        .O(\spo[22]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[22]_INST_0_i_3 
       (.I0(\spo[22]_INST_0_i_8_n_0 ),
        .I1(\spo[22]_INST_0_i_9_n_0 ),
        .O(\spo[22]_INST_0_i_3_n_0 ),
        .S(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[22]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000410B001)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0102240010110406)) 
    \spo[22]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1105A20001001002)) 
    \spo[22]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h402000050A020008)) 
    \spo[22]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[22]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0080000030134404)) 
    \spo[22]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_2_n_0 ),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h000000000005C002)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  MUXF8 \spo[23]_INST_0_i_2 
       (.I0(\spo[23]_INST_0_i_3_n_0 ),
        .I1(\spo[23]_INST_0_i_4_n_0 ),
        .O(\spo[23]_INST_0_i_2_n_0 ),
        .S(a[6]));
  MUXF7 \spo[23]_INST_0_i_3 
       (.I0(\spo[23]_INST_0_i_5_n_0 ),
        .I1(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_3_n_0 ),
        .S(a[4]));
  MUXF7 \spo[23]_INST_0_i_4 
       (.I0(\spo[23]_INST_0_i_7_n_0 ),
        .I1(\spo[23]_INST_0_i_8_n_0 ),
        .O(\spo[23]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000980804000)) 
    \spo[23]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00AA2A0000000000)) 
    \spo[23]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000808082A0)) 
    \spo[23]_INST_0_i_7 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00820000)) 
    \spo[23]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h000000001515D440)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  MUXF8 \spo[24]_INST_0_i_2 
       (.I0(\spo[24]_INST_0_i_3_n_0 ),
        .I1(\spo[24]_INST_0_i_4_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ),
        .S(a[6]));
  MUXF7 \spo[24]_INST_0_i_3 
       (.I0(\spo[24]_INST_0_i_5_n_0 ),
        .I1(\spo[24]_INST_0_i_6_n_0 ),
        .O(\spo[24]_INST_0_i_3_n_0 ),
        .S(a[4]));
  MUXF7 \spo[24]_INST_0_i_4 
       (.I0(\spo[24]_INST_0_i_7_n_0 ),
        .I1(\spo[24]_INST_0_i_8_n_0 ),
        .O(\spo[24]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h4164000000901090)) 
    \spo[24]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1DBE214000000000)) 
    \spo[24]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4A005708400D5012)) 
    \spo[24]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55555555014A8242)) 
    \spo[24]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[24]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_3_n_0 ),
        .O(spo[25]));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011155555)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  MUXF8 \spo[25]_INST_0_i_3 
       (.I0(\spo[25]_INST_0_i_4_n_0 ),
        .I1(\spo[25]_INST_0_i_5_n_0 ),
        .O(\spo[25]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[25]_INST_0_i_4 
       (.I0(\spo[25]_INST_0_i_6_n_0 ),
        .I1(\spo[25]_INST_0_i_7_n_0 ),
        .O(\spo[25]_INST_0_i_4_n_0 ),
        .S(a[4]));
  MUXF7 \spo[25]_INST_0_i_5 
       (.I0(\spo[25]_INST_0_i_8_n_0 ),
        .I1(\spo[25]_INST_0_i_9_n_0 ),
        .O(\spo[25]_INST_0_i_5_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000441400000000)) 
    \spo[25]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0908018118188094)) 
    \spo[25]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[25]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \spo[25]_INST_0_i_8 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .O(\spo[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF20000000)) 
    \spo[25]_INST_0_i_9 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[25]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[27]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[26]_INST_0_i_2_n_0 ),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'h0000000010044510)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  MUXF8 \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_3_n_0 ),
        .I1(\spo[26]_INST_0_i_4_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ),
        .S(a[6]));
  MUXF7 \spo[26]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_3_n_0 ),
        .S(a[4]));
  MUXF7 \spo[26]_INST_0_i_4 
       (.I0(\spo[26]_INST_0_i_7_n_0 ),
        .I1(\spo[26]_INST_0_i_8_n_0 ),
        .O(\spo[26]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h9A408793031381CA)) 
    \spo[26]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA911098D988154D0)) 
    \spo[26]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44E8C85611C9B851)) 
    \spo[26]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCC725C597D4DE9C4)) 
    \spo[26]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[27]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[27]_INST_0_i_3_n_0 ),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'h0000000040446110)) 
    \spo[27]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010155555)) 
    \spo[27]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[27]_INST_0_i_2_n_0 ));
  MUXF8 \spo[27]_INST_0_i_3 
       (.I0(\spo[27]_INST_0_i_4_n_0 ),
        .I1(\spo[27]_INST_0_i_5_n_0 ),
        .O(\spo[27]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[27]_INST_0_i_4 
       (.I0(\spo[27]_INST_0_i_6_n_0 ),
        .I1(\spo[27]_INST_0_i_7_n_0 ),
        .O(\spo[27]_INST_0_i_4_n_0 ),
        .S(a[4]));
  MUXF7 \spo[27]_INST_0_i_5 
       (.I0(\spo[27]_INST_0_i_8_n_0 ),
        .I1(\spo[27]_INST_0_i_9_n_0 ),
        .O(\spo[27]_INST_0_i_5_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h3ED0852A03918142)) 
    \spo[27]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA89819A16D02C090)) 
    \spo[27]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCEC84064D8894010)) 
    \spo[27]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCC684E587C47E9C4)) 
    \spo[27]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[28]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[28]_INST_0_i_3_n_0 ),
        .O(spo[28]));
  MUXF7 \spo[28]_INST_0_i_1 
       (.I0(\spo[28]_INST_0_i_4_n_0 ),
        .I1(\spo[28]_INST_0_i_5_n_0 ),
        .O(\spo[28]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_6_n_0 ),
        .I1(\spo[28]_INST_0_i_7_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[28]_INST_0_i_3 
       (.I0(\spo[28]_INST_0_i_8_n_0 ),
        .I1(\spo[28]_INST_0_i_9_n_0 ),
        .O(\spo[28]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000000070304)) 
    \spo[28]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[28]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \spo[28]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h011188B820031215)) 
    \spo[28]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000002014541195)) 
    \spo[28]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h868042441236035A)) 
    \spo[28]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB310811F81017440)) 
    \spo[28]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[29]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_3_n_0 ),
        .O(spo[29]));
  MUXF7 \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(\spo[29]_INST_0_i_5_n_0 ),
        .O(\spo[29]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[29]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_6_n_0 ),
        .I1(\spo[29]_INST_0_i_7_n_0 ),
        .O(\spo[29]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[29]_INST_0_i_3 
       (.I0(\spo[29]_INST_0_i_8_n_0 ),
        .I1(\spo[29]_INST_0_i_9_n_0 ),
        .O(\spo[29]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h000000001014011A)) 
    \spo[29]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000014400000)) 
    \spo[29]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h30332212036198F9)) 
    \spo[29]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4470D4775741475A)) 
    \spo[29]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h886EB791165F70E3)) 
    \spo[29]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEDF61BA1EEDF99A3)) 
    \spo[29]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[2]_INST_0_i_3_n_0 ),
        .O(spo[2]));
  MUXF7 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_4_n_0 ),
        .I1(\spo[2]_INST_0_i_5_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_6_n_0 ),
        .I1(\spo[2]_INST_0_i_7_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_8_n_0 ),
        .I1(\spo[2]_INST_0_i_9_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000000502440)) 
    \spo[2]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045550000)) 
    \spo[2]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC4F31200C1808082)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h891802064668E449)) 
    \spo[2]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h751C623967E38202)) 
    \spo[2]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h13EDB0D8010223A5)) 
    \spo[2]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[31]_INST_0_i_3_n_0 ),
        .O(spo[30]));
  MUXF7 \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_4_n_0 ),
        .I1(\spo[31]_INST_0_i_5_n_0 ),
        .O(\spo[31]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[31]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_6_n_0 ),
        .I1(\spo[31]_INST_0_i_7_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[31]_INST_0_i_3 
       (.I0(\spo[31]_INST_0_i_8_n_0 ),
        .I1(\spo[31]_INST_0_i_9_n_0 ),
        .O(\spo[31]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000010000040)) 
    \spo[31]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001115555)) 
    \spo[31]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44E400A400000000)) 
    \spo[31]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7746765D00808000)) 
    \spo[31]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[7]),
        .O(\spo[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00A4000200111000)) 
    \spo[31]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0222888004011000)) 
    \spo[31]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[3]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[3]_INST_0_i_3_n_0 ),
        .O(spo[3]));
  MUXF7 \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_4_n_0 ),
        .I1(\spo[3]_INST_0_i_5_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_6_n_0 ),
        .I1(\spo[3]_INST_0_i_7_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_8_n_0 ),
        .I1(\spo[3]_INST_0_i_9_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000022001000)) 
    \spo[3]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005551000)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h50C0002100000820)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC40000C4C4208C81)) 
    \spo[3]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2822684044252102)) 
    \spo[3]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0A0282080862461D)) 
    \spo[3]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(a[8]),
        .I2(\spo[4]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_3_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h0000100000002020)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  MUXF7 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_7_n_0 ),
        .I1(\spo[4]_INST_0_i_8_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[0]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8C000020F8200A40)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8B56039502802820)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3840248204230501)) 
    \spo[4]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h10110A80210292D1)) 
    \spo[4]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_3_n_0 ),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h0000000005011081)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[5]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  MUXF8 \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_4_n_0 ),
        .I1(\spo[5]_INST_0_i_5_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_6_n_0 ),
        .I1(\spo[5]_INST_0_i_7_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[4]));
  MUXF7 \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_8_n_0 ),
        .I1(\spo[5]_INST_0_i_9_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hF868CA40006151D3)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00651048000A212D)) 
    \spo[5]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8BC89C9417012502)) 
    \spo[5]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h51A94388C2123021)) 
    \spo[5]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \spo[6]_INST_0 
       (.I0(a[4]),
        .I1(\spo[6]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[7]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  MUXF8 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_3_n_0 ),
        .I1(\spo[6]_INST_0_i_4_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ),
        .S(a[4]));
  MUXF7 \spo[6]_INST_0_i_4 
       (.I0(\spo[6]_INST_0_i_7_n_0 ),
        .I1(\spo[6]_INST_0_i_8_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h2020200004050181)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00020200280A0289)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8090C0900200A000)) 
    \spo[6]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0801200022200020)) 
    \spo[6]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[7]_INST_0 
       (.I0(a[4]),
        .I1(\spo[7]_INST_0_i_1_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_3_n_0 ),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[7]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  MUXF7 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_4_n_0 ),
        .I1(\spo[7]_INST_0_i_5_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[4]));
  MUXF7 \spo[7]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_6_n_0 ),
        .I1(\spo[7]_INST_0_i_7_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h8C04CC0400000080)) 
    \spo[7]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001208020280080)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9402288884812D03)) 
    \spo[7]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0045104800080121)) 
    \spo[7]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \spo[8]_INST_0 
       (.I0(a[4]),
        .I1(\spo[10]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(a[8]),
        .I4(\spo[8]_INST_0_i_1_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_2_n_0 ),
        .I1(\spo[15]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[9]_INST_0_i_2_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_3_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8009000000200000)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000080002400047)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[9]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h8000080002400047)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002804020141)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000F0000008080)) 
    \spo[9]_INST_0_i_3 
       (.I0(\spo[22]_INST_0_i_4_n_0 ),
        .I1(a[4]),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_4_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[9]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .O(\spo[9]_INST_0_i_4_n_0 ));
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
