----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2025 13:39:02
-- Design Name: 
-- Module Name: eje2_funcional - Behavioral
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

entity eje2_funcional is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           DOV : out STD_LOGIC;
           DIV : out STD_LOGIC;
           CUV : out STD_LOGIC;
           SEV : out STD_LOGIC);
end eje2_funcional;

architecture Behavioral of eje2_funcional is


begin
process (a,b,c,d)
begin
if (a = '0' and b='0' and c='0' and d='1') or (a = '0' and b='0' and c='1' and d='0') or (a = '0' and b='1' and c='0' and d='0') or (a = '1' and b='0' and c='0' and d='0') 
then
DOV <= '1';
DIV <= '0';
CUV <= '0';
SEV <= '0';
elsif 
(a = '0' and b='0'and c='1' and d='1') or (a = '0' and b='1'and c='0' and d='1') or (a = '0' and b='1'and c='1' and d='0') or (a = '1' and b='0'and c='0' and d='1') or (a = '1' and b='0'and c='1' and d='0') or (a = '1' and b='1'and c='0' and d='0') then
DOV <= '0';
DIV <= '1';
CUV <= '0';
SEV <= '0';

elsif (a = '0' and b = '1' and c = '1' and d = '1') or (a = '1' and b = '0'and c = '1' and d = '1') or (a = '1' and b = '1'and c = '0' and d = '1') or (a = '1' and b = '1'and c = '1' and d = '0') 
then
DOV <= '0';
DIV <= '0';
CUV <= '1';
SEV <= '0';

elsif (a = '1' and b='1'and c='1' and d='1') then
DOV <= '0';
DIV <= '0';
CUV <= '0';
SEV <= '1';
end if;
end process;

end Behavioral;
