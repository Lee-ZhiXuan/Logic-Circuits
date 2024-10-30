-- LeeZhiXuan(TP065525)
-- VLSI
-- JK Flip Flop Testbench

library IEEE;
use ieee.std_logic_1164.all;

entity tb_jkff is
end tb_jkff;

architecture behavior of tb_jkff is

	component jk_flipflop
	port(
		j : in std_logic;
		k : in std_logic;
		Qn : out std_logic
	);
	end component;
	
	signal j : std_logic := '0';
	signal k : std_logic := '0';
	
	signal Qn : std_logic;
	
	constant clk : time := 10 ns;
	
begin
	uut : jk_flipflop
		port map(
			j => j,
			k => k,
			Qn => Qn
		);	
	stim_proc : process
	begin
		-- Test 1 (j=0, k=0, Qn=retain)
		j <= '0'; k <= '0';
		wait for clk;
		-- Test 2 (j=0, k=1, Qn=0)
		j <= '0'; k <= '1';
		wait for clk;
		-- Test 3 (j=1, k=0, Qn=1)
		j <= '1'; k <= '0';
		wait for clk;
		-- Test 4 (j=1, k=1, Qn=toggle)
		j <= '1'; k <= '1';
		wait for clk;
		wait;
	end process;
end behavior;
