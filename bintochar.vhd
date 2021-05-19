library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity bintochar is
    port (  x : in  std_logic_vector(3 downto 0);
            y : out std_logic_vector(7 downto 0) );
end bintochar;

architecture RTL of bintochar is
begin
    y <= "0011" & x when x <= "1001" else
         "0100" & (x - "1001") when x > "1001" else 
         "00000000";
end RTL;
