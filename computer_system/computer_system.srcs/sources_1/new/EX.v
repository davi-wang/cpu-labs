`timescale 1ns / 1ps
`include"Header.v"

module EX(input clk,
          input reset,
          input [`InscBus] insc_i,
          input [`RegBus]in_data1,
          input [`RegBus]in_data2,
          input [`AddrBus]link_addr,
          input [`AluBus]alu_op_i,
          input [`RegAddrBus] wd_i,                   //write addr of reg
          input wreg_i,                           //write enable
          input [`RegBus] cp0_rdata_in,
          input [`RegBus] mem_cp0_wdata_in,
          input [`RegAddrBus] mem_cp0_waddr_in,
          input mem_cp0_wreg,
          input [`RegBus] wb_cp0_wdata_in,
          input [`RegAddrBus] wb_cp0_waddr_in,
          input wb_cp0_wreg,
          output reg [`RegAddrBus] cp0_raddr_out,
          output reg [`RegAddrBus] cp0_waddr_ex,
          output reg cp0_wreg_ex,
          output reg [`RegBus] cp0_wdata_ex,
          output reg [`RegAddrBus] wd_o,          //write addr of reg
          output reg wreg_o,                      //write enalbe
          output reg[`RegBus] wdata_o,
          output [`AddrBus] wmem_addr_o,
          output [`AluBus] alu_op_o,
          output [`RegBus] wmem_data);
    
    reg [32:0]mid_result;
    assign alu_op_o    = alu_op_i;
    assign wmem_addr_o = in_data1 + {{16{insc_i[15]}}, insc_i[15:0]};
    assign wmem_data   = in_data2;
    
    always@(*) begin
        if (!reset) begin
            mid_result[32] <= `ZeroWord;
            end else begin
            case(alu_op_i)
                `ALU_ADD:begin
                    mid_result <= {in_data1[31], in_data1}+{in_data2[31],in_data2};
                end
                `ALU_ADDU: begin
                    mid_result <= {1'b0, in_data1}+{1'b0,in_data2};
                end
                `ALU_SUB: begin
                    mid_result <= {in_data1[31], in_data1}-{in_data2[31],in_data2};
                end
                `ALU_SUBU: begin
                    mid_result <= {1'b0, in_data1}-{1'b0,in_data2};
                end
                `ALU_AND: mid_result[31:0]    <= in_data1 & in_data2;
                `ALU_OR : mid_result[31:0]    <= in_data1 | in_data2;
                `ALU_XOR: mid_result[31:0]    <= in_data1 ^ in_data2;
                `ALU_NOR: mid_result[31:0]    <= ~(in_data1 | in_data2);
                `ALU_SLT: mid_result[31:0]    <= ($signed(in_data1) < $signed(in_data2))? 32'd1:0;
                `ALU_SLTU:mid_result[31:0]    <= (in_data1 < in_data2)? 32'd1:32'd0;
                `ALU_LEFT: mid_result[31:0]   <= in_data2 << in_data1[4:0];
                `ALU_RIGHTL: mid_result[31:0] <= in_data2 >> in_data1[4:0];
                `ALU_RIGHTA: mid_result[31:0] <= $signed(in_data2) >> in_data1[4:0];
                `ALU_BRANCH: mid_result[31:0] <= link_addr;
                `ALU_NOP: mid_result[31:0]    <= 32'd0;
                `ALU_MFC0:begin
                    cp0_raddr_out <= insc_i[15:11];
                    mid_result    <= cp0_rdata_in;
                    if (mem_cp0_wreg && mem_cp0_waddr_in == insc_i[15:11]) begin
                        mid_result <= mem_cp0_wdata_in;
                        end   else if (wb_cp0_wreg && wb_cp0_waddr_in == insc_i[15:11]) begin
                            mid_result <= wb_cp0_wdata_in;
                        end
                    end
                    default: begin
                        mid_result[31:0] <= 32'd0;
                    end
            endcase
        end
    end
    
    always @(*) begin
        wd_o    <= wd_i;
        wreg_o  <= wreg_i;
        wdata_o <= mid_result;
    end
    
    //mtc0
    always @(*) begin
        if (!reset) begin
            cp0_waddr_ex <= `NopRegAddr;
            cp0_wdata_ex <= `ZeroWord;
            cp0_wreg_ex  <= 1'b0;
        end
            else if (alu_op_i == `ALU_MTC0) begin
            cp0_waddr_ex <= insc_i[15:11];
            cp0_wdata_ex <= in_data1;
            cp0_wreg_ex  <= 1'b1;
        end
        else begin
            cp0_waddr_ex <= `NopRegAddr;
            cp0_wdata_ex <= `ZeroWord;
            cp0_wreg_ex  <= 1'b0;
        end
    end
    
endmodule
