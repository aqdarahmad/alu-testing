`timescale 1ns/1ps
 module sub_test;
 logic [3:0] a,b;
logic [7:0]result;
 logic [2:0] opcode;
 alu uut(.a(a),.b(b),.opcode(opcode),.result(result));
 initial 
begin a = 8; b = 4; opcode = 3'b001; 
#1
if(result==4) 
$display("Passed Test");
 else
 $display("Failed Test");
 end

 endmodule
