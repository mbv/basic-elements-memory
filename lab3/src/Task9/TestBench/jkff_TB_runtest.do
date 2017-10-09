SetActiveLib -work
comp -include "$dsn\src\Task9\JKFF.vhd" 
comp -include "$dsn\src\Task9\TestBench\jkff_TB.vhd" 
asim +access +r TESTBENCH_FOR_jkff 
wave 
wave -noreg J
wave -noreg K
wave -noreg CLK
wave -noreg Q


run 1 us
