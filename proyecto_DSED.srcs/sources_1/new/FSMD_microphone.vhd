----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2021 21:37:55
-- Design Name: 
-- Module Name: FSMD_microphone - Behavioral
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

entity FSMD_microphone is
    Port ( clk_12megas : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable_4_cycles : in STD_LOGIC;
           micro_data : in STD_LOGIC;
           sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
           sample_out_ready : out STD_LOGIC);
end FSMD_microphone;

architecture Behavioral of FSMD_microphone is
    --We define the states both_count, count1, count2:
    type state_type is  (both_count, count1, count2);
    --Definition of the signals used 
    signal state_reg, state_next: state_type;
    signal cuenta_reg, cuenta_next: unsigned(sample_size downto 0):=(others=>'0');
    signal dato1_reg, dato1_next, dato2_reg, dato2_next: unsigned(sample_size-1 downto 0):=(others=>'0');
    signal primer_ciclo_reg, primer_ciclo_next: std_logic:='0';
    signal sample_out_next, sample_out_reg: std_logic_vector (sample_size-1 downto 0):=(others=>'0');
    signal sample_out_ready_next, sample_out_ready_reg : std_logic:='0';
    
begin

    process(clk_12megas, reset)
    begin
        if reset='1' then
            state_reg<=both_count;
            cuenta_reg<=(others=>'0');
            dato1_reg<=(others=>'0');
            dato2_reg<=(others=>'0');
            primer_ciclo_reg<='0';
            sample_out_reg<=(others=>'0');
            sample_out_ready_reg<='0';
            
        elsif rising_edge(clk_12megas) then
            if(enable_4_cycles='1') then           
                state_reg<=state_next;
                cuenta_reg<=cuenta_next;
                dato1_reg<=dato1_next;
                dato2_reg<=dato2_next;
                primer_ciclo_reg<=primer_ciclo_next;
                sample_out_reg<=sample_out_next;
                sample_out_ready_reg<=sample_out_ready_next;
            elsif(sample_out_ready_reg='1') then
                sample_out_ready_reg<='0';
            end if;
        end if;
    end process;
    
    process(state_reg, cuenta_reg, dato1_reg, dato2_reg, primer_ciclo_reg, micro_data, sample_out_reg,sample_out_ready_reg) 
    begin
        cuenta_next<=cuenta_reg+1;
        dato1_next<=dato1_reg;
        dato2_next<=dato2_reg;
        primer_ciclo_next<=primer_ciclo_reg;
        sample_out_next<=sample_out_reg;
        sample_out_ready_next<='0';
        case state_reg is
        
            --First state: Both of the counters count
            when both_count=>
                if (micro_data='1') then
                    dato1_next<=dato1_reg+1;
                    dato2_next<=dato2_reg+1;
                end if;
                if (cuenta_reg=105) then
                    dato2_next<=(others=>'0');
                    if (primer_ciclo_reg='1') then                       
                        sample_out_next<=std_logic_vector(dato2_reg);                      
                        sample_out_ready_next<='1';
                        state_next<=count1;
                    else
                        state_next<=count1;
                    end if;
                elsif (cuenta_reg=255) then
                    sample_out_next<=std_logic_vector(dato1_reg);
                    dato1_next<=(others=>'0');
                    sample_out_ready_next<='1';                         
                    state_next<=count2;
                else
                    sample_out_ready_next<='0';
                    state_next<=both_count;
                end if;
            
            --Second state: Here only counter1 counts
            when count1=>
                if (micro_data='1') then
                    dato1_next<=dato1_reg+1; 
                end if;
                if(cuenta_reg=149) then
                    state_next<=both_count;
                else
                    state_next<=count1;
                end if;  
                
            --Last state: Only counter 2 counts
            when count2=>
                if (micro_data='1') then
                    dato2_next<=dato2_reg+1;
                end if;
                if (cuenta_reg=299) then
                    cuenta_next<=(others=>'0');
                    primer_ciclo_next<='1';
                    state_next<=both_count;
                else
                    state_next<=count2;
                end if;
        end case;       
    end process;
    
   --output 
   sample_out<=sample_out_reg;
   --sample_out_ready<=sample_out_ready_reg and enable_4_cycles;
    sample_out_ready<=sample_out_ready_reg;
end Behavioral;
