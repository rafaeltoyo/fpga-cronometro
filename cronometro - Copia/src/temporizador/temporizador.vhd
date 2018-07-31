-- CONTADOR MODULO 100 BCD

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY
entity temporizador is
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
end entity;

-- ARCHITECTURE
architecture behav of temporizador is

	component cont_24 is
		port(
			rst 	: in std_logic;
			clk 	: in std_logic;
			clr 	: in std_logic;
			en 		: in std_logic;
			mode	: in std_logic; -- 24h = 0 / AMPM = 1
			Q1 		: out unsigned (3 downto 0);
			Q2 		: out unsigned (3 downto 0);
			pm		: out std_logic -- AM = 0 / PM = 1 / 24h = 0	
		);
	end component;

	component cont_60 is
		port(
			rst 	: in std_logic;
			clk 	: in std_logic;
			clr 	: in std_logic;
			en 		: in std_logic;
			Q1 		: out unsigned (3 downto 0);
			Q2 		: out unsigned (3 downto 0)		
		);
	end component;
	
	component cont_100 is
		port(
			rst 	: in std_logic;
			clk 	: in std_logic;
			clr 	: in std_logic;
			en 		: in std_logic;
			Q1 		: out unsigned (3 downto 0);
			Q2 		: out unsigned (3 downto 0)		
		);
	end component;
	
	-- Saidas de horas
	signal hor0_s, hor1_s : unsigned(3 downto 0);
	-- Saidas de minutos
	signal min0_s, min1_s : unsigned(3 downto 0);
	-- Saidas de segundos
	signal seg0_s, seg1_s : unsigned(3 downto 0);
	-- Saidas de centesimos
	signal cen0_s, cen1_s : unsigned(3 downto 0);
	-- ENABLEs
	signal enH_s, enM_s, enS_s, enC_s : std_logic;
	--signal clrH_s, clrM_s, clrS_s, clrC_s : std_logic;
	signal pm_s : std_logic;
	
begin
	
	contH: 
	cont_24 port map ( 
		clk => clk,
		clr => clr,
		rst => rst,
		en => enH_s,
		mode => mode,
		Q1 => hor0_s,
		Q2 => hor1_s,
		pm => pm_s
	);
	
	contM: 
	cont_60 port map ( 
		clk => clk,
		clr => clr,
		rst => rst,
		en => enM_s,
		Q1 => min0_s,
		Q2 => min1_s
	);
	
	contS: 
	cont_60 port map ( 
		clk => clk,
		clr => clr,
		rst => rst,
		en => enS_s,
		Q1 => seg0_s,
		Q2 => seg1_s
	);
	
	contC: 
	cont_100 port map ( 
		clk => clk,
		clr => clr,
		rst => rst,
		en => enC_s,
		Q1 => cen0_s,
		Q2 => cen1_s
	);
	
	pm		<= pm_s;
	
	hor1 	<= hor1_s;
	hor0 	<= hor0_s;
	min1 	<= min1_s;
	min0 	<= min0_s;
	seg1 	<= seg1_s;
	seg0 	<= seg0_s;
	cen1 	<= cen1_s;
	cen0 	<= cen0_s;
	
	enC_s 	<= en;
	enS_s 	<= '1' when en = '1' 
				and cen1_s = "1001" and cen0_s = "1001" 
				else '0';
	enM_s 	<= '1' when en = '1' 
				and seg1_s = "0101" and seg0_s = "1001" 
				and cen1_s = "1001" and cen0_s = "1001" 
				else '0';
	enH_s 	<= '1' when en = '1' 
				and min1_s = "0101" and min0_s = "1001" 
				and seg1_s = "0101" and seg0_s = "1001" 
				and cen1_s = "1001" and cen0_s = "1001"
				else '0';

end architecture;
