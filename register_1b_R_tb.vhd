--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:00:28 03/03/2022
-- Design Name:   
-- Module Name:   D:/CPE/ELN/Projet_scoring/chronoscore_phase2/register_1b_R_tb.vhd
-- Project Name:  chronoscore_phase2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_1b_R
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY register_1b_R_tb IS
END register_1b_R_tb;
 
ARCHITECTURE behavior OF register_1b_R_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_1b_R
    PORT(
         R : IN  std_logic;
         D : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '0';
   signal D : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_1b_R PORT MAP (
          R => R,
          D => D,
          clk => clk,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	super_process :process
   begin
		wait for 100 ns;
		D <= '0';
		R <= '0';
		wait for 20 ns;
		D <= '1';
		wait for 10 ns;
		R <= '1';
		wait for 10 ns;
		D <= '0';
		wait for 20 ns;
		D <= '1';
		wait for 20 ns;
		R <= '0';
		wait;
   end process;
 
END;
