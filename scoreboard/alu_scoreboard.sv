`include "uvm_macros.svh" 
import uvm_pkg::*;
 `include "../transaction/transaction.sv"
`include "../interface/interface.sv"

class alu_scoreboard extends uvm_scoreboard;

`uvm_component_utils(alu_scoreboard)

uvm_analysis_imp #(alu_transaction, alu_scoreboard) sb_port;

function new(string name, uvm_component parent);
    super.new(name,parent);

    sb_port = new("sb_port",this);
endfunction

function void write(alu_transaction tx);

    bit [7:0] expected;

    case(tx.opcode)

        3'b000: expected = tx.a + tx.b;
        3'b001: expected = tx.a - tx.b;
        3'b010: expected = tx.a * tx.b;
        3'b011: expected = tx.a | tx.b;
        3'b100: expected = tx.a & tx.b;
        default: expected = 0;

    endcase

    if(expected == tx.result)

        `uvm_info("PASS","TEST PASSED",UVM_LOW)

    else

        `uvm_error("FAIL",
        $sformatf("Expected=%0d Actual=%0d",
        expected,tx.result))

endfunction

endclass
