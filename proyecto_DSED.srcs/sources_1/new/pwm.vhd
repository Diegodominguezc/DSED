----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2021 02:57:12
-- Design Name: 
-- Module Name: pwm - Behavioral
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

entity pwm is
    port(clk_12megas: in std_logic;
         reset: in std_logic;
         en_2_cycles: in std_logic;
         sample_in: in std_logic_vector(sample_size-1 downto 0);
         sample_request: out std_logic;
         pwm_pulse: out std_logic);
end pwm;

architecture Behavioral of pwm is
    --signal declaration
    signal counter_reg, counter_next: unsigned(sample_size downto 0) := (others=>'0');
    signal buf_reg, buf_next: std_logic := '0';

begin
    --register
    process(clk_12megas,reset)
    begin
        if (reset='1') then
            counter_reg<=(others=>'0');
            buf_reg<='0';
        elsif rising_edge(clk_12megas) then
            if(en_2_cycles='1') then
                counter_reg<=counter_next;
                buf_reg<=buf_next;
            end if;
        end if;
    end process;
    
    --next state logic
    process(counter_reg)
    begin
        if (counter_reg=299) then
            counter_next<=(others=>'0');           
        else
            counter_next<=counter_reg+1;
        end if;  
       
    end process;
    
    --output logic
    buf_next<='1' when (counter_reg<unsigned(sample_in)) or (sample_in="00000000") else
              '0';
    process(counter_reg, en_2_cycles)
    begin
        if(counter_reg=299) then
            if(en_2_cycles='1') then
                sample_request<='1';
            else
                sample_request<='0';
            end if;
        else
            sample_request<='0';
        end if;
    end process;
    pwm_pulse<=buf_reg;


end Behavioral;
