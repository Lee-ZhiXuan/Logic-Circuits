-- LeeZhiXuan(TP065525)
-- VLSI
-- Full Adder (Behavioral)

library IEEE;
use ieee.std_logic_1164.all;

entity full_adder_behavioral is
	port(
		a : in std_logic;		-- Input a
		b : in std_logic;		-- Input b
		Cin : in std_logic;	-- Carry in
		s : out std_logic;	-- Sum
		Cout : out std_logic -- Carry
	);
end full_adder_behavioral;

architecture behavioral of full_adder_behavioral is
begin
	process(a, b, Cin)
	begin
		s <= (a xor b xor Cin);
		Cout <= (a and b) or (b and Cin) or (Cin and a);
	end process;
end behavioral;
