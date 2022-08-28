`timescale 1ns / 1ps
`include "Header.v"
module CPU (input clk,
            input rst,
            input [`InscBus] insc_im,
            input [`RegBus] dmem_data_in,
            output [`AddrBus] pc,
            output [`AddrBus] dmem_addr,
            output dmem_we,
            output [`RegBus] dmem_data,
            //output [3:0] dmem_sec,
            wire [3:0]stall,
            wire [1:0] stallreq_id,
            wire pc_flag,
            wire [`AddrBus] pc_target,
            wire [`InscBus] insc_id,
            wire [`AddrBus] id_pc,
            wire [`RegBus] reg1_data_id_in,
            wire [`RegBus] reg2_data_id_in,
            wire id_reg1_re,
            wire id_reg2_re,
            wire [`RegAddrBus] id_reg1_addr,
            wire [`RegAddrBus] id_reg2_addr,
            wire [`RegAddrBus] id_alu_op,
            wire [`RegBus] id_data1,
            wire [`RegBus] id_data2,
            wire id_we,
            wire [`RegAddrBus] id_waddr,
            wire [`AddrBus] link_addr_id,
            wire [`InscBus] insc_id_o,
            wire [`AluBus] alu_op_ex,
            wire [`RegBus] data1_ex,
            wire [`RegBus] data2_ex,
            wire wreg_ex_in,
            wire [`RegAddrBus]ex_waddr_in,
            wire [`AddrBus] link_addr_ex,
            wire [`InscBus] insc_ex,
            wire ex_wreg_o,
            wire [`RegAddrBus] ex_wreg_addr,
            wire [`RegBus] ex_wreg_data,
            wire [`AddrBus] ex_wmem_addr,
            wire [`RegAddrBus] alu_op_ex_o,
            wire [`RegBus] ex_wmem_data,
            wire mem_wreg_i,
            wire [`RegAddrBus] mem_waddr_i,
            wire [`RegBus] mem_wdata_i,
            wire [`AddrBus] mem_wmem_addr,
            wire [`RegBus] mem_wmem_data,
            wire [`AluBus] alu_op_mem,
            wire mem_wreg_o,
            wire [`RegAddrBus] mem_wreg_addr,
            wire [`RegBus] mem_wreg_data,
            wire wb_wreg,
            wire [`RegAddrBus] wb_addr,
            wire [`RegBus] wb_data);
    
    CU CU(
    .rst(rst),
    .stall(stall),
    .stallreq_id(stallreq_id)
    );
    
    PC PC(
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .target(pc_target),
    .pc(pc),
    .flag(pc_flag)
    );
    
    IF_ID IF2ID(
    .clk(clk),
    .rst(rst),
    .if_pc(pc),
    .insc_i(insc_im),
    .insc_o(insc_id),
    .stall(stall),
    .id_pc(id_pc)
    );
    
    ID ID(
    .rst(rst),
    .pc_i(id_pc),
    .inst_i(insc_id),
    .reg1_data_i(reg1_data_id_in),
    .reg2_data_i(reg2_data_id_in),
    .ex_wreg_i(ex_wreg_o),
    .ex_wd_i(ex_wreg_addr),
    .ex_wdata_i(ex_wreg_data),
    .mem_wreg_i(mem_wreg_o),
    .mem_wd_i(mem_wreg_addr),
    .mem_wdata_i(mem_wreg_data),
    .reg1_read_o(id_reg1_re),
    .reg2_read_o(id_reg2_re),
    .reg1_addr_o(id_reg1_addr),
    .reg2_addr_o(id_reg2_addr),
    .alu_op(id_alu_op),
    .wd_o(id_waddr),
    .wreg_o(id_we),
    .reg1_o(id_data1),
    .reg2_o(id_data2),
    .stallreq_o(stallreq_id),
    .branch_target(pc_target),
    .branch_flag_o(pc_flag),
    .link_addr_o(link_addr_id),
    .insc_id(insc_id_o),
    .alu_op_f_ex(alu_op_ex_o)
    );
    
    
    ID_EX ID_EX(
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .alu_op_id(id_alu_op),
    .reg1_id(id_data1),
    .reg2_id(id_data2),
    .wreg_id(id_we),
    .w_reg_addr_id(id_waddr),
    .alu_op_ex(alu_op_ex),
    .reg1_ex(data1_ex),
    .reg2_ex(data2_ex),
    .wreg_ex(wreg_ex_in),
    .w_reg_addr_ex(ex_waddr_in),
    .link_addr_id(link_addr_id),
    .link_addr_ex(link_addr_ex),
    .insc_id(insc_id_o),
    .insc_ex(insc_ex)
    );
    
    EX EX(
    .clk(clk),
    .in_data1(data1_ex),
    .in_data2(data2_ex),
    .alu_op_i(alu_op_ex),
    .link_addr(link_addr_ex),
    .wd_i(ex_waddr_in),
    .wreg_i(wreg_ex_in),
    .wd_o(ex_wreg_addr),
    .wreg_o(ex_wreg_o),
    .wdata_o(ex_wreg_data),
    .wmem_addr_o(ex_wmem_addr),
    .alu_op_o(alu_op_ex_o),
    .wmem_data(ex_wmem_data),
    .insc_i(insc_ex)
    );
    
    EX_MEM EX_MEM(
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .w_reg_addr_i(ex_wreg_addr),
    .wreg_i(ex_wreg_o),
    .wdata_i(ex_wreg_data),
    .w_reg_addr_o(mem_waddr_i),
    .wdata_o(mem_wdata_i),
    .wreg_o(mem_wreg_i),
    .wmem_addr_i(ex_wmem_addr),
    .alu_op_ex_o(alu_op_ex_o),
    .wmme_data_i(ex_wmem_data),
    .wmem_addr_o(mem_wmem_addr),
    .alu_op_mem(alu_op_mem),
    .wmme_data_o(mem_wmem_data)
    );

    MEM MEM(
    .rst(rst),
    .w_reg_addr_i(mem_waddr_i),
    .wreg_i(mem_wreg_i),
    .wdata_i(mem_wdata_i),
    .w_reg_addr_o(mem_wreg_addr),
    .wdata_o(mem_wreg_data),
    .wreg_o(mem_wreg_o),
    .alu_op_i(alu_op_mem),
    .wmem_addr_i(mem_wmem_addr),
    .wmem_data_i(mem_wmem_data),
    .dmem_data_i(dmem_data_in),
    .wmem_addr_o(dmem_addr),
    .wmem_o(dmem_we),
    .wmem_data_o(dmem_data)
    );
    
    MEM_WB MEM_WB(
    .clk(clk),
    .rst(rst),
    .w_reg_addr_mem(mem_wreg_addr),
    .wreg_mem(mem_wreg_o),
    .wdata_mem(mem_wreg_data),
    .w_reg_addr_wb(wb_addr),
    .wreg_wb(wb_wreg),
    .wdata_wb(wb_data)
    );
    
    reg_files regs(
    .clk(clk),
    .rst(rst),
    .reg1_addr(id_reg1_addr),
    .reg2_addr(id_reg2_addr),
    .W_data(wb_data),
    .W_reg_addr(wb_addr),
    .reg_we(wb_wreg),
    .re1(id_reg1_re),
    .re2(id_reg2_re),
    .reg1_data(reg1_data_id_in),
    .reg2_data(reg2_data_id_in)
    );
endmodule
