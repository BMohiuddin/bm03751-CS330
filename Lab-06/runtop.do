vlog tbtop.v top.v registerFile.v Instruction.v
vsim -novopt work.tbtop
add wave \
{sim:/tbtop/instruction } \
{sim:/tbtop/ReadData1 } \
{sim:/tbtop/ReadData2 }
run 150ns