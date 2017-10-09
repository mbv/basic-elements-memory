library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DFF_Enable_Async is
	port(
		CLR : in STD_LOGIC;
		PRE : in STD_LOGIC;
		D : in STD_LOGIC;
		E : in STD_LOGIC;
		CLK : in STD_LOGIC;	
		Q : out STD_LOGIC
		);
end DFF_Enable_Async;

architecture DFF_Enable_Async of DFF_Enable_Async is
	signal s: STD_LOGIC;
begin
	process(CLR, PRE, D, E, CLK)
	begin
		if CLR = '1' then
			s <= '0';
		elsif PRE = '1' then
			s <= '1';
		elsif E = '1' then
			if rising_edge(CLK) then
				s <= D;	 
			end if;
		end if;
	end process; 
	
	Q <= s;
end DFF_Enable_Async;
