vlog Control_Unit.v  ALU_Control.v top_control.v tbtop.v
vsim -novopt work.tbtop
add wave \
{sim:/tbtop/Opcode } \
{sim:/tbtop/Branch } \
{sim:/tbtop/MemWrite } \
{sim:/tbtop/MemRead } \
{sim:/tbtop/RegWrite } \
{sim:/tbtop/MemtoReg } \
{sim:/tbtop/ALUSrc } \
{sim:/tbtop/Funct } \
{sim:/tbtop/Operation }
run 1000ns