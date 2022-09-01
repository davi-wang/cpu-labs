// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Sep  1 21:22:11 2022
// Host        : DESKTOP-4TH2AOF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/assignment/Hardware_practice/MIPS-master-branch/hardware-labs/computer_system/computer_system.srcs/sources_1/ip/Data_memory/Data_memory_stub.v
// Design      : Data_memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module Data_memory(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[11:0],d[31:0],clk,we,spo[31:0]" */;
  input [11:0]a;
  input [31:0]d;
  input clk;
  input we;
  output [31:0]spo;
endmodule
