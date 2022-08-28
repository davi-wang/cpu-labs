`include "Header.v"
`timescale 1ns / 1ps
module MEM (
    input  rst,
    input [`RegAddrBus] w_reg_addr_i,
    input wreg_i,
    input [`RegBus] wdata_i,
    input [`AluBus] alu_op_i,
    input [`AddrBus] wmem_addr_i,
    input [`RegBus] wmem_data_i,
    input [`RegBus] dmem_data_i,

    output reg [`AddrBus] wmem_addr_o,
    output reg wmem_o,
    output reg [`RegBus] wmem_data_o,
    output reg [3:0] mem_sec,
    output reg[`RegAddrBus] w_reg_addr_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o
);

    always @(*) begin
        if(!rst) begin
            w_reg_addr_o <= `NopRegAddr;
            wreg_o <= 1'b0;
            wdata_o <= `ZeroWord;
            wmem_addr_o <= `ZeroWord;
            wmem_o <= 1'b0;
            wmem_data_o <= `ZeroWord;
            mem_sec <= 4'b0000;
        end else begin
            w_reg_addr_o <= w_reg_addr_i;
            wreg_o <= wreg_i;
            wdata_o <= wdata_i;
            wmem_addr_o <= `ZeroWord;
            wmem_o <= 1'b0;
            wmem_data_o <= `ZeroWord;
            mem_sec <= 4'b0000;

            case(alu_op_i)
                `ALU_LB:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    case(wmem_addr_i[1:0])
                        2'b00: begin
                            wdata_o <= {{24{dmem_data_i[7]}}, dmem_data_i[7:0]};
                            mem_sec <= 4'b0001;
                        end
                        2'b01:begin
                            wdata_o <= {{24{dmem_data_i[15]}}, dmem_data_i[15:8]};
                            mem_sec <= 4'b0010;
                        end
                        2'b10:begin
                            wdata_o <= {{24{dmem_data_i[23]}}, dmem_data_i[23:16]};
                            mem_sec <= 4'b0100;
                        end
                        2'b11:begin
                            wdata_o <= {{24{dmem_data_i[31]}}, dmem_data_i[31:24]};
                            mem_sec <= 4'b1000;
                        end
                    endcase
                end

                `ALU_LBU:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    case(wmem_addr_i[1:0])
                        2'b00: begin
                            wdata_o <= {{24{1'b0}}, dmem_data_i[7:0]};
                            mem_sec <= 4'b0001;
                        end
                        2'b01:begin
                            wdata_o <= {{24{1'b0}}, dmem_data_i[15:8]};
                            mem_sec <= 4'b0010;
                        end
                        2'b10:begin
                            wdata_o <= {{24{1'b0}}, dmem_data_i[23:16]};
                            mem_sec <= 4'b0100;
                        end
                        2'b11:begin
                            wdata_o <= {{24{1'b0}}, dmem_data_i[31:24]};
                            mem_sec <= 4'b1000;
                        end
                        default:begin
                            wdata_o <= `ZeroWord;
                        end
                    endcase
                end
                
                `ALU_LH:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    case(wmem_addr_i[1:0])
                        2'b00: begin
                            wdata_o <= {{16{dmem_data_i[15]}}, dmem_data_i[15:0]};
                            mem_sec <= 4'b0011;
                        end
                        2'b10:begin
                            wdata_o <= {{16{dmem_data_i[31]}}, dmem_data_i[31:16]};
                            mem_sec <= 4'b1100;
                        end
                        default:begin
                            wdata_o <= `ZeroWord;
                        end
                    endcase
                end

                `ALU_LHU:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    case(wmem_addr_i[1:0])
                        2'b00: begin
                            wdata_o <= {{16{1'b0}}, dmem_data_i[15:0]};
                            mem_sec <= 4'b0011;
                        end
                        2'b10:begin
                            wdata_o <= {{16{1'b0}}, dmem_data_i[31:16]};
                            mem_sec <= 4'b1100;
                        end
                        default:begin
                            wdata_o <= `ZeroWord;
                        end
                    endcase
                end

                `ALU_LW:begin
                    wmem_o <= 1'b0;
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    wdata_o <= dmem_data_i;
                    mem_sec <= 4'b1111;
                end

                `ALU_SB:begin
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    wmem_o <= 1'b1;
                    case(wmem_addr_i[1:0])
                        2'b00:begin
                            wmem_data_o <= {dmem_data_i[31:8], wmem_data_i[7:0]};
                            mem_sec <= 4'b0001;
                        end
                        2'b01:begin
                            wmem_data_o <= {dmem_data_i[31:16], wmem_data_i[7:0], dmem_data_i[7:0]};
                            mem_sec <= 4'b0010;
                        end
                        2'b10:begin
                            wmem_data_o <= {dmem_data_i[31:24], wmem_data_i[7:0], dmem_data_i[15:0]};
                            mem_sec <= 4'b0100;
                        end
                        2'b11:begin
                            wmem_data_o <= {wmem_data_i[7:0], dmem_data_i[23:0]};
                            mem_sec <= 4'b1000;
                        end
                        default:begin
                            mem_sec <= 4'b0000;
                        end
                    endcase
                end

                `ALU_SH:begin
                   wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    wmem_o <= 1'b1;
                    case(wmem_addr_i[1:0])
                        2'b00:begin
                            wmem_data_o <= {dmem_data_i[31:16], wmem_data_i[15:0]};
                            mem_sec <= 4'b0011;
                        end
                        2'b10:begin
                            wmem_data_o <= {wmem_data_i[15:0], dmem_data_i[15:0]};
                            mem_sec <= 4'b1100;
                        end
                        default:begin
                            mem_sec <= 4'b0000;
                        end
                    endcase
                end

                `ALU_SW:begin
                    wmem_addr_o <= wmem_addr_i;
                    wmem_o <= 1'b1;
                    wmem_data_o <= wmem_data_i;
                    mem_sec <= 4'b1111;
                end
            endcase
        end
    end
    
endmodule