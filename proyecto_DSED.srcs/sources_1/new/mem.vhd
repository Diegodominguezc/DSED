----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2021 13:43:14
-- Design Name: 
-- Module Name: mem - Behavioral
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

entity mem is
    Port(clka : in std_logic;
         ena: in std_logic;
         wea: in std_logic_vector (0 downto 0);
         addra: in std_logic_vector(18 downto 0);
         dina: in std_logic_vector(7 downto 0);
         douta: out std_logic_vector(7 downto 0));
end mem;

architecture Behavioral of mem is

    component blk_ram_mem 
        Port(clka : in std_logic;
             ena: in std_logic;
             wea: in std_logic_vector (0 downto 0);
             addra: in std_logic_vector(18 downto 0);
             dina: in std_logic_vector(7 downto 0);
             douta: out std_logic_vector(7 downto 0));
    end component;
    
begin

    DUT1: blk_ram_mem
        port map(clka=>clka,
                 ena=>ena,
                 wea=>wea,
                 addra=>addra,
                 dina=>dina,
                 douta=>douta);
                 
end Behavioral;
