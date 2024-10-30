-- LeeZhiXuan(TP065525)
-- VLSI
-- Demux 1 to 8 Testbench

library IEEE;
use ieee.std_logic_1164.all;

entity tb_demux1to8 is
end tb_demux1to8;

architecture behavior of tb_demux1to8 is

	component demux1to8
	port(
		d : in std_logic; 						-- Input line
		s : in std_logic_vector(2 downto 0);-- Select lines
		f : out std_logic_vector(7 downto 0)-- Output lines
	);
	end component;
	
	signal d : std_logic := '0';
	signal s : std_logic_vector(2 downto 0) := (others => '0');
	
	signal f : std_logic_vector(7 downto 0);
	
	constant clk : time := 10 ns;
	
begin
	uut : demux1to8
		port map(
			d => d,
			s => s,
			f => f
		);	
	stim_proc : process
	begin
		d <= '1';
		-- Test 1
		s <= "000";
		wait for clk;
		-- Test 2
		s <= "001";
		wait for clk;
		-- Test 3
		s <= "010";
		wait for clk;
		-- Test 4
		s <= "011";
		wait for clk;
		-- Test 5
		s <= "100";
		wait for clk;
		-- Test 6
		s <= "101";
		wait for clk;
		-- Test 7
		s <= "110";
		wait for clk;
		-- Test 8
		s <= "111";
		wait for clk;
		-- Test 9
		d <= '0';
		wait for clk;
		wait;
	end process;
end behavior;
