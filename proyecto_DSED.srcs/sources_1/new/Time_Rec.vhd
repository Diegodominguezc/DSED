----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2022 02:13:50
-- Design Name: 
-- Module Name: Time_Rec - Behavioral
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

entity Time_Rec is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sample_out_ready : in STD_LOGIC;
           BTNL : in STD_LOGIC;
           BTNC : in STD_LOGIC;
           RGB: out STD_LOGIC_VECTOR(sample_size-6 downto 0);
           seg : out STD_LOGIC_VECTOR(sample_size-1 downto 0);
           an : out STD_LOGIC_VECTOR(sample_size-1 downto 0));
end Time_Rec;

architecture Behavioral of Time_Rec is

    signal enable_rec, delete, tri_color_en_next, tri_color_en_reg: std_logic;
    signal toSeconds, toDSeconds, tomSeconds,toSeconds_en, toDSeconds_en, tomSeconds_en, lock_reg, lock_next: std_logic;
    signal counter1: std_logic_vector(11 downto 0);
    signal counter2, counter4: std_logic_vector(3 downto 0);
    signal counter3: std_logic_vector(2 downto 0);
    signal counter_max_reg, counter_max_next: unsigned(sample_size downto 0):=(others=>'0'); 
    signal segment1, segment2, segment3, segmentmax1, segmentmax2, segmentmax3, segmentL0, segmentL1,segmentL2, segmentR0,segmentR1,segmentR2: std_logic_vector(sample_size-1 downto 0); 
    signal delay_seg_reg, delay_seg_next: unsigned(sample_size downto 0):=(others=>'0'); 
    signal anode: std_logic_vector(sample_size-1 downto 0);
    signal tri_color: std_logic_vector(sample_size-6 downto 0):=(others=>'0'); 
    
    component c_counter_binary_0 is
        PORT (CLK : IN STD_LOGIC;
              CE: IN STD_LOGIC;
              SCLR: IN STD_LOGIC;
              THRESH0 : OUT STD_LOGIC;
              Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
        end component;
 
    component c_counter_binary_1 is
        PORT (CLK : IN STD_LOGIC;
              CE: IN STD_LOGIC;
              SCLR: IN STD_LOGIC;
              THRESH0 : OUT STD_LOGIC;
              Q : OUT STD_LOGIC_VECTOR(11 DOWNTO 0));
        end component;
  
    component c_counter_binary_2 is
        PORT (CLK : IN STD_LOGIC;
              CE: IN STD_LOGIC;
              SCLR: IN STD_LOGIC;
              Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
        end component;
        
    component c_counter_binary_3 is
        PORT (CLK : IN STD_LOGIC;
              CE: IN STD_LOGIC;
              SCLR: IN STD_LOGIC;
              THRESH0 : OUT STD_LOGIC;
              Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
        end component;
        
begin

    enable_rec<=(BTNL and sample_out_ready);
    delete<=(BTNC or reset);
    tomSeconds_en<=(tomSeconds and sample_out_ready);
    toSeconds_en<=(toSeconds and tomSeconds_en);
    toDSeconds_en<=(toDSeconds and toSeconds_en);
    
    U1: c_counter_binary_1 port map(
        CLK=>clk,
        CE=>enable_rec,
        SCLR=>delete,
        THRESH0=>tomSeconds,
        Q=>counter1);
        
    U2: c_counter_binary_0 port map(
        CLK=>clk,
        CE=>tomSeconds_en,
        SCLR=>delete,
        THRESH0=>toSeconds,
        Q=>counter2);
        
    U3: c_counter_binary_2 port map(
        CLK=>clk,
        CE=>toDSeconds_en,
        SCLR=>delete,
        Q=>counter3);
        
    U4: c_counter_binary_3 port map(
        CLK=>clk,
        CE=>toSeconds_en,
        SCLR=>delete,
        THRESH0=>toDSeconds,
        Q=>counter4);


    with counter2 select segment1<=      --XX.Y
        "10000001" when "0000",
        "11110011" when "0001",
        "01001001" when "0010",
        "01100001" when "0011",
        "00110011" when "0100",
        "00100101" when "0101",
        "00000101" when "0110",
        "11110001" when "0111",
        "00000001" when "1000",
        "00100001" when "1001",
        "10000001" when others;
       
   with counter4 select segment2<=       --XY.X
        "10000000" when "0000",
        "11110010" when "0001",
        "01001000" when "0010",
        "01100000" when "0011",
        "00110010" when "0100",
        "00100100" when "0101",
        "00000100" when "0110",
        "11110000" when "0111",
        "00000000" when "1000",
        "00100000" when "1001",
        "10000000" when others; 
        
    with counter3 select segment3<=      --YX.X
        "10000001" when "000",
        "11110011" when "001",
        "01001001" when "010",
        "10000001" when others;   


    
    process(clk, reset, BTNC)
    begin
        if (reset='1' or BTNC='1') then
            counter_max_reg<=(others=>'0');
            lock_reg<='0';
            delay_seg_reg<=(others=>'0');
            tri_color_en_reg<='0';
        elsif rising_edge(clk) then
            counter_max_reg<=counter_max_next;
            lock_reg<=lock_next;
            delay_seg_reg<=delay_seg_next;
            tri_color_en_reg<=tri_color_en_next;
        end if;
    end process;
    
    process(tomSeconds_en, counter_max_reg, lock_reg, delay_seg_reg, tri_color_en_reg)
    begin
        counter_max_next<=counter_max_reg;
        lock_next<=lock_reg;
        delay_seg_next<=delay_seg_reg+1;
        tri_color_en_next<=tri_color_en_reg;
        if(tomSeconds_en='1') then 
            counter_max_next<=counter_max_reg+1;
        end if;
        if (counter_max_reg>=262)then
            lock_next<='1';
        elsif (counter_max_reg=230) then     --Very bright purple colour appears
            tri_color_en_next<='1';
        else
            lock_next<='0';
        end if;
        if (delay_seg_reg=244) then
            delay_seg_next<=(others=>'0');
        end if;
    end process;
    
    process(delay_seg_reg)
    begin
        tri_color<=(others=>'0');
        if (delay_seg_reg<15) then  
            anode<="11111110";
            tri_color<="101";
        elsif (delay_seg_reg>=35 and delay_seg_reg<50) then 
            anode<="11111101";
        elsif (delay_seg_reg>=70 and delay_seg_reg<85) then 
            anode<="11111011";
        elsif (delay_seg_reg>=105 and delay_seg_reg<120) then
            anode<="11101111";
        elsif (delay_seg_reg>=140 and delay_seg_reg<155) then
            anode<="11011111";
        elsif (delay_seg_reg>=175 and delay_seg_reg<190) then
            anode<="10111111";
        elsif (delay_seg_reg>=210 and delay_seg_reg<225) then
            anode<="01111111";
        else
            anode<="11111111";
        end if;
    end process;
    
    segmentmax1<="01001001";    --2
    segmentmax2<="00000100";    --6.    
    segmentmax3<="01001001";    --2
    
    segmentL0<="00011101";      --F
    segmentL1<="10000011";      --U
    segmentL2<="10001111";      --L
    
    process(BTNL)
    begin
        if (BTNL='1') then
            segmentR0<="00010001";      --R
            segmentR1<="00001101";      --E
            segmentR2<="10001101";      --C
        else
            segmentR0<=(others=>'1');     
            segmentR1<=(others=>'1');     
            segmentR2<=(others=>'1');     
        end if;
    end process;
    
    process(anode,segment1, segment2, segment3, segmentmax1, segmentmax2, segmentmax3, segmentL0, segmentL1, segmentL2, segmentR0, segmentR1, segmentR2, lock_reg)
    begin
        if(lock_reg='0') then
            if anode="11111110" then
                seg<=segment1;
            elsif anode="11111101" then
                seg<=segment2;
            elsif anode="11111011" then
                seg<=segment3;
            elsif anode="11011111" then
                seg<=segmentR2;
            elsif anode="10111111" then
                seg<=segmentR1;
            elsif anode="01111111" then
                seg<=segmentR0;
            else
                seg<=(others=>'1');
            end if;
        else
            if anode="11111110" then
                seg<=segmentmax1;
            elsif anode="11111101" then
                seg<=segmentmax2;
            elsif anode="11111011" then
                seg<=segmentmax3;
            elsif anode="11101111" then
                seg<=segmentL2;
            elsif anode="11011111" then
                seg<=segmentL2;
            elsif anode="10111111" then
                seg<=segmentL1;
            elsif anode="01111111" then
                seg<=segmentL0;
            else
                seg<=(others=>'1');
            end if;
        end if;
    end process;
    
    process(tri_color_en_reg, tri_color)
    begin
        if(tri_color_en_reg='1') then
            RGB<=tri_color;
        else
            RGB<=(others=>'0');
        end if;
    end process;
    
    an<=anode;
            

end Behavioral;
