`timescale 1ns/1ps
module top;

import uvm_pkg::*;
`include "uvm_macros.svh"

alu_if vif();

alu dut(
    .a(vif.a),
    .b(vif.b),
    .opcode(vif.opcode),
    .result(vif.result)
);

initial begin

    uvm_config_db#(virtual alu_if)::set(null, "*", "vif", vif);

    run_test("alu_test");

end

endmodule