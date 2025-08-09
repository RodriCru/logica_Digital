----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.07.2025 21:27:08
-- Design Name: 
-- Module Name: eje2 - Behavioral
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

entity eje2 is
    Port (
        entrada : in STD_LOGIC_VECTOR(9 downto 0);
        salida  : out STD_LOGIC_VECTOR(3 downto 0);
        activo  : out STD_LOGIC
    );
end eje2;

architecture Behavioral of eje2 is

begin
    process(entrada)
    begin
        if entrada = "0000000000" then
            salida <= "0000";
            activo <= '0';
        else
            activo <= '1';
            case entrada is
                when "XXXXXXXXX1" => salida <= "0000"; -- E10
                when "XXXXXXXX10" => salida <= "0001"; -- E9
                when "XXXXXXX100" => salida <= "0010"; -- E8
                when "XXXXXX1000" => salida <= "0011"; -- E7
                when "XXXXX10000" => salida <= "0100"; -- E6
                when "XXXX100000" => salida <= "0101"; -- E5
                when "XXX1000000" => salida <= "0110"; -- E4
                when "XX10000000" => salida <= "0111"; -- E3
                when "X100000000" => salida <= "1000"; -- E2
                when "1000000000" => salida <= "1001"; -- E1
                when others => salida <= "0000";
            end case;
        end if;
    end process;
end Behavioral;
