`include "uvm_macros.svh" 
import uvm_pkg::*; 
`include "../transaction/transaction.sv"

`include "../interface/interface.sv"

 class alu_monitor extends uvm_monitor;

`uvm_component_utils(alu_monitor)

virtual alu_if vif;

uvm_analysis_port #(alu_transaction) mon_port;

function new(string name, uvm_component parent);
    super.new(name,parent);

    mon_port = new("mon_port",this);
endfunction

task run_phase(uvm_phase phase);

    alu_transaction tx;

    forever begin

        #10;

        tx = alu_transaction::type_id::create("tx");

        tx.a      = vif.a;
        tx.b      = vif.b;
        tx.opcode = vif.opcode;
        tx.result = vif.result;

        mon_port.write(tx);

    end

endtask

endclass
