----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2021 13:52:51
-- Design Name: 
-- Module Name: pwm_tb - Behavioral
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

entity pwm_tb is
--  Port ( );
end pwm_tb;

architecture Behavioral of pwm_tb is

    component pwm
        port(clk_12megas: in std_logic;
             reset: in std_logic;
             en_2_cycles: in std_logic;
             sample_in: in std_logic_vector(sample_size-1 downto 0);
             sample_request: out std_logic;
             pwm_pulse: out std_logic);
     end component;

    component en_4_cycles
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               clk_3megas: out STD_LOGIC;
               en_2_cycles: out STD_LOGIC;
               en_4_cycles : out STD_LOGIC);
    end component;
    --input signals declaration
    signal clk_12megas, reset: std_logic;
    signal sample_in: std_logic_vector(sample_size-1 downto 0);
    
    --output signals declaration
    signal clk_3megas, en_2_cycles, en_4_cycles1, sample_request, pwm_pulse: std_logic;
    
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
    DUT1: en_4_cycles
        port map(clk_12megas=>clk_12megas,
                 reset=>reset,
                 clk_3megas=>clk_3megas,
                 en_2_cycles=>en_2_cycles,
                 en_4_cycles=>en_4_cycles1);
     
    DUT2: pwm
        port map(clk_12megas=>clk_12megas,
                 reset=>reset,
                 en_2_cycles=>en_2_cycles,
                 sample_in=>sample_in,
                 sample_request=>sample_request,
                 pwm_pulse=>pwm_pulse);
                 
                 
    process
    begin
        reset<='1';
        sample_in<="00000000";--0
        wait for 20 us;
        reset<='0';
        sample_in<="00000000";--0
        wait for 100 us;
        reset<='0';
        sample_in<="11111111";--255
        wait for 200us;
        reset<='0';
        sample_in<="00110011";--51
        wait for 100 us;
        reset<='0';
        sample_in<="11001100";--204
        wait;
    end process;

end Behavioral;
