----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2021 12:38:28
-- Design Name: 
-- Module Name: fir_filter - Behavioral
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

entity fir_filter is
    Port ( clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Sample_In : in signed (sample_size-1 downto 0);
           Sample_In_enable : in STD_LOGIC;
           filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
           Sample_Out : out signed (sample_size-1 downto 0);
           Sample_Out_ready : out STD_LOGIC);
end fir_filter;

architecture Behavioral of fir_filter is

    component control_FIR
        Port( clk: in std_logic;
              reset: in std_logic;
              control1_2: out std_logic_vector(2 downto 0);
              control3: out std_logic;
              sample_in_enable : in STD_LOGIC;
              sample_out_ready: out std_logic);
    end component;
    
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
    
    signal control1_2: std_logic_vector(2 downto 0);
    signal control3: std_logic;
begin

    DUT1: control_FIR
        port map(clk=>clk,
                 reset=>reset,
                 control1_2=>control1_2,
                 control3=>control3,
                 sample_in_enable=>Sample_In_enable,
                 sample_out_ready=>Sample_Out_ready);
    
    DUT2: datapath_FIR
        port map(clk=>clk,
                 reset=>reset,
                 control1_2=>control1_2,
                 control3=>control3,
                 sample_in=>Sample_In,
                 sample_in_enable=>Sample_In_enable,
                 filter_select=>filter_select,
                 sample_out=>Sample_Out);
    
    
end Behavioral;
