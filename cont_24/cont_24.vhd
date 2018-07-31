-- CONTADOR MODULO 60 BCD

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY
entity cont_24 is
	port(
		rst 	: in std_logic;
		clk 	: in std_logic;
		clr 	: in std_logic;
		en 		: in std_logic;
		mode	: in std_logic; -- 24h = 1 / AMPM = 0
		Q1 		: out unsigned (3 downto 0);
		Q2 		: out unsigned (3 downto 0);
		pm		: out std_logic -- AM = 0 / PM = 1 / 24h = 0
	);
end entity;

-- ARCHITECTURE
architecture behav of cont_24 is

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
	signal Q_s : unsigned (7 downto 0);
	
begin
	
	contPai:	
	cont_100 port map (
		rst=>rst,
		clk=>clk,
		clr=>clr_s,
		en=>en,
		Q1=>Q1_s,
		Q2=>Q2_s
	);
	
	-- Resetar o contador quando o contador for passar de 23 (0 até 23)
	-- Clear precisa do enable nesse caso!
	clr_s <= '1' when ((Q1_s = "0011" and Q2_s = "0010") or clr = '1') and en = '1' else '0';
	
	-- Sistema de troca de formato de 24h para 12h AM PM
	-- 23/22/19/18/17/16/15/14/13/12 -> -12
	-- 21/20/00 - underflow
	Q_s 	<= "00010001" when Q2_s & Q1_s = "00100011" else -- 23
				"00010000" when Q2_s & Q1_s = "00100010" else -- 22
				"00001001" when Q2_s & Q1_s = "00100001" else -- 21
				"00001000" when Q2_s & Q1_s = "00100000" else -- 20
				"00010010" when Q2_s & Q1_s = "00000000" else -- 00
				(Q2_s - 1) & (Q1_s - 2) when Q2_s = "0001" and Q1_s > "0010" else
				Q2_s & Q1_s;
				
	
	Q1		<= Q_s(3 downto 0) when mode = '0' else Q1_s;
	Q2		<= Q_s(7 downto 4) when mode = '0' else Q2_s;
	
	-- Indicador de PM
	pm		<= '1' when mode = '0' and ((Q2_s = "0001" and Q1_s >= "0010") or Q2_s = "0010") else
				'0';

end architecture;
