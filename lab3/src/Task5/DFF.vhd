library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is port (
		D, CLK: in STD_LOGIC;
		Q: out STD_LOGIC);
end DFF;

architecture Behavior of DFF is	 
	signal s: STD_LOGIC;
begin
	process(CLK)
	begin
		-- if (Clock'Event and Clock = '1' and CLK'last_value = 0) then 
		if rising_edge(CLK) then
			s <= D;
		end if;
	end process; 
	
	Q <= s;
end Behavior;