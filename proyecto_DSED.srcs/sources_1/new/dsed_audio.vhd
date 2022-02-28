----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2021 18:57:26
-- Design Name: 
-- Module Name: dsed_audio - Behavioral
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

entity dsed_audio is
    Port ( clk_100Mhz : in std_logic;
           reset: in std_logic;
           --Control ports
           BTNL: in STD_LOGIC;
           BTNC: in STD_LOGIC;
           BTNR: in STD_LOGIC; 
           SW0: in STD_LOGIC;
           SW1: in STD_LOGIC;
           --To/From the microphone
           micro_clk : out STD_LOGIC;
           micro_data : in STD_LOGIC;
           micro_LR : out STD_LOGIC;
           --To/From the mini-jack
           jack_sd : out STD_LOGIC;
           jack_pwm : out STD_LOGIC;
           --upgrade
           seg: out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           an: out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           RGB: out STD_LOGIC_VECTOR(sample_size-6 downto 0);
           LED:out STD_LOGIC_VECTOR(sample_size-1 downto 0));
end dsed_audio;

architecture Behavioral of dsed_audio is
    
    component control_blk3
        Port( clk_12megas: in std_logic;
              reset: in std_logic;
              BTNC: in std_logic;
              BTNL: in std_logic;
              BTNR: in std_logic;
              SW0: in std_logic;
              SW1: in std_logic;
              --memory
              ena: out std_logic;
              wea: out std_logic_vector (0 downto 0);
              addra: out std_logic_vector(18 downto 0);
              dina: out std_logic_vector(7 downto 0);
              douta: in std_logic_vector(7 downto 0);
              
              sample_out: in std_logic_vector(sample_size-1 downto 0);
              sample_out_ready: in std_logic;
              
              sample_in: out std_logic_vector(sample_size-1 downto 0);
              sample_request: in std_logic;
              
              record_enable: out std_logic;
              play_enable: out std_logic;
              --filter
              sample_in_fir: out signed(sample_size-1 downto 0);
              sample_in_enable: out std_logic;
              fir_select: out std_logic;
              sample_out_fir: in signed(sample_size-1 downto 0);
              sample_out_ready_fir: in std_logic);
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
    
    component clk_12M
        port(clk_in1: in std_logic;
             reset: in std_logic;
             clk_out1: out std_logic);
    end component;
    
    component fir_filter
        Port ( clk : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Sample_In : in signed (sample_size-1 downto 0);
               Sample_In_enable : in STD_LOGIC;
               filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
               Sample_Out : out signed (sample_size-1 downto 0);
               Sample_Out_ready : out STD_LOGIC);
    end component;
    
    component mem
        Port(clka : in std_logic;
             ena: in std_logic;
             wea: in std_logic_vector (0 downto 0);
             addra: in std_logic_vector(18 downto 0);
             dina: in std_logic_vector(7 downto 0);
             douta: out std_logic_vector(7 downto 0));
    end component;
    
    component Time_Rec
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               sample_out_ready : in STD_LOGIC;
               BTNL : in STD_LOGIC;
               BTNC : in STD_LOGIC;
               RGB: out STD_LOGIC_VECTOR(sample_size-6 downto 0);
               seg : out STD_LOGIC_VECTOR(sample_size-1 downto 0);
               an : out STD_LOGIC_VECTOR(sample_size-1 downto 0));
       end component;
    
    signal clk_12megas, ena, play_enable, record_enable, sample_in_enable, fir_select, sample_out_ready_fir, sample_out_ready, sample_request:std_logic;
    signal wea:std_logic_vector(0 downto 0);
    signal dina, douta, sample_out, sample_in: std_logic_vector(7 downto 0);
    signal addra: std_logic_vector(18 downto 0);
    signal sample_in_fir, sample_out_fir: signed(sample_size-1 downto 0);

begin

    DUT1: clk_12M
    port map(clk_in1=>clk_100Mhz,
             reset=>reset,
             clk_out1=>clk_12megas);
             
    DUT2: control_blk3
    port map(clk_12megas=>clk_12megas,
             reset=>reset,
             BTNC=>BTNC,
             BTNL=>BTNL,
             BTNR=>BTNR,
             SW0=>SW0,
             SW1=>SW1,
              --memory
              ena=>ena,
              wea=>wea,
              addra=>addra,
              dina=>dina,
              douta=>douta,
              
              sample_out=>sample_out,
              sample_out_ready=>sample_out_ready,
              
              sample_in=>sample_in,
              sample_request=>sample_request,
              
              record_enable=>record_enable,
              play_enable=>play_enable,
              --filter
              sample_in_fir=>sample_in_fir,
              sample_in_enable=>sample_in_enable,
              fir_select=>fir_select,
              sample_out_fir=>sample_out_fir,
              sample_out_ready_fir=>sample_out_ready_fir);
              
    DUT3: audio_interface         
    port map(clk_12megas=>clk_12megas,
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
             
    DUT4: fir_filter
    port map(clk=>clk_12megas,
              Reset=>reset,
              Sample_In=>sample_in_fir,
              Sample_In_enable=>sample_in_enable,
              filter_select=>fir_select, --0 lowpass, 1 highpass
              Sample_Out =>sample_out_fir,
              Sample_Out_ready=>sample_out_ready_fir);
              
    DUT5: mem
    port map(clka=>clk_12megas,
             ena=>ena,
             wea=>wea,
             addra=>addra,
             dina=>dina,
             douta=>douta);

    DUT6: Time_Rec
    port map(clk=>clk_12megas,
             reset=>reset,
             sample_out_ready=>sample_out_ready,
             BTNL=>BTNL,
             BTNC=>BTNC,
             RGB=>RGB,
             seg=>seg,
             an=>an);

end Behavioral;
