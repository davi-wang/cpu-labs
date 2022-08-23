`timescale 1ns / 1ps

module Forwarding(
    input  wire[4:0] pipeline2_wt_reg_dst,
    input  wire[4:0] pipeline3_wt_reg_dst,
    input  wire[4:0] rs,
    input  wire[4:0] rt,

    output wire[1:0] forwarding_1,
    output wire[1:0] forwarding_2
    );

assign forwarding_1 = (&pipeline2_wt_reg_dst & rs == pipeline2_wt_reg_dst) ? 2'b01:
       (&pipeline3_wt_reg_dst & rs == pipeline3_wt_reg_dst) ? 2'b10 : 2'b00;

assign forwarding_2 = (&pipeline2_wt_reg_dst & rt == pipeline2_wt_reg_dst) ? 2'b01:
       (&pipeline3_wt_reg_dst & rt == pipeline3_wt_reg_dst) ? 2'b10 : 2'b00;

endmodule