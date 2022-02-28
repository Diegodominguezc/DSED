----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2021 00:53:11
-- Design Name: 
-- Module Name: audio_interface_tb - Behavioral
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

entity audio_interface_tb is
--  Port ( );
end audio_interface_tb;

architecture Behavioral of audio_interface_tb is

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
    
    --input signals
    signal clk_12megas, reset, record_enable, micro_data, play_enable: std_logic;
    signal sample_in: std_logic_vector(sample_size-1 downto 0);
    
    --output signals
    signal sample_out_ready, micro_clk, micro_LR, sample_request, jack_sd, jack_pwm: std_logic;
    signal sample_out, LED: STD_LOGIC_VECTOR (sample_size-1 downto 0);
    
    --pseudo_random signals
    signal a, b, c:  std_logic:= '0';
    
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
    DUT:audio_interface
    port map( clk_12megas=>clk_12megas,
               reset=>reset,
               record_enable=>record_enable,
               sample_out=>sample_out,
               sample_out_ready=>sample_out_ready,
               micro_clk=>micro_clk,
               micro_data=>micro_data,
               micro_LR=>micro_LR,
               play_enable=>play_enable,
               sample_in=>sample_in,
               sample_request=>sample_request,
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
        sample_in<="00000000";--0
        record_enable<='0';
        play_enable<='0';
        wait for 20 us;
        reset<='0';
        sample_in<="00000000";--0
        record_enable<='1';
        play_enable<='0';
        wait for 100 us;
        reset<='0';
        sample_in<="11111111";--255
        record_enable<='1';
        play_enable<='0';
        wait for 200us;
        reset<='0';
        sample_in<="00110011";--51
        record_enable<='0';
        play_enable<='1';
        wait for 100 us;
        reset<='0';
        sample_in<="11001100";--204
        record_enable<='1';
        play_enable<='1';
        wait;
    end process;

    
end Behavioral;
