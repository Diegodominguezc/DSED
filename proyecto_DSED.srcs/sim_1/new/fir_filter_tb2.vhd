----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.12.2021 20:40:48
-- Design Name: 
-- Module Name: fir_filter_tb2 - Behavioral
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

entity fir_filter_tb2 is
--  Port ( );
end fir_filter_tb2;

architecture Behavioral of fir_filter_tb2 is
   
    component fir_filter
        Port ( clk : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Sample_In : in signed (sample_size-1 downto 0);
               Sample_In_enable : in STD_LOGIC;
               filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
               Sample_Out : out signed (sample_size-1 downto 0);
               Sample_Out_ready : out STD_LOGIC);
    end component;

    --input signals declaration
    signal clk, Reset, Sample_In_enable, filter_select: std_logic;
    signal Sample_In: signed(sample_size-1 downto 0);
    
    --output signals declaration
    signal Sample_Out_ready: std_logic;
    signal Sample_Out: signed(sample_size-1 downto 0);
    
    --clock period definition
    constant clk_period: time := 83.333ns;
    constant btw_sample_period: time := clk_period*7;
    
begin

    --clock process
    clk_process: process
    begin
        clk<='0';
        wait for clk_period/2;
        clk<='1';
        wait for clk_period/2;
    end process;
    
    --DUT instantiation
    DUT1: fir_filter
        port map(clk=>clk,
                 Reset=>Reset,
                 Sample_In=>Sample_In,
                 Sample_In_enable=>Sample_In_enable,
                 filter_select=>filter_select,
                 Sample_Out=>Sample_Out,
                 Sample_Out_ready=>Sample_Out_ready);
                 
    
    process
    begin
        --Low Pass Filter
        filter_select<='0';
        Reset<='0';
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<="01000000";   --0.5
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period; 
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<="00010000";   --0.125
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        
        --Reset everything
        Reset<='1';
        wait for clk_period;
        
        --Low Pass Filter
        Reset<='0';
        filter_select<='1';
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<="01000000";   --0.5
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period; 
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<="00010000";   --0.125
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
        Sample_In_enable<='1';
        Sample_In<=(others=>'0');   --0
        wait for clk_period;
        Sample_In_enable<='0';
        wait;
        
    end process;
        

end Behavioral;
