----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:20:58 03/11/2022 
-- Design Name: 
-- Module Name:    counter_3b_E - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_3b_E is
    Port ( CE_1ms : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           AN_sel : out  STD_LOGIC_VECTOR (2 downto 0));
end counter_3b_E;

architecture Behavioral of counter_3b_E is

signal Q_int : unsigned(2 downto 0):="000";

begin
process(CLK,CE_1ms)
		begin
			if (rising_edge(CLK) and CE_1ms='1') then
				if (Q_int="111") then 
					Q_int<= "000";
				else
					Q_int <= Q_int +1;
				end if;
			end if; 
		end process;
AN_sel <= STD_LOGIC_VECTOR(Q_int);
end Behavioral;

