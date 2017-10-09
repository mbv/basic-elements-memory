SetActiveLib -work
comp -include "$dsn\src\Task8\RSFF.vhd" 
comp -include "$dsn\src\Task8\TestBench\rsff_TB.vhd" 
asim +access +r TESTBENCH_FOR_rsff 
wave 
wave -noreg R
wave -noreg S
wave -noreg CLK
wave -noreg Q

run 1 us
