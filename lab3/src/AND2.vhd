library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND2 is
	port (
		A, B: in std_logic;
		Z : out std_logic
		);
end And2;
architecture Arch of AND2 is
begin
	Z <= A and B;
end Arch;