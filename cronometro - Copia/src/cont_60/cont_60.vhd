-- CONTADOR MODULO 60 BCD

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY
entity cont_60 is
	port(
		rst 	: in std_logic;
		clk 	: in std_logic;
		clr 	: in std_logic;
		en 		: in std_logic;
		Q1 		: out unsigned (3 downto 0);
		Q2 		: out unsigned (3 downto 0)
	);
end entity;

-- ARCHITECTURE
architecture behav of cont_60 is

   component cont_100 is
		port (
			rst 	: in std_logic;
			clk 	: in std_logic;
			clr 	: in std_logic;
			en 		: in std_logic;
			Q1		: out unsigned (3 downto 0);
			Q2		: out unsigned (3 downto 0)
		);
	end component;
	
	signal clr_s : std_logic;
	signal Q1_s, Q2_s : unsigned (3 downto 0);
	
begin
	
	contPai:	
	cont_100	port map (
		rst=>rst,
		clk=>clk,
		clr=>clr_s,
		en=>en,
		Q1=>Q1_s,
		Q2=>Q2_s
	);
	
	-- Clear precisa do enable nesse caso!
	clr_s <= '1' when ((Q1_s = "1001" and Q2_s = "0101") or clr = '1') and en = '1' else '0';
	
	Q1		<= Q1_s;
	Q2		<= Q2_s;

end architecture;
