library ieee;
use ieee.std_logic_1164.all;

entity d_enable_latch_tb is
end d_enable_latch_tb;

architecture TB_ARCHITECTURE of d_enable_latch_tb is
	component d_enable_latch
	port(
		D : in STD_LOGIC;
		E : in STD_LOGIC;
		Q : out STD_LOGIC;
		nQ : out STD_LOGIC );
	end component;


	signal D : STD_LOGIC;
	signal E : STD_LOGIC;

	signal Q_struct : STD_LOGIC;
	signal nQ_struct : STD_LOGIC;	 
	
	signal Q_beh : STD_LOGIC;
	signal nQ_beh : STD_LOGIC;
	
	signal Q2_struct : STD_LOGIC;
	signal nQ2_struct : STD_LOGIC;		 
	
	signal Q2_beh : STD_LOGIC;
	signal nQ2_beh : STD_LOGIC;
begin
	UUT : entity d_enable_latch(Struct)
		port map (
			D => D,
			E => E,
			Q => Q_struct,
			nQ => nQ_struct
		);	 
		
		UUT2 : entity d_enable_latch(Beh)
		port map (
			D => D,
			E => E,
			Q => Q_beh,
			nQ => nQ_beh
		);
		
		UUT3 : entity d_enable_latch_param(Struct)
		port map (
			D => D,
			E => E,
			Q => Q2_struct,
			nQ => nQ2_struct
		);
		
		UUT4 : entity d_enable_latch_param(Beh)
		port map (
			D => D,
			E => E,
			Q => Q2_beh,
			nQ => nQ2_beh
		);	 
		
		
	Simulate: process
	begin
		D <= '0';
		E <= '0';
		wait for 10 ns;	 
		
		D <= '1';
		E <= '0';
		wait for 10 ns;		 
		
		D <= '0';
		E <= '1';
		wait for 10 ns;	  
		
		D <= '0';
		E <= '0';
		wait for 10 ns;		
		
		D <= '1';
		E <= '1';
		wait for 10 ns;	
		
		D <= '0';
		E <= '0';
		wait for 10 ns;	 
		
	end process;

end TB_ARCHITECTURE;


