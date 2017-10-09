library ieee;
use ieee.std_logic_1164.all;

entity dff_tb is
end dff_tb;

architecture TB_ARCHITECTURE of dff_tb is
	component dff
	port(
		D : in STD_LOGIC;
		CLK : in STD_LOGIC;
		Q : out STD_LOGIC );
	end component;


	signal D : STD_LOGIC := '0';
	signal CLK : STD_LOGIC := '0';

	signal Q : STD_LOGIC;
begin
	UUT : entity work.dff(behavior)
		port map (
			D => D,
			CLK => CLK,
			Q => Q
		);	  
	
	D <= not D after 40 ns;
	-- CLK <= not CLK after 5 ns;
	
	process
	begin			
		wait for 17 ns;
		CLK <= '1';
		wait for 6 ns;
		CLK <= '0';	
		wait for 17 ns;
	end process;	 
	
end TB_ARCHITECTURE;

