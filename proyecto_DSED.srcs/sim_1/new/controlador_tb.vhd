----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2021 21:18:59
-- Design Name: 
-- Module Name: controlador_tb - Behavioral
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

entity controlador_tb is
--  Port ( );
end controlador_tb;

architecture Behavioral of controlador_tb is

    component controlador
        Port (clk_100Mhz : in std_logic;
              reset: in std_logic;
              --To/From the microphone
              micro_clk : out STD_LOGIC;
              micro_data : in STD_LOGIC;
              micro_LR : out STD_LOGIC;
              --To/From the mini-jack
              jack_sd : out STD_LOGIC;
              jack_pwm : out STD_LOGIC;
              --upgrade
              LED: out STD_LOGIC_VECTOR(sample_size-1 downto 0));
    end component;
    
    --input signals
    signal clk_100Mhz, reset, micro_data:std_logic;
    
    --output signals
    signal micro_clk, micro_LR, jack_sd, jack_pwm:std_logic;
    signal LED: std_logic_vector(sample_size-1 downto 0);
    
    --clock_period definition
    constant clk_period: time:=10ns;   
    
    --pseudo_random signals
    signal a, b, c:  std_logic:= '0'; 

begin

    --clock process(50% duty cycle)
    clk_process: process
    begin
        clk_100Mhz<='0';
        wait for clk_period/2;
        clk_100Mhz<='1';
        wait for clk_period/2;
    end process;

    --DUT instantiation
    DUT:controlador
    port map(clk_100Mhz=>clk_100Mhz,
             reset=>reset,
             micro_clk=>micro_clk,
             micro_data=>micro_data,
             micro_LR=>micro_LR,
             jack_sd=>jack_sd,
             jack_pwm=>jack_pwm,
             LED=>LED);
             
    a <= not a after 1300 ns;
    b <= not b after 2100 ns;
    c <= not c after 3700 ns;
    micro_data <= a xor b xor c;
    
    process
    begin
        reset<='1';
        wait for 20us;
        reset<='0';
        wait;
    end process;
             
        


end Behavioral;

