`timescale 1ns / 1ps
module CPU (
    input clk,
    input rst,

    wire [3:0]stall,
    wire stallreq_id,

    //pc to if/id
    wire pc_flag,
    wire [31:0] pc_target,
    wire [31:0] pc,
    wire [31:0] insc_im,

    //if/id to id
    wire [31:0] insc_id,
    wire [31:0] id_pc,

    //to id
    wire [31:0]  reg1_data_id_in,
    wire [31:0] reg2_data_id_in,
    
    //id to reg
    wire id_reg1_re,
    wire id_reg2_re,
    wire [4:0] id_reg1_addr,
    wire [4:0] id_reg2_addr,


    //id to id/ex
    wire [4:0] id_alu_op,
    wire [31:0] id_data1,
    wire [31:0] id_data2,
    wire id_we,
    wire [4:0] id_waddr,
    wire [31:0] link_addr_id,
    wire [31:0] insc_id_o,

    //id/ex to ex
    wire [4:0] alu_op_ex,
    wire [31:0] data1_ex,
    wire [31:0] data2_ex,
    wire wreg_ex_in,
    wire [4:0]ex_waddr_in,
    wire [31:0] link_addr_ex,
    wire [31:0] insc_ex,

    //ex out
    wire ex_wreg_o,
    wire [4:0] ex_wreg_addr,
    wire [31:0] ex_wreg_data,
    wire [31:0] ex_wmem_addr,
    wire [4:0] alu_op_ex_o,
    wire [31:0] ex_wmem_data,

    //ex-mem
    wire mem_wreg_i,
    wire [4:0] mem_waddr_i,
    wire [31:0] mem_wdata_i,
    wire [31:0] mem_wmem_addr,
    wire [31:0] mem_wmem_data,
    wire [4:0] alu_op_mem, 


    //mem
    wire mem_wreg_o,
    wire [4:0] mem_wreg_addr,
    wire [31:0] mem_wreg_data,

    //mem-wb
    wire wb_wreg,
    wire [4:0] wb_addr,
    wire [31:0] wb_data

);

    CU CU(
        .rst(rst),
        .stall(stall),
        .stallreq_id(stallreq_id)
    );

    Instruction_mem IM(
        .addr(pc),
        .ins_out(insc_im)
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
        .stallreq(stallreq_id),
        .branch_target(pc_target),
        .branch_flag_o(pc_flag),
        .link_addr_o(link_addr_id),
        .insc_id(insc_id_o)
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
        .wmem_data(ex_wmem_data)
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
        .wreg_o(mem_wreg_i)
    );

    MEM MEM(
        .rst(rst),
        .w_reg_addr_i(mem_waddr_i),
        .wreg_i(mem_wreg_i),
        .wdata_i(mem_wdata_i),
        .w_reg_addr_o(mem_wreg_addr),
        .wdata_o(mem_wreg_data),
        .wreg_o(mem_wreg_o)
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