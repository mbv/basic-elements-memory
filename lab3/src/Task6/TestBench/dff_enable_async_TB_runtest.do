SetActiveLib -work
comp -include "$dsn\src\Task6\DFF_Enable_Async.vhd" 
comp -include "$dsn\src\Task6\TestBench\dff_enable_async_TB.vhd" 
asim +access +r TESTBENCH_FOR_dff_enable_async 
wave 
wave -noreg CLR
wave -noreg PRE
wave -noreg D
wave -noreg E
wave -noreg CLK
wave -noreg Q 

run 2 us
