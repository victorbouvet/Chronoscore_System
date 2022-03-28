--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:43:33 03/04/2022
-- Design Name:   
-- Module Name:   C:/CPE_users/TPELEC_ETI/GR_B/ELN2/Scoring/Equipe_5/chronoscore_phase2/XOR_2b_tb.vhd
-- Project Name:  chronoscore_phase2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: XOR_2b
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
 
ENTITY XOR_2b_tb IS
END XOR_2b_tb;
 
ARCHITECTURE behavior OF XOR_2b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT XOR_2b
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: XOR_2b PORT MAP (
          A => A,
          B => B,
          O => O
        );

  A<= '0', '1' after 100ns, '0' after 200ns,'1' after 300ns;
  B<= '0', '1' after 200ns;

END;
