-- LeeZhiXuan(TP065525)
-- VLSI
-- Mux 8 to 1

library IEEE;
use ieee.std_logic_1164.all;

entity mux8to1 is
	port(
		d : in std_logic_vector(7 downto 0); -- Input lines
		s : in std_logic_vector(2 downto 0); -- Select lines
		f : out std_logic 						 -- Output line
	);
end mux8to1;

architecture data_flow of mux8to1 is
begin
	f <= (d(0) and not s(2) and not s(1) and not s(0)) or	-- 000
		  (d(1) and not s(2) and not s(1) and s(0)) or		-- 001
		  (d(2) and not s(2) and s(1) and not s(0)) or		-- 010
		  (d(3) and not s(2) and s(1) and s(0)) or 			-- 011
		  (d(4) and s(2) and not s(1) and not s(0)) or		-- 100
		  (d(5) and s(2) and not s(1) and s(0)) or			-- 101
		  (d(6) and s(2) and s(1) and not s(0)) or			-- 110
		  (d(7) and s(2) and s(1) and s(0));					-- 111
end data_flow;
