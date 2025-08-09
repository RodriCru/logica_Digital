----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.07.2025 20:08:44
-- Design Name: 
-- Module Name: Ejercicio2 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ejercicio2 is
    Port ( Cin: in STD_LOGIC; --Concatenación
           num1 : in STD_LOGIC_VECTOR(3 downto 0);
           num2 : in STD_LOGIC_VECTOR(3 downto 0);
           resultado : out STD_LOGIC_VECTOR(3 downto 0);
           acarreo : out STD_LOGIC);
end Ejercicio2;

architecture Behavioral of Ejercicio2 is

SIGNAL Z: STD_LOGIC_VECTOR(4 downto 0);
begin
Z <= ('0'&'0'&'0'&'0'&'0')+num1+num2+Cin;
resultado <= z(3 downto 0);
acarreo <= Z(4);
end Behavioral;
