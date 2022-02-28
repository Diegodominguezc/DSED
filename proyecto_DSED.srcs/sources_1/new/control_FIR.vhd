----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2021 02:20:08
-- Design Name: 
-- Module Name: control_FIR - Behavioral
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

entity control_FIR is
        Port( clk: in std_logic;
              reset: in std_logic;
              control1_2: out std_logic_vector(2 downto 0);
              control3: out std_logic;
              sample_in_enable : in STD_LOGIC;
              sample_out_ready: out std_logic);       
end control_FIR;

architecture Behavioral of control_FIR is

    type state_type is (idle, S0, S1, S2, S3, S4, S5, S6);
    signal state, next_state: state_type;
    
begin

    SYNC_PROC: process(clk,reset)
    begin
        if reset='1' then
            state<=idle;
        elsif rising_edge(clk) then
            state<=next_state;
        end if;
    end process;
    
    OUTPUT_DECODE: process(state)   --clk? if we want to use fsmd
    begin
         case (state) is
            when idle=>
                control1_2<=(others=>'1');
                control3<='0';
                sample_out_ready<='0';
            when S0=>
                control1_2<=(others=>'0');
                control3<='0';
                sample_out_ready<='1';
            when S1=>
                control1_2<="001";
                control3<='0';
                sample_out_ready<='0';
            when S2=>
                control1_2<="010";
                control3<='0';
                sample_out_ready<='0';                    
            when S3=>
                control1_2<="011";
                control3<='1';
                sample_out_ready<='0';
            when S4=>
                control1_2<="100";
                control3<='1';
                sample_out_ready<='0';
            when S5=>
                control1_2<=(others=>'1');
                control3<='1';
                sample_out_ready<='0'; 
            when S6=>
                control1_2<=(others=>'1');
                control3<='1';
                sample_out_ready<='0';
            when others=>
                control1_2<=(others=>'1');
                control3<='0';
                sample_out_ready<='0';
        end case;
    end process;
    
    NEXT_STATE_DECODE: process(state, sample_in_enable)
    begin
        case (state) is
            when idle=>
                if (sample_in_enable='1') then
                    next_state<=S0;
                else
                    next_state<=idle;
                end if;
            when S0=>
                next_state<=S1;
            when S1=>
                next_state<=S2;
            when S2=>
                next_state<=S3;
            when S3=>
                next_state<=S4;
            when S4=>
                next_state<=S5;
            when S5=>
                next_state<=S6;
            when S6=>
                next_state<=idle;
            when others=>
                next_state<=idle;
        end case;
    end process;
    
end Behavioral;
