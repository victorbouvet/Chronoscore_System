----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:37:45 03/04/2022 
-- Design Name: 
-- Module Name:    score - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity score is
    Port ( CE_1ms : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           BPreset : in  STD_LOGIC;
           BPL : in  STD_LOGIC;
			  BPV : in STD_LOGIC;
           loc_unit : out  STD_LOGIC_VECTOR (3 downto 0);
           loc_dec : out  STD_LOGIC_VECTOR (3 downto 0);
           vis_unit : out  STD_LOGIC_VECTOR (3 downto 0);
           vis_dec : out  STD_LOGIC_VECTOR (3 downto 0));
end score;

	architecture Behavioral of score is


    COMPONENT register_1b_E
    PORT(
         CE : IN  std_logic;
         D : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
	
	 COMPONENT register_1b
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
	 
	COMPONENT XOR_2b
	PORT(
			A : IN  std_logic;
			B : IN  std_logic;
			O : OUT  std_logic
		);
	END COMPONENT;
	
	 COMPONENT counterDec_4b_RE
    PORT(
         R : IN  std_logic;
         CE : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0);
         TC : OUT  std_logic
        );
    END COMPONENT;
    
signal bpl_r : std_logic;
signal bpl_d : std_logic;
signal bpl_fr : std_logic;
signal bpl_inc : std_logic;
signal bpl_f : std_logic;
signal CE_LOC : std_logic;
signal bpv_r : std_logic;
signal bpv_d : std_logic;
signal bpv_f : std_logic;
signal bpv_fr : std_logic;
signal bpv_inc : std_logic;
signal CE_VIS : std_logic;
signal bpv_underscore : std_logic;
signal bpv_underscoredeux : std_logic;

begin

	   U0: register_1b_E PORT MAP (
          CE => CE_1ms,
          D => BPL,
          clk => CLK,
          Q => bpl_r
        );
		  
	   U1: register_1b_E PORT MAP (
          CE => CE_1ms,
          D => bpl_r,
          clk => CLK,
          Q => bpl_d
        );
		  
		U5: register_1b_E PORT MAP (
          CE => CE_1ms,
          D => BPV,
          clk => CLK,
          Q => bpv_underscore
        );
		U6: register_1b_E PORT MAP (
          CE => CE_1ms,
          D => bpv_underscore,
          clk => CLK,
          Q => bpv_d
        );
		U2: register_1b PORT MAP (
			 D => bpl_d,
			 clk => CLK,
			 Q => bpl_f
		  );
		U7: register_1b PORT MAP (
			 D => bpv_d,
			 clk => CLK,
			 Q => bpv_underscoredeux
		);
		
		U3: XOR_2b PORT MAP (
          A => bpl_f,
          B => bpl_d,
          O => bpl_fr
        );
		U8: XOR_2b PORT MAP (
          A => bpv_underscoredeux,
          B => bpv_d,
          O => bpv_fr
        );
		U10: counterDec_4b_RE PORT MAP (
          R => BPReset,
          CE => bpl_inc,
          clk => CLK,
          Q => loc_unit,
          TC => CE_LOC
        );
		U11: counterDec_4b_RE PORT MAP (
          R => BPReset,
          CE => CE_LOC,
          clk => CLK,
          Q => loc_dec,
          TC => open
        );
	   U12: counterDec_4b_RE PORT MAP (
          R => BPReset,
          CE => bpv_inc,
          clk => CLK,
          Q => vis_unit,
          TC => CE_VIS
        );
		 
	   U13: counterDec_4b_RE PORT MAP (
          R => BPReset,
          CE => CE_VIS,
          clk => CLK,
          Q => vis_dec,
          TC => open
        );

bpl_inc <= bpl_fr and bpl_d;
bpv_inc <= bpv_fr and bpv_d;

		
end Behavioral;

