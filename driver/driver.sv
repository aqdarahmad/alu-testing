`include "uvm_macros.svh"
import uvm_pkg::*;
`include "../transaction/transaction.sv"
`include "../interface/interface.sv"
class alu_driver extends uvm_driver #(alu_transaction);

`uvm_component_utils(alu_driver)

virtual alu_if vif;

function new(string name, uvm_component parent);
    super.new(name,parent);
endfunction

task run_phase(uvm_phase phase);

    alu_transaction tx;

    forever begin

        seq_item_port.get_next_item(tx);

        vif.a      = tx.a;
        vif.b      = tx.b;
        vif.opcode = tx.opcode;

        #10;

        seq_item_port.item_done();

    end

endtask

endclass
