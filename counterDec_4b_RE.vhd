----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:44:23 03/03/2022 
-- Design Name: 
-- Module Name:    counterDec_4b_RE - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counterDec_4b_RE is
    Port ( R : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           TC : out  STD_LOGIC);
end counterDec_4b_RE;

architecture Behavioral of counterDec_4b_RE is

signal Q_int : unsigned(3 downto 0) := "0000";
signal TC_int : std_logic := '0';

begin

process(clk,R,CE)

begin
	if R='1' then
		Q_int <= "0000";
		TC_int <= '0';
	elsif(rising_edge(clk)) then
		TC_int <= '0';
		if(CE='1') then
			Q_int <= Q_int+1;
			if Q_int="1001" then
				Q_int <= "0000";
				TC_int <= '1';
			end if;
		end if;
	end if;
end process;

Q <= std_logic_vector(Q_int);
TC <= std_logic(TC_int);

end Behavioral;

