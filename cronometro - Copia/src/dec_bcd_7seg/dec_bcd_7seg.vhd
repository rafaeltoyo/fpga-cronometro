library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DEC_BCD_7SEG is
	port(
		BCD		:in  UNSIGNED(3 downto 0);
		SEGMENT7	:out UNSIGNED(6 downto 0)
	);
end entity;

architecture rtl of DEC_BCD_7SEG is
begin
	SEGMENT7 <= 
		"0111111" when BCD = x"0" else 	-- 0
		"0000110" when BCD = x"1" else 	-- 1
		"1011011" when BCD = x"2" else 	-- 2
		"1001111" when BCD = x"3" else 	-- 3
	
		"1100110" when BCD = x"4" else 	-- 4
		"1101101" when BCD = x"5" else 	-- 5
		"1111101" when BCD = x"6" else 	-- 6
		"0000111" when BCD = x"7" else 	-- 7
		
		"1111111" when BCD = x"8" else 	-- 8
		"1100111" when BCD = x"9" else 	-- 9
		"1110111" when BCD = x"A" else 	-- A
		"1111100" when BCD = x"B" else 	-- B
		
		"0111001" when BCD = x"C" else 	-- C
		"1011110" when BCD = x"D" else 	-- D
		"1111001" when BCD = x"E" else 	-- E
		"1110001" when BCD = x"F";		-- F
end rtl;