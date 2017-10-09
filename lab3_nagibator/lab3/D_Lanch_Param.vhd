																						library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D_Latch_Param is
	port (
		D : in std_logic;
		Q : out std_logic;
		nQ : out std_logic
		);
end D_Latch_Param;

architecture Struct of D_Latch_Param is 
	component NOR2_Param 
		port (
			a, b: in std_logic;
			z : out std_logic);
	end component;
	component inv
		port (
			a: in std_logic;
			z: out std_logic);
	end component;
	signal t1, t2, t3 : std_logic;
begin
	U1: inv port map (a => D, z => t3);
	U2: NOR2_Param port map (a => D, b => t2, z => t1);
	U3: NOR2_Param port map (a => t3, b => t1, z => t2);
	Q <= t2 after 2 ns;
	nQ <= t1 after 3 ns;
end Struct;

architecture Beh of D_Latch_Param is 
	signal q_t: std_logic;
begin
	q_t <= D when q_t /= D;
	Q   <= q_t after 2 ns;
	nQ  <= not q_t after 3 ns;
end Beh;