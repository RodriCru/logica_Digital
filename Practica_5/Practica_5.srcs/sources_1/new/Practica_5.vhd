----------------------------------------------------------------------------------
-- Company: Universidad Autónoma Metropolitana 
-- Engineer: Gutierrez Ojeda Miriam, Cruz Hernández Luis Rodrigo
-- 
-- Create Date: 27.06.2025 08:23:13
-- Design Name: Circuito siete segmentos usando with-selct-when
-- Module Name: Practica_5 - Behavioral
-- Project Name: Siete segmentos
-- Target Devices: Basys 3
-- Description: Implementación de programación concuerrente para
-- crear un circuito siete segmentos usando los display de la tarjeta
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

entity Practica_5 is
    Port ( E : in std_logic_vector(3 downto 0); --Declaración vector de entrada
           S : out std_logic_vector(6 downto 0)); -- Declaración vector de salida
end Practica_5;

architecture Behavioral of Practica_5 is
begin

with E select
    S <= "0000001" when "0000", --Muestra el numero 0 cuando la entrada es 0000
        "1001111" when "0001", --Muestra el numero 1 cuando la entrada es 0001
        "0010010" when "0010", --Muestra el numero 2 cuando la entrada es 0010
        "0000110" when "0011", --Muestra el numero 3 cuando la entrada es 0011
        "1001100" when "0100", --Muestra el numero 4 cuando la entrada es 0100
        "0100100" when "0101", --Muestra el numero 5 cuando la entrada es 0101
        "1100000" when "0110", --Muestra el numero 6 cuando la entrada es 0110
        "0001110" when "0111", --Muestra el numero 7 cuando la entrada es 0111
        "0000100" when "1001", --Muestra el numero 9 cuando la entrada es 1001
        "0000000" when others; --Muestra el numero 8 cuando la entrada es cualquiera

end Behavioral;
