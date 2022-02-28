----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2021 15:02:57
-- Design Name: 
-- Module Name: audio_interface - Behavioral
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

entity audio_interface is
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
end audio_interface;

architecture Behavioral of audio_interface is

    --en_4_cycles component declaration
    component en_4_cycles
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               clk_3megas: out STD_LOGIC;
               en_2_cycles: out STD_LOGIC;
               en_4_cycles : out STD_LOGIC);
    end component;
    
    --FSMD_microphone component declaration
    component FSMD_microphone
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               enable_4_cycles : in STD_LOGIC;
               micro_data : in STD_LOGIC;
               sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
               sample_out_ready : out STD_LOGIC);  
    end component;
    
    --pwm component declaration
    component pwm
        port(clk_12megas: in std_logic;
             reset: in std_logic;
             en_2_cycles: in std_logic;
             sample_in: in std_logic_vector(sample_size-1 downto 0);
             sample_request: out std_logic;
             pwm_pulse: out std_logic);
     end component;
     
     --upgrade vumeter
     component audio_visualizer
         Port ( clk_12megas : in std_logic;
                reset: in std_logic;
                sample_in: in std_logic_vector(sample_size-1 downto 0);
                sample_request: in std_logic;
                LED:out std_logic_vector(sample_size-1 downto 0));
     end component;
    
    --signal declaration
    signal enable2, enable4, recording, playing, request: std_logic;
    
    

begin
    
    recording<=(enable4 and record_enable);
    playing<=(enable2 and play_enable);
    jack_sd<='1';
    micro_LR<='1';
    sample_request<=request;
    

    DUT1: en_4_cycles
    port map(clk_12megas=>clk_12megas,
             reset=>reset,
             clk_3megas=>micro_clk,
             en_2_cycles=>enable2,
             en_4_cycles=>enable4);
             
    DUT2: FSMD_microphone
    port map(clk_12megas=>clk_12megas,
             reset=>reset,
             enable_4_cycles=>recording,
             micro_data=>micro_data,
             sample_out=>sample_out,
             sample_out_ready=>sample_out_ready);
    
    DUT3: pwm
    port map(clk_12megas=>clk_12megas,
             reset=>reset,
             en_2_cycles=>playing,
             sample_in=>sample_in,
             sample_request=>request,
             pwm_pulse=>jack_pwm);
     
     DUT4: audio_visualizer
     port map(clk_12megas=>clk_12megas,
              reset=>reset,
              sample_in=>sample_in,
              sample_request=>request,
              LED=>LED);
             
             
    


end Behavioral;
