----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.06.2025 08:22:06
-- Design Name: 
-- Module Name: practica3 - Behavioral
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

entity practica3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC;
           Y : out STD_LOGIC;
           Z : out STD_LOGIC);
end practica3;

architecture Behavioral of practica3 is

begin

X <= (not A and not B and not C ) or (not A and not B and C) or (not A and B and C ) or (A and B and C);
Y <= (not A and not B and C) or (A and not B and C) or (A and B and not C);
Z <= (not A and not B and not C) or (not A and B and not C) or (not A and B and C);


end Behavioral;
