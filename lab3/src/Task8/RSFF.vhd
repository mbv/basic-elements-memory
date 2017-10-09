library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RSFF is
	port(
		R : in STD_LOGIC;
		S : in STD_LOGIC;
		CLK : in STD_LOGIC;	
		Q : out STD_LOGIC
		);
end RSFF;

architecture RSFF of RSFF is
	signal q_t: STD_LOGIC;
begin
	process(R, S, CLK)
	begin
		if rising_edge(CLK) then
			if (R = '1' and S = '1') then
				q_t <= 'Z';
			elsif R = '1' then
				q_t <= '0';
			elsif S = '1' then
				q_t <= '1';
			end if; 
		end if;
	end process; 
	
	Q <= q_t;
end RSFF;
