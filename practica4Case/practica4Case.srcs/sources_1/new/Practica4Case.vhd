----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.06.2025 09:26:25
-- Design Name: 
-- Module Name: Practica4Case - Behavioral
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

entity Practica4Case is port (
    A: in std_logic_vector(3 downto 0 );
    d: out std_logic_vector(8 downto 0));
end Practica4Case;

architecture Behavioral of Practica4Case is

begin
process(A) begin
    case A is
        when "0000" => d <= "000000011";
        when "0001" => d <= "000100101";
        when "0010" => d <= "001000110";
        when "0011" => d <= "001101001";
        when "0100" => d <= "010001010";
        when "0101" => d <= "101101100";
        when "0110" => d <= "110010001";
        when "0111" => d <= "110110010";
        when "1000" => d <= "111010100";
        when "1001" => d <= "111111000";
        when others => d <= "000000000";
    end case;
end process;             
end Behavioral;
