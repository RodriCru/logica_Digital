----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.07.2025 11:55:36
-- Design Name: 
-- Module Name: Practica7_1 - Behavioral
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

entity Practica7_1 is
    Port ( Selec0 : in STD_LOGIC;
           Selec1 : in STD_LOGIC;
           Selec2: in STD_LOGIC;

           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : in STD_LOGIC;
           F : in STD_LOGIC;
           G : in STD_LOGIC;
           H : in STD_LOGIC;
           Salida : out STD_LOGIC);
end Practica7_1;

architecture Behavioral of Practica7_1 is

SIGNAL UNO,DOS,TRES,CUATRO,CINCO , SEIS, SIETE, OCHO, NUEVE:  STD_LOGIC;
  
begin

UNO <= A AND NOT Selec0 AND NOT Selec1 AND NOT Selec2;
DOS <= B AND Selec0 AND NOT Selec1 AND NOT Selec2;
TRES <= C AND NOT Selec0 AND Selec1 AND NOT Selec2;
CUATRO <= D AND Selec0 AND Selec1 AND NOT Selec2;
CINCO <= E AND NOT Selec0 AND NOT Selec1 AND Selec2;
SEIS <= F AND Selec0 AND NOT Selec1 AND Selec2;
SIETE <= G AND NOT Selec0 AND Selec1 AND Selec2;
OCHO <= H AND Selec0 AND Selec1 AND Selec2;
Salida <= UNO OR DOS OR TRES OR CUATRO OR CINCO OR SEIS OR SIETE OR OCHO ;



--SUMADOR 

--entity sumador_4bit_vector is 
--Port (: in STD_LOGIC:
--Sum1: in STD-LOGIC_VECTOR (3 do




end Behavioral;
