`include "Header.v"
`timescale 1ns / 1ps
module ID (input rst,
           input wire[31:0] pc_i,           //pc value
           input wire[31:0] inst_i,         //instruction code
           input wire[31:0] reg1_data_i,
           input wire[31:0] reg2_data_i,
           input wire ex_wreg_i,
           input wire[31:0] ex_wdata_i,
           input wire[4:0] ex_wd_i,
           input wire mem_wreg_i,
           input wire[31:0] mem_wdata_i,
           input wire[4:0] mem_wd_i,
           output reg branch_flag_o,
           output reg [31:0] branch_target,
           output reg [31:0] link_addr_o,
           output stallreq,
           output reg reg1_read_o,
           output reg reg2_read_o,
           output reg[4:0] reg1_addr_o,
           output reg[4:0] reg2_addr_o,
           output reg[3:0] alu_op,
           output reg[2:0] alu_sec,
           output reg[31:0] reg1_o,
           output reg[31:0] reg2_o,
           output reg[4:0] wd_o,
           output reg wreg_o);
    
    wire[5:0] op  = inst_i[31:26];
    wire[4:0] op2 = inst_i[10:6];
    wire[5:0] op3 = inst_i[5:0];
    wire[4:0] op4 = inst_i[20:16];
    
    wire[4:0] rs = inst_i[25:21];
    wire[4:0] rt = inst_i[20:16];
    wire[4:0] rd = inst_i[15:11];
    
    reg valid;
    reg [31:0] immed;
    
    //branch and J
    wire [31:0] pc_plus_4;
    wire [31:0] pc_plus_8;
    assign pc_plus_4 = pc_i+4;
    assign pc_plus_8 = pc_i+8;
    
    wire [31:0] sign_ext_00;
    assign sign_ext_00 = {{14{inst_i[15]}}, inst_i[15:0], 2'b00};
    
    
    //TODO:DECODE INSTRUCTIONS TO WRITE VALUE TO OUTPUT
    
    //decode instruction
    always @(*) begin
        if (!rst) begin
            alu_op        <= 4'h0;
            alu_sec       <= 3'b0;
            wreg_o        <= 1'b0;
            wd_o          <= `NopRegAddr;
            reg1_read_o   <= 1'b0;
            reg2_read_o   <= 1'b0;
            reg1_addr_o   <= `NopRegAddr;
            reg2_addr_o   <= `NopRegAddr;
            valid         <= 1'b1;
            immed         <= `ZeroWord;
            link_addr_o   <= `ZeroWord;
            branch_target <= `ZeroWord;
            branch_flag_o <= 1'b0;
        end
        else begin
            alu_op        <= 4'h0;
            wreg_o        <= 1'b0;
            wd_o          <= inst_i[15:11];
            reg1_read_o   <= 1'b0;
            reg2_read_o   <= 1'b0;
            valid         <= 1'b0;
            immed         <= `ZeroWord;
            link_addr_o   <= `ZeroWord;
            branch_target <= `ZeroWord;
            branch_flag_o <= 1'b0;
            reg1_addr_o   <= rs;
            reg2_addr_o   <= rt;
            case(op)
                `SPECIAL: begin
                    case(op2)
                        5'b00000: begin
                            case(op3)
                                `EX_OR: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_OR;
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_AND: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_AND;
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_XOR: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_XOR;
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_NOR: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_NOR;
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_SLLV: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_LEFT; //TODO
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_SRLV:begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_RIGHTL; //TODO
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_SRAV: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_RIGHTA; //TODO
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_ADD: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_ADD; 
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end

                                `EX_ADDU: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_ADDU; 
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end

                                `EX_SUB:begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_SUB; 
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end

                                `EX_SUBU:begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_SUBU; 
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end

                                `EX_SLT:begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_SLT; 
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end

                                `EX_SLTU:begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_SLTU; 
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end

                                default: begin
                                    
                                end
                                
                            endcase
                        end
                        default:begin
                            
                        end
                    endcase
                end
                
                `EX_ADDI:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_ADD;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    immed       <= {{16{inst_i[15]}}, inst_i[15:0]};
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end

                `EX_ADDIU:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_ADDU;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    immed       <= {{16{inst_i[15]}}, inst_i[15:0]};
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end

                `EX_SLTI:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_SLT;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    immed       <= {{16{inst_i[15]}}, inst_i[15:0]};
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end

                `EX_SLTIU:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_SLTU;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    immed       <= {{16{inst_i[15]}}, inst_i[15:0]};
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end

                `EX_ORI: begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_OR;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    immed       <= {16'b0, inst_i[15:0]};
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                `EX_ANDI: begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_AND;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    immed       <= {16'b0, inst_i[15:0]};
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                `EX_XORI:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_XOR;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    immed       <= {16'b0, inst_i[15:0]};
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                `EX_LUI:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_OR;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    immed       <= {inst_i[15:0], 16'b0};
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                default:begin
                end
            endcase
            if (inst_i[31:21] == 11'b00000000000) begin
                case(op3)
                    `EX_SLL:begin
                        wreg_o      <= 1'b1;
                        alu_op      <= `ALU_OR; //TODO
                        reg1_read_o <= 1'b1;
                        reg2_read_o <= 1'b0;
                        immed[4:0]  <= inst_i[10:6];
                        wd_o        <= rd;
                        valid       <= 1'b1;
                    end
                    `EX_SRL:begin
                        wreg_o      <= 1'b1;
                        alu_op      <= `ALU_OR; //TODO
                        reg1_read_o <= 1'b1;
                        reg2_read_o <= 1'b0;
                        immed[4:0]  <= inst_i[10:6];
                        wd_o        <= rd;
                        valid       <= 1'b1;
                    end
                    `EX_SRA:begin
                        wreg_o      <= 1'b1;
                        alu_op      <= `ALU_OR; //TODO
                        reg1_read_o <= 1'b1;
                        reg2_read_o <= 1'b0;
                        immed[4:0]  <= inst_i[10:6];
                        wd_o        <= rd;
                        valid       <= 1'b1;
                    end
                endcase
            end
            
            
        end
    end
    
    
    
    //src num1
    always @(*) begin
        if (!rst) begin
            reg1_o <= `ZeroWord;
            end else if (reg1_read_o && ex_wreg_i && ex_wd_i == reg1_addr_o) begin
            reg1_o <= ex_wdata_i;
            end else if (reg1_read_o && ex_wreg_i && mem_wd_i == reg1_addr_o) begin
            reg1_o <= mem_wdata_i;
            end else if (reg1_read_o == 1'b1) begin
            reg1_o <= reg1_data_i;
            end else if (reg1_read_o == 1'b0) begin
            reg1_o <= immed;
            end else begin
            reg1_o <= `ZeroWord;
        end
    end
    
    //src num2
    always @(*) begin
        if (!rst) begin
            reg2_o <= `ZeroWord;
            end else if (reg2_read_o && ex_wreg_i && ex_wd_i == reg2_addr_o) begin
            reg2_o <= ex_wdata_i;
            end else if (reg2_read_o && ex_wreg_i && mem_wd_i == reg2_addr_o) begin
            reg2_o <= mem_wdata_i;
            end else if (reg2_read_o == 1'b1) begin
            reg2_o <= reg2_data_i;
            end else if (reg2_read_o == 1'b0) begin
            reg2_o <= immed;
            end else begin
            reg2_o <= `ZeroWord;
        end
    end
    
endmodule
