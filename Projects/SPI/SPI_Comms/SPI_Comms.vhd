library ieee;
    use ieee.std_logic_1164.all;

use work.SSD.all;



entity SPI_Comms is
    Generic (   
        N               : positive  := 16;                                         -- 32bit serial word length is default
        CPOL            : std_logic := '0';                                    -- SPI mode selection (mode 0 default)
        CPHA            : std_logic := '0';                                    -- CPOL = clock polarity, CPHA = clock phase.
        PREFETCH        : positive  := 1                                   -- prefetch lookahead cycles
        );                                  
    Port(
        s_clk_i         : IN std_logic;
        s_spi_ssel_i    : IN std_logic;
        s_spi_sck_i     : IN std_logic;
        s_spi_mosi_i    : IN std_logic;
        s_spi_miso_o    : OUT std_logic;
 
        ssd_hex0            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0');
		ssd_hex1            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0');
        ssd_hex2            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0');
        ssd_hex3            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0')
        );
end SPI_Comms;

architecture Structural of SPI_Comms is

    component spi_slave is
    Generic (    
        N                   : positive := 16;                                              -- 32bit serial word length is default
        CPOL                : std_logic := '0';                                        -- SPI mode selection (mode 0 default)
        CPHA                : std_logic := '0';                                        -- CPOL = clock polarity, CPHA = clock phase.
        PREFETCH            : positive := 1);                                      -- prefetch lookahead cycles
    Port (  
        clk_i               : in std_logic := 'X';                                    -- internal interface clock (clocks di/do registers)
        spi_ssel_i          : in std_logic := 'X';                               -- spi bus slave select line
        spi_sck_i           : in std_logic := 'X';                                -- spi bus sck clock (clocks the shift register core)
        spi_mosi_i          : in std_logic := 'X';                               -- spi bus mosi input
        spi_miso_o          : out std_logic := 'X';                              -- spi bus spi_miso_o output
        di_req_o            : out std_logic;                                       -- preload lookahead data request line
        di_i                : in  std_logic_vector (N-1 downto 0) := (others => 'X');  -- parallel load data in (clocked in on rising edge of clk_i)
        wren_i              : in std_logic := 'X';                                   -- user data write enable
        wr_ack_o            : out std_logic;                                       -- write acknowledge
        do_valid_o          : out std_logic;                                     -- do_o data valid strobe, valid during one clk_i rising edge.
        do_o                : out  std_logic_vector (N-1 downto 0)                     -- parallel output (clocked out on falling clk_i)
    );          
    end component spi_slave;

    type STATE_T is (	
        IDLE,
        LOAD_DATA,
        SEND_DATA
    );

    
    signal s_di_i           : std_logic_vector (N-1 downto 0) := (others => 'X');     -- parallel load data in (clocked in on rising edge of clk_i)
    signal s_wren_i         : std_logic := 'X';                                     -- user data write enable
    signal s_di_req_o       : std_logic;                                         -- preload lookahead data request line
    signal s_do_valid_o     : std_logic;                                       -- do_o data valid strobe, valid during one clk_i rising edge.    
    signal s_do_o           : std_logic_vector (N-1 downto 0);
   
    signal current_state    : STATE_T;
    signal next_state       : STATE_T;
                            
begin

    Inst_spi_slave: spi_slave
    generic map (
        N           => N, 
        CPOL        => CPOL, 
        CPHA        => CPHA, 
        PREFETCH    => PREFETCH
    )
    port map(
        clk_i       => s_clk_i,
        spi_ssel_i  => s_spi_ssel_i,
        spi_sck_i   => s_spi_sck_i,
        spi_mosi_i  => s_spi_mosi_i,
        spi_miso_o  => s_spi_miso_o,
        di_req_o    => s_di_req_o,
        di_i        => s_di_i,
        wren_i      => s_wren_i,
        do_valid_o  => s_do_valid_o,
        do_o        => s_do_o
    );

 
    slave_rx: process (s_clk_i, s_do_valid_o)
    begin
        
        if s_clk_i'event and s_clk_i = '1' then
        
            if s_do_valid_o = '1' then

                -- show on SSD
                SSD_decode(s_do_o(15 downto 12), ssd_hex3);
                SSD_decode(s_do_o(11 downto 8), ssd_hex2);
                SSD_decode(s_do_o(7 downto 4), ssd_hex1);
                SSD_decode(s_do_o(3 downto 0), ssd_hex0);
                
            end if;
        end if;
        
     end process slave_rx;
     
    slave_tx: process (s_clk_i, s_do_valid_o)
    begin
        
        if s_clk_i'event and s_clk_i = '1' then
        
            if s_do_valid_o = '1' then
                s_di_i <= s_do_o;
                

        
end Structural;

