`timescale 1ns / 1ps

module sim1();
reg clock, rst;
Top TOP_MOD(clock, rst);

initial begin
    $readmemh("C:/Users/xhm2001/Desktop/senior1/hardware/mips/reg.txt", TOP_MOD.reg_f.registers);
    $readmemh("C:/Users/xhm2001/Desktop/senior1/hardware/mips/ins.txt", TOP_MOD.im.memory);
    $readmemh("C:/Users/xhm2001/Desktop/senior1/hardware/mips/data.txt", TOP_MOD.dm.memory);

    rst = 0;
    clock = 0;
    #20 rst = 1;
end

always
    #10 clock = ~clock;

endmodule
