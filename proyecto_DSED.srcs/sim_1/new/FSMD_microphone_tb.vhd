----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2021 00:47:31
-- Design Name: 
-- Module Name: FSMD_microphone_tb - Behavioral
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

entity FSMD_microphone_tb is
--  Port ( );
end FSMD_microphone_tb;

architecture Behavioral of FSMD_microphone_tb is

    component en_4_cycles
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               clk_3megas: out STD_LOGIC;
               en_2_cycles: out STD_LOGIC;
               en_4_cycles : out STD_LOGIC);
    end component;
    
    component FSMD_microphone
        Port ( clk_12megas : in STD_LOGIC;
               reset : in STD_LOGIC;
               enable_4_cycles : in STD_LOGIC;
               micro_data : in STD_LOGIC;
               sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
               sample_out_ready : out STD_LOGIC);
    end component;
    --input signals declaration
    signal clk_12megas, reset, micro_data: std_logic;
    
    --output signals declaration
    signal clk_3megas, en_2_cycles, en_4_cycles1, sample_out_ready: std_logic;
    signal sample_out: std_logic_vector(sample_size-1 downto 0);
    
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
    
    DUT2: FSMD_microphone
        port map( clk_12megas=>clk_12megas,
                  reset=>reset,
                  enable_4_cycles=>en_4_cycles1,
                  micro_data=>micro_data,
                  sample_out=>sample_out,
                  sample_out_ready=>sample_out_ready);
                  
    process
    begin
        reset<='1';
        micro_data<='1';
        wait for 1 us;
        reset<='0';
        wait;
    end process;
        
    

end Behavioral;
