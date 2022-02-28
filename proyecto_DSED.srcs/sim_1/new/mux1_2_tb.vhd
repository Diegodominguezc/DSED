----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2021 18:46:35
-- Design Name: 
-- Module Name: mux1_2_tb - Behavioral
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

entity mux1_2_tb is
--  Port ( );
end mux1_2_tb;

architecture Behavioral of mux1_2_tb is

    component mux1_2
            Port( input0: in std_logic_vector(sample_size-1 downto 0);
                  input1: in std_logic_vector(sample_size-1 downto 0);
                  input2: in std_logic_vector(sample_size-1 downto 0);
                  input3: in std_logic_vector(sample_size-1 downto 0);
                  input4: in std_logic_vector(sample_size-1 downto 0);
                  control: in std_logic_vector(2 downto 0);
                  output: out std_logic_vector(sample_size-1 downto 0));
    end component;
    
    --input signals declaration
    signal input0, input1, input2, input3, input4: std_logic_vector(sample_size-1 downto 0);
    signal control: std_logic_vector(2 downto 0);

    --output signals declaration
    signal output: std_logic_vector(sample_size-1 downto 0);
    
begin

    DUT: mux1_2
        port map(input0=>input0,
                 input1=>input1,
                 input2=>input2,
                 input3=>input3,
                 input4=>input4,
                 control=>control,
                 output=>output);
                 

    --Input vector process  
    process
    begin
        input0<=(others=>'0');
        input1<=(others=>'1');
        input2<="00001111";
        input3<="11110000";
        input4<="00000001";
        control<="000";
        wait for 5 ns;
        control<="001";
        wait for 5 ns;
        control<="010";
        wait for 5 ns;
        control<="011";
        wait for 5 ns;               
        control<="100";
        wait for 5 ns;
        control<="101";
        wait;
    end process;
        
end Behavioral;
