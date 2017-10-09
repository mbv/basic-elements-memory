library ieee;
use ieee.std_logic_1164.all;

entity jkff_tb is
end jkff_tb;

architecture TB_ARCHITECTURE of jkff_tb is
	component jkff
	port(
		J : in STD_LOGIC;
		K : in STD_LOGIC;
		CLK : in STD_LOGIC;
		Q : out STD_LOGIC );
	end component;

	signal J : STD_LOGIC;
	signal K : STD_LOGIC;
	signal CLK : STD_LOGIC := '0';
	
	signal Q : STD_LOGIC;

begin
	UUT : entity work.jkff(jkff)
		port map (
			J => J,
			K => K,
			CLK => CLK,
			Q => Q
		);	 

	simulate: process
	begin  
		wait for 30 ns;
		K <= '1';	
		wait for 30 ns;
		K <= '0';	
		wait for 30 ns;
		J <= '1';	
		wait for 30 ns;
		J <= '0';	
		wait for 30 ns;
		K <= '1';	
		J <= '1';
		wait for 30 ns;
		K <= '0';	
		J <= '0';
		wait for 30 ns;	  	
		J <= '1';
		wait for 30 ns;
		K <= '1';	
		J <= '1';
		wait for 30 ns;
		K <= '0';	
		J <= '0';
		wait for 30 ns;
	end process;
	
	CLK <= not CLK after 5 ns;

end TB_ARCHITECTURE;

