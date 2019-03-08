vlog Instruction_Memory.v tbinstruction.v
vsim -novopt work.tb
add wave \
{sim:/tb/Inst_Address} \
{sim:/tb/Instruction}
run 150ns