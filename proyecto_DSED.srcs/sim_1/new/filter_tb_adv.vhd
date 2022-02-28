----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2021 00:09:32
-- Design Name: 
-- Module Name: filter_tb_adv - Behavioral
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

use std.textio.all;
library work;
use work.package_dsed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity filter_tb_adv is
--  Port ( );
end filter_tb_adv;

architecture Behavioral of filter_tb_adv is

    component fir_filter
        Port ( clk : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Sample_In : in signed (sample_size-1 downto 0);
               Sample_In_enable : in STD_LOGIC;
               filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
               Sample_Out : out signed (sample_size-1 downto 0);
               Sample_Out_ready : out STD_LOGIC);    
    end component;
    
    signal Reset, Sample_In_enable: std_logic:='0';
    signal filter_select: std_logic:='1'; --0 LP 1 HP
    signal Sample_Out_ready: std_logic;
    signal Sample_Out: signed(sample_size-1 downto 0);
    
    signal finish_en:std_logic:='0';
    --Clock signal declaration
    signal clk: std_logic:='1';
    
    
    --Declaration of the reading signal
    signal Sample_In: signed(sample_size-1 downto 0) := (others=>'0');
    
    --Clock period definitions
    constant clk_period: time := 83.333ns;
    constant btw_sample_period: time := clk_period*7;
    constant finish_period: time:= (clk_period*8)*6;  --take into account the registers (is it necessary? do not know, maybe not significant)
    
begin

    DUT1: fir_filter
        port map(clk=>clk,
                 Reset=>Reset,
                 Sample_In=>Sample_In,
                 Sample_In_enable=>Sample_In_enable,
                 filter_select=>filter_select,
                 Sample_Out=>Sample_Out,
                 Sample_Out_ready=>Sample_Out_ready);

    --clock process
    clk_process: process
    begin
         clk<='0';
         wait for clk_period/2;
         clk<='1';
         wait for clk_period/2;
    end process;
     
    --sample_enable process
    Sample_In_enable_process: process
    begin
        Sample_In_enable<='1';
        wait for clk_period;
        Sample_In_enable<='0';
        wait for btw_sample_period;
    end process;
    
    read_process: PROCESS (clk)
        --FILE in_file: text OPEN read_mode IS "C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\sample_in.dat";
        FILE in_file: text OPEN read_mode IS "C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\MATLAB\sample_in.dat";       
        VARIABLE in_line: line;
        VARIABLE in_int: integer;
        VARIABLE in_read_ok: BOOLEAN;     
    BEGIN
        if rising_edge(clk) then
            if (Sample_In_enable='1') then
                if NOT endfile(in_file) then
                    ReadLine(in_file,in_line);
                    Read(in_line, in_int, in_read_ok);
                    Sample_In<= to_signed(in_int, 8); --8 = the bit width       
                else
                    finish_en<='1';
                end if;
            end if;
        end if;
    end process;
    
    write_process: PROCESS (clk)
        --FILE out_file: text OPEN write_mode IS "C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\sample_out.dat";  
        --FILE out_file: text OPEN write_mode IS "C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\MATLAB\sample_out_LP.dat";
        FILE out_file: text OPEN write_mode IS "C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\MATLAB\sample_out_HP.dat"; 
        VARIABLE out_line: line;
        VARIABLE out_int: integer;
    BEGIN
        if rising_edge(clk) then
            if(Sample_Out_ready='1') then
                out_int:=to_integer(Sample_Out);
                Write(out_line, out_int);
                WriteLine(out_file, out_line);
            end if;
        end if;
    end process;
    
    finish_process: process
    begin
        wait until rising_edge(finish_en);
        wait for finish_period;
        assert false report "Simulation Finished" severity failure;
    end process;
end Behavioral;
