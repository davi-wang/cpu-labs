`include "Header.v"
`timescale 1ns / 1ps
module MEM (
    input  rst,
    input [4:0] w_reg_addr_i,
    input wreg_i,
    input [31:0] wdata_i,
    input [4:0] alu_op_i,
    input [31:0] wmem_addr_i,
    input [31:0] wmem_data_i,
    input [31:0] dmem_data_i,

    output reg [31:0] wmem_addr_o,
    output reg wmem_o,
    output reg [31:0] wmem_data_o,
    output reg[4:0] w_reg_addr_o,
    output reg wreg_o,
    output reg[31:0] wdata_o
);

    always @(*) begin
        if(!rst) begin
            w_reg_addr_o <= `NopRegAddr;
            wreg_o <= 1'b0;
            wdata_o <= `ZeroWord;
            wmem_addr_o <= `ZeroWord;
            wmem_o <= 1'b0;
            wmem_data_o <= `ZeroWord;
        end else begin
            w_reg_addr_o <= w_reg_addr_i;
            wreg_o <= wreg_i;
            wdata_o <= wdata_i;
            wmem_addr_o <= `ZeroWord;
            wmem_o <= 1'b0;
            wmem_data_o <= `ZeroWord;

            case(alu_op_i)
                `ALU_LB:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= wmem_addr_i;
                    case(wmem_addr_i[1:0])
                        2'b00: begin
                            wdata_o <= {{24{dmem_data_i[7]}}, dmem_data_i[7:0]};
                        end
                        2'b01:begin
                            wdata_o <= {{24{dmem_data_i[15]}}, dmem_data_i[15:8]};
                        end
                        2'b10:begin
                            wdata_o <= {{24{dmem_data_i[23]}}, dmem_data_i[23:16]};
                        end
                        2'b11:begin
                            wdata_o <= {{24{dmem_data_i[31]}}, dmem_data_i[31:24]};
                        end
                    endcase
                end

                `ALU_LBU:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= wmem_addr_i;
                    case(wmem_addr_i[1:0])
                        2'b00: begin
                            wdata_o <= {{24{1'b0}}, dmem_data_i[7:0]};
                        end
                        2'b01:begin
                            wdata_o <= {{24{1'b0}}, dmem_data_i[15:8]};
                        end
                        2'b10:begin
                            wdata_o <= {{24{1'b0}}, dmem_data_i[23:16]};
                        end
                        2'b11:begin
                            wdata_o <= {{24{1'b0}}, dmem_data_i[31:24]};
                        end
                        default:begin
                            wdata_o <= `ZeroWord;
                        end
                    endcase
                end
                
                `ALU_LH:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= wmem_addr_i;
                    case(wmem_addr_i[1:0])
                        2'b00: begin
                            wdata_o <= {{16{dmem_data_i[15]}}, dmem_data_i[15:0]};
                        end
                        2'b10:begin
                            wdata_o <= {{16{dmem_data_i[31]}}, dmem_data_i[31:16]};
                        end
                        default:begin
                            wdata_o <= `ZeroWord;
                        end
                    endcase
                end

                `ALU_LHU:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= wmem_addr_i;
                    case(wmem_addr_i[1:0])
                        2'b00: begin
                            wdata_o <= {{16{1'b0}}, dmem_data_i[15:0]};
                        end
                        2'b10:begin
                            wdata_o <= {{16{1'b0}}, dmem_data_i[31:16]};
                        end
                        default:begin
                            wdata_o <= `ZeroWord;
                        end
                    endcase
                end

                `ALU_LW:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= wmem_addr_i;
                    wdata_o <= dmem_data_i;
                end

                `ALU_SB:begin
                    wmem_addr_o <= wmem_addr_i;
                    wmem_o <= 1'b1;
                    wmem_data_o <= {4{wmem_data_i[7:0]}};
                end

                `ALU_SH:begin
                    wmem_addr_o <= wmem_addr_i;
                    wmem_o <= 1'b1;
                    wmem_data_o <= {2{wmem_data_i[15:0]}};
                end

                `ALU_SW:begin
                    wmem_addr_o <= wmem_addr_i;
                    wmem_o <= 1'b1;
                    wmem_data_o <= wmem_data_i;
                end
            endcase
        end
    end
    
endmodule