--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:10:25 02/18/2022
-- Design Name:   
-- Module Name:   C:/CPE_users/TPELEC_ETI/GR_B/ELN2/Scoring/Equipe_5/chronoscore_phase1/mux_8x1x1b_tb.vhd
-- Project Name:  chronoscore_phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_8x1x1b
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
 
ENTITY mux_8x1x1b_tb IS
END mux_8x1x1b_tb;
 
ARCHITECTURE behavior OF mux_8x1x1b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_8x1x1b
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         E : IN  std_logic;
         F : IN  std_logic;
         G : IN  std_logic;
         H : IN  std_logic;
         sel : IN  std_logic_vector(2 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';
   signal E : std_logic := '0';
   signal F : std_logic := '0';
   signal G : std_logic := '0';
   signal H : std_logic := '0';
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic;
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_8x1x1b PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          E => E,
          F => F,
          G => G,
          H => H,
          sel => sel,
          O => O
        );

   -- Stimulus process
   stim_proc: process
   begin		
		
	sel <= "000",
		    "001" after 20 ns,
			 "010" after 40 ns,
			 "011" after 60 ns,
			 "100" after 80 ns,
			 "101" after 100 ns,
			 "110" after 120 ns,
			 "111" after 140 ns;
			 
	 A <= '0', '1' after 10 ns;
	 B <= '1';
	 C <= '1';
	 D <= '1';
	 E <= '1';
	 F <= '1';
	 G <= '1';
	 H <= '1';
						 
      wait;
   end process;

END;
