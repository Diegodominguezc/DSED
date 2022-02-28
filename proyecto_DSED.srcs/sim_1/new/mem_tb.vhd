----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2021 13:42:24
-- Design Name: 
-- Module Name: mem_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem_tb is
--  Port ( );
end mem_tb;

architecture Behavioral of mem_tb is

    component mem
        Port(clka : in std_logic;
             ena: in std_logic;
             wea: in std_logic_vector(0 downto 0);
             addra: in std_logic_vector(18 downto 0);
             dina: in std_logic_vector(7 downto 0);
             douta: out std_logic_vector(7 downto 0));
    end component;
    
    --input signals declaration
    signal clka, ena: std_logic;
    signal wea: std_logic_vector(0 downto 0);
    signal addra: std_logic_vector(18 downto 0);
    signal dina: std_logic_vector(7 downto 0);
    --output signals declaration
    signal douta: std_logic_vector(7 downto 0);
    
    --clock period definition
    constant clk_period: time:= 83.333ns;
     
    
begin

    --clock process
    clk_process: process
    begin
        clka<='0';
        wait for clk_period/2;
        clka<='1';
        wait for clk_period/2;
    end process;

    DUT1: mem
        port map(clka=>clka,
                 ena=>ena,
                 wea=>wea,
                 addra=>addra,
                 dina=>dina,
                 douta=>douta);
                 
    process
    begin
        ena<='1';
        wea<="0";
        addra<=(others=>'0');
        dina<=(others=>'0');
        wait for 1000ns;
        wea<="1";
        dina<="11110000";
        wait for 1000ns;
        addra<=(others=>'1');
        dina<="00001111";
        wait for 1000ns;
        wea<="0";
        addra<=(others=>'0');
        wait for 1000ns;
        addra<=(others=>'1');
        wait for 1000ns;
        addra<=(others=>'0');
        wait;        
    end process;
        

end Behavioral;
