`timescale 1ns / 1ps
module sim1();
reg clock, rst;
CPU CPU(.clk(clock), .rst(rst));

initial begin

//    $readmemb("../../../../../test_code/test_jump_data_2.txt",  TOP_MOD.dm.memory);
    $readmemh("../../../../../test_code/reg.txt", CPU.regs.registers);
    $readmemh("../../../../../test_code/textbytes.txt", CPU.IM.memory);
// $readmemh("C:/Users/xhm2001/Desktop/senior1/hardware/mips/data.txt",  TOP_MOD.dm.memory);
// $readmemh("C:/Users/xhm2001/Desktop/senior1/hardware/mips/ins.txt", TOP_MOD.im.memory);

    rst = 0;
    clock = 0;
    #20 rst = 1;
end

always
    #10 clock = ~clock;

endmodule
