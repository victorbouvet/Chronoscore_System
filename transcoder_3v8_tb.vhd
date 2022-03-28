--------------------------------------------------------------------------------
-- Company: 
-- Engineer: SERRUS_NGUYEN
--
-- Create Date:   09:07:46 02/18/2022
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_B/ELN2/SCORING/EQUIPE_5/chronoscore_phase1/transcoder_3v8_tb.vhd
-- Project Name:  chronoscore_phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transcoder_3v8
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
 
ENTITY transcoder_3v8_tb IS
END transcoder_3v8_tb;
 
ARCHITECTURE behavior OF transcoder_3v8_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transcoder_3v8
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         O : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transcoder_3v8 PORT MAP (
          A => A,
          O => O
        );

A <= "000","001" after 100ns,"010" after 200ns, "011" after 300ns,"100" after 400ns,
"101" after 500ns, "110" after 600ns,"111" after 700ns;

END;
