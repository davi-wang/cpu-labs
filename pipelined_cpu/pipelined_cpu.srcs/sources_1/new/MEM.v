`include "Header.v"

module MEM (
    input  rst,
    input [4:0] w_reg_addr_i,
    input wreg_i,
    input [31:0] wdata_i,

    output reg[4:0] w_reg_addr_o,
    output reg wreg_o,
    output reg[31:0] wdata_o
);

    always @(*) begin
        if(!rst) begin
            w_reg_addr_o <= `NopRegAddr;
            wreg_o <= 1'b0;
            wdata_o <= `ZeroWord;
        end else begin
            w_reg_addr_o <= w_reg_addr_i;
            wreg_o <= wreg_i;
            wdata_o <= wdata_i;
        end
    end
    
endmodule