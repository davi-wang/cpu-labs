`timescale 1ns / 1ps
module sim1();
    reg clk, rst;
    wire[31:0] pc;
    wire[31:0] insc;
    wire [31:0] dmem_data_in;
    wire [31:0] dmem_addr;
    wire dmem_we;
    wire [31:0] dmem_data;
    wire [3:0] dmem_sec;
    
    CPU CPU(
    .clk(clk),
    .rst(rst),
    .pc(pc),                     //pc
    .insc_im(insc),              //insc
    .dmem_data_in(dmem_data_in), //read data memory
    .dmem_we(dmem_we),           //data memory we
    .dmem_addr(dmem_addr),       //data memory addr
    .dmem_data(dmem_data)        //data memory write data
    );
    
    Instruction_mem IM(
    .addr(pc),
    .ins_out(insc)
    );

    Data_mem DM(
        .clk(clk),
        .en_wt_mem(dmem_we),
        .memr_data(dmem_data_in),
        .memr_data(dmem_data),
        .addr(dmem_addr)
    );
    
    initial begin
        
        //    $readmemb("../../../../../test_code/test_jump_data_2.txt",  TOP_MOD.dm.memory);
        $readmemh("../../../../../test_code/databytes.txt", IM.memory);
        $readmemh("../../../../../test_code/textbytes.txt", DM.memory);
        // $readmemh("C:/Users/xhm2001/Desktop/senior1/hardware/mips/data.txt",  TOP_MOD.dm.memory);
        // $readmemh("C:/Users/xhm2001/Desktop/senior1/hardware/mips/ins.txt", TOP_MOD.im.memory);
        
        rst     = 0;
        clk   = 0;
        #20 rst = 1;
    end
    
    always
    #10 clk = ~clk;
    
endmodule
