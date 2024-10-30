-- LeeZhiXuan(TP065525)
-- VLSI
-- Demux 1 to 8

library IEEE;
use ieee.std_logic_1164.all;

entity demux1to8 is
	port(
		d : in std_logic; 						-- Input line
		s : in std_logic_vector(2 downto 0);-- Select lines
		f : out std_logic_vector(7 downto 0)-- Output lines
	);
end demux1to8;

architecture data_flow of demux1to8 is
begin
	f(0) <= (d and not s(2) and not s(1) and not s(0));-- 000
	f(1) <= (d and not s(2) and not s(1) and s(0));		-- 001		
	f(2) <= (d and not s(2) and s(1) and not s(0));		-- 010
	f(3) <= (d and not s(2) and s(1) and s(0)); 			-- 011
	f(4) <= (d and s(2) and not s(1) and not s(0));		-- 100
	f(5) <= (d and s(2) and not s(1) and s(0));			-- 101
	f(6) <= (d and s(2) and s(1) and not s(0));			-- 110
	f(7) <= (d and s(2) and s(1) and s(0));				-- 111
end data_flow;
