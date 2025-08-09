----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2025 09:36:13
-- Design Name: 
-- Module Name: practica7_1 - Behavioral
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

entity practica7_1 is
    Port ( Entrada : in STD_LOGIC_VECTOR (7 downto 0 ); -- Entradas e inclutyen el selector
           Selectora : in STD_LOGIC_VECTOR (2 downto 0);
           Salida : out STD_LOGIC);
end practica7_1;

architecture Behavioral of practica7_1 is

begin

with Selectora select
    Salida <= Entrada(0) when "000",  -- I0
              Entrada(1) when "001",  -- I1
              Entrada(2) when "010",  -- I2
              Entrada(3) when "011",  -- I3
              Entrada(4) when "100",  -- I4
              Entrada(5) when "101",  -- I5
              Entrada(6) when "110",  -- I6
              Entrada(7) when "111",  -- I7
              '0'       when others;  -- Opcional (para casos no cubiertos)

end Behavioral;
