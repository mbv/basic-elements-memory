library ieee;
use ieee.std_logic_1164.all;

-- Add your library and packages declaration here ...

entity d_latch_tb is
end d_latch_tb;

architecture TB_ARCHITECTURE of d_latch_tb is
	
	component d_latch
		port(
			D : in STD_LOGIC;
			Q : out STD_LOGIC;
			nQ : out STD_LOGIC );
	end component;
	
	signal D : STD_LOGIC;
	
	signal Q_struct : STD_LOGIC;
	signal nQ_struct : STD_LOGIC;
	
	signal Q_beh : STD_LOGIC;
	signal nQ_beh : STD_LOGIC;	
	
	signal Q2_struct : STD_LOGIC;
	signal nQ2_struct : STD_LOGIC;
	
	signal Q2_beh : STD_LOGIC;
	signal nQ2_beh : STD_LOGIC;
begin
	
	UUT : entity work.d_latch(struct)
	port map (
		D => D,
		Q => Q_struct,
		nQ => nQ_struct
		); 
	
	UUT2 : entity work.d_latch(beh)
	port map (
		D => D,
		Q => Q_beh,
		nQ => nQ_beh
		);	  
	
	UUT3 : entity work.d_latch_param(struct)
	port map (
		D => D,
		Q => Q2_struct,
		nQ => nQ2_struct
		); 
	
	UUT4 : entity work.d_latch_param(beh)
	port map (
		D => D,
		Q => Q2_beh,
		nQ => nQ2_beh
		);
	
	Simulate: process
	begin
		D <= '0';
		wait for 10 ns;	 
		
		D <= '1';
		wait for 10 ns;	
		
	end process;
	
end TB_ARCHITECTURE;


