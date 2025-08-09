----------------------------------------------------------------------------------
-- Company: Universidad Autonoma Metropolitana unidad Iztapalapa
-- Engineer: Miriam Gutierrez Ojeda y Luis Rodrigo Cruz Hernández
-- 
-- Create Date: 01.08.2025 10:33:14
-- Design Name: Contador con reloj
-- Module Name: eje2 - Behavioral
-- Project Name: Contador con reloj
-- Target Devices: Basys 3
-- Description: Contador que al momento de darle clic al botón este cambia
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity eje2 is
    Port (
           CL : in STD_LOGIC; --Variable para el reloj
           cuenta: inout STD_LOGIC_VECTOR(3 downto 0);  --Variable de entrada y salida para el contador
           display : out STD_LOGIC_VECTOR(10 downto 0)); --Vectro para plasmar el valor en 7 segmentos
end eje2;

architecture Behavioral of eje2 is

begin
    process(CL) -- Declaramos el proceso
        begin
            if(CL'event and CL='1') then --Si detecta un clic en el botón 
                cuenta <= cuenta + 1; --Aumenta su valor en uno
            end if;
            
        end process;
    with cuenta select
    
    --Dependiendo del valor en binario de cuenta
    --Muestra su valor en decimal
    display <= "11100000001" when "0000", --0
               "11101001111" when "0001", --1
               "11100010010" when "0010", --2
               "11100000110" when "0011", --3
               "11101001100" when "0100", --4
               "11100100100" when "0101", --5
               "11101100000" when "0110", --6
               "11100001110" when "0111", --7
               "11100000000" when "1000", --8
               "11100000100" when "1001", --9
               "11100001000" when "1010", --A
               "11101100000" when "1011", --B
               "11100110001" when "1100", --C
               "11101000010" when "1101", --D
               "11100110000" when "1110", --E
               "11100111000" when "1111", --F
               "00001111111" when others;

end Behavioral;
