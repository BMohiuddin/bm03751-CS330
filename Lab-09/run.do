vlog Control_Unit.v tbControl.v
vsim -novopt work.tbControl
add wave \
{sim:/tbControl/Opcode } \
{sim:/tbControl/Branch } \
{sim:/tbControl/MemWrite } \
{sim:/tbControl/MemRead } \
{sim:/tbControl/RegWrite } \
{sim:/tbControl/MemtoReg } \
{sim:/tbControl/ALUSrc } \
{sim:/tbControl/ALUOp }
run 600ns