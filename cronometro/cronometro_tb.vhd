library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY 
entity cronometro_tb is
end entity;

-- ARCHITECTURE
architecture behav of cronometro_tb is

	component cronometro is
		port(
			clk			: in std_logic;
			btn_rst 	: in std_logic;
			btn_stop	: in std_logic;
			btn_mode	: in std_logic;
			ampm	: out std_logic; -- LED AM/PM
			hor1	: out unsigned (6 downto 0);
			hor0	: out unsigned (6 downto 0);
			min1	: out unsigned (6 downto 0);
			min0	: out unsigned (6 downto 0);
			seg1	: out unsigned (6 downto 0);
			seg0	: out unsigned (6 downto 0);
			cen1	: out unsigned (6 downto 0);
			cen0	: out unsigned (6 downto 0)
		);
	end component;
	
	signal clk_s, btn_rst_s, btn_stop_s, btn_mode_s: std_logic;

begin

	dut: cronometro port map (
		clk => clk_s,
		btn_rst => btn_rst_s,
		btn_stop => btn_stop_s,
		btn_mode => btn_mode_s
	);

	rst:
	process
	begin
		btn_rst_s <= '1';
		wait for 200 ns;
		btn_rst_s <= '0';
		wait;
	end process;

	stop:
	process
	begin
		btn_stop_s <= '1';
		wait for 200 ns;
		btn_stop_s <= '0';
		wait for 6000 ns;
		btn_stop_s <= '1';
		wait for 200 ns;
		btn_stop_s <= '0';
		wait;
	end process;

	mode:
	process
	begin
		btn_mode_s <= '0';
		wait for 5000 ns;
		btn_mode_s <= '1';
		wait for 200 ns;
		btn_mode_s <= '0';
		wait for 5000 ns;
		btn_mode_s <= '1';
		wait for 200 ns;
		btn_mode_s <= '0';
		wait;
	end process;
	
	clock:
	process
	begin	-- clock = 50 MHz
		clk_s <= '1';
		wait for 10 ns;
		clk_s <= '0';
		wait for 10 ns;
	end process;

   
end architecture;
