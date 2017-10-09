library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TFF is
	port(
		T : in STD_LOGIC;
		E : in STD_LOGIC;
		CLR : in STD_LOGIC;
		CLK : in STD_LOGIC;	
		Q : out STD_LOGIC
		);
end TFF;

architecture TFF of TFF is
	signal s: STD_LOGIC;
begin
	process(CLR, T, E, CLK)
	begin
		if CLR = '1' then
			s <= '0';
		elsif E = '1' then
			if rising_edge(CLK) then
				s <= not s;	 
			end if;
		end if;
	end process; 
	
	Q <= s;
end TFF;
