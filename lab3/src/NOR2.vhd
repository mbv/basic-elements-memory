library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR2 is
	port (
		A, B: in std_logic;
		Z : out std_logic
		);
end NOR2;
architecture Arch of NOR2 is
begin
	Z <= A nor B;
end Arch;