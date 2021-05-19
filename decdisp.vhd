library IEEE;
use IEEE.std_logic_1164.all;

entity decdisp is
    port (  clk :   in  std_logic;
            rst:    in  std_logic;
            data:  in  std_logic_vector(15 downto 0);
            hex0:   out std_logic_vector(6 downto 0);
            hex1:   out std_logic_vector(6 downto 0);
            hex2:   out std_logic_vector(6 downto 0);
            hex3:   out std_logic_vector(6 downto 0);
            hex4:   out std_logic_vector(6 downto 0) );
end decdisp;

architecture RTL of decdisp is
    subtype bcd_digit is std_logic_vector(3 downto 0);
    type bcd5_t is array(0 to 4) of bcd_digit;
    signal bcd : bcd5_t;
    signal bcd_hold : bcd5_t;
    type load_led7_status is (load, conv);
    signal led7_status : load_led7_status;
    signal led7load : std_logic;
    signal cnvdone : std_logic;

    component bintobcd is
        port (  clk:    in  std_logic;
                x:      in  std_logic_vector(15 downto 0);
                load:   in  std_logic;
                q0:     out std_logic_vector(3 downto 0);
                q1:     out std_logic_vector(3 downto 0);
                q2:     out std_logic_vector(3 downto 0);
                q3:     out std_logic_vector(3 downto 0);
                q4:     out std_logic_vector(3 downto 0);
                done:   out std_logic );
    end component;

    component numdisp is
        port (  num :   in  std_logic_vector(3 downto 0);
                q:      out std_logic_vector(6 downto 0) );
    end component;
begin
    CNV0 : bintobcd port map(clk=>clk, x=>data, load=>led7load,  q0=>bcd(0), q1=>bcd(1),
                             q2=>bcd(2), q3=>bcd(3), q4=>bcd(4), done=>cnvdone);
    LED7_0 : numdisp port map(num=>bcd_hold(0), q=>hex0);
    LED7_1 : numdisp port map(num=>bcd_hold(1), q=>hex1);
    LED7_2 : numdisp port map(num=>bcd_hold(2), q=>hex2);
    LED7_3 : numdisp port map(num=>bcd_hold(3), q=>hex3);
    LED7_4 : numdisp port map(num=>bcd_hold(4), q=>hex4);

    process(clk)
    begin
        if (clk'event and clk='1') then
            if (rst = '1') then
                led7_status <= load;
            else
                case led7_status is
                    when load =>
                        led7_status <= conv;
                    when conv =>
                        if (cnvdone = '1') then
                            bcd_hold <= bcd;
                            led7_status <= load;
                        end if;
                end case;
            end if;
        end if;
    end process;
    led7load <= '1' when led7_status=load else '0';
end RTL;
