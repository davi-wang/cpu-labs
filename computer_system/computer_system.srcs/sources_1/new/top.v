`timescale 1ns / 1ps


module Computer(
    input I_clk,
    input I_rst_n,

    // vga ports
    output [3:0] O_r,
    output [3:0] O_g,
    output [3:0] O_b,
    output O_hsync,
    output O_vsync
    
    );


    // wire definition
    // CPU
    wire[31:0]  cpu_pc;
    wire[31:0] cpu_dmem_waddr, vaddr;
    wire[31:0] cpu_dmem_wdata;
    // 内存空间分配
    wire cpu_we;
    wire dmem_we, gmem_we;
    assign dmem_we = cpu_dmem_waddr[17] ? 1'b0 : cpu_we;
    assign gmem_we = cpu_dmem_waddr[17] ? cpu_we : 1'b0;
    assign vaddr = cpu_dmem_waddr;

    // Data RAM
    wire[31:0] ram_data;

    // Instruction ROM
    wire[31:0] rom_data;

    // cpu
    mycpu cpu0(
        .clk(I_clk),
        .rstn(I_rst_n),
        .inst_rom_addr(cpu_pc),
        .inst_rom_rdata(rom_data),
        .data_ram_wen(cpu_we),
        .data_ram_wdata(cpu_dmem_wdata),
        .data_ram_addr(cpu_dmem_waddr),
        .data_ram_rdata(ram_data)
    );

    // RAM for CPU
    RAM data_memory(
        .clk(I_clk),
        .en_wt_mem(dmem_we),
        .addr(cpu_dmem_waddr),
        .write_data(cpu_dmem_wdata),

        .data_out(ram_data)
    );

    ROM instruction_memory(
        .addr(cpu_pc[11:2]),
        .ins_out(rom_data)
    );

    vgahwd vga0(
        .clk(I_clk),
        .rstn(I_rst_n),
        .waddr(vaddr),
        .wdata(cpu_dmem_wdata),
        .we(gmem_we),
        . red(O_r),
        . green(O_g),
        . blue(O_b),
        . hsync(O_hsync),
        . vsync(O_vsync)
    );

endmodule
