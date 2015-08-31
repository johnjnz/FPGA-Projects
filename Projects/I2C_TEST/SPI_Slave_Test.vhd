LIBRARY ieee;
    USE ieee.std_logic_1164.all;

ENTITY SPI_Slave_Test IS
    GENERIC(
        sys_clk_frq : INTEGER   := 50_000_000; --system clock speed in Hz
        i2c_scl_frq : INTEGER   := 400_000;    --speed the i2c bus (scl) will run at in Hz
        spi_cpol    : STD_LOGIC := '0';        --spi clock polarity mode
        spi_cpha    : STD_LOGIC := '0'         --spi clock phase mode
     );

    PORT(
        clk     : IN    STD_LOGIC;  --system clock
        reset_n : IN    STD_LOGIC;  --active low reset
        sclk    : IN    STD_LOGIC;  --spi serial clock
        ss_n    : IN    STD_LOGIC;  --spi slave select
        mosi    : IN    STD_LOGIC;  --spi master out, slave in
        miso    : OUT   STD_LOGIC;  --spi master in, slave out
        trdy    : OUT   STD_LOGIC   --spi transmit ready

    );
END SPI_Slave_Test;

ARCHITECTURE RTL OF SPI_Slave_Test IS

    CONSTANT spi_d_width : INTEGER := 25;  --spi data width in bits
    SIGNAL   spi_busy    : STD_LOGIC;
    SIGNAL   spi_tx_ena  : STD_LOGIC;
    SIGNAL   spi_tx_data : STD_LOGIC_VECTOR(24 DOWNTO 0);
    SIGNAL   spi_rx_req  : STD_LOGIC;
    SIGNAL   spi_rx_data : STD_LOGIC_VECTOR(24 DOWNTO 0);
    SIGNAL   spi_rrdy    : STD_LOGIC;

    TYPE machine IS(ready, spi_rx, spi_load_tx);     --state machine datatype
    SIGNAL state         : machine;                       --current state
    SIGNAL message       : STD_LOGIC_VECTOR(24 DOWNTO 0); --message sent and received
    
    
    COMPONENT spi_slave IS
        GENERIC (
            cpol    : STD_LOGIC; --spi clock polarity mode
            cpha    : STD_LOGIC; --spi clock phase mode
            d_width : INTEGER  --data width in bits
        );
        PORT (
            sclk         : IN     STD_LOGIC;                            --spi clk from master
            reset_n      : IN     STD_LOGIC;                            --active low reset
            ss_n         : IN     STD_LOGIC;                            --active low slave select
            mosi         : IN     STD_LOGIC;                            --master out, slave in
            rx_req       : IN     STD_LOGIC;                            --'1' while busy = '0' moves data to the rx_data output
            st_load_en   : IN     STD_LOGIC;                            --asynchronous load enable
            st_load_trdy : IN     STD_LOGIC;                            --asynchronous trdy load input
            st_load_rrdy : IN     STD_LOGIC;                            --asynchronous rrdy load input
            st_load_roe  : IN     STD_LOGIC;                            --asynchronous roe load input
            tx_load_en   : IN     STD_LOGIC;                            --asynchronous transmit buffer load enable
            tx_load_data : IN     STD_LOGIC_VECTOR(d_width-1 DOWNTO 0); --asynchronous tx data to load
            trdy         : BUFFER STD_LOGIC := '0';                     --transmit ready bit
            rrdy         : BUFFER STD_LOGIC := '0';                     --receive ready bit
            roe          : BUFFER STD_LOGIC := '0';                     --receive overrun error bit
            rx_data      : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0); --receive register output to logic
            busy         : OUT    STD_LOGIC := '0';                     --busy signal to logic ('1' during transaction)
            miso         : OUT    STD_LOGIC := 'Z'                    --master in, slave out
        );
    END COMPONENT spi_slave;
 
    
    BEGIN
 
      --instantiate the spi slave
    spi_slave_0:  spi_slave
    GENERIC MAP(
        cpol => spi_cpol, 
        cpha => spi_cpha, 
        d_width => spi_d_width
    )
    PORT MAP(
        sclk => sclk, 
        reset_n => reset_n, 
        ss_n => ss_n, 
        mosi => mosi,
        rx_req => spi_rx_req, 
        st_load_en => '0', 
        st_load_trdy => '0',
        st_load_rrdy => '0', 
        st_load_roe => '0', 
        tx_load_en => spi_tx_ena,
        tx_load_data => spi_tx_data, 
        trdy => trdy, 
        rrdy => spi_rrdy, 
        roe => open,
        rx_data => spi_rx_data, 
        busy => spi_busy, 
        miso => miso
    );
            
    

        
    PROCESS( clk, reset_n )
    BEGIN

        IF( reset_n = '0' ) THEN                 --reset asserted
            spi_rx_req <= '0';
            spi_tx_ena <= '0';
            state <= ready;
        ELSIF ( clk'EVENT AND clk = '1' ) THEN
  
            CASE state IS
               WHEN ready =>
                    spi_tx_ena <= '0';                         --do not load spi tx register
                    IF(spi_busy = '0' AND spi_rrdy = '1') THEN --new message from spi
                        spi_rx_req <= '1';                       --request message from spi
                        state <= spi_rx;                         --retrieve message from spi
                    ELSE                                       --no new message from spi
                        state <= ready;                          --wait for new message from spi
                    END IF;
      
                WHEN spi_rx =>
                    message <= spi_rx_data;        --retrieve message from spi
                    spi_rx_req <= '0';             --stop requesting
                    IF(spi_rx_data(24) = '1') THEN --i2c enable bit is set
                        state <= spi_load_tx;                --initiate i2c transaction
                    ELSE
                        state <= ready;              --wait for new message from spi
                    END IF;
              
                WHEN spi_load_tx =>
                    IF(spi_busy = '0') THEN
                        spi_tx_ena <= '1';      --latch i2c outcome into spi slave transmit register
                        spi_tx_data <= message; --tx data is now the last command sent and the data written or read  
                        state <= ready;         --ready for new transaction from spi
                    ELSE
                        state <= spi_load_tx;   --wait to load spi tx register
                    END IF;
      
            END CASE;
        END IF;
    
    END PROCESS;

END ARCHITECTURE RTL;