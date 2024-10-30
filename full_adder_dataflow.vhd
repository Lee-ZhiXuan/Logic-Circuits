-- LeeZhiXuan(TP065525)
-- VLSI
-- Full Adder (Data-flow)

library IEEE;
use ieee.std_logic_1164.all;

entity full_adder_dataflow is
	port(
		a : in std_logic;		-- Input a
		b : in std_logic;		-- Input b
		Cin : in std_logic;	-- Carry in
		s : out std_logic;	-- Sum
		Cout : out std_logic -- Carry
	);
end full_adder_dataflow;

architecture data_flow of full_adder_dataflow is
signal m : std_logic;
begin
	m <= a xor b;
	s <= m xor Cin;
	Cout <= (m and Cin) or (a and b);
end data_flow;
