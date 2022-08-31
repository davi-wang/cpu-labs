`include "Header.v"
`timescale 1ns / 1ps
module MEM (input rst,
            input [`RegAddrBus] w_reg_addr_i,
            input wreg_i,
            input [`RegBus] wdata_i,
            input [`AluBus] alu_op_i,
            input [`AddrBus] wmem_addr_i,
            input [`RegBus] wmem_data_i,
            input [`RegBus] dmem_data_i,
            input [`RegBus] cp0_wdata_i,
            input [`RegAddrBus] cp0_waddr_i,
            input cp0_wreg_i,
            input [31:0] exception_i,
            input [31:0] current_addr_i,
            input [`RegBus] cp0_status_i,
            input [`RegBus] cp0_cause_i,
            input [`RegBus] cp0_epc_i,
            input wb_cp0_wreg,
            input [4:0] wb_cp0_waddr,
            input [`RegBus] wb_cp0_wdata,
            output reg[31:0] exception_o,
            output [`RegBus] cp0_epc_o,
            output [`RegBus] current_addr_o,
            output reg [`RegBus] cp0_wdata_o,
            output reg [`RegAddrBus] cp0_waddr_o,
            output reg cp0_wreg_o,
            output reg [`AddrBus] wmem_addr_o,
            output wmem_we_o,
            output reg [`RegBus] wmem_data_o,
            output reg [3:0] mem_sec,
            output reg[`RegAddrBus] w_reg_addr_o,
            output reg wreg_o,
            output reg[`RegBus] wdata_o);
    
    reg[`RegBus] cp0_status;
    reg[`RegBus] cp0_cause;
    reg[`RegBus] cp0_epc;
    reg wmem_o;
    
    assign current_addr_o = current_addr_i;
    
    always @(*) begin
        if (!rst) begin
            cp0_status <= `ZeroWord;
            end else if (wb_cp0_wreg == 1'b1 && wb_cp0_waddr == `CP0_REG_STATUS) begin
            cp0_status <= wb_cp0_wdata;
            end else begin
            cp0_status <= cp0_status_i;
        end
    end
    
    always @(*) begin
        if (!rst) begin
            cp0_epc <= `ZeroWord;
            end else if (wb_cp0_wreg == 1'b1 && wb_cp0_waddr == `CP0_REG_EPC) begin
            cp0_epc <= wb_cp0_wdata;
            end else begin
            cp0_epc <= cp0_epc_i;
        end
    end
    
    assign cp0_epc_o = cp0_epc;
    
    always @(*) begin
        if (!rst) begin
            cp0_cause <= `ZeroWord;
            end else if (wb_cp0_wreg == 1'b1 && wb_cp0_waddr == `CP0_REG_CAUSE) begin
            cp0_cause[9:8] <= wb_cp0_wdata[9:8];
            cp0_cause[22]  <= wb_cp0_wdata[22];
            cp0_cause[23]  <= wb_cp0_wdata[23];
            end else begin
            cp0_cause <= cp0_cause_i;
        end
    end
    
    always @(*) begin
        if (!rst) begin
            exception_o <= `ZeroWord;
            end else begin
            exception_o <= `ZeroWord;
            if (current_addr_i != `ZeroWord) begin
                if (((cp0_cause[15:8] & cp0_status[15:8]) != 8'h00) && (cp0_status[1] == 1'b0) && (cp0_status[0] == 1'b1))
                begin
                    exception_o <= 32'h00000001;
                end
                else if (exception_i[8] == 1'b1) begin
                exception_o <= 32'h00000008;
                end else if (exception_i[9] == 1'b1) begin
                    exception_o <= 32'h0000000a;
                end else if(exception_i[10] == 1'b1) begin
                    exception_o <= 32'h0000000d;
                end else if(exception_i[11] == 1'b1) begin
                    exception_o <= 32'h0000000c;
                end else if(exception_i[12] == 1'b1) begin
                    exception_o <= 32'h0000000e;
                end 
            end
        end
    end
    
    
    
    always @(*) begin
        if (!rst) begin
            w_reg_addr_o <= `NopRegAddr;
            wreg_o       <= 1'b0;
            wdata_o      <= `ZeroWord;
            wmem_addr_o  <= `ZeroWord;
            wmem_o       <= 1'b0;
            wmem_data_o  <= `ZeroWord;
            mem_sec      <= 4'b0000;
            cp0_waddr_o  <= `NopRegAddr;
            cp0_wdata_o  <= `ZeroWord;
            cp0_wreg_o   <= 1'b0;
            end else begin
            w_reg_addr_o <= w_reg_addr_i;
            wreg_o       <= wreg_i;
            wdata_o      <= wdata_i;
            wmem_addr_o  <= `ZeroWord;
            wmem_o       <= 1'b0;
            wmem_data_o  <= `ZeroWord;
            mem_sec      <= 4'b0000;
            cp0_waddr_o  <= cp0_waddr_i;
            cp0_wdata_o  <= cp0_wdata_i;
            cp0_wreg_o   <= cp0_wreg_i;
            case(alu_op_i)
                `ALU_LB:begin
                    wmem_o      <= 1'b0;
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
                    wmem_o      <= 1'b0;
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
                    wmem_o      <= 1'b0;
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
                    wmem_o      <= 1'b0;
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
                    wmem_o      <= 1'b0;
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    wdata_o     <= dmem_data_i;
                    mem_sec     <= 4'b1111;
                end
                
                `ALU_SB:begin
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    wmem_o      <= 1'b1;
                    case(wmem_addr_i[1:0])
                        2'b00:begin
                            wmem_data_o <= {dmem_data_i[31:8], wmem_data_i[7:0]};
                            mem_sec     <= 4'b0001;
                        end
                        2'b01:begin
                            wmem_data_o <= {dmem_data_i[31:16], wmem_data_i[7:0], dmem_data_i[7:0]};
                            mem_sec     <= 4'b0010;
                        end
                        2'b10:begin
                            wmem_data_o <= {dmem_data_i[31:24], wmem_data_i[7:0], dmem_data_i[15:0]};
                            mem_sec     <= 4'b0100;
                        end
                        2'b11:begin
                            wmem_data_o <= {wmem_data_i[7:0], dmem_data_i[23:0]};
                            mem_sec     <= 4'b1000;
                        end
                        default:begin
                            mem_sec <= 4'b0000;
                        end
                    endcase
                end
                
                `ALU_SH:begin
                    wmem_addr_o <= {wmem_addr_i[31:2], 2'b0};
                    wmem_o      <= 1'b1;
                    case(wmem_addr_i[1:0])
                        2'b00:begin
                            wmem_data_o <= {dmem_data_i[31:16], wmem_data_i[15:0]};
                            mem_sec     <= 4'b0011;
                        end
                        2'b10:begin
                            wmem_data_o <= {wmem_data_i[15:0], dmem_data_i[15:0]};
                            mem_sec     <= 4'b1100;
                        end
                        default:begin
                            mem_sec <= 4'b0000;
                        end
                    endcase
                end
                
                `ALU_SW:begin
                    wmem_addr_o <= wmem_addr_i;
                    wmem_o      <= 1'b1;
                    wmem_data_o <= wmem_data_i;
                    mem_sec     <= 4'b1111;
                end
            endcase
        end
    end
    

    assign wmem_we_o = wmem_o & (~(|exception_o));

endmodule
