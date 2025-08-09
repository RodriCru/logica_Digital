----------------------------------------------------------------------------------
-- Company: Universidad Autonoma Metropolitana unidad Iztapalapa
-- Engineer: Miriam Gutierrez Ojeda y Luis Rodrigo Cruz Hernández
-- 
-- Create Date: 31.07.2025 13:53:57
-- Design Name: Comparador de 4 bits.
-- Module Name: eje2 - Behavioral
-- Project Name: Practica 8 Comparador de de numero de 4 bits
-- Target Devices: Basys 3
-- Tool Versions:  
-- Description: Compara si dos números de 4 bits son iguales, mayor o menor uno 
-- al otro y lo muestra en un display 7 segmentos
-- Dependencies: arith.all; y UNSIGNED
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED;
use IEEE.STD_LOGIC_arith.all;

entity eje2 is
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           display : out STD_LOGIC_VECTOR(10 downto 0));
end eje2;

architecture Behavioral of eje2 is

begin
    process(A,B)
    begin
        if A > B then
            display <= "11100001000";
        elsif A = B then
            display <=  "11100111110";
        else
            display <="11101100000";
        end if;
    end process;
    
end Behavioral;
