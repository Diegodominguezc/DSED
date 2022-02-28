----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2021 16:26:46
-- Design Name: 
-- Module Name: audio_visualizer - Behavioral
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

entity audio_visualizer is
    Port ( clk_12megas : in std_logic;
           reset: in std_logic;
           sample_in: in std_logic_vector(sample_size-1 downto 0);
           sample_request: in std_logic;
           LED:out std_logic_vector(sample_size-1 downto 0));
end audio_visualizer;

architecture Behavioral of audio_visualizer is

    signal max_reg, max_next: unsigned(sample_size-1 downto 0):=(others=>'0');
    signal count_reg, count_next: unsigned(sample_size+3 downto 0):=(others=>'0');
    
begin

    process(clk_12megas, reset)
    begin
        if(reset='1') then
            max_reg<=(others=>'0');
        elsif rising_edge(clk_12megas) then
            if(sample_request='1') then
                max_reg<=max_next;
                count_reg<=count_next;
            end if;
        end if;
    end process;
    
    process(count_reg, max_reg, sample_in)
    begin
        count_next<=count_reg+1;
        if(count_reg=4095) then     -- refresh max every 0.3ms
            max_next<=(others=>'0');
            count_next<=(others=>'0');
        else
            if(unsigned(sample_in)>max_reg) then
                max_next<=unsigned(sample_in);
            else
                max_next<=max_reg;
            end if;
        end if;
    end process;
    
    process(max_reg)
    begin
        if (max_reg=0) then
            LED<=(others=>'0');
        elsif(max_reg<134) then
            LED<="00000001";
        elsif(max_reg<136) then
            LED<="00000011";
        elsif(max_reg<139) then
            LED<="00000111";        
        elsif(max_reg<142) then
            LED<="00001111";       
        elsif(max_reg<150) then
            LED<="00011111";   
        elsif(max_reg<160) then
            LED<="00111111";
        elsif(max_reg<180) then
            LED<="01111111";  
        else
            LED<="11111111";
        end if;
    end process;
    
                
end Behavioral;
