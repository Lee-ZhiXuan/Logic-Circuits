-- LeeZhiXuan(TP065525)
-- VLSI
-- Full Adder Testbench

library IEEE;
use ieee.std_logic_1164.all;

entity tb_full_adder is
end tb_full_adder;

architecture behavior of tb_full_adder is

	component full_adder_behavioral
	port(
		a : in std_logic;		-- Input a
		b : in std_logic;		-- Input b
		Cin : in std_logic;	-- Carry in
		s : out std_logic;	-- Sum
		Cout : out std_logic -- Carry
	);
	end component;
	
	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal Cin : std_logic := '0';
	
	signal s : std_logic;
	signal Cout : std_logic;
	
	constant clk : time := 10 ns;
	
begin
	uut : full_adder_behavioral
		port map(
			a => a,
			b => b,
			Cin => Cin,
			s => s,
			Cout => Cout
		);	
	stim_proc : process
	begin
		-- Test 1 (0+0+0=0, Carry=0)
		a <= '0'; b <= '0'; Cin <= '0';
		wait for clk;
		-- Test 2 (0+0+1=1, Carry=0)
		a <= '0'; b <= '0'; Cin <= '1';
		wait for clk;
		-- Test 3 (0+1+0=1, Carry=0)
		a <= '0'; b <= '1'; Cin <= '0';
		wait for clk;
		-- Test 4 (0+1+1=0, Carry=1)
		a <= '0'; b <= '1'; Cin <= '1';
		wait for clk;
		-- Test 5 (1+0+0=1, Carry=0)
		a <= '1'; b <= '0'; Cin <= '0';
		wait for clk;
		-- Test 6 (1+0+1=0, Carry=1)
		a <= '1'; b <= '0'; Cin <= '1';
		wait for clk;
		-- Test 7 (1+1+0=0, Carry=1)
		a <= '1'; b <= '1'; Cin <= '0';
		wait for clk;
		-- Test 8 (1+1+1=1, Carry=1)
		a <= '1'; b <= '1'; Cin <= '1';
		wait for clk;	
		wait;
	end process;
end behavior;
