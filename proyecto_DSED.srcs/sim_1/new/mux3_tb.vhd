----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2021 18:31:50
-- Design Name: 
-- Module Name: mux3_tb - Behavioral
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

entity mux3_tb is
--  Port ( );
end mux3_tb;

architecture Behavioral of mux3_tb is
   
    component mux3
        Port(input1: in std_logic_vector((sample_size*2)-1 downto 0);
             input2: in std_logic_vector((sample_size*2)-1 downto 0);
             control: in std_logic;
             output:  out std_logic_vector((sample_size*2)-1 downto 0));
     end component;
     
    --input signals declaration
    signal input1, input2: std_logic_vector((sample_size*2)-1 downto 0);
    signal control: std_logic;

    --output signals declaration
    signal output: std_logic_vector((sample_size*2)-1 downto 0);
    
begin

    DUT: mux3
        port map(input1=>input1,
                 input2=>input2,
                 control=>control,
                 output=>output);

    --Input vector process      
    process
    begin
        control<='0';
        input1<=(others=>'1');
        input2<=(others=>'0');
        wait for 15 ns;
        control<='1';
        wait for 10 ns;
        control<='0';
        wait;
    end process;
                     


end Behavioral;
