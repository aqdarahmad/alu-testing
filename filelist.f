# =====================
# Interface (always first)
# =====================
interface/interface.sv

# =====================
# Transaction (base class)
# =====================
transaction/alu_transaction.sv

# =====================
# UVM Components
# =====================
driver/alu_driver.sv
sequencer/alu_sequencer.sv
monitor/alu_monitor.sv


agent/alu_agent.sv
scoreboard/alu_scoreboard.sv
env/alu_env.sv

# =====================
# Test
# =====================
test/alu_test.sv

# =====================
# Top + DUT
# =====================
top/top.sv
