library ieee;
use ieee.std_logic_1164.all;

entity rsff_tb is
end rsff_tb;

architecture TB_ARCHITECTURE of rsff_tb is
	component rsff
		port(
			R : in STD_LOGIC;
			S : in STD_LOGIC;
			CLK : in STD_LOGIC;
			Q : out STD_LOGIC );
	end component;
	
	signal R : STD_LOGIC;
	signal S : STD_LOGIC;
	signal CLK : STD_LOGIC := '0';
	
	signal Q : STD_LOGIC;
begin
	UUT : entity work.rsff(rsff)
	port map (
		R => R,
		S => S,
		CLK => CLK,
		Q => Q
		);
	
	simulate: process
	begin  
		wait for 30 ns;
		R <= '1';	
		wait for 30 ns;
		R <= '0';	
		wait for 30 ns;
		S <= '1';	
		wait for 30 ns;
		S <= '0';	
		wait for 30 ns;
		R <= '1';	
		S <= '1';
		wait for 30 ns;
		R <= '0';	
		S <= '0';
		wait for 30 ns;
	end process;
	
	CLK <= not CLK after 5 ns;
	
end TB_ARCHITECTURE;

