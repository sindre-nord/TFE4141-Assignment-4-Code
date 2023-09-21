----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2023 09:25:19 AM
-- Design Name: 
-- Module Name: design1 - Behavioral
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

architecture design1 of assignment5 is
    begin
        process (clk, reset) is
            variable t : std_ulogic;
        begin
            if (reset = ‘1’) then
                t := '0';
                y <= ‘0’;
            elsif (rising_edge(clk)) then
                y <= t;
                t := a xor b;
            end if;
        end process;
    end architecture;
