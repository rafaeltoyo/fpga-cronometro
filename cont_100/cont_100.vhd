-- CONTADOR MODULO 100 BCD

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY
entity cont_100 is
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
architecture behav of cont_100 is

   component cont_16 is
		port (
			rst 	: in std_logic;
			clk 	: in std_logic;
			clr 	: in std_logic;
			en 		: in std_logic;
			L 		: in std_logic;
			J 		: in unsigned (3 downto 0);
			updown	: in std_logic;
			Q 		: out unsigned (3 downto 0)
		);
	end component;
	
	signal c1end_s, c1clr_s, c2end_s, c2en_s, c2clr_s : std_logic;
	signal c1q_s, c2q_s : unsigned (3 downto 0);
	
	begin
	
		cont1:
		cont_16	port map (
			rst=>rst,
			clk=>clk,
			clr=>c1clr_s,
			en=>en,
			L=>'0',
			J=>"0000",
			updown=>'0',
			Q=>c1q_s
		);
		
		cont2:
		cont_16	port map (
			rst=>rst,
			clk=>clk,
			clr=>c2clr_s,
			en=>c2en_s,
			L=>'0',
			J=>"0000",
			updown=>'0',
			Q=>c2q_s
		);
		
		c1end_s <= '1' when c1q_s = "1001" else '0';
		c2end_s <= '1' when c2q_s = "1001" else '0';
		
		-- Clear automatico ao chegar em 9 ou forçado
		c1clr_s	<= '1' when (c1end_s = '1' and en = '1') or clr = '1' else '0';
		c2clr_s	<= '1' when (c2end_s = '1' and c1end_s = '1' and en = '1') or clr = '1' else '0';
		
		c2en_s	<= '1' when c1end_s = '1' and en = '1' else '0';
		
		Q1		<= c1q_s;
		Q2		<= c2q_s;

end architecture;
