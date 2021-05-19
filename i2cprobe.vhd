library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity i2cprobe is
    port (  clk_i : in    std_logic;
            sw :  in    std_logic_vector(9 downto 0);
            key : in    std_logic_vector(3 downto 0); 
            led : out   std_logic_vector(9 downto 0);
            hex0: out   std_logic_vector(6 downto 0);
            hex1: out   std_logic_vector(6 downto 0);
            hex2: out   std_logic_vector(6 downto 0);
            hex3: out   std_logic_vector(6 downto 0);
            hex4: out   std_logic_vector(6 downto 0);
            hex5: out   std_logic_vector(6 downto 0);
            scl:  in    std_logic;
            sda:  inout std_logic );
end i2cprobe;

architecture RTL of i2cprobe is
    signal clk: std_logic;
    signal pll_lock: std_logic;
    signal rst: std_logic;
    signal seccnt: integer range 0 to 100000000;
    signal mem_out: std_logic_vector(15 downto 0);
    signal wraddress: std_logic_vector(7 downto 0);
    signal wrdata: std_logic_vector(15 downto 0);
    signal wren: std_logic;
    signal i2c_busy, i2c_recv: std_logic;
    signal i2c_data: std_logic_vector(7 downto 0);
    type fms_i2c_status_t is (idle, addr, data_hi, data_low, mem_write, busy_wait);
    signal i2c_status: fms_i2c_status_t;
    signal i2c_err: std_logic;
    signal i2c_err_cnt, i2c_recv_cnt: std_logic_vector(7 downto 0);

    component pll is
        port (
                refclk   : in  std_logic := '0'; --  refclk.clk
                rst      : in  std_logic := '0'; --   reset.reset
                outclk_0 : out std_logic;        -- outclk0.clk
                locked   : out std_logic         --  locked.export
        );
    end component;

    component reset is
        port (  pll_lock:   in  std_logic;
                clk:        in  std_logic;
                reset:      out std_logic );
    end component;

    component ram is
        PORT (  clock		: IN STD_LOGIC  := '1';
                data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
                rdaddress	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                wraddress	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                wren		: IN STD_LOGIC  := '0';
                q		    : OUT STD_LOGIC_VECTOR (15 DOWNTO 0) );
    end component;
    
    component display_to_led7 is
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
    end component;
    
    component i2c_client is
        generic ( i2c_addr : std_logic_vector(6 downto 0) := "0001000" );
        port (  clk: in     std_logic;
                rst: in     std_logic;
                scl: in     std_logic;
                sda: inout  std_logic;
                busy: out   std_logic;
                recv: out   std_logic;
                data: out   std_logic_vector(7 downto 0) );
    end component;

begin
    P1 : pll port map(refclk=>clk_i, rst=>not key(0), outclk_0=>clk, locked=>pll_lock); 
    P2 : reset port map(pll_lock=>pll_lock, clk=>clk, reset=>rst);
            
    M1 : ram port map(clock=>clk, data=>wrdata, rdaddress=>sw(7 downto 0), 
                      wraddress=>wraddress, wren=>wren, q=>mem_out);
    D1 : display_to_led7 port map(
            clk=>clk, rst=>rst, dec_mode=>sw(9),
            data0=>mem_out, data1=>sw(7 downto 0),
            hex0=>hex0, hex1=>hex1, hex2=>hex2, hex3=>hex3, hex4=>hex4, hex5=>hex5);
                
    U1 : i2c_client port map( clk=>clk, rst=>rst, scl=>scl, sda=>sda, busy=>i2c_busy , recv=>i2c_recv , data=>i2c_data );

    process(clk)
    begin
        if (clk'event and clk='1') then
            if (rst='1') then
                i2c_status <= idle;
                i2c_err <= '0';
            else 
                i2c_err <= '0';
                case i2c_status is
                    when idle =>
                        if (i2c_busy = '1') then
                            i2c_status <= addr ;
                            wraddress <= "00000000";
                            wrdata <= "0000000000000000";
                        end if;
                    when addr =>
                        if (i2c_recv = '1') then
                            wraddress <= i2c_data;
                            i2c_status <= data_hi;
                        elsif (i2c_busy = '0') then
                            i2c_status <= idle;
                            i2c_err <= '1';
                        end if;
                    when data_hi =>
                        if (i2c_recv = '1') then
                            wrdata(15 downto 8) <= i2c_data;
                            i2c_status <= data_low;
                        elsif (i2c_busy = '0') then
                            i2c_status <= idle;
                            i2c_err <= '1';
                        end if;
                    when data_low =>
                        if (i2c_recv = '1') then
                            wrdata(7 downto 0) <= i2c_data;
                            i2c_status <= mem_write;
                        elsif (i2c_busy = '0') then
                            i2c_status <= idle;
                            i2c_err <= '1';
                        end if;
                    when mem_write =>
                        i2c_status <= busy_wait;
                    when busy_wait =>
                        if (i2c_busy = '0') then
                            i2c_status <= idle;
                        end if;
                end case;
            end if;
        end if;
    end process;
    wren <= '1' when i2c_status=mem_write else '0';
    process(clk)
    begin
        if (clk'event and clk='1') then
            if (rst='1' or key(1)='0') then
                i2c_err_cnt <= "00000000";
                i2c_recv_cnt <= "00000000";
            elsif (i2c_err = '1') then
                i2c_err_cnt <= i2c_err_cnt + 1;
            elsif (i2c_status = mem_write) then
                i2c_recv_cnt <= i2c_recv_cnt + 1;
            end if;
        end if;
    end process;
    led(3 downto 0) <= i2c_err_cnt(3 downto 0);
    led(8 downto 4) <= i2c_recv_cnt(4 downto 0);

    led(9) <= sw(9);
end RTL;
