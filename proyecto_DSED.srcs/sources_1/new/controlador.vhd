----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2021 18:58:31
-- Design Name: 
-- Module Name: controlador - Behavioral
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

entity controlador is
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
end controlador;

architecture Behavioral of controlador is

    component clk_12M
    port(clk_in1: in std_logic;
         reset: in std_logic;
         clk_out1: out std_logic);
    end component;
    
    component audio_interface
        Port ( clk_12megas : in STD_LOGIC;
            reset : in STD_LOGIC;
            --Recording ports
            --To/From the controller
            record_enable: in STD_LOGIC;
            sample_out: out STD_LOGIC_VECTOR (sample_size-1 downto 0);
            sample_out_ready: out STD_LOGIC;
            --To/From the microphone
            micro_clk : out STD_LOGIC;
            micro_data : in STD_LOGIC;
            micro_LR : out STD_LOGIC;
            --Playing ports
            --To/From the controller
            play_enable: in STD_LOGIC;
            sample_in: in std_logic_vector(sample_size-1 downto 0);
            sample_request: out std_logic;
            --To/From the mini-jack
            jack_sd : out STD_LOGIC;
            jack_pwm : out STD_LOGIC;
            --upgrade
            LED: out STD_LOGIC_VECTOR(sample_size-1 downto 0));
    end component;
    
    signal clk12megas, sample_out_ready, sample_request: std_logic;
    signal sample: std_logic_vector(sample_size-1 downto 0);

begin

    DUT1:clk_12M
    port map(clk_in1=>clk_100Mhz,
             reset=>reset,
             clk_out1=>clk12megas);
    
    DUT2:audio_interface
    port map(clk_12megas=>clk12megas,
             reset=>reset,
             record_enable=>'1', --always active
             sample_out=>sample,
             sample_out_ready=>sample_out_ready,
             micro_clk=>micro_clk,
             micro_data=>micro_data,
             micro_LR=>micro_LR,
             play_enable=>'1',  --always active
             sample_in=>sample,
             sample_request=>sample_request,
             jack_sd=>jack_sd,
             jack_pwm=>jack_pwm,
             LED=>LED);

end Behavioral;
