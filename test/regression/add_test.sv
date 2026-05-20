`timescale 1ns/1ps


module add_test;


 logic [3:0] a,b;
logic [7:0]result;
logic [2:0] opcode;


alu uut(.a(a),.b(b),.opcode(opcode),.result(result));


initial begin

a = 4; b = 4; opcode = 3'b000;
#1;
if(result==8)

$display("Passed Test");


else

$display("Failed Test");


end








endmodule
