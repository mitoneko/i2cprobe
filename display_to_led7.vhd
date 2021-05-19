library IEEE;
use IEEE.std_logic_1164.all;

entity display_to_led7 is
    port (  clk :       in  std_logic;
            rst :       in  std_logic;
            dec_mode :  in  std_logic;
            data0 :     in  std_logic_vector(15 downto 0);
            data1 :     in  std_logic_vector(7 downto 0);
            hex0 :      out std_logic_vector(6 downto 0);
            hex1 :      out std_logic_vector(6 downto 0);
            hex2 :      out std_logic_vector(6 downto 0);
            hex3 :      out std_logic_vector(6 downto 0);
            hex4 :      out std_logic_vector(6 downto 0);
            hex5 :      out std_logic_vector(6 downto 0) );
end display_to_led7;

architecture RTL of display_to_led7 is
    subtype led7_code_t is std_logic_vector(6 downto 0);
    type led7_t is array(0 to 5) of led7_code_t;
    signal led7_bin : led7_t;
    signal led7_dec : led7_t;
    signal led7 : led7_t;

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

    component numdisp is
        port (  num :   in  std_logic_vector(3 downto 0);
                q:      out std_logic_vector(6 downto 0) );
    end component;
begin
    D1 : decdisp port map(clk=>clk, rst=>rst, data=>data0, 
                          hex0=>led7_dec(0), hex1=>led7_dec(1), hex2=>led7_dec(2), hex3=>led7_dec(3), hex4=>led7_dec(4));
    led7_dec(5) <= "1111111";
    
    BD5 : numdisp port map(data1(7 downto 4), led7_bin(5));
    BD4 : numdisp port map(data1(3 downto 0), led7_bin(4));
    BD3 : numdisp port map(data0(15 downto 12), led7_bin(3));
    BD2 : numdisp port map(data0(11 downto 8), led7_bin(2));
    BD1 : numdisp port map(data0(7 downto 4), led7_bin(1));
    BD0 : numdisp port map(data0(3 downto 0), led7_bin(0));
    
    led7 <= led7_bin when dec_mode='0' else led7_dec;
    hex0 <= led7(0); hex1 <= led7(1); hex2 <= led7(2); hex3 <= led7(3); hex4 <= led7(4); hex5 <= led7(5);
end RTL;
