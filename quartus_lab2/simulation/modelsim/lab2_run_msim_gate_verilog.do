transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {c:/altera/13.0sp1/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/cycloneiii_ver
vmap cycloneiii_ver ./verilog_libs/cycloneiii_ver
vlog -vlog01compat -work cycloneiii_ver {c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneiii_atoms.v}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {lab2_8_1200mv_85c_slow.vo}

