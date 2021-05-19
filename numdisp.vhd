library IEEE;
use IEEE.std_logic_1164.all;

entity numdisp is
    port (  num :   in  std_logic_vector(3 downto 0);
            q:      out std_logic_vector(6 downto 0) );
end numdisp;

architecture RTL of numdisp is
    signal charcode : std_logic_vector(7 downto 0);

    component led7decode is
        port (  x : in  std_logic_vector(7 downto 0);
                y : out std_logic_vector(6 downto 0) );
    end component;
    
    component bintochar
        port (  x : in  std_logic_vector(3 downto 0);
                y : out std_logic_vector(7 downto 0) );
    end component;
    component decdisp is
        port (  clk :   in  std_logic;
                rst:    in  std_logic;
                data:   in  std_logic_vector(15 downto 0);
                hex0:   out std_logic_vector(6 downto 0);
                hex1:   out std_logic_vector(6 downto 0);
                hex2:   out std_logic_vector(6 downto 0);
                hex3:   out std_logic_vector(6 downto 0);
                hex4:   out std_logic_vector(6 downto 0) );
    end component;
begin
    L1 : bintochar  port map(x=>num, y=>charcode);
    L2 : led7decode port map(x=>charcode, y=>q);
end RTL;

