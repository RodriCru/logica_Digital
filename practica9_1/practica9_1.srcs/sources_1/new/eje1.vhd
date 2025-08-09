----------------------------------------------------------------------------------
-- Company: Universidad Autnoma Metropolitana Unidad Iztapalapa
-- Engineer: Miriam Gutierrez Ojeda y Luis Rodrigo Cruz Hernández.
-- 
-- Create Date: 01.08.2025 09:21:46
-- Design Name: Flip Flop JK
-- Module Name: eje1 - Behavioral
-- Project Name: Flip Flop JK
-- Target Devices: Baysis 3
-- Description: Implementación de un flip flop JK en código en VHDL
-- 
-- Dependencies: use IEEE.std_logic_arith.all
--               use IEEE.std_logic_unsigned.all
--
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;     
use IEEE.std_logic_arith.all;     -- Se importan las librerias para la aritmetica
use IEEE.std_logic_unsigned.all;


entity eje1 is
    Port ( J : in STD_LOGIC;  --Entrada J del Flip Flop
           K : in STD_LOGIC;  --Entrada K del flip flop
           Q : out STD_LOGIC; --Salida Q del flip flop
           Qn : out STD_LOGIC; --Salida Negada de Q
           CL : in STD_LOGIC);  -- Reloj, encargado de las transiciones
end eje1;

architecture Behavioral of eje1 is

begin 
PROCESS(CL) -- SE declara un bloque de código usando el reloj
variable TMP:std_logic; de declara una variable para almacenar el valor temporalmente
begin
if(CL = '1' and CL'EVENT)then  -- Valida que el reloj este en uno y que haya recibido una señal.
    if(J = '1' and k= '1')then -- Valida la entrada de J = 1 y K = 1
    TMP:= TMP; -- Se asigna a si mismo su valor
        elsif(J = '0' and K = '0')then  --en caso contrario que la entrada sea 0 0
            TMP:= not TMP; --el valor temporal se invierte de 1 a 0 o de 0 a 1
        elsif(J = '0' and K = '1')then -- En caso de que J=0 y K=1 
        TMP:='0';   -- Entonces asigna el valor de 0
    else -- En caso contrario
    TMP:='1';  -- Asigna un uno
    end if; -- termina el if
end if;
q <= TMP; --Se le asigna a q el valor de TMP 
Qn <= not TMP; -- por lógica se le asigna lo contraio a TMP
end PROCESS;
end Behavioral;
