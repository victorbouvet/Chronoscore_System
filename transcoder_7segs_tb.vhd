--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:49:56 02/18/2022
-- Design Name:   
-- Module Name:   C:/CPE_users/TPELEC_ETI/GR_B/ELN2/Scoring/Equipe_5/chronoscore_phase1/transcoder_7segs_tb.vhd
-- Project Name:  chronoscore_phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transcoder_7segs
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
 
ENTITY transcoder_7segs_tb IS
END transcoder_7segs_tb;
 
ARCHITECTURE behavior OF transcoder_7segs_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transcoder_7segs
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         O : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transcoder_7segs PORT MAP (
          A => A,
          O => O
        );

   -- Stimulus process
   stim_proc: process
   begin
		
		A <= "0000",
			  "0001" after 20 ns,
	  	  	  "0010" after 40 ns,
	  	  	  "0011" after 60 ns,
	  	  	  "0100" after 80 ns,
	  	  	  "0101" after 100 ns,
	  	  	  "0110" after 120 ns,
	  	  	  "0111" after 140 ns,
	  	  	  "1000" after 160 ns,
	  	  	  "1001" after 180 ns,
	  	  	  "1010" after 200 ns,
	  	  	  "1011" after 220 ns,
			  "1100" after 240 ns,
	  	  	  "1101" after 260 ns,
	  	  	  "1110" after 280 ns;

      wait;
   end process;

END;
