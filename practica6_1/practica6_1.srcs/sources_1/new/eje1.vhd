----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.07.2025 21:23:02
-- Design Name: 
-- Module Name: eje1 - Behavioral
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

entity eje1 is
    Port (
        entrada : in STD_LOGIC_VECTOR(9 downto 0);
        salida  : out STD_LOGIC_VECTOR(6 downto 0)
    );
end eje1;

architecture Behavioral of eje1 is

--begin
  --  process(entrada)
    --begin
      --  salida <= "0000100" when entrada(9) = '' else
        --          "0000000" when entrada(8) = '1' else
          --        "0001110" when entrada(7) = '1' else
            --      "1100000" when entrada(6) = '1' else
              --    "0100100" when entrada(5) = '1' else
                --  "1001100" when entrada(4) = '1' else
                 -- "0000110" when entrada(3) = '1' else
                 -- "0010010" when entrada(2) = '1' else
                  --"1001111" when entrada(1) = '1' else
                 -- "0000001" when entrada(0) = '1' else
                  --"1111111";
                  
                  
begin
    process(entrada)
    begin
        if entrada(9) = '1' then
            salida <= "0000100";
        elsif entrada(8) = '1' then
            salida <= "0000000";
        elsif entrada(7) = '1' then
            salida <= "0001110";
        elsif entrada(6) = '1' then
            salida <= "1100000";
        elsif entrada(5) = '1' then
            salida <= "0100100";
        elsif entrada(4) = '1' then
            salida <= "1001100";
        elsif entrada(3) = '1' then
            salida <= "0000110";
        elsif entrada(2) = '1' then
            salida <= "0010010";
        elsif entrada(1) = '1' then
            salida <= "1001111";
        elsif entrada(0) = '1' then
            salida <= "0000001";
        else
            salida <= "1111111";  -- valor por defecto
        end if;
 
    end process;
end Behavioral;