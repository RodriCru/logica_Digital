----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.06.2025 09:58:22
-- Design Name: 
-- Module Name: eje1_funcional - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eje1_funcional is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC;
           Y : out STD_LOGIC;
           Z : out STD_LOGIC);
end eje1_funcional;

architecture Behavioral of eje1_funcional is

begin
X <= '1' when (A = '0' and B = '0' and C = '0')else
     '1' when (A = '0' and B = '0' and C = '1')else
     '1' when (A = '0' and B = '1' and C = '1')else
     '1' when (A = '1' and B = '1' and C = '1')else
     '0';

Y <= '1' when (A = '0' and B = '0' and C = '1')else
     '1' when (A = '1' and B = '0' and C = '1')else
     '1' when (A = '1' and B = '1' and C = '0')else
     '0';
     
Z <= '1' when (A = '0' and B = '0' and C = '0')else
     '1' when (A = '0' and B = '1' and C = '0')else
     '1' when (A = '0' and B = '1' and C = '1')else
     '0';
end Behavioral;
