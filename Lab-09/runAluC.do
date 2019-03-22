vlog ALU_Control.v tbAluC.v
vsim -novopt work.tbAluC
add wave \
{sim:/tbAluC/ALUOp } \
{sim:/tbAluC/Funct } \
{sim:/tbAluC/Operation }
run 600ns