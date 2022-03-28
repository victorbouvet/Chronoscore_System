----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bouvet
-- 
-- Create Date:    21:57:26 03/03/2022 
-- Design Name: 
-- Module Name:    equ45min - Behavioral 
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

entity equ45min is
    Port ( min_unit : in  STD_LOGIC_VECTOR (3 downto 0);
           min_dec : in  STD_LOGIC_VECTOR (3 downto 0);
           equ : out  STD_LOGIC);
end equ45min;

architecture Behavioral of equ45min is

begin

equ <= '1' when (min_dec="0100" and min_unit="0101") else '0';

end Behavioral;

