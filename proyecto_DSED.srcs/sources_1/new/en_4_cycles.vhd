----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2021 15:13:00
-- Design Name: 
-- Module Name: en_4_cycles - Behavioral
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

entity en_4_cycles is
    Port ( clk_12megas : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk_3megas: out STD_LOGIC;
        en_2_cycles: out STD_LOGIC;
        en_4_cycles : out STD_LOGIC);
end en_4_cycles;


architecture Behavioral of en_4_cycles is
    --declaration of the signals used
    signal current_state, next_state: unsigned(1 downto 0);

    
begin
    --state register
    process(clk_12megas,reset)
    begin
        if(reset='1') then
            current_state<=(others=>'0');
        elsif rising_edge(clk_12megas) then 
            current_state<=next_state;
        end if;
    end process;
    
    --next state logic
    process(current_state)
    begin
        if(current_state<3) then 
            next_state<=current_state+1;
        else
            next_state<=(others=>'0');
        end if;
    end process;
    
    --output logic
    process(current_state)
    begin
        --For en_4_cycles
        if (current_state=2)then
            en_4_cycles<='1';
        else
            en_4_cycles<='0';
        end if;
        --For clk_3megas   
        if ((current_state=2)or(current_state=3)) then
            clk_3megas<='1';
        else
            clk_3megas<='0';
        end if;
        --For en_2_cycles
        if ((current_state=1)or(current_state=3)) then
            en_2_cycles<='1';
        else
            en_2_cycles<='0';
        end if;
    end process;
    

end Behavioral;
