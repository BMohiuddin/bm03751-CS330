vlog tb.v registerFile.v
vsim -novopt work.tb
add wave \
{sim:/tb/clk } \
{sim:/tb/reset } \
{sim:/tb/RegWrite } \
{sim:/tb/RS1 } \
{sim:/tb/RS2 } \
{sim:/tb/RD1 } \
{sim:/tb/WriteData } \
{sim:/tb/ReadData1 } \
{sim:/tb/ReadData2 } 
run 150ns