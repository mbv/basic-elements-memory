library ieee;
use ieee.std_logic_1164.all;

entity tff_tb is
end tff_tb;

architecture TB_ARCHITECTURE of tff_tb is
	component tff
	port(
		T : in STD_LOGIC;
		E : in STD_LOGIC;
		CLR : in STD_LOGIC;
		CLK : in STD_LOGIC;
		Q : out STD_LOGIC );
	end component;

	signal T : STD_LOGIC := '0';
	signal E : STD_LOGIC;
	signal CLR : STD_LOGIC;
	signal CLK : STD_LOGIC := '0';	 
	
	signal Q : STD_LOGIC;

begin
	UUT : entity work.tff(tff)
		port map (
			T => T,
			E => E,
			CLR => CLR,
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
		E <= '1';	
		wait for 80 ns;
		E <= '0';	
		wait for 80 ns;
	end process;
		
	T <= not T after 20 ns;
	CLK <= not CLK after 5 ns;

end TB_ARCHITECTURE;


