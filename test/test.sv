`timescale 1ns/1ps 


module test;

logic [3:0] a,b;
logic [3:0] result;
logic [2:0] opcode;


alu uut(.a(a),.b(b),.opcode(opcode),.result(result));


initial begin

a = 4; b = 5; opcode = 3'b000;

$monitor("a=%0d b=%0d result=%0d",a,b,result);


end








endmodule
