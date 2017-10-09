library ieee;
use ieee.std_logic_1164.all;

entity dff_enable_async_tb is
end dff_enable_async_tb;

architecture TB_ARCHITECTURE of dff_enable_async_tb is
	component dff_enable_async
		port(
			CLR : in STD_LOGIC;
			PRE : in STD_LOGIC;
			D : in STD_LOGIC;
			E : in STD_LOGIC;
			CLK : in STD_LOGIC;
			Q : out STD_LOGIC );
	end component;
	
	signal CLR : STD_LOGIC;
	signal PRE : STD_LOGIC;
	signal D : STD_LOGIC := '0';
	signal E : STD_LOGIC;
	signal CLK : STD_LOGIC := '0';
	
	signal Q : STD_LOGIC;
	
begin
	UUT : entity work.dff_enable_async(dff_enable_async)
	port map (
		CLR => CLR,
		PRE => PRE,
		D => D,
		E => E,
		CLK => CLK,
		Q => Q
		);
	
	simulate: process
	begin  
		wait for 80 ns;
		CLR <= '1';	
		wait for 80 ns;
		CLR <= '0';	
		wait for 80 ns;
		PRE <= '1';	
		wait for 80 ns;
		PRE <= '0';	
		wait for 80 ns;
		
		E <= '1';	
		wait for 80 ns;
		E <= '0';	
		wait for 80 ns;	 
		
		wait for 80 ns;
		CLR <= '1';	
		PRE <= '1';
		wait for 80 ns;
		
		
		CLR <= '1';	
		PRE <= '0';
		E <= '1';
		wait for 80 ns;	
		
		CLR <= '0';	
		PRE <= '1';
		E <= '1';
		wait for 80 ns;
			
	end process;
	
	D <= not D after 20 ns;
	CLK <= not CLK after 5 ns;
	
end TB_ARCHITECTURE;

