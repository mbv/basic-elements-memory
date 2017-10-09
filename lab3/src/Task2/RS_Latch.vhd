library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RS_Latch is
	port (
		R,S : in std_logic;
		Q, nQ : out std_logic
		);
end RS_Latch;

architecture Struct of RS_Latch is 
	component NOR2_Param 
		port (
			A, B: in std_logic;
			Z : out std_logic);
	end component;
	signal t1, t2 : std_logic;
begin
	U1: NOR2_Param port map (A => S, B => t2, Z => t1);
	U2: NOR2_Param port map (A => R, B => t1, Z => t2);
	nQ <= t1;
	Q <= t2;
end Struct;

architecture Beh of RS_Latch is
	signal t1, t2: std_logic;
begin
	t2 <= R nor t1;
	t1 <= S nor t2;
	nQ <= t1;
	Q <= t2;
end Beh;