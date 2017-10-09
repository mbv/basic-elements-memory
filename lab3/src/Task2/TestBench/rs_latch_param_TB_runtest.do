SetActiveLib -work					
comp -include "$dsn\src\Task2\RS_Latch.vhd" 
comp -include "$dsn\src\Task2\RS_Latch_Param.vhd" 
comp -include "$dsn\src\Task2\TestBench\rs_latch_param_TB.vhd" 
asim +access +r TESTBENCH_FOR_rs_latch_param 
wave 
wave -noreg R
wave -noreg S
wave -noreg Q_struct
wave -noreg nQ_struct	
wave -noreg Q_beh
wave -noreg nQ_beh	 
wave -noreg Q2_struct
wave -noreg nQ2_struct	
wave -noreg Q2_beh
wave -noreg nQ2_beh

run 1 us
