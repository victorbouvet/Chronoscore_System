--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:52:19 03/11/2022
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_B/ELN2/SCORING/EQUIPE_5/chronoscore_phase1/counter_3b_E_tb.vhd
-- Project Name:  chronoscore_phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_3b_E
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
 
ENTITY counter_3b_E_tb IS
END counter_3b_E_tb;
 
ARCHITECTURE behavior OF counter_3b_E_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_3b_E
    PORT(
         CE_1ms : IN  std_logic;
         CLK : IN  std_logic;
         AN_sel : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CE_1ms : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal AN_sel : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
	constant CE_1ms_period : time:=100 ns;
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
		 uut: counter_3b_E PORT MAP (
			CE_1ms => CE_1ms,
           CLK => CLK,
          AN_sel => AN_sel
         );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	CE_1ms_process : process
   begin
		CE_1ms <='0';
		wait for 90ns;
		CE_1ms<='1';
		wait for 10ns;
	end process;


END;
