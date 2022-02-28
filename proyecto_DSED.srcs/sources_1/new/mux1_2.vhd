----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2021 18:13:42
-- Design Name: 
-- Module Name: mux1_2 - Behavioral
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

library work;
use work.package_dsed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux1_2 is
    Port( input0: in signed(sample_size-1 downto 0);
          input1: in signed(sample_size-1 downto 0);
          input2: in signed(sample_size-1 downto 0);
          input3: in signed(sample_size-1 downto 0);
          input4: in signed(sample_size-1 downto 0);
          control: in std_logic_vector(2 downto 0);
          output: out signed(sample_size-1 downto 0));
end mux1_2;

architecture Behavioral of mux1_2 is

begin

    with control select
        output<=input0 when "000",
                input1 when "001",
                input2 when "010",
                input3 when "011",
                input4 when "100",
                (others=>'0') when others;
        
end Behavioral;
