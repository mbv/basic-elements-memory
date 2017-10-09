SetActiveLib -work
comp -include "$dsn\src\Task4\D_Enable_Latch.vhd" 	  
comp -include "$dsn\src\Task4\D_Enable_Latch_Param.vhd" 
comp -include "$dsn\src\Task4\TestBench\d_enable_latch_TB.vhd" 
asim +access +r TESTBENCH_FOR_d_enable_latch 
wave 
wave -noreg D
wave -noreg E
wave -noreg Q_struct
wave -noreg nQ_struct	
wave -noreg Q_beh
wave -noreg nQ_beh	 
wave -noreg Q2_struct
wave -noreg nQ2_struct	
wave -noreg Q2_beh
wave -noreg nQ2_beh

run 1 us
