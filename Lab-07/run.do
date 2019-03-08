vlog Program_Counter.v Adder.v Instruction_Fetch.v Instruction_Memory.v tb.v
vsim -novopt work.tb
add wave \
{sim:/tb/clk } \
{sim:/tb/reset } \
{sim:/tb/Instruction }
run 1500ns