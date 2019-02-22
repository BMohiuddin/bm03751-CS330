vlog testbench6.v tb6.v ALU_1_bit.v
vsim -novopt work.testbench6
add wave \
{sim:/testbench6/a } \
{sim:/testbench6/b } \
{sim:/testbench6/CarryIn } \
{sim:/testbench6/ALUOp } \
{sim:/testbench6/Result } \
{sim:/testbench6/CarryOut6 }
run 1600ns