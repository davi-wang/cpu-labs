`timescale 1ps/1ps
`include "Header.v"

module CP0 (input wire clk,
            input wire rst,
            input wire we_i,
            input wire [`RegAddrBus] waddr_i,
            input wire [`RegAddrBus] raddr_i,
            input wire [`RegBus] data_i,
            input wire[5:0] int_i,
            input [31:0] exception_i,
            input [31:0] current_addr_i,
            output reg [`RegBus] data_o,
            output reg [`RegBus] count_o,
            output reg [`RegBus] compare_o,
            output reg [`RegBus] status_o,
            output reg [`RegBus] cause_o,
            output reg [`RegBus] epc_o,
            output reg timer_int_o);
    
    always @(posedge clk) begin
        if (!rst) begin
            count_o     <= `ZeroWord;
            compare_o   <= `ZeroWord;
            status_o    <= 32'h10000000; //CP0 exist
            cause_o     <= `ZeroWord;
            epc_o       <= `ZeroWord;
            timer_int_o <= `InterruptNotAssert;
            // config_o <= `ZeroWord
            // prid_o <= `ZeroWord
        end
        else begin
            count_o       <= count_o + 1;
            cause_o[15:0] <= int_i;
            
            // timer interrupt if compare == count
            if (compare_o != `ZeroWord && compare_o == count_o)
                timer_int_o <= `InterruptAssert;
            
            // write to regs
            if (we_i == `WriteEnable) begin
                case(waddr_i)
                    `CP0_REG_COUNT: count_o <= data_i;
                    `CP0_REG_COMPARE: begin
                        compare_o   <= data_i;
                        timer_int_o <= `InterruptNotAssert;
                    end
                    `CP0_REG_STATUS: status_o <= data_i;
                    `CP0_REG_EPC: epc_o       <= data_i;
                    `CP0_REG_CAUSE: begin
                        cause_o[9:8] <= data_i[9:8];
                        cause_o[22]  <= data_i[22];
                        cause_o[23]  <= data_i[23];
                    end
                endcase
            end

            case(exception_i)
                32'h00000001: begin                        //out interrupt
                    epc_o <= current_addr_i;
                    status_o[1] <= 1'b1;
                    cause_o[6:2] <= 5'b00000;
                end

                32'h00000008: begin                        //system call
                    if(status_o[1] == 1'b0) begin
                        epc_o <= current_addr_i;
                    end
                    status_o[1] <= 1'b1;
                    cause_o[6:2] <= 5'b01000;
                end

                32'h0000000a: begin                        //invalid ins
                    if(status_o[1] == 1'b0) begin
                        epc_o <= current_addr_i;
                    end
                    status_o[1] <= 1'b1;
                    cause_o[6:2] <= 5'b01010;
                end

                32'h0000000d: begin                        //trap
                    if(status_o[1] == 1'b0) begin
                        epc_o <= current_addr_i;
                    end
                    status_o[1] <= 1'b1;
                    cause_o[6:2] <= 5'b01101;
                end
                
                32'h0000000c: begin                        //ov
                    if(status_o[1] == 1'b0) begin
                        epc_o <= current_addr_i;
                    end
                    status_o[1] <= 1'b1;
                    cause_o[6:2] <= 5'b01100;
                end

                32'h0000000e: begin                        //eret
                    status_o[1] <= 1'b0;
                end
                
                default:begin
                    
                end

            endcase
        end
        
    end
    
    //read from regs
    always @(*) begin
        case(raddr_i)
            `CP0_REG_COUNT: data_o   <= count_o;
            `CP0_REG_COMPARE: data_o <= compare_o;
            `CP0_REG_STATUS: data_o  <= status_o;
            `CP0_REG_EPC: data_o     <= epc_o;
            `CP0_REG_CAUSE: data_o   <= cause_o;
            default:begin
            end
        endcase
    end
    
    
    
endmodule
