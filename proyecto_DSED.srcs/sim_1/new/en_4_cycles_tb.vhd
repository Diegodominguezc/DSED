----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2021 16:26:20
-- Design Name: 
-- Module Name: en_4_cycles_tb - Behavioral
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

entity en_4_cycles_tb is
--  Port ( );
end en_4_cycles_tb;

architecture Behavioral of en_4_cycles_tb is

    component en_4_cycles
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               clk_3megas: out STD_LOGIC;
               en_2_cycles: out STD_LOGIC;
               en_4_cycles : out STD_LOGIC);
    end component;
    --input signals declaration
    signal clk_12megas, reset: std_logic;
    
    --output signals declaration
    signal clk_3megas, en_2_cycles, en_4_cycles1: std_logic;
    
    --clock_period definition
    constant clk_period: time:=83.333ns;
begin
    --clock process(50% duty cycle)
    clk_process: process
    begin
        clk_12megas<='0';
        wait for clk_period/2;
        clk_12megas<='1';
        wait for clk_period/2;
    end process;

    --DUT instantiation
    DUT: en_4_cycles
        port map(clk_12megas=>clk_12megas,
                 reset=>reset,
                 clk_3megas=>clk_3megas,
                 en_2_cycles=>en_2_cycles,
                 en_4_cycles=>en_4_cycles1);
process
begin            
    reset<='1';
    wait for 20ns;   
    reset<='0';
    wait for 1 us;
    reset<='1';
    wait for 200 ns;
    reset<='0';
    wait;
end process;

end Behavioral;
