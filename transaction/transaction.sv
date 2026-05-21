`include "uvm_macros.svh"
import uvm_pkg::*;

class alu_transaction extends uvm_sequence_item;

  `uvm_object_utils(alu_transaction)

  rand logic [3:0] a;
  rand logic [3:0] b;
  rand logic [2:0] opcode;
 rand logic [7:0] result; 

  function new(string name = "alu_transaction");
    super.new(name);
  endfunction

endclass