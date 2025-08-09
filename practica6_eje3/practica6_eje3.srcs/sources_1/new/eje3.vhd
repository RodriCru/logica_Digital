----------------------------------------------------------------------------------
-- Company: Lógica Digital, UAM-I
-- Engineer: Gutierrez Ojeda Miriam y Cruz Hernández Luis Rodrigo
-- 
-- Create Date: 03.07.2025 21:35:10
-- Design Name: Decodificador hexadecimal a decimal
-- Module Name: eje3 - Behavioral
-- Project Name: Practica 6
-- Target Devices: Basys 3
-- Tool Versions: vivado 2023.2
-- Description: A traves de las entradas en binario del 0 al 15 
-- se decodificará la entrada y por los displays muestra la salida en hexadecimal
-- Dependencies: IEEE.STD_LOGIC_1164.ALL
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

entity eje3 is
    Port (
        entrada : in STD_LOGIC_VECTOR(3 downto 0); -- Entradas en binario
        display : out STD_LOGIC_VECTOR(10 downto 0); -- 7 segmentos y 4 que activan los displays
        leds    : out STD_LOGIC_VECTOR(15 downto 0) -- Uno por cada valor en decimal
    );
end eje3;

architecture Behavioral of eje3 is

begin

--Esta se encarga de decodificar la salida dependiendo la entrada en binario
with entrada select
              --4321abcdefg
    display <= "11100000001" when "0000", --0
               "11101001111" when "0001", --1
               "11100010010" when "0010", --2
               "11100000110" when "0011", --3
               "11011001100" when "0100", --4
               "11010100100" when "0101", --5
               "11011100000" when "0110", --6
               "11010001110" when "0111", --7
               "10110000000" when "1000", --8
               "10110000100" when "1001", --9
               "10110001000" when "1010", --A
               "10111100000" when "1011", --B
               "01110110001" when "1100", --C
               "01111000010" when "1101", --D
               "01110110000" when "1110", --E
               "01110111000" when "1111", --F
               "00001111111" when others;

--Para los leds, se encenderan dependiendo la entrada del binario
    process(entrada) begin
        case entrada is
            when "0000" => leds <= "1000000000000000"; --0
            when "0001" => leds <= "1100000000000000"; --1 
            when "0010" => leds <= "1110000000000000"; --2 
            when "0011" => leds <= "1111000000000000"; --3
            when "0100" => leds <= "1111100000000000"; --4
            when "0101" => leds <= "1111110000000000"; --5
            when "0110" => leds <= "1111111000000000"; --6
            when "0111" => leds <= "1111111100000000"; --7
            when "1000" => leds <= "1111111110000000"; --8
            when "1001" => leds <= "1111111111000000"; --9
            when "1010" => leds <= "1111111111100000"; --10
            when "1011" => leds <= "1111111111110000"; --11
            when "1100" => leds <= "1111111111111000"; --12
            when "1101" => leds <= "1111111111111100"; --13
            when "1110" => leds <= "1111111111111110"; --14
            when "1111" => leds <= "1111111111111111"; --15
            when others => leds <="1010101010101010";
        end case;
     end process;
end Behavioral;
