`timescale 1ns/1ps
module alu(
input logic [3:0] a,
input logic [3:0] b,
input logic [2:0]opcode,
output logic [7:0] result
);


// combinational circuit 




always_comb 

begin

case(opcode)

3'b000: result = a + b;
3'b001: result = a - b;
3'b010: result = a * b;
3'b011: result = a | b;
3'b100: result = a & b;
default:result = 0;


endcase

end



endmodule
