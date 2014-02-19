----------------------------------------------------------------------------------
-- Company: USAFA ECE Department
-- Engineer: Her, Hunter b
-- 
-- Create Date:    13:04:51 02/10/2014 
-- Design Name: Full_Adder_Subtractor
-- Module Name:    lab2DJN - Behavioral 
-- Project Name: Adder implementation
-- Target Devices: 
-- Tool versions: 
-- Description:  the purpose of this is to add and subtract 4 bit binary numbers. Also detects overflow
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: the program adds 4 bits binar numberes, also detects overflow
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab2Her is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           B: in  STD_LOGIC_VECTOR (3 downto 0);
			  Check: in Std_Logic;
			  OverFlow: out Std_Logic;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
			 
end lab2Her;



architecture Behavioral of lab2Her is
component Her_full_adder is 
	port (Ain : in STD_LOGIC;
		Bin : in STD_LOGIC;
		Cin : in STD_LOGIC;
		Cout : out STD_LOGIC;
		Xout : out STD_LOGIC);
end component Her_full_adder;

signal Cin : STD_LOGIC_Vector(4 downto 0);
signal Bnot : STd_LOGIC_VECTOR(3 downto 0);
signal Bin : STD_LOGIC_VECTOR (3 downto 0);

signal D : STD_LOGIC;
signal E : STD_LOGIC;

begin

Bnot<= STD_LOGIC_VECTOR(UNSIGNED(not B) + 1);



Bin<= B when (Check='0') else
	Bnot;

Bit0: Her_full_adder
   port map (Ain => Ain(0),
	 	 Bin => Bin(0),
		 --remember to change this later for the subraction.  
		 Cin => Cin(0),
		 Cout=> Cin(1),
		 Xout=> Sum(0));
		 
		 Bit1: Her_full_adder
   port map (Ain => Ain(1),
	 	 Bin => Bin(1),
		 Cin => Cin(1),
		 Cout=> Cin(2),
		 Xout=> Sum(1));
		 
		 Bit2:  Her_full_adder
   port map (Ain => Ain(2),
	 	 Bin => Bin(2),
		 Cin => Cin(2),
		 Cout=> Cin(3),
		 Xout=> Sum(2));
		 
		 Bit3: Her_full_adder
   port map (Ain => Ain(3),
	 	 Bin => Bin(3),
		 Cin => Cin(3),
		 --we don't care where carry 4 goes.  
		 Cout=> Cin(4),
		 Xout=> Sum(3));
		 

		 
--this may have to be changed later. 
D<= Ain(3) and Bin(3) and not Cin(3);
E<= (not Ain(3)) and (not Bin(3)) and Cin(3);
  

OverFlow<= D or E;

end Behavioral;

