--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bouvet
--
-- Create Date:   22:01:03 03/03/2022
-- Design Name:   
-- Module Name:   D:/CPE/ELN/Projet_scoring/chronoscore_phase2/equ45min_tb.vhd
-- Project Name:  chronoscore_phase2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: equ45min
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY equ45min_tb IS
END equ45min_tb;
 
ARCHITECTURE behavior OF equ45min_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT equ45min
    PORT(
         min_unit : IN  std_logic_vector(3 downto 0);
         min_dec : IN  std_logic_vector(3 downto 0);
         equ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal min_unit : std_logic_vector(3 downto 0) := (others => '0');
   signal min_dec : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal equ : std_logic := '0';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: equ45min PORT MAP (
          min_unit => min_unit,
          min_dec => min_dec,
          equ => equ
        );

   -- Stimulus process
   stim_proc: process
	
	variable I : integer range 0 to 15 := 0;
	variable J : integer range 0 to 15 := 0;
	
   begin		
		for I in 0 to 15 loop
			min_dec <= std_logic_vector(to_unsigned(I,4));
				for J in 0 to 15 loop
					min_unit <= std_logic_vector(to_unsigned(J,4));
					wait for 10 ns;
				end loop;
		end loop;
	wait;
	end process;
	
END;
