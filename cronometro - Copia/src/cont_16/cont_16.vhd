-- CONTADOR MODULO 16

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTITY
entity cont_16 is
	port(
		rst 	: in std_logic;
		clk 	: in std_logic;
		clr 	: in std_logic;
		en 		: in std_logic;
		L 		: in std_logic;
		J 		: in unsigned (3 downto 0);
		updown 	: in std_logic;
		Q 		: out unsigned (3 downto 0)
	);
end entity;

-- ARCHITECTURE
architecture behav of cont_16 is

   signal Q_tmp: unsigned (3 downto 0);
	
begin

	process (rst, clk)
	begin
	  if rst = '1' then
		 Q_tmp <= "0000";
	  elsif (clk'event and clk = '1') then
			if clr = '1' then
		    	Q_tmp <= "0000";
		 	elsif en = '1' then
			    if L = '1' then
			       Q_tmp <= J;
			    elsif updown = '1' then
			       Q_tmp <= Q_tmp-1;
			    else
			       Q_tmp <= Q_tmp+1;
			    end if;
		 end if;
	  end if;
	end process;
	
   Q <= Q_tmp;

end architecture;
