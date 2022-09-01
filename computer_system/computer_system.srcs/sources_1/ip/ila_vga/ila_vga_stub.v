// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Sep  1 21:26:03 2022
// Host        : DESKTOP-4TH2AOF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/assignment/Hardware_practice/MIPS-master-branch/hardware-labs/computer_system/computer_system.srcs/sources_1/ip/ila_vga/ila_vga_stub.v
// Design      : ila_vga
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module ila_vga(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[9:0],probe1[9:0],probe2[0:0],probe3[14:0],probe4[3:0],probe5[3:0],probe6[3:0],probe7[0:0],probe8[0:0]" */;
  input clk;
  input [9:0]probe0;
  input [9:0]probe1;
  input [0:0]probe2;
  input [14:0]probe3;
  input [3:0]probe4;
  input [3:0]probe5;
  input [3:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
endmodule
