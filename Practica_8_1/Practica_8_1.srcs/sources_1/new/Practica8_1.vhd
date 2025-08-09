----------------------------------------------------------------------------------
-- Company: Universidad Autonoma metropolitana unidad iztapalapa
-- Engineer: Miriam Gutierrez Ojeda, Luis Rodrigo Cruz Hernández.
-- 
-- Create Date: 18.07.2025 08:28:48
-- Design Name: Sumador de 2 bits y restador de 2 bits
-- Module Name: Practica8_1 - Behavioral
-- Project Name: Sumador restador
-- Target Devices: Basys 3
-- Description: Restador de 4 bists junto con un sumador de 2 bits
-- con un selector y la suma la imprime en display 7 segmentos.
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Practica8_1 is
    Port ( num1 : in STD_LOGIC_VECTOR( 3 downto 0); --número a restar
           num2 : in STD_LOGIC_VECTOR( 3 downto 0); --número a restar
           salida : out STD_LOGIC_VECTOR( 3 downto 0); --salida de la resta
           bout : out STD_LOGIC; --salida del acarreo
           bin : in STD_LOGIC;  --entrada para el preatamo
           
           selector : in STD_LOGIC; --Selecciona 0-> suma y 1 ->resta
           
           Cin: in STD_LOGIC; --acarreo para la suma
           sum1 : in STD_LOGIC_VECTOR( 1 downto 0); --núemro a sumar
           sum2 : in STD_LOGIC_VECTOR( 1 downto 0); -- número s umar
           res : out STD_LOGIC_VECTOR( 1 downto 0); -- resultado de la suma
           acarreo :out STD_LOGIC; --salida del acarro
           display: out STD_LOGIC_VECTOR(10 downto 0) --aqui se imprime el rsultado en decimal
           );                 
end Practica8_1;

architecture Behavioral of Practica8_1 is
SIGNAL RESTA: STD_LOGIC_VECTOR(4 downto 0); --Cramos el vector para el acarreo
SIGNAL SUMA: STD_LOGIC_VECTOR(2 downto 0); --Crwmoe el vector para el acarreo
begin
    -- La suma se ejecita si el selector esta en cero 
    SUMA <= ('0'&'0'&'0')+sum1+sum2+Cin when selector = '0' else (others => '0');
    res <= suma(1 downto 0) when selector = '0' else (others => '0');
    acarreo <=  SUMA(2) when selector = '0' else '0';
            
    --La reta se ejecuta ciando el selector es uno
    RESTA <= ('0'&'0'&'0'&'0'&'0')+num1+(NOT num2)+bin when selector = '1' else (others => '0');
    salida <= resta(3 downto 0) when selector = '1' else (others => '0');
    bout <= RESTA(4) when selector = '1' else '0';        
            
   
    --La salida de SUMA la muetra en los displays
display <= "11100000001" when SUMA = "000" else -- imprime un 0
        "11101001111" when SUMA = "001" else -- imprime un 1
        "11100010010" when SUMA = "010" else -- imprime un 2
        "11100000110" when SUMA = "011" else -- imprime un 3
        "11101001100" when SUMA = "100" else -- imprime un 4
        "11100100100" when SUMA = "101" else -- imprime un 5
        "11101100000" when SUMA = "110" else -- imprime un 6
        "11100001110" when SUMA = "111" else -- imprime un 7
        "11111111111"; 
        
end Behavioral;
