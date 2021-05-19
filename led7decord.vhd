library IEEE;
use IEEE.std_logic_1164.all;

entity led7decode is
    port (  x : in  std_logic_vector(7 downto 0);
            y : out std_logic_vector(6 downto 0) );
end led7decode;

architecture RTL of led7decode is
begin
    y <= "1000000" when x = "00110000" else -- 0
         "1111001" when x = "00110001" else -- 1
         "0100100" when x = "00110010" else -- 2
         "0110000" when x = "00110011" else -- 3
         "0011001" when x = "00110100" else -- 4
         "0010010" when x = "00110101" else -- 5
         "0000010" when x = "00110110" else -- 6
         "1011000" when x = "00110111" else -- 7
         "0000000" when x = "00111000" else -- 8
         "0010000" when x = "00111001" else -- 9
         "0111111" when x = "00101101" else -- -
         "0001000" when x = "01000001" else -- A
         "0000011" when x = "01000010" else -- B
         "1000110" when x = "01000011" else -- C
         "0100001" when x = "01000100" else -- D
         "0000110" when x = "01000101" else -- E
         "0001110" when x = "01000110" else -- F
         "0110110" ;
end RTL;

