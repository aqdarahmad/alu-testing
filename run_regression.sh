#!/bin/bash

echo "=========================="
echo "  ALU REGRESSION START"
echo "=========================="

echo ""
echo "Running ADD test..."
xrun design/rtl.sv test/regression/add_test.sv

echo ""
echo "Running SUB test..."
xrun design/rtl.sv test/regression/sub_test.sv

echo ""
echo "Running MUL test..."
xrun design/rtl.sv test/regression/mul_test.sv


echo ""
echo "=========================="
echo "  REGRESSION FINISHED"
echo "=========================="
