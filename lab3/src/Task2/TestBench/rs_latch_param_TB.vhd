library ieee;
use ieee.std_logic_1164.all;

entity rs_latch_param_tb is
end rs_latch_param_tb;

architecture TB_ARCHITECTURE of rs_latch_param_tb is
	
	component rs_latch_param
		port(
			R : in STD_LOGIC;
			S : in STD_LOGIC;
			Q : out STD_LOGIC;
			nQ : out STD_LOGIC );
	end component;
	
	signal R : STD_LOGIC;
	signal S : STD_LOGIC;
	
	signal Q_struct : STD_LOGIC;
	signal nQ_struct : STD_LOGIC;	 
	
	signal Q_beh : STD_LOGIC;
	signal nQ_beh : STD_LOGIC;
	
	signal Q2_struct : STD_LOGIC;
	signal nQ2_struct : STD_LOGIC;		 
	
	signal Q2_beh : STD_LOGIC;
	signal nQ2_beh : STD_LOGIC;
	
begin
	UUT : entity rs_latch_param(Struct)
	port map (
		R => R,
		S => S,
		Q => Q_struct,
		nQ => nQ_struct
		);
	
	UUT2 : entity rs_latch(beh)
	port map (
		R => R,
		S => S,
		Q => Q_beh,
		nQ => nQ_beh
		);	  
	
	UUT3 : entity rs_latch(Struct)
	port map (
		R => R,
		S => S,
		Q => Q2_struct,
		nQ => nQ2_struct
		);	 
	
	UUT4 : entity rs_latch(beh)
	port map (
		R => R,
		S => S,
		Q => Q2_beh,
		nQ => nQ2_beh
		);
	
	Simulate: process
	begin
		R <= '0';
		S <= '0';
		wait for 10 ns;	 
		
		R <= '1';
		S <= '0';
		wait for 10 ns;	
		
		R <= '0';
		S <= '0';
		wait for 10 ns;	 
		
		R <= '0';
		S <= '1';
		wait for 10 ns;	  
		
		R <= '0';
		S <= '0';
		wait for 10 ns;		
		
		R <= '1';
		S <= '1';
		wait for 10 ns;	
		
		R <= '0';
		S <= '0';
		wait for 10 ns;	 
		
	end process;
	
end TB_ARCHITECTURE;

