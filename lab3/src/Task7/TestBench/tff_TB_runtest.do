SetActiveLib -work
comp -include "$dsn\src\Task7\TFF.vhd" 
comp -include "$dsn\src\Task7\TestBench\tff_TB.vhd" 
asim +access +r TESTBENCH_FOR_tff 
wave 
wave -noreg T
wave -noreg E
wave -noreg CLR
wave -noreg CLK
wave -noreg Q


run 1 us
