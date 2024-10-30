-- LeeZhiXuan(TP065525)
-- VLSI
-- Binary to Grey Testbench

library IEEE;
use ieee.std_logic_1164.all;

entity tb_b2g is
end tb_b2g;

architecture behavior of tb_b2g is

	component b2g
	port(
		b : in std_logic_vector(3 downto 0); -- Binary input
		g : out std_logic_vector(3 downto 0) -- Grey output
	);
	end component;
	
	signal b : std_logic_vector(3 downto 0) := (others => '0');
	
	signal g : std_logic_vector(3 downto 0);
	
	constant clk : time := 10 ns;
	
begin
	uut : b2g
		port map(
			b => b,
			g => g
		);	
	stim_proc : process
	begin
		-- Test 1
		b <= "0000";
		wait for clk;
		-- Test 2
		b <= "0001";
		wait for clk;
		-- Test 3
		b <= "0010";
		wait for clk;
		-- Test 4
		b <= "0011";
		wait for clk;
		-- Test 5
		b <= "0100";
		wait for clk;
		-- Test 6
		b <= "0101";
		wait for clk;
		-- Test 7
		b <= "0110";
		wait for clk;
		-- Test 8
		b <= "0111";
		wait for clk;
		wait;
	end process;
end behavior;
