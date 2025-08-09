----------------------------------------------------------------------------------
-- Company: Universidad Autonóma Metroploitana Unidad Izt
-- Engineer: Miriam Gutierrez Ojeda, Luis Rodrigo Cruz Hernández
-- 
-- Create Date: 25.06.2025 19:36:25
-- Design Name: 
-- Module Name: Practica4_Select - Behavioral
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

entity Practica4_Select is
    Port ( A: in std_logic_vector (3 downto 0);
           b: out std_logic_vector (8 downto 0));
end Practica4_Select;

architecture Behavioral of Practica4_Select is

begin

with A select 
b <= "000000011" when "0000",
     "000100101" when "0001",
     "001000110" when "0010",
     "001101001" when "0011",
     "010001010" when "0100",
     "101101100" when "0101",
     "110010001" when "0110",
     "110110010" when "0111",
     "111010100" when "1000",
     "111111000" when "1001",
     "000000000" when others;

end Behavioral;
