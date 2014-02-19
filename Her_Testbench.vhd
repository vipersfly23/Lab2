--------------------------------------------------------------------------------
-- Company: United States Air Force Academy ECE Department
-- Engineer: Her, Hunter B
--
-- Create Date:   16:30:34 02/18/2014
-- Design Name:   Full_Adder_TestBench
-- Module Name:   C:/Users/C16Hunter.Her/Desktop/Academic_Spring_2014/ECE_281/Lab2_New/Her_Testbench.vhd
-- Project Name:  Lab2_New
-- Target Device:  
-- Tool versions:  
-- Description:   The purposeof this testbench is to simulate, and test the functionality of the full adder
-- 
-- VHDL Test Bench Created by ISE for module: lab2Her
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
use ieee.std_logic_arith.all;

Use ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY Her_Testbench IS
END Her_Testbench;
 
ARCHITECTURE behavior OF Her_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab2Her
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Check : IN  std_logic;
         OverFlow : OUT  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Check : std_logic := '0';

 	--Outputs
   signal OverFlow : std_logic;
   signal Sum : STD_LOGIC_vector (3 DOWNTO 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab2Her PORT MAP (
          Ain => Ain,
          B => B,
          Check => Check,
          OverFlow => OverFlow,
          Sum => Sum
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
Ain <= "0000";
B<="0000";



for i in 0 to 15 loop
for j in 0 to 15 loop
wait for 10ns;
assert (Sum  = Ain+B) report "check what S is:  ";

Ain <= Ain+1;
next;
end loop;
wait for 10ns;
B<=B+1;

end loop;
		
  

      wait;
   end process;

END;
