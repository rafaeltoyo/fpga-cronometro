library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY 
entity temporizador_tb is
end entity;

-- ARCHITECTURE
architecture behav of temporizador_tb is

	component temporizador is
		port(
			rst 	: in std_logic;
			clk 	: in std_logic;
			clr 	: in std_logic;
			en 		: in std_logic;
			mode 	: in std_logic; -- 24h = 0 / AMPM = 1
			pm		: out std_logic; -- AM = 0 / PM = 1 / 24h = 0
			hor1 	: out unsigned (3 downto 0);
			hor0 	: out unsigned (3 downto 0);
			min1 	: out unsigned (3 downto 0);
			min0 	: out unsigned (3 downto 0);
			seg1 	: out unsigned (3 downto 0);
			seg0 	: out unsigned (3 downto 0);
			cen1 	: out unsigned (3 downto 0);
			cen0 	: out unsigned (3 downto 0)
		);
	end component;
	
	signal rst_s, clk_s, clr_s, en_s, mode_s : std_logic;

begin

	dut: temporizador port map (
		rst => rst_s,
		clk => clk_s,
		clr => clr_s,
		en => en_s,
		mode => mode_s
	);

	clock:
	process
	begin
		clk_s <= '1';
		wait for 10 ns;
		clk_s <= '0';
		wait for 10 ns;
	end process;

	reset:
	process
	begin
		rst_s <= '1';
		wait for 5 ns;
		rst_s <= '0';
		wait;
	end process;

	enable:
	process
	begin
		en_s <= '1';
		wait for 195 ns;
		en_s <= '0';
		wait for 40 ns;
		en_s <= '1';
		wait for 100 ns;
		en_s <= '0';
		wait for 40 ns;
		en_s <= '1';
		wait;
	end process;

	clear:
	process
	begin
		clr_s <= '0';
		wait for 995 ns;
		clr_s <= '1';
		wait for 30 ns;
		clr_s <= '0';
		wait;
	end process;
	
	AmPmMode:
	process
	begin
		mode_s <= '0';
		wait;
	end process;
   
end architecture;
