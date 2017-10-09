library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RS_Latch_Param is
	port (
		R,S : in std_logic;
		Q, nQ : out std_logic
		);
end RS_Latch_Param;

architecture Struct of RS_Latch_Param is 
	component NOR2_Param 
		port (
			a, b: in std_logic;
			z : out std_logic);
	end component;
	signal t1, t2 : std_logic;
begin
	U1: NOR2_Param port map (a => S, b => t2, z => t1);
	U2: NOR2_Param port map (a => R, b => t1, z => t2);
	nQ <= inertial t1 after 3 ns;
	Q <= inertial t2 after 2 ns;
end Struct;

architecture Beh of RS_Latch_Param is
	signal t1, t2: std_logic;
begin
	t2 <= R nor t1;
	t1 <= S nor t2;
	nQ <= transport t1 after 3 ns;
	Q <= transport t2 after 2 ns;
end Beh;
