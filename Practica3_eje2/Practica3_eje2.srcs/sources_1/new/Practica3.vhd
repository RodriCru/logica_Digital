----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.06.2025 09:54:40
-- Design Name: 
-- Module Name: Practica3 - Behavioral
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

entity Practica3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           DOV : out STD_LOGIC;
           DIV : out STD_LOGIC;
           CUV : out STD_LOGIC;
           SEV: out STD_LOGIC);
end Practica3;

architecture Behavioral of Practica3 is

begin

DOV <= '0' when (A = '0' AND B = '0' AND C = '0' AND D = '0') else
'0' when (A = '1' AND B = '1') else
'0' when (C = '1' AND D = '1') else
'0' when (A = '1' AND B = '0' AND D = '1') else
'0' when (B = '1' AND C = '0' AND D = '1') else
'0' when (A = '0' AND B = '1' AND C = '1') else
'0' when (A = '1' AND C = '1' AND D = '0') else
'1';


DIV <= '0' when (A = '0' AND B = '0' AND C = '1' AND D = '0') else
'0' when (A = '0' AND C = '0' AND D = '0') else
'0' when (A = '0' AND B = '0' AND C = '0' ) else
'0' when (B = '0' AND C = '0' AND D = '0') else
'0' when (A = '1' AND B = '1' AND D = '1') else
'0' when (A = '1' AND C = '1' AND D = '1') else
'0' when (A = '1' AND B = '1' AND C = '1') else
'0' when (B = '1' AND C = '1' AND D = '1') else
'1';


CUV <= '0' when (A = '1' AND B= '1' AND C = '1' AND D = '1') else
'0' when (C = '0' AND D= '0'  ) else
'0' when (A = '0' AND B= '0') else
'0' when (A = '1' AND B= '0' AND D = '0') else
'0' when (A = '1' AND B= '0' AND C = '0') else
'0' when (A = '0' AND C= '0' AND D = '1') else
'0' when (A = '0' AND B= '0' AND C = '1') else
'1';


SEV <= '0' when (A = '0') else
'0' when (A = '1' AND B= '0') else
'0' when (A = '1' AND B= '1' AND C = '0') else
'0' when (A = '1' AND C= '1' AND D = '0') else
'1';

end Behavioral;
