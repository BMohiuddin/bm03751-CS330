vlog tb.v mux2.v
vsim -novopt work.tb
add wave \
{sim:/tb/a[0] } 
add wave \
{sim:/tb/b[0] } 
add wave \
{sim:/tb/select } 
add wave \
{sim:/tb/data_out[0] } 
run 300ns