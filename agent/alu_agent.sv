`timescale 1ns/1ps
`include "uvm_macros.svh"
import uvm_pkg::*;


class alu_agent extends uvm_agent;

  `uvm_component_utils(alu_agent)

  alu_driver drv;
  uvm_sequencer #(alu_transaction) seqr;
  alu_monitor mon;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    drv  = alu_driver::type_id::create("drv", this);
    seqr = uvm_sequencer#(alu_transaction)::type_id::create("seqr", this);
    mon  = alu_monitor::type_id::create("mon", this);

  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);

    drv.seq_item_port.connect(seqr.seq_item_export);
  endfunction

endclass