`timescale 1ns / 1ps


module Top(
    input wire clk,
    input wire rst
    );


// instruction memory
wire[31:0] im_out;

// PC
wire[31:0] pc_out;


///////////////////////////////////////
// pip0 
wire[31:0] pip0_instruction_out;

// NPC
wire[31:0] npc_addr;
wire[31:0] reg31_val;
wire pip_flush;

// register file
wire[31:0] regfile1_out;
wire[31:0] regfile2_out;

// CU
wire en_wt_reg;
wire en_wt_mem;
wire alu_reg_imm;
wire[4:0] alu_ctrl;
wire[1:0] extend_alu;
wire[2:0] extend_load;
wire[2:0] data_src;
wire[1:0] wt_reg;
wire[3:0] jump;
wire[4:0] load_dst;
wire[4:0] rs_f;
wire[4:0] rt_f;

/////////////////////////////////
// pip1
wire[31:0] pip1_reg1_out;
wire[31:0] pip1_reg2_out;
wire[31:0] instruction_out;
wire en_wt_reg_out;
wire en_wt_mem_out;
wire alu_reg_imm_out;
wire[4:0] alu_ctrl_out;
wire[1:0] extend_alu_out;
wire[2:0] extend_load_out;
wire[2:0] data_src_out;
wire[1:0] wt_reg_out;
wire pip_pause;
wire[4:0] rs_f_out;
wire[4:0] rt_f_out;

// ALU
wire[31:0] alu_result;

// Extend Sign
wire[31:0] es_imm32;

// Forwarding
wire[1:0] forwarding_1;
wire[1:0] forwarding_2;

// MUX
wire[31:0] forwarding_mux1_out;
wire[31:0] forwarding_mux2_out;
wire[31:0] ad_mux_out;
wire[4:0]  dr_mux_out;


///////////////////////////////
// pip2
wire[31:0]   pip2_out_alu_result;
wire[31:0]   pip2_out_reg2_data;
wire[31:0]   pip2_out_jmp_dst;
wire[31:0]   pip2_out_extended_imm;
wire[4:0]    pip2_out_dest_reg;
wire         pip2_en_mem_write_out;
wire[2:0]    pip2_cu_reg_src_out;
wire         pip2_en_reg_write_out;
wire[2:0]    pip2_out_extend_load;

// Data memory
wire[31:0] data_mem_out;

// Extend load
wire[31:0] el_imm32;

wire[31:0] reg_imm_mux_out;

///////////////////////////////////////////
// pip3
wire[31:0] pip3_out_alu_result;
wire[31:0] pip3_out_read_mem_data;
wire[31:0] pip3_out_jmp_dst;
wire[31:0] pip3_out_extended_imm;
wire[4:0]  pip3_destination_reg;
wire[2:0]  pip3_out_cu_reg_src;
wire       pip3_out_en_reg_write;
wire       pip3_out_en_lw_mem_wb;

// MUX
wire[31:0] wb_data;



PC pc(
    .clk(clk),
    .rst(rst),
    .npc(npc_addr),
    .pip_pause(pip_pause),
    
    .pc(pc_out)
    );

Instruction_mem im(
    .addr(pc_out),

    .ins_out(im_out)
    );


Pipeline0 pip0(
    .clk(clk),
    .rst(rst),
    .instruction(im_out),
    .pip_pause(pip_pause),
    .pip_flush(pip_flush),

    .instruction_out(pip0_instruction_out)
    );

reg_files reg_f(
    .clk(clk),
    .rst(rst),

    .reg1_addr(pip0_instruction_out[25:21]),
    .reg2_addr(pip0_instruction_out[20:16]),
    .W_data(wb_data),
    .W_reg_addr(pip3_destination_reg),
    .reg_we(pip3_out_en_reg_write),

    .reg1_data(regfile1_out),
    .reg2_data(regfile2_out)
    );



NPC npc(
    .pc(pc_out),
    .jump_ctrl(jump),
    .instr_index(pip0_instruction_out[25:0]),
    .instr_offset(pip0_instruction_out[15:0]),
    .reg1_data(regfile1_out),
    .reg2_data(regfile2_out),
    
    .npc(npc_addr),
    .des_inst_addr(reg31_val),
    .pip_flush(pip_flush)
    
    );

control_unit cu(
    .rst(rst),

    .instruction(pip0_instruction_out),

    .en_wt_reg(en_wt_reg),
    .en_wt_mem(en_wt_mem),

    .alu_reg_imm(alu_reg_imm),
    .alu_ctrl(alu_ctrl),
    .extend_alu(extend_alu),
    .extend_load(extend_load),
    .data_src(data_src),
    .wt_reg(wt_reg),
    .jump(jump),
    
    .load_dst(load_dst),
    .rs_f(rs_f),
    .rt_f(rt_f)
    );

Pipeline1 pip1(
    .clk(clk),
    .rst(rst),

    .instruction(pip0_instruction_out),
    .reg1(regfile1_out),
    .reg2(regfile2_out),

    .en_wt_reg(en_wt_reg),
    .en_wt_mem(en_wt_mem),

    .alu_reg_imm(alu_reg_imm),
    .alu_ctrl(alu_ctrl),
    .extend_alu(extend_alu),
    .extend_load(extend_load),
    .data_src(data_src),
    .wt_reg(wt_reg),
    .load_dst(load_dst),
    .rs_f(rs_f),
    .rt_f(rt_f),


    .pip_flush(pip_flush),

    .reg1_out(pip1_reg1_out),
    .reg2_out(pip1_reg2_out),
    .instruction_out(instruction_out),

    .en_wt_reg_out(en_wt_reg_out),
    .en_wt_mem_out(en_wt_mem_out),

    .alu_reg_imm_out(alu_reg_imm_out),
    .alu_ctrl_out(alu_ctrl_out),
    .extend_alu_out(extend_alu_out),
    .extend_load_out(extend_load_out),
    .data_src_out(data_src_out),
    .wt_reg_out(wt_reg_out),

    .pip_pause(pip_pause),
    .rs_f_out(rs_f_out),
    .rt_f_out(rt_f_out)
    );


ALU_Unit alu(
    .clk(clk),
    .reset(rst),
    
    .in_data1(forwarding_mux1_out),
    .in_data2(ad_mux_out),
    .shift(instruction_out[10:6]),
    .alu_op(alu_ctrl_out),
    
    .result(alu_result)
    );

Extend_Sign es(
    .extend_ctrl(extend_alu_out),
    .In_imm(instruction_out[15:0]),

    .Out_imm(es_imm32)
    );

Forwarding fwd(
    .pipeline2_en_wt_reg_out(pip2_en_reg_write_out),
    .pipeline2_wt_reg_dst(pip2_out_dest_reg),
    .pipeline3_en_wt_reg_out(pip3_out_en_reg_write),
    .pipeline3_wt_reg_dst(pip3_destination_reg),
    .rs(rs_f_out),
    .rt(rt_f_out),

    .forwarding_1(forwarding_1),
    .forwarding_2(forwarding_2)
    );

forwarding_mux f_mux1(
    .reg_data(pip1_reg1_out),
    .write_data(wb_data),
    .alu_result(reg_imm_mux_out),
    .mux_ctrl(forwarding_1),
    
    .out_mux(forwarding_mux1_out)
);

forwarding_mux f_mux2(
    .reg_data(pip1_reg2_out),
    .write_data(wb_data),
    .alu_result(reg_imm_mux_out),
    .mux_ctrl(forwarding_2),
    
    .out_mux(forwarding_mux2_out)
);

alu_data_mux ad_mux(
    .mux_data(forwarding_mux2_out),
    .extended_imm(es_imm32),
    .mux_ctrl(alu_reg_imm_out),

    .alu_data2(ad_mux_out)
);

dest_reg_mux dr_mux(
    .rt(instruction_out[20:16]),
    .rd(instruction_out[15:11]),
    .mux_ctrl(wt_reg_out),
    
    .dest_reg_out(dr_mux_out)
);


Pipeline_2 pip2(
    .clk(clk),
    .rst(rst),
    .In_alu_result(alu_result),
    .In_reg2_data(forwarding_mux2_out),
    .In_jmp_dst(npc_addr),
    .In_extended_imm(es_imm32),
    .In_dest_reg(dr_mux_out),
    .In_extend_load(extend_load_out),

    .en_reg_write_in(en_wt_reg_out),
    .en_mem_write_in(en_wt_mem_out),
    .cu_reg_src_in(data_src_out),

    .Out_alu_result(pip2_out_alu_result),
    .Out_reg2_data(pip2_out_reg2_data),
    .Out_jmp_dst(pip2_out_jmp_dst),
    .Out_extended_imm(pip2_out_extended_imm),
    .Out_dest_reg(pip2_out_dest_reg),
    .Out_extend_load(pip2_out_extend_load),

    .en_reg_write_out(pip2_en_reg_write_out),
    .en_mem_write_out(pip2_en_mem_write_out),
    .cu_reg_src_out(pip2_cu_reg_src_out)
    );

reg_imm_mux ri_mux(
    .In_reg(pip2_out_alu_result),
    .In_imm(pip2_out_extended_imm),

    .mux_ctrl(pip2_cu_reg_src_out),
    
    .data_mux_out(reg_imm_mux_out)
);

Data_mem dm(
    .clk(clk),
    .en_wt_mem(pip2_en_mem_write_out),
    .addr(pip2_out_alu_result),
    .write_data(pip2_out_reg2_data),
    .extend(pip2_out_extend_load),

    .data_mem_out(data_mem_out)
    );

Extend_load el(
    .extend_load(pip2_out_extend_load),
    .In_imm(data_mem_out),

    .Out_imm(el_imm32)
    );


Pipeline_3 pip3(
       .clk(clk),
       .rst(rst),
       .In_alu_result(pip2_out_alu_result),
       .In_read_mem_data(el_imm32),
       .In_jmp_dst(pip2_out_jmp_dst),
       .In_extended_imm(pip2_out_extended_imm),
       .In_destination_reg(pip2_out_dest_reg),

       .In_cu_reg_src(pip2_cu_reg_src_out),
       .In_en_reg_write(pip2_en_reg_write_out),
       .In_en_lw_mem_wb(pip2_en_mem_write_out),

       .Out_alu_result(pip3_out_alu_result),
       .Out_read_mem_data(pip3_out_read_mem_data),
       .Out_jmp_dst(pip3_out_jmp_dst),
       .Out_extended_imm(pip3_out_extended_imm),
       .Out_destination_reg(pip3_destination_reg),

       .Out_cu_reg_src(pip3_out_cu_reg_src),
       .Out_en_reg_write(pip3_out_en_reg_write),
       .Out_en_lw_mem_wb(pip3_out_en_lw_mem_wb)
    );

w_reg_data_mux w_mux(
    .alu_result(pip3_out_alu_result),
    .dmem_data(pip3_out_read_mem_data),
    .extended_imm(pip3_out_extended_imm),
    .jump_dest(pip3_out_jmp_dst),
    .mux_ctrl(pip3_out_cu_reg_src),
    
    .data_mux_out(wb_data)
);

endmodule
