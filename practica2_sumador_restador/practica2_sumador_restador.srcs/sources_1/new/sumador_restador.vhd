----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.06.2025 09:45:36
-- Design Name: 
-- Module Name: sumador_restador - Behavioral
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

entity sumador_restador is
    Port ( sw : in STD_LOGIC;
           x : in STD_LOGIC;
           y : in STD_LOGIC;
           suma : out STD_LOGIC;
           ac : out STD_LOGIC;
           resta : out STD_LOGIC;
           pres : out STD_LOGIC);
end sumador_restador;

architecture Behavioral of sumador_restador is

begin

suma <= (not sw and not x and y) or (not sw and x and not y);
ac <= (not sw and x and y);
resta <= (sw and not x and y) or (sw and x and not y);
pres <= (sw and not x and y);

end Behavioral;
