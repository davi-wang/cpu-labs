`include "Header.v"
`timescale 1ns / 1ps
module ID (input rst,
           input wire[`AddrBus] pc_i,           //pc value
           input wire[`InscBus] inst_i,         //instruction code
           input wire[`RegBus] reg1_data_i,
           input wire[`RegBus] reg2_data_i,
           input wire ex_wreg_i,
           input wire[`RegBus] ex_wdata_i,
           input wire[`RegAddrBus] ex_wd_i,
           input wire mem_wreg_i,
           input wire[`RegBus] mem_wdata_i,
           input wire[`RegAddrBus] mem_wd_i,
           input wire[`AluBus] alu_op_f_ex,
           output reg branch_flag_o,
           output reg [`AddrBus] branch_target,
           output reg [`AddrBus] link_addr_o,
           output [1:0] stallreq_o,
           output reg reg1_read_o,
           output reg reg2_read_o,
           output reg[`RegAddrBus] reg1_addr_o,
           output reg[`RegAddrBus] reg2_addr_o,
           output reg[`AluBus] alu_op,
           output reg[`RegBus] reg1_o,
           output reg[`RegBus] reg2_o,
           output reg[`RegAddrBus] wd_o,
           output reg wreg_o,
           output [`InscBus] insc_id);
    
    wire[5:0] op  = inst_i[31:26];
    wire[4:0] op2 = inst_i[10:6];
    wire[5:0] op3 = inst_i[5:0];
    wire[4:0] op4 = inst_i[20:16];
    
    wire[4:0] rs = inst_i[25:21];
    wire[4:0] rt = inst_i[20:16];
    wire[4:0] rd = inst_i[15:11];
    
    reg[1:0] reg1waitload;
    reg[1:0] reg2waitload;
    reg [1:0] stallreq;

    reg valid;
    reg [31:0] immed;
    
    //branch and J
    wire [31:0] pc_plus_4;
    wire [31:0] pc_plus_8;
    assign pc_plus_4 = pc_i+4;
    assign pc_plus_8 = pc_i+8;
    
    wire [31:0] sign_ext_00;
    assign sign_ext_00 = {{14{inst_i[15]}}, inst_i[15:0], 2'b00};
    wire [31:0] j_target;
    assign j_target = {pc_i[31:28], inst_i[25:0], 2'b00};
    assign insc_id  = inst_i;
    
    assign last_load = (alu_op_f_ex == `ALU_LB ||
    alu_op_f_ex == `ALU_LBU ||
    alu_op_f_ex == `ALU_LH ||
    alu_op_f_ex == `ALU_LHU ||
    alu_op_f_ex == `ALU_LW )?1'b1:1'b0;
    
    
    //decode instruction
    always @(*) begin
        if (!rst) begin
            alu_op        <= 5'b00000;
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
            stallreq      <= 2'b0;
        end
        else begin
            alu_op        <= 5'b00000;
            wreg_o        <= 1'b0;
            wd_o          <= rd;
            reg1_read_o   <= 1'b0;
            reg2_read_o   <= 1'b0;
            valid         <= 1'b0;
            immed         <= `ZeroWord;
            link_addr_o   <= `ZeroWord;
            branch_target <= `ZeroWord;
            branch_flag_o <= 1'b0;
            reg1_addr_o   <= rs;
            reg2_addr_o   <= rt;
            stallreq      <= 2'b0;

            if(inst_i[31:21] == 11'b01000000000 &&                  //mf0c
                inst_i[10:0] == 11'b00000000000) begin
                    alu_op <= `ALU_MFC0;
                    wd_o <= rt;
                    wreg_o <= 1'b1;
                    valid <= 1'b1;
                    reg1_read_o <= 1'b0;
                    reg2_read_o <= 1'b0;
                end
            else if(inst_i[31:21] == 11'b01000000100 &&            //mtc0
                inst_i[10:0] == 11'b00000000000) begin
                    alu_op <= `ALU_MTC0;
                    wreg_o <= 1'b0;
                    valid <= 1'b1;
                    reg1_read_o <= 1'b1;
                    reg1_addr_o <= rt;
                    reg2_read_o <= 1'b0;
                end


            case(op)
                `SPECIAL: begin
                    case(op2)
                        5'b00000: begin
                            case(op3)
                                `EX_JR:begin
                                    wreg_o        <= 1'b0;
                                    alu_op        <= `ALU_BRANCH;
                                    reg1_read_o   <= 1'b1;
                                    reg2_read_o   <= 1'b0;
                                    branch_flag_o <= 1'b1;
                                    branch_target <= reg1_o;
                                    link_addr_o   <= `ZeroWord;
                                    stallreq      <= 2'b01;
                                    valid         <= 1'b1;
                                end
                                
                                `EX_JALR:begin
                                    wreg_o        <= 1'b1;
                                    alu_op        <= `ALU_BRANCH;
                                    wd_o          <= rd;
                                    reg1_read_o   <= 1'b1;
                                    reg2_read_o   <= 1'b0;
                                    branch_flag_o <= 1'b1;
                                    branch_target <= reg1_o;
                                    link_addr_o   <= pc_plus_4;
                                    stallreq      <= 2'b01;
                                    valid         <= 1'b1;
                                end
                                
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
                                    alu_op      <= `ALU_LEFT;
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_SRLV:begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_RIGHTL;
                                    reg1_read_o <= 1'b1;
                                    reg2_read_o <= 1'b1;
                                    valid       <= 1'b1;
                                end
                                
                                `EX_SRAV: begin
                                    wreg_o      <= 1'b1;
                                    alu_op      <= `ALU_RIGHTA;
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
                `EX_LB:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_LB;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                
                `EX_LBU:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_LBU;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                
                `EX_LH:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_LH;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                
                `EX_LHU:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_LHU;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                
                `EX_LW:begin
                    wreg_o      <= 1'b1;
                    alu_op      <= `ALU_LW;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                
                `EX_SB:begin
                    wreg_o      <= 1'b0;
                    alu_op      <= `ALU_SB;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b1;
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                
                `EX_SH:begin
                    wreg_o      <= 1'b0;
                    alu_op      <= `ALU_SH;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b1;
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                
                `EX_SW:begin
                    wreg_o      <= 1'b0;
                    alu_op      <= `ALU_SW;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b1;
                    wd_o        <= rt;
                    valid       <= 1'b1;
                end
                
                `EX_J:begin
                    wreg_o        <= 1'b0;
                    alu_op        <= `ALU_BRANCH;
                    reg1_read_o   <= 1'b0;
                    reg2_read_o   <= 1'b0;
                    link_addr_o   <= `ZeroWord;
                    branch_flag_o <= 1'b1;
                    branch_target <= j_target;
                    valid         <= 1'b1;
                    stallreq      <= 2'b01;
                end
                
                `EX_JAL:begin
                    wreg_o        <= 1'b1;
                    alu_op        <= `ALU_BRANCH;
                    reg1_read_o   <= 1'b0;
                    reg2_read_o   <= 1'b0;
                    wd_o          <= 5'b11111;
                    link_addr_o   <= pc_plus_4;
                    branch_flag_o <= 1'b1;
                    branch_target <= j_target;
                    valid         <= 1'b1;
                    stallreq      <= 2'b01;
                end
                
                `EX_BEQ:begin
                    wreg_o      <= 1'b0;
                    alu_op      <= `ALU_BRANCH;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b1;
                    if (reg1_o == reg2_o) begin
                        stallreq      <= 2'b01;
                        branch_flag_o <= 1'b1;
                        branch_target <= pc_plus_4 + sign_ext_00;
                    end
                    valid <= 1'b1;
                end
                
                `EX_BGTZ:begin
                    wreg_o      <= 1'b0;
                    alu_op      <= `ALU_BRANCH;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    if (reg1_o[31] == 1'b0 && reg1_o != `ZeroWord) begin
                        stallreq      <= 2'b01;
                        branch_flag_o <= 1'b1;
                        branch_target <= pc_plus_4 + sign_ext_00;
                    end
                    valid <= 1'b1;
                end
                
                `EX_BLEZ:begin
                    wreg_o      <= 1'b0;
                    alu_op      <= `ALU_BRANCH;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b0;
                    if (reg1_o[31] == 1'b1 || reg1_o == `ZeroWord) begin
                        stallreq      <= 2'b01;
                        branch_flag_o <= 1'b1;
                        branch_target <= pc_plus_4 + sign_ext_00;
                    end
                    valid <= 1'b1;
                end
                
                `EX_BNE:begin
                    wreg_o      <= 1'b0;
                    alu_op      <= `ALU_BRANCH;
                    reg1_read_o <= 1'b1;
                    reg2_read_o <= 1'b1;
                    if (reg1_o != reg2_o) begin
                        stallreq      <= 2'b01;
                        branch_flag_o <= 1'b1;
                        branch_target <= pc_plus_4 + sign_ext_00;
                    end
                    valid <= 1'b1;
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
                
                6'b000001:begin
                    case(op4)
                        `EX_BGEZ: begin
                            wreg_o      <= 1'b0;
                            alu_op      <= `ALU_BRANCH;
                            reg1_read_o <= 1'b1;
                            reg2_read_o <= 1'b0;
                            if (reg1_o[31] == 1'b0) begin
                                stallreq      <= 2'b01;
                                branch_flag_o <= 1'b1;
                                branch_target <= pc_plus_4 + sign_ext_00;
                            end
                            valid <= 1'b1;
                        end
                        
                        `EX_BLTZ: begin
                            wreg_o      <= 1'b0;
                            alu_op      <= `ALU_BRANCH;
                            reg1_read_o <= 1'b1;
                            reg2_read_o <= 1'b0;
                            if (reg1_o[31] == 1'b1) begin
                                stallreq      <= 2'b01;
                                branch_flag_o <= 1'b1;
                                branch_target <= pc_plus_4 + sign_ext_00;
                            end
                            valid <= 1'b1;
                        end
                        
                    endcase
                end
                
                
                default:begin
                end
            endcase
            if (inst_i[31:21] == 11'b00000000000) begin
                case(op3)
                    `EX_SLL:begin
                        wreg_o      <= 1'b1;
                        alu_op      <= `ALU_LEFT;
                        reg1_read_o <= 1'b0;
                        reg2_read_o <= 1'b1;
                        immed[4:0]  <= inst_i[10:6];
                        wd_o        <= rd;
                        valid       <= 1'b1;
                    end
                    `EX_SRL:begin
                        wreg_o      <= 1'b1;
                        alu_op      <= `ALU_RIGHTL;
                        reg1_read_o <= 1'b0;
                        reg2_read_o <= 1'b1;
                        immed[4:0]  <= inst_i[10:6];
                        wd_o        <= rd;
                        valid       <= 1'b1;
                    end
                    `EX_SRA:begin
                        wreg_o      <= 1'b1;
                        alu_op      <= `ALU_RIGHTA;
                        reg1_read_o <= 1'b0;
                        reg2_read_o <= 1'b1;
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
        reg1waitload <= 2'b00;
        if (!rst) begin
            reg1_o <= `ZeroWord;
            end else if (last_load && reg1_read_o == 1'b1 && reg1_addr_o == ex_wd_i) begin
            reg1waitload <= 2'b11;
            end else if (reg1_read_o && ex_wreg_i && ex_wd_i == reg1_addr_o) begin
            reg1_o <= ex_wdata_i;
            end else if (reg1_read_o && mem_wreg_i && mem_wd_i == reg1_addr_o) begin
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
        reg2waitload <= 2'b00;
        if (!rst) begin
            reg2_o <= `ZeroWord;
            end else if (last_load && reg2_read_o == 1'b1 && reg2_addr_o == ex_wd_i) begin
            reg2waitload <= 2'b11;
            end else if (reg2_read_o && ex_wreg_i && ex_wd_i == reg2_addr_o) begin
            reg2_o <= ex_wdata_i;
            end else if (reg2_read_o && mem_wreg_i && mem_wd_i == reg2_addr_o) begin
            reg2_o <= mem_wdata_i;
            end else if (reg2_read_o == 1'b1) begin
            reg2_o <= reg2_data_i;
            end else if (reg2_read_o == 1'b0) begin
            reg2_o <= immed;
            end else begin
            reg2_o <= `ZeroWord;
        end
    end
    
    assign stallreq_o = stallreq | reg1waitload | reg2waitload;

endmodule
