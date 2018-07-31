-- CONTADOR MODULO 100 BCD

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY
entity cronometro is
	port(
		clk			: in std_logic;
		btn_rst 	: in std_logic;
		btn_stop	: in std_logic;
		btn_mode	: in std_logic;
		ampm	: out std_logic; -- LED AM/PM
		mode	: out std_logic;
		hor1	: out unsigned (6 downto 0);
		hor0	: out unsigned (6 downto 0);
		min1	: out unsigned (6 downto 0);
		min0	: out unsigned (6 downto 0);
		seg1	: out unsigned (6 downto 0);
		seg0	: out unsigned (6 downto 0);
		cen1	: out unsigned (6 downto 0);
		cen0	: out unsigned (6 downto 0)
	);
end entity;

-- ARCHITECTURE
architecture behav of cronometro is

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
	
	component rebounce is
		port(
			rst		: in std_logic;
			clk		: in std_logic;
			clr		: in std_logic;
			en		: in std_logic;
			btn		: in std_logic;
			click	: out std_logic;
			Q		: out std_logic
	   );
	end component;
	
	component DEC_BCD_7SEG is
		port(
			BCD			:in  UNSIGNED(3 downto 0);
			SEGMENT7	:out UNSIGNED(6 downto 0)
		);
	end component;
	
	component divisor is
		port(
			CLK: 	in std_logic;
			RST: 	in std_logic;
			DIV50: 	out std_logic
		);	 
	end component;
	

	signal clk_div50_s 	: std_logic;
	signal rst_s 		: std_logic;
	signal en_temp_s 		: std_logic;
	signal en_s 		: std_logic;
	signal mode_s 		: std_logic;
	signal hor1bcd_s	: unsigned (3 downto 0);
	signal hor0bcd_s	: unsigned (3 downto 0);
	signal min1bcd_s	: unsigned (3 downto 0);
	signal min0bcd_s	: unsigned (3 downto 0);
	signal seg1bcd_s	: unsigned (3 downto 0);
	signal seg0bcd_s	: unsigned (3 downto 0);
	signal cen1bcd_s	: unsigned (3 downto 0);
	signal cen0bcd_s	: unsigned (3 downto 0);

begin

	-- Ligar com o clock da saida do divisor
	-- Ligar as saidas nos convertor de BCD pra 7 segmentos
	contadores:
	temporizador port map (
		rst => rst_s,
		clk => clk,
		clr => '0',
		en => en_temp_s,
		mode => mode_s,
		pm => ampm,
		hor1 => hor1bcd_s,
		hor0 => hor0bcd_s,
		min1 => min1bcd_s,
		min0 => min0bcd_s,
		seg1 => seg1bcd_s,
		seg0 => seg0bcd_s,
		cen1 => cen1bcd_s,
		cen0 => cen0bcd_s
	);
	
	en_temp_s 	<= clk_div50_s and en_s;
	
	-- Ligar com o pino de entrada de reset
	-- Ligar saída de click no reset assincrono dos contadores
	botao_reset:
	rebounce port map (
		rst => '0',
		clk => clk,
		clr => '0',
		en => '1',
		btn => not btn_rst,
		click => rst_s
	);
	
	-- Ligar com o pino de entrada de start/stop
	-- Ligar saída de estado (Q) no enable dos contadores
	botao_start_stop:
	rebounce port map (
		rst => rst_s,
		clk => clk,
		clr => '0',
		en => '1',
		btn => not btn_stop,
		Q => en_s
	);
	
	-- Ligar com o pino de entrada de mode (24h ou AM/PM)
	-- Ligar saída de estado (Q) no mode dos contadores
	botao_mode_cronometro:
	rebounce port map (
		rst => rst_s,
		clk => clk,
		clr => '0',
		en => '1',
		btn => not btn_mode,
		Q => mode_s
	);
	
	mode 	<= mode_s;
	
	-- Ligar com o pino de entrada do clock da FPGA
	-- Ligar saída no clock dos contadores
	divisor_clok:
	divisor port map (
		CLK => clk,
		RST => rst_s,
		DIV50 => clk_div50_s
	);
	
	-- 2 Display de hora
	display_hora_1:
	DEC_BCD_7SEG port map(
		BCD => hor1bcd_s,
		SEGMENT7 => hor1
	);
	display_hora_0:
	DEC_BCD_7SEG port map(
		BCD => hor0bcd_s,
		SEGMENT7 => hor0
	);
	
	-- 2 Display de minuto
	display_min_1:
	DEC_BCD_7SEG port map(
		BCD => min1bcd_s,
		SEGMENT7 => min1
	);
	display_min_0:
	DEC_BCD_7SEG port map(
		BCD => min0bcd_s,
		SEGMENT7 => min0
	);
	
	-- 2 Display de segundo
	display_seg_1:
	DEC_BCD_7SEG port map(
		BCD => seg1bcd_s,
		SEGMENT7 => seg1
	);
	display_seg_0:
	DEC_BCD_7SEG port map(
		BCD => seg0bcd_s,
		SEGMENT7 => seg0
	);
	
	-- 2 Display de centesimos
	display_cen_1:
	DEC_BCD_7SEG port map(
		BCD => cen1bcd_s,
		SEGMENT7 => cen1
	);
	display_cen_0:
	DEC_BCD_7SEG port map(
		BCD => cen0bcd_s,
		SEGMENT7 => cen0
	);
	
end architecture;
