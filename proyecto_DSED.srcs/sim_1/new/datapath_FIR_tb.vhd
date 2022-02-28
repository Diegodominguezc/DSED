----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2022 17:40:08
-- Design Name: 
-- Module Name: datapath_FIR_tb - Behavioral
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

entity datapath_FIR_tb is
--  Port ( );
end datapath_FIR_tb;

architecture Behavioral of datapath_FIR_tb is

    component datapath_FIR
        Port( clk: in std_logic;
              reset: in std_logic;
              control1_2: in std_logic_vector(2 downto 0);
              control3: in std_logic;
              sample_in : in signed (sample_size-1 downto 0);
              sample_in_enable : in STD_LOGIC;
              filter_select: in std_logic; --0 lowpass, 1 highpass
              sample_out: out signed (sample_size-1 downto 0));
    end component;
    
    --input signals declaration
    signal clk, reset, control3, sample_in_enable, filter_select: std_logic;
    signal control1_2: std_logic_vector(2 downto 0);
    signal sample_in: signed(sample_size-1 downto 0);
    
    --output signals declaration
    signal sample_out: signed(sample_size-1 downto 0);
    
    --clock period definition
    constant clk_period: time:= 83.333ns;

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
    DUT1: datapath_FIR
        port map(clk=>clk,
                 reset=>reset,
                 control1_2=>control1_2,
                 control3=>control3,
                 sample_in=>sample_in,
                 sample_in_enable=>sample_in_enable,
                 filter_select=>filter_select,
                 sample_out=>sample_out);
                 
    sample: process
    begin
        sample_in_enable<='1';
        wait for clk_period;
        sample_in_enable<='0';
        wait for 7*clk_period;
    end process;
                 
   process
   begin
        --Low Pass Filter
        filter_select<='0';
        reset<='0';
        sample_in<="01000000";  --64
        control1_2<="111";
        control3<='0';
        wait for clk_period;
        sample_in<=(others=>'0');
        control1_2<="000";
        wait for clk_period;
        control1_2<="001";
        wait for clk_period;
        control1_2<="010";
        wait for clk_period;
        control1_2<="011";
        control3<='1';
        wait for clk_period;
        control1_2<="100";
        wait for clk_period;
        control1_2<="111";
        wait for 2*clk_period;
        control3<='0';
        wait;
    end process;
    
    
     

end Behavioral;
