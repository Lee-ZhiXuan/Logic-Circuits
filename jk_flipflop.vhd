-- LeeZhiXuan(TP065525)
-- VLSI
-- JK Flip Flop

library IEEE;
use ieee.std_logic_1164.all;

entity jk_flipflop is
	port ( j : in std_logic;
          k : in std_logic;
          Qn : out std_logic
	);
end jk_flipflop;

architecture behavioral of jk_flipflop is
	signal Q_internal : std_logic := '0';
begin
	process(j, k)
	begin
		if (j = '0' and k = '0') then
			-- No change
		elsif (j = '0' and k = '1') then
			Q_internal <= '0';
		elsif (j = '1' and k = '0') then
			Q_internal <= '1';
		elsif (j = '1' and k = '1') then
			Q_internal <= not Q_internal;
		end if;
	end process;

   Qn <= Q_internal;
end behavioral;
