SetActiveLib -work
comp -include "$dsn\src\Task3\D_Latch.vhd" 	 
comp -include "$dsn\src\Task3\D_Lanch_Param.vhd" 
comp -include "$dsn\src\Task3\TestBench\d_latch_TB.vhd" 
asim +access +r TESTBENCH_FOR_d_latch 
wave 
wave -noreg D

wave -noreg Q_struct
wave -noreg nQ_struct	
wave -noreg Q_beh
wave -noreg nQ_beh	 
wave -noreg Q2_struct
wave -noreg nQ2_struct	
wave -noreg Q2_beh
wave -noreg nQ2_beh

run 1 us
