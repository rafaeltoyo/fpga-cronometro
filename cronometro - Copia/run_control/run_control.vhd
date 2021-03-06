-- CONTADOR MODULO 60 BCD

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY
entity run_control is
	port(
		rst 	: in std_logic;
		clk 	: in std_logic;
		clr 	: in std_logic;
		en 	: in std_logic;
		mode	: in std_logic; -- 24h = 1 / AMPM = 0
		Q1 	: out unsigned (3 downto 0);
		Q2 	: out unsigned (3 downto 0);
		pm		: out std_logic -- AM = 0 / PM = 1 / 24h = 0
   );
end entity;

-- ARCHITECTURE
architecture behav of run_control is
	
begin
	
	process
	begin
	end process;

end architecture;
