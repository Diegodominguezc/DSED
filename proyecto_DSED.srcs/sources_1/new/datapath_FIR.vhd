----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2021 19:12:52
-- Design Name: 
-- Module Name: datapath_FIR - Behavioral
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

entity datapath_FIR is
    Port( clk: in std_logic;
          reset: in std_logic;
          control1_2: in std_logic_vector(2 downto 0);
          control3: in std_logic;
          sample_in : in signed (sample_size-1 downto 0);
          sample_in_enable : in STD_LOGIC;
          filter_select: in std_logic; --0 lowpass, 1 highpass
          sample_out: out signed (sample_size-1 downto 0));
end datapath_FIR;

architecture Behavioral of datapath_FIR is

    component mux1_2 
            Port( input0: in signed(sample_size-1 downto 0);
                  input1: in signed(sample_size-1 downto 0);
                  input2: in signed(sample_size-1 downto 0);
                  input3: in signed(sample_size-1 downto 0);
                  input4: in signed(sample_size-1 downto 0);
                  control: in std_logic_vector(2 downto 0);
                  output: out signed(sample_size-1 downto 0));
    end component;
    
    component mux3
            Port(input1: in signed((sample_size*2)-1 downto 0);
                 input2: in signed((sample_size*2)-1 downto 0);
                 control: in std_logic;
                 output:  out signed((sample_size*2)-1 downto 0));
    end component;
    --signals
    signal sample_out_next, sample_out_reg: signed (sample_size-1 downto 0):=(others=>'0');    
    signal output1, output2: signed(sample_size-1 downto 0);
    signal R1_reg, R1_next, R2_reg, R2_next, R3_reg, R3_next, R3: signed((sample_size*2)-1 downto 0):=(others=>'0');
    
    signal C0, C1, C2, C3, C4: signed(sample_size-1 downto 0);
    signal X0_reg, X1_reg, X2_reg, X3_reg, X4_reg: signed(sample_size-1 downto 0):=(others=>'0');
    signal X0_next, X1_next, X2_next, X3_next, X4_next: signed(sample_size-1 downto 0):=(others=>'0');
    
begin

    --mult for C0...C4
    DUT1: mux1_2
        port map(input0=>C0,
                 input1=>C1,
                 input2=>C2,
                 input3=>C3,
                 input4=>C4,
                 control=>control1_2,
                 output=>output1);

    --mult for X0...X4                 
    DUT2: mux1_2
        port map(input0=>X0_reg,
                 input1=>X1_reg,
                 input2=>X2_reg,
                 input3=>X3_reg,
                 input4=>X4_reg,
                 control=>control1_2,
                 output=>output2);
 
    --mult for adder                 
    DUT3: mux3
        port map(input1=>(others=>'0'),
                 input2=>R3_reg,
                 control=>control3,
                 output=>R3);
                 
    --process for filter coefficients             
    process(filter_select)
    begin
        --if lowpass
        if filter_select='0' then
            C0<=signed(low_pass0);
            C1<=signed(low_pass1);
            C2<=signed(low_pass2);
            C3<=signed(low_pass3);
            C4<=signed(low_pass4);
        --if highpass
        else
            C0<=signed(high_pass0);
            C1<=signed(high_pass1);
            C2<=signed(high_pass2);
            C3<=signed(high_pass3);
            C4<=signed(high_pass4);        
        end if;    
    end process;

    process(clk, reset)
    begin
        if reset='1' then
            X0_reg<=(others=>'0'); 
            X1_reg<=(others=>'0');  
            X2_reg<=(others=>'0');  
            X3_reg<=(others=>'0');  
            X4_reg<=(others=>'0');     
            sample_out_reg<=(others=>'0');
            R1_reg<=(others=>'0');
            R2_reg<=(others=>'0');
            R3_reg<=(others=>'0');
        elsif rising_edge(clk) then
            if sample_in_enable='1' then
                X0_reg<=X0_next;
                X1_reg<=X1_next;
                X2_reg<=X2_next;
                X3_reg<=X3_next;
                X4_reg<=X4_next;
                sample_out_reg<=sample_out_next;
            end if;
            R1_reg<=R1_next;
            R2_reg<=R2_next;
            R3_reg<=R3_next;  
        end if;
    end process;

    X0_next<=sample_in;
    X1_next<=X0_reg;
    X2_next<=X1_reg;
    X3_next<=X2_reg;
    X4_next<=X3_reg;
    
    --multiplier
    R1_next<= (output1*output2);
    R2_next<=R1_reg;
    
    --adder
    R3_next<=(R3+R2_reg);
    
    --output
    sample_out_next<=R3_reg((sample_size*2)-2 downto sample_size-1) ;
    sample_out<=sample_out_reg;


end Behavioral;
