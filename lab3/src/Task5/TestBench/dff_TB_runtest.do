SetActiveLib -work
comp -include "$dsn\src\Task5\DFF.vhd" 
comp -include "$dsn\src\Task5\TestBench\dff_TB.vhd" 
asim +access +r TESTBENCH_FOR_dff 
wave 
wave -noreg D
wave -noreg CLK
wave -noreg Q

run 1 us
