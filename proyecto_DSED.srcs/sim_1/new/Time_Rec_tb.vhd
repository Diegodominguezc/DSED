----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2022 21:52:25
-- Design Name: 
-- Module Name: Time_Rec_tb - Behavioral
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

entity Time_Rec_tb is
--  Port ( );
end Time_Rec_tb;

architecture Behavioral of Time_Rec_tb is
    component Time_Rec
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               sample_out_ready : in STD_LOGIC;
               BTNL : in STD_LOGIC;
               BTNC : in STD_LOGIC;
               RGB: out STD_LOGIC_VECTOR(sample_size-6 downto 0);
               seg : out STD_LOGIC_VECTOR(sample_size-1 downto 0);
               an : out STD_LOGIC_VECTOR(sample_size-1 downto 0)); 
    end component;
    
    --input signals declaration
    signal clk, reset, sample_out_ready, BTNL, BTNC: std_logic;   
    
    --output signals declaration
    signal seg: std_logic_vector(sample_size-1 downto 0);
    signal an: std_logic_vector(sample_size-1 downto 0);
    signal RGB: std_logic_vector(sample_size-6 downto 0);
    
    --clock period definition
    constant clk_period: time := 83.333ns;

begin

    --clock process
    clk_process: process
    begin
        clk<='0';
        wait for clk_period/2;
        clk<='1';
        wait for clk_period/2;
    end process;
    
    --sample_out_ready process
    sample_process: process
    begin
        sample_out_ready<='0';
        wait for 50us;
        sample_out_ready<='1';
        wait for clk_period;
    end process;
    
    --DUT instantiation
    DUT1: Time_Rec
        port map(clk=>clk,
                 reset=>reset,
                 sample_out_ready=>sample_out_ready,
                 BTNL=>BTNL,
                 BTNC=>BTNC,
                 RGB=>RGB,
                 seg=>seg,
                 an=>an);
                 
    process
    begin
        BTNL<='1';
        BTNC<='0';
        reset<='0';
        wait;
    end process;
        

end Behavioral;
