library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR2_Param is
	port (
		A, B: in std_logic;
		Z : out std_logic
		);
end NOR2_Param;
architecture Arch of NOR2_Param is
begin
	Z <= transport A nor B after 4 ns;
end Arch;