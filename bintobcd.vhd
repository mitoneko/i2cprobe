library IEEE;
use IEEE.std_logic_1164.all;

entity bintobcd is
    port (  clk:    in  std_logic;
            x:      in  std_logic_vector(15 downto 0);
            load:   in  std_logic;
            q0:     out std_logic_vector(3 downto 0);
            q1:     out std_logic_vector(3 downto 0);
            q2:     out std_logic_vector(3 downto 0);
            q3:     out std_logic_vector(3 downto 0);
            q4:     out std_logic_vector(3 downto 0);
            done:   out std_logic );
end bintobcd;

architecture RTL of bintobcd is
    component bcd_digit is
        port (  clk :   in  std_logic;
                init:   in  std_logic;
                donein: in  std_logic;
                modin:  in  std_logic;
                modout: out std_logic;
                q:      out std_logic_vector(3 downto 0) );
    end component;
    
    component shiftbin16 is
        port (  clk :   in  std_logic;
                load:   in  std_logic;
                data:   in  std_logic_vector(15 downto 0);
                init_o: out std_logic;
                done:   out std_logic;
                q:      out std_logic );
    end component;

    signal init : std_logic;
    signal done_i : std_logic;
    signal shift : std_logic_vector(4 downto 0);
begin
    B1: shiftbin16 port map(clk=>clk, load=>load, data=>x, init_o=>init, done=>done_i, q=>shift(0));
    D1: bcd_digit port map(clk=>clk, init=>init, donein=>done_i, modin=>shift(0), modout=>shift(1), q=>q0);
    D2: bcd_digit port map(clk=>clk, init=>init, donein=>done_i, modin=>shift(1), modout=>shift(2), q=>q1);
    D3: bcd_digit port map(clk=>clk, init=>init, donein=>done_i, modin=>shift(2), modout=>shift(3), q=>q2);
    D4: bcd_digit port map(clk=>clk, init=>init, donein=>done_i, modin=>shift(3), modout=>shift(4), q=>q3);
    D5: bcd_digit port map(clk=>clk, init=>init, donein=>done_i, modin=>shift(4), modout=>open, q=>q4);
    done <= done_i;
end RTL;

