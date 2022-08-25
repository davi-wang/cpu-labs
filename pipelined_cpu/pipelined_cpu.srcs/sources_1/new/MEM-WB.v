`include "Header.v"

module MEM (
    input clk,
    input  rst,
    input [4:0] w_reg_addr_mem,
    input wreg_mem,
    input [31:0] wdata_mem,

    output reg[4:0] w_reg_addr_wb,
    output reg wreg_wb,
    output reg[31:0] wdata_wb
);

    always @(posedge clk) begin
        if(!rst) begin
            w_reg_addr_wb <= `NopRegAddr;
            wreg_wb <= 1'b0;
            wdata_wb <= `ZeroWord;
        end else begin
            w_reg_addr_wb <= w_reg_addr_mem;
            wreg_wb <= wreg_mem;
            wdata_wb <= wdata_mem;
        end
    end
    
endmodule