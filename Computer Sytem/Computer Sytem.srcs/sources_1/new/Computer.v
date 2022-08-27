`timescale 1ns / 1ps


module Computer(
    input clk,
    input rst
    );


// wire definition
// CPU
wire[9:0]  cpu_pc;
wire[31:0] cpu_dmem_waddr;
wire[31:0] cpu_dmem_we;
wire[31:0] cpu_dmem_wdata;

// Data RAM
wire[31:0] ram_data;

// Instruction ROM
wire[31:0] rom_data;


// CPU
//CPU cpu(
//    .clk(clk),
//    .rst(rst),
//    .insc(rom_data),
//    .dmem_rdata(ram_data),

//    .pc(cpu_pc),
//    .dmem_waddr(cpu_dmem_waddr),
//    .dmem_we(cpu_dmem_we),
//    .dmem_wdata(cpu_dmem_wdata)
//);

// RAM for CPU
RAM data_memory(
    .clk(clk),
    .en_wt_mem(cpu_dmem_we),
    .addr(cpu_dmem_waddr),
    .write_data(cpu_dmem_wdata),

    .data_out(ram_data)
);

ROM instruction_memory(
    .addr(cpu_pc),

    .ins_out(rom_data)
);

endmodule
