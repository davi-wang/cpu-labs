
// 2路复用器 选择信号为0时输出a 为1时输出b
module mux2_32b(
    input [31:0] in_a, in_b,
    input select,
    output [31:0] out
);
assign out = 
    ({32{select==1'b0}} & in_a) |
    ({32{select==1'b1}} & in_b) ;

endmodule

module mux3_32b (
    input [31:0] in_a, in_b, in_c,
    input [1:0] select,
    output [31:0] out
);
assign out = 
    ({32{select==2'b00}} & in_a) |
    ({32{select==2'b01}} & in_b) |
    ({32{select==2'b10}} & in_c) |
    ({32{select==2'b11}} & {32{1'b0}}) ;
    
endmodule
