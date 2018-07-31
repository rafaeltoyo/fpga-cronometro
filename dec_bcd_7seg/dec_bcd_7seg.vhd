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
		"1000000" when BCD = x"0" else 	-- 0
		"1111001" when BCD = x"1" else 	-- 1
		"0100100" when BCD = x"2" else 	-- 2
		"0110000" when BCD = x"3" else 	-- 3
	
		"0011001" when BCD = x"4" else 	-- 4
		"0010010" when BCD = x"5" else 	-- 5
		"0000010" when BCD = x"6" else 	-- 6
		"1111000" when BCD = x"7" else 	-- 7
		
		"0000000" when BCD = x"8" else 	-- 8
		"0011000" when BCD = x"9" else 	-- 9
		"0001000" when BCD = x"A" else 	-- 1
		"0000011" when BCD = x"B" else 	-- B
		
		"1000110" when BCD = x"C" else 	-- C
		"0100001" when BCD = x"D" else 	-- D
		"0000110" when BCD = x"E" else 	-- E
		"0001110" when BCD = x"F";		-- F
--		"0111111" when BCD = x"0" else 	-- 0
--		"0000110" when BCD = x"1" else 	-- 1
--		"1011011" when BCD = x"2" else 	-- 2
--		"1001111" when BCD = x"3" else 	-- 3
--	
--		"1100110" when BCD = x"4" else 	-- 4
--		"1101101" when BCD = x"5" else 	-- 5
--		"1111101" when BCD = x"6" else 	-- 6
--		"0000111" when BCD = x"7" else 	-- 7
--		
--		"1111111" when BCD = x"8" else 	-- 8
--		"1100111" when BCD = x"9" else 	-- 9
--		"1110111" when BCD = x"A" else 	-- A
--		"1111100" when BCD = x"B" else 	-- B
--		
--		"0111001" when BCD = x"C" else 	-- C
--		"1011110" when BCD = x"D" else 	-- D
--		"1111001" when BCD = x"E" else 	-- E
--		"1110001" when BCD = x"F";		-- F
end rtl;