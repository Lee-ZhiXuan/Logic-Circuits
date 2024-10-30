-- LeeZhiXuan(TP065525)
-- VLSI
-- Mux 8 to 1 Testbench

library IEEE;
use ieee.std_logic_1164.all;

entity tb_mux8to1 is
end tb_mux8to1;

architecture behavior of tb_mux8to1 is

	component mux8to1
	port(
		d : in std_logic_vector(7 downto 0); -- Input lines
		s : in std_logic_vector(2 downto 0); -- Select lines
		f : out std_logic 						 -- Output line
	);
	end component;
	
	signal d : std_logic_vector(7 downto 0) := (others => '0');
	signal s : std_logic_vector(2 downto 0) := (others => '0');
	
	signal f : std_logic;
	
	constant clk : time := 10 ns;
	
begin
	uut : mux8to1
		port map(
			d => d,
			s => s,
			f => f
		);
	stim_proc : process
	begin
		-- Test 1
		d <= "00000001"; s <= "000";
		wait for clk;
		-- Test 2
		d <= "00000010"; s <= "001";
		wait for clk;
		-- Test 3
		d <= "00000100"; s <= "010";
		wait for clk;
		-- Test 4
		d <= "00001000"; s <= "011";
		wait for clk;
		-- Test 5
		d <= "00010000"; s <= "100";
		wait for clk;
		-- Test 6
		d <= "00100000"; s <= "101";
		wait for clk;
		-- Test 7
		d <= "01000000"; s <= "110";
		wait for clk;
		-- Test 8
		d <= "10000000"; s <= "111";
		wait for clk;
		wait;
	end process;
end behavior;
