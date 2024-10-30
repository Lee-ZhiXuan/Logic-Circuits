-- LeeZhiXuan(TP065525)
-- VLSI
-- Full Subtractor Testbench

library IEEE;
use ieee.std_logic_1164.all;

entity tb_full_subtractor is
end tb_full_subtractor;

architecture behavior of tb_full_subtractor is

	component full_subtractor
	port(
		a : in std_logic;		-- Input a
		b : in std_logic;		-- Input b
		Bin : in std_logic;	-- Borrow in
		d : out std_logic;	-- Difference
		Bout : out std_logic -- Borrow out
	);
	end component;
	
	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal Bin : std_logic := '0';
	
	signal d : std_logic;
	signal Bout : std_logic;
	
	constant clk : time := 10 ns;
	
begin
	uut : full_subtractor
		port map(
			a => a,
			b => b,
			Bin => Bin,
			d => d,
			Bout => Bout
		);	
	stim_proc : process
	begin
		-- Test 1 (0-0-0=0, Borrow=0)
		a <= '0'; b <= '0'; Bin <= '0';
		wait for clk;
		-- Test 2 (0-0-1=1, Borrow=1)
		a <= '0'; b <= '0'; Bin <= '1';
		wait for clk;
		-- Test 3 (0-1-0=1, Borrow=1)
		a <= '0'; b <= '1'; Bin <= '0';
		wait for clk;
		-- Test 4 (0-1-1=0, Borrow=1)
		a <= '0'; b <= '1'; Bin <= '1';
		wait for clk;
		-- Test 5 (1-0-0=1, Borrow=0)
		a <= '1'; b <= '0'; Bin <= '0';
		wait for clk;
		-- Test 6 (1-0-1=0, Borrow=0)
		a <= '1'; b <= '0'; Bin <= '1';
		wait for clk;
		-- Test 7 (1-1-0=0, Borrow=0)
		a <= '1'; b <= '1'; Bin <= '0';
		wait for clk;
		-- Test 8 (1-1-1=1, Borrow=1)
		a <= '1'; b <= '1'; Bin <= '1';
		wait for clk;
		wait;
	end process;
end behavior;
