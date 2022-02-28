----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2021 19:28:46
-- Design Name: 
-- Module Name: control_blk3 - Behavioral
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

entity control_blk3 is
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
end control_blk3;

architecture Behavioral of control_blk3 is
    --definition of the states
    type state_type is(idle, recording, delete, play_all, play_backwards, play_LP, play_HP);
    --signals used
    signal state_next, state_reg: state_type;
    signal first_next, first_reg, lock_next, lock_reg: std_logic:='1';
    signal mem_dir_next, mem_dir_reg, mem_max_next, mem_max_reg, mem_play_next, mem_play_reg, mem_back_next, mem_back_reg:unsigned(18 downto 0):=(others=>'0');
    signal ena_next, ena_reg: std_logic;
    signal wea_next, wea_reg: std_logic_vector(0 downto 0);
    signal dina_next, dina_reg: std_logic_vector(7 downto 0);
    signal addra_next, addra_reg: std_logic_vector(18 downto 0);
    signal sample_in_next, sample_in_reg: std_logic_vector(sample_size-1 downto 0);
    signal record_enable_next, record_enable_reg, play_enable_next, play_enable_reg, fir_select_next, fir_select_reg, sample_in_enable_next, sample_in_enable_reg: std_logic;
    signal sample_in_fir_next, sample_in_fir_reg:signed(sample_size-1 downto 0);

begin

    process(clk_12megas, reset)
    begin
        if reset='1' then
            state_reg<=idle;
            mem_dir_reg<=(others=>'0');           
            mem_max_reg<=(others=>'0');
            mem_play_reg<=(others=>'0');
            mem_back_reg<=(others=>'0');
            ena_reg<='0';
            wea_reg<="0";
            dina_reg<=(others=>'0');
            addra_reg<=(others=>'0');
            sample_in_reg<=(others=>'0');
            sample_in_fir_reg<=(others=>'0');
            record_enable_reg<='0';
            play_enable_reg<='0';
            fir_select_reg<='0';
            sample_in_enable_reg<='0';
            first_reg<='1';
            lock_reg<='1';

        elsif(rising_edge(clk_12megas)) then
            state_reg<=state_next;
            mem_dir_reg<=mem_dir_next;
            mem_max_reg<=mem_max_next;
            mem_play_reg<=mem_play_next;
            mem_back_reg<=mem_back_next;
            ena_reg<=ena_next;
            wea_reg<=wea_next;
            dina_reg<=dina_next;
            addra_reg<=addra_next;
            sample_in_reg<=sample_in_next;
            sample_in_fir_reg<=sample_in_fir_next;
            record_enable_reg<=record_enable_next;
            play_enable_reg<=play_enable_next;
            fir_select_reg<=fir_select_next;
            sample_in_enable_reg<=sample_in_enable_next;
            first_reg<=first_next;
            lock_reg<=lock_next;

        end if;
    end process;
    
    process(state_reg, mem_dir_reg, mem_max_reg, mem_play_reg, mem_back_reg, first_reg, lock_reg, BTNC, BTNR, BTNL, SW0, SW1, douta, sample_out, sample_out_ready, sample_out_fir, sample_request, ena_reg, wea_reg, dina_reg, addra_reg, sample_in_reg, sample_in_fir_reg, record_enable_reg, play_enable_reg, fir_select_reg, sample_in_enable_reg, sample_out_ready_fir)
    begin
        mem_dir_next<=mem_dir_reg;
        mem_max_next<=mem_max_reg;
        mem_play_next<=mem_play_reg;
        mem_back_next<=mem_back_reg;
        ena_next<='0';
        wea_next<="0";
        dina_next<=dina_reg;
        addra_next<=addra_reg;
        sample_in_next<=sample_in_reg;
        record_enable_next<='0';
        play_enable_next<='0';
        sample_in_fir_next<=sample_in_fir_reg;
        sample_in_enable_next<='0';
        fir_select_next<=fir_select_reg;
        first_next<=first_reg;
        lock_next<=lock_reg;
        
        case state_reg is
            when idle=>
                mem_play_next<=(others=>'0');
                if BTNL='1' then                --Record
                    if(mem_dir_reg=524287) then
                        state_next<=idle;
                    else
                        state_next<=recording;
                    end if;
                elsif BTNR='1' then
                    if (SW0='0' and SW1='0') then
                        state_next<=play_all;   --play all the recorded audio
                    elsif (SW0='1' and SW1='0') then
                        state_next<= play_backwards;    --play the audio backwards
                    elsif (SW0='0' and SW1='1') then
                        state_next<= play_LP;   --use the Low Pass filter
                    else
                        state_next<=play_HP;    --use the High Pass filter
                    end if;
                elsif BTNC='1' then         --Clear the audio
                    state_next<=delete;
                else
                    state_next<=idle;
                end if;
                
            when delete=>
                mem_dir_next<=(others=>'0');
                mem_max_next<=(others=>'0');
                mem_play_next<=(others=>'0');
                mem_back_next<=(others=>'0');
                first_next<='1';
                lock_next<='1';
                if(BTNC='0') then
                    state_next<=idle;
                else
                    state_next<=delete;
                end if;
            
            when recording=>
                record_enable_next<='1';
                wea_next<="1";
                dina_next<=sample_out;
                if(sample_out_ready='1') then 
                    ena_next<='1';                        
                    mem_dir_next<=mem_dir_reg+1;
                    mem_max_next<=mem_max_reg+1;
                    addra_next<=std_logic_vector(mem_dir_reg+1);                
                end if;
                if(mem_dir_reg=524287 or BTNL='0') then
                    state_next<=idle;
                else
                    state_next<=recording;
                end if;
            
            when play_all=>
                play_enable_next<='1';
                if(sample_request='1') then
                    ena_next<='1';
                    if(mem_play_reg<mem_max_reg) then
                        sample_in_next<=douta;
                        mem_play_next<=mem_play_reg+1;
                        addra_next<=std_logic_vector(mem_play_reg+1);
                        state_next<=play_all;
                    else
                        state_next<=idle;
                    end if;
                else
                    state_next<=play_all;
                end if;
            
            when play_backwards=>
                if(first_reg='1') then
                    first_next<='0';
                    mem_back_next<=mem_max_reg;
                end if;
                play_enable_next<='1';
                if(sample_request='1') then
                    ena_next<='1';
                    if(mem_back_reg=0) then
                        first_next<='1';
                        state_next<=idle;
                    else
                        sample_in_next<=douta;
                        mem_back_next<=mem_back_reg-1;
                        addra_next<=std_logic_vector(mem_back_reg-1); 
                        state_next<=play_backwards;
                    end if;
                else
                    state_next<=play_backwards;
                end if;
                
            when play_LP=>
                play_enable_next<='1';
                fir_select_next<='0';
                sample_in_enable_next<='1';
                if(lock_reg='1') then               
                    if(sample_request='1') then
                        ena_next<='1';
                        lock_next<='0';
                        if(mem_play_reg<mem_max_reg) then
                            sample_in_fir_next<=signed(not(douta(sample_size-1))&douta(sample_size-2 downto 0));
                            state_next<=play_LP;
                        else
                            lock_next<='1';
                            state_next<=idle;
                        end if;
                    else
                        state_next<=play_LP;
                    end if;
                else
                    if(sample_out_ready_fir='1') then
                        sample_in_next<=std_logic_vector(not(sample_out_fir(sample_size-1))&sample_out_fir(sample_size-2 downto 0));
                        mem_play_next<=mem_play_reg+1;
                        addra_next<=std_logic_vector(mem_play_reg+1);
                        lock_next<='1';
                        state_next<=play_LP;
                    else
                        state_next<=play_LP;
                    end if;
                end if;
                    

            when play_HP=>
                play_enable_next<='1';
                fir_select_next<='1';
                sample_in_enable_next<='1';
                if(lock_reg='1') then               
                    if(sample_request='1') then
                        ena_next<='1';
                        lock_next<='0';
                        if(mem_play_reg<mem_max_reg) then
                            sample_in_fir_next<=signed(not(douta(sample_size-1))&douta(sample_size-2 downto 0));
                            state_next<=play_HP;
                        else
                            lock_next<='1';
                            state_next<=idle;
                        end if;
                    else
                        state_next<=play_HP;
                    end if;
                else
                    if(sample_out_ready_fir='1') then
                        sample_in_next<=std_logic_vector(not(sample_out_fir(sample_size-1))&sample_out_fir(sample_size-2 downto 0));
                        mem_play_next<=mem_play_reg+1;
                        addra_next<=std_logic_vector(mem_play_reg+1);
                        lock_next<='1';
                        state_next<=play_HP;
                    else
                        state_next<=play_HP;
                    end if;
                end if;
            end case;
        end process;
        
        --output
        addra<=addra_reg;
        ena<=ena_reg;
        wea<=wea_reg;
        dina<=dina_reg;
        sample_in<=sample_in_reg;
        record_enable<=record_enable_reg;
        play_enable<=play_enable_reg;
        sample_in_fir<=sample_in_fir_reg;
        sample_in_enable<=sample_in_enable_reg;
        fir_select<=fir_select_reg;


end Behavioral;
