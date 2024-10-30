-- LeeZhiXuan(TP065525)
-- VLSI
-- Full Subtractor (Data-flow)

library IEEE;
use ieee.std_logic_1164.all;

entity full_subtractor is
	port(
		a : in std_logic;		-- Input a
		b : in std_logic;		-- Input b
		Bin : in std_logic;	-- Borrow in
		d : out std_logic;	-- Difference
		Bout : out std_logic -- Borrow out
	);
end full_subtractor;

architecture data_flow of full_subtractor is
signal m : std_logic;
begin
	m <= a xor b;
	d <= m xor Bin;
	Bout <= (b and not a) or (Bin and not m);
end data_flow;
