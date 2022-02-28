----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2021 15:07:20
-- Design Name: 
-- Module Name: package_dsed - Behavioral
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
use IEEE.NUMERIC_STD.ALL;


package package_dsed is
    constant sample_size: integer:=8;
    
    constant low_pass0: signed:= "00000101";
    constant low_pass1: signed:= "00011111";
    constant low_pass2: signed:= "00111001";
    constant low_pass3: signed:= "00011111";
    constant low_pass4: signed:= "00000101";
    
    constant high_pass0: signed:= "11111111";
    constant high_pass1: signed:= "11100110";
    constant high_pass2: signed:= "01001101";
    constant high_pass3: signed:= "11100110";
    constant high_pass4: signed:= "11111111";
    
end package_dsed;
