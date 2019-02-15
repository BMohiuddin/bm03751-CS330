vlog Instruction.v tbparser.v
vsim -novopt work.tbparser
add wave \
{sim:/tbparser/instruction } \
{sim:/tbparser/opcode } \
{sim:/tbparser/rd } \
{sim:/tbparser/funct3 } \
{sim:/tbparser/rs1 } \
{sim:/tbparser/rs2 } \
{sim:/tbparser/funct7 } 
run 300ns