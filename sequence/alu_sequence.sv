`timescale 1ns/1ps
`include "uvm_macros.svh"

import uvm_pkg::*;



class alu_sequence extends uvm_sequence #(alu_transaction);

  `uvm_object_utils(alu_sequence)

  function new(string name="alu_sequence");
    super.new(name);
  endfunction

  task body();

    alu_transaction tx;

    repeat(10) begin

      tx = alu_transaction::type_id::create("tx");

      start_item(tx);

      assert(tx.randomize());

      finish_item(tx);

    end

  endtask

endclass
