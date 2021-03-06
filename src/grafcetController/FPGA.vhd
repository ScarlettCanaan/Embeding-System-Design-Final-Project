library ieee;
use ieee.std_logic_1164.all;

entity EX is 
port(
	clk,rst:in std_logic;
	Take_photo: out std_logic;
	Write_in_FPGA: out std_logic;
	Remove_noise: out std_logic;
	Binaryzation: out std_logic;
	Edge_detection: out std_logic;
	Image_tilt_correction: out std_logic;
                Cutting: out std_logic;

      );
end EX;


ARCHITECTURE controller OF EX IS
	signal X0,X1,X2,X3,X4,X5,X6: std_logic;
begin
grafcet2: process(clk,rst)
begin 
   if rst='0' then X0<='1'; X1<='0'; X2<='0'; X3<='0';X4<='0';X5<='0';X6<='0';
   elsif clk'event and clk='1' then
      if X0=¡®1¡¯ then X0<=¡®0¡¯; X1<=¡®1¡¯; 
      elsif X1='1' then X1<='0'; X2<='1';
      elsif X2='1' then X2<='0'; X3<='1';
      elsif X3='1' then X3<='0'; X4<='1';
      elsif X4='1' then X4<='0'; X5<='1';
      elsif X5='1' then X5<='0'; X6<='1';
      elsif X6='1' then X6<='0'; X0<='1';
      elsif X1='1' and X3='1' and R2='1' then X1<='0'; X3<='0'; X0<='1';
      end if;
   end if;
end process grafcet;

datapath: process(clk)
begin 
	if clk'event and clk='1' then
	Take_photo<=X0; 
	Write_in_FPGA<=X1; 
	Remove_noise<=X2; 
	Binaryzation<=X3; 
	Edge_detection<=X4; 
	Image_tilt_correction<=X5; 
                Cutting<=X6; 
	
	end if;
end process datapath;

end controller;
