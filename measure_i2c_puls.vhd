library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity rise_span is
    port (  clk:    in  std_logic;
            rst:    in  std_logic;
            sig:    in  std_logic;
            ack:    in  std_logic;
            ena:    out std_logic;
            val:    out std_logic_vector(15 downto 0) );
end rise_span;

architecture RTL of rise_span is
    component detect_rise is
        port (  clk : in    std_logic;
                sig : in    std_logic;
                rise : out  std_logic );
    end component;

    type fms_status is (init, rise1, rise2, rsvack);
    signal status : fms_status;
    signal cnt : integer range 0 to 10000; -- 100us(unit 10ns)
    signal puls_rise : std_logic;
begin
    U1: detect_rise port map(clk=>clk, sig=>sig, rise=>puls_rise);
    process(clk)
    begin
        if (clk'event and clk='1') then
            if (rst = '1') then
                status <= init;
            else
                case status is
                    when init =>
                        cnt <= 0;
                        if (puls_rise = '1') then
                            status <= rise1;
                        end if;
                    when rise1 =>
                        cnt <= cnt + 1;
                        if (puls_rise = '1') then
                            status <= rise2;
                        end if;
                        if (cnt = 10000) then
                            status <= init;
                        end if;
                    when rise2 =>
                        val <= CONV_std_logic_vector(cnt, 16);
                        status <= rsvack;
                    when rsvack =>
                        if (ack = '1') then
                            cnt <= 0;
                            status <= rise1;
                        end if;
                end case;
            end if;
        end if;
    end process;
    ena <= '1' when status=rsvack else '0';
end RTL;
            
library IEEE;
use IEEE.std_logic_1164.all;

entity measure_i2c_puls is
    port (  clk :   in  std_logic;
            rst :   in  std_logic;
            sda :   in  std_logic;
            scl :   in  std_logic;
            wen :   out std_logic;
            wraddress :     out std_logic_vector(7 downto 0);
            wrdata :        out std_logic_vector(15 downto 0) );
end measure_i2c_puls;

architecture RTL of measure_i2c_puls is
    component rise_span is
        port (  clk:    in  std_logic;
                rst:    in  std_logic;
                sig:    in  std_logic;
                ack:    in  std_logic;
                ena:    out std_logic;
                val:    out std_logic_vector(15 downto 0) );
    end component;

    type fms_status is (scl_scan, scl_write, sda_scan, sda_write);
    signal status : fms_status;
    signal scl_ack, sda_ack: std_logic;
    signal scl_ena, sda_ena: std_logic;
    signal scl_val, sda_val: std_logic_vector(15 downto 0);
begin
    U1: rise_span port map(clk=>clk, rst=>rst, sig=>scl, ack=>scl_ack, ena=>scl_ena, val=>scl_val);
    U2: rise_span port map(clk=>clk, rst=>rst, sig=>sda, ack=>sda_ack, ena=>sda_ena, val=>sda_val);

    process (clk)
    begin
        if (clk'event and clk='1') then
            if (rst='1') then
                status <= scl_scan;
            else
                case status is
                    when scl_scan =>
                        if (scl_ena='1') then
                           status <= scl_write;
                           wraddress <= "00000000";
                           wrdata <= scl_val;
                        else
                           status <= sda_scan;
                        end if;
                    when scl_write =>
                        status <= sda_scan;
                    when sda_scan =>
                        if (sda_ena='1') then
                           status <= sda_write;
                           wraddress <= "00000001";
                           wrdata <= sda_val;
                        else
                           status <= scl_scan;
                        end if;
                    when sda_write =>
                        status <= scl_scan;
                end case;
            end if;
        end if;
    end process;
    wen <= '1' when status=scl_write or status=sda_write else '0';
    scl_ack <= '1' when status=scl_write else '0';
    sda_ack <= '1' when status=sda_write else '0';
end RTL;

