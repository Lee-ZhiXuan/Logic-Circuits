-- LeeZhiXuan(TP065525)
-- VLSI
-- Binary to Grey

library IEEE;
use ieee.std_logic_1164.all;

entity b2g is
	port(
		b : in std_logic_vector(3 downto 0); -- Binary input
		g : out std_logic_vector(3 downto 0) -- Grey output
	);
end b2g;

architecture data_flow of b2g is
begin
	g(0) <= b(0) xor b(1);
	g(1) <= b(1) xor b(2);
	g(2) <= b(2) xor b(3);
	g(3) <= b(3);
end data_flow;
