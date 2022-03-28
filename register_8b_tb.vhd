--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:38:20 02/18/2022
-- Design Name:   
-- Module Name:   C:/CPE_users/TPELEC_ETI/GR_B/ELN2/Scoring/Equipe_5/chronoscore_phase1/register_8b_tb.vhd
-- Project Name:  chronoscore_phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_8b
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
 
ENTITY register_8b_tb IS
END register_8b_tb;
 
ARCHITECTURE behavior OF register_8b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_8b
    PORT(
         D : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_8b PORT MAP (
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
	
	D <= "00000000",
		  "00000001" after 10 ns,
		  "00000010" after 20 ns,
		  "00000011" after 30 ns,
		  "00000100" after 40 ns,
		  "00000101" after 50 ns,
		  "00000110" after 60 ns,
		  "00000111" after 70 ns,
		  "00001000" after 80 ns,
		  "00001001" after 90 ns,
		  "00001010" after 100 ns,
		  "00001011" after 110 ns,
		  "00001100" after 120 ns,
		  "00001101" after 130 ns,
		  "00001110" after 140 ns,
		  "00001111" after 150 ns,
		  "00010000" after 160 ns;

END;
