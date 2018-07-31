-- CONTADOR MODULO 60 BCD

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY
entity rebounce is
	port(
		rst		: in std_logic;
		clk		: in std_logic;
		clr		: in std_logic;
		en		: in std_logic;
		btn		: in std_logic;
		click	: out std_logic;
		Q		: out std_logic
   );
end entity;

-- ARCHITECTURE
architecture behav of rebounce is
	signal click_s, Q_s : std_logic;
	signal count : integer;
begin
	
	process (clk, btn)
	begin
		if rst = '1' then
			count <= 0;
			click_s <= '0';
			Q_s <= '0';
		elsif (clk'event and clk = '1') then
			if clr = '1' then
				count <= 0;
				click_s <= '0';
			   Q_s <= '0';
			elsif (btn = '1' and en = '1') then
				if count = 10000000 then
				--if count = 5 then
					if click_s = '0' then
						Q_s <= not Q_s;
					end if;
					click_s <= '1';
				else
					click_s <= '0';
					count <= count + 1;
				end if;
			else
				count <= 0;
				click_s <= '0';
			end if;
		end if;
	end process;
	
	click 	<= click_s;
	Q 			<= Q_s;
end architecture;
