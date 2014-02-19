----------------------------------------------------------------------------------
--  Company: USAFA ECE Department
-- Engineer: Her, Hunter b
-- 
-- Create Date:    13:53:18 02/10/2014 
-- Design Name: 	Adder
-- Module Name:    Her_full_adder - Structural 
-- Project Name: Lab2
-- Target Devices: 
-- Tool versions: 
-- Description: This is a device that implements an adder
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: carry-out ripple adder.
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

entity Her_full_adder is
    Port ( Ain : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Xout : out  STD_LOGIC);
end Her_full_adder;

architecture Structural of Her_full_adder is

signal D: STD_LOGIC;
begin
D <=(Ain xor Bin);
Xout<= D xor Cin;
Cout <= (Ain and Bin) or (D and Cin);

end Structural;

