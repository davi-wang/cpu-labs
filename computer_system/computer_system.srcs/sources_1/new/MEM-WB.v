`include "Header.v"
`timescale 1ns / 1ps
module MEM_WB (input clk,
               input rst,
               input [`RegAddrBus] w_reg_addr_mem,
               input wreg_mem,
               input [`RegBus] wdata_mem,
               input [`RegBus] cp0_wdata_mem,
               input [`RegAddrBus] cp0_waddr_mem,
               input cp0_wreg_mem,
               output reg [`RegBus] cp0_wdata_wb,
               output reg [`RegAddrBus] cp0_waddr_wb,
               output reg cp0_wreg_wb,
               output reg[`RegAddrBus] w_reg_addr_wb,
               output reg wreg_wb,
               output reg[`RegBus] wdata_wb);
    
    always @(posedge clk) begin
        if (!rst) begin
            w_reg_addr_wb <= `NopRegAddr;
            wreg_wb       <= 1'b0;
            wdata_wb      <= `ZeroWord;
            cp0_waddr_wb  <= `NopRegAddr;
            cp0_wdata_wb  <= `ZeroWord;
            cp0_wreg_wb   <= 1'b0;
            end else begin
            w_reg_addr_wb <= w_reg_addr_mem;
            wreg_wb       <= wreg_mem;
            wdata_wb      <= wdata_mem;
            cp0_waddr_wb  <= cp0_waddr_mem;
            cp0_wdata_wb  <= cp0_wdata_mem;
            cp0_wreg_wb   <= cp0_wreg_mem;
        end
    end
    
endmodule
