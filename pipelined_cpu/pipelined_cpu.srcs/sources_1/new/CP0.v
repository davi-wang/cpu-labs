`timescale 1ps/1ps
`include "Header.v"

module CP0 (input wire clk,
            input wire rst,
            input wire we_i,
            input wire [4:0] waddr_i,
            input wire [4:0] raddr_i,
            input wire [`RegBus] data_i,
            input wire[5:0] int_i,
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
