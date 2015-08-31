library ieee;
    use ieee.STD_LOGIC_1164.all;
    use ieee.numeric_std.all;
    use work.SSD.all;

entity I2C_TEST is
    port (
        scl                 : inout STD_LOGIC;
        sda                 : inout STD_LOGIC;
        clk                 : in    STD_LOGIC;
        rst                 : in    STD_LOGIC;
        busy                : out   STD_LOGIC;
        
        led_status          : out   STD_LOGIC_VECTOR(7 downto 0)    := (others => '1');
                
        ssd_hex0            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0');
		ssd_hex1            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0');
		--ssd_hex2            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0');
		--ssd_hex3            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0');
		ssd_hex4            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0')
		--ssd_hex5            : out	STD_LOGIC_VECTOR(6 downto 0)    := (others => '0')
    );
end I2C_TEST;

architecture RTL of I2C_TEST is

    constant CMD_LED            : integer                           := 0;
    constant CMD_LED_RESET      : integer                           := 1;
    

    type STATE_T is (	
        GET_CMD,
        GET_DATA,
        DECODE_CMD,
        LED_CTRL,
        LED_RESET
    );

    signal read_req             : STD_LOGIC                         := '0';
    signal data_to_master       : STD_LOGIC_VECTOR (7 downto 0)     := "01010101";
    signal data_valid           : STD_LOGIC                         := '0';
    signal data_from_master     : STD_LOGIC_VECTOR (7 downto 0)     := (others => '0');
    signal data_reg             : STD_LOGIC_VECTOR (7 downto 0);
    
    signal state_reg            : STATE_T                           := GET_CMD;
    signal cmd					: integer range 0 to 15;	
    signal cmd_ssd              : STD_LOGIC_VECTOR(3 downto 0)     := (others => '0');
    signal update_ssd           : STD_LOGIC                         := '0';

    component I2C_SLAVE is
        generic (
            SLAVE_ADDR          : STD_LOGIC_VECTOR(6 downto 0)      := "0000011"
        ); 
        port (
            scl                 : inout STD_LOGIC;
            sda                 : inout STD_LOGIC;
            clk                 : in    STD_LOGIC;
            rst                 : in    STD_LOGIC;
        
            -- User interface
            read_req            : out   STD_LOGIC;
            data_to_master      : in    STD_LOGIC_VECTOR(7 downto 0);
            data_valid          : out   STD_LOGIC;
            data_from_master    : out   STD_LOGIC_VECTOR(7 downto 0)
        );
    end component I2C_SLAVE;

    begin

    i2cSlave: I2C_SLAVE 
        generic map (
            SLAVE_ADDR => "0000011"
        )
        port map(
            scl               => scl,
            sda               => sda,
            clk               => clk,
            rst               => rst,
          
            -- User interface
            read_req          => read_req,
            data_to_master    => data_to_master,
            data_valid        => data_valid,
            data_from_master  => data_from_master
        );

    
    ProcessSSD: process (clk)    
    begin
        if rising_edge(clk) then
            if update_ssd = '1' then
                SSD_decode(cmd_ssd, ssd_hex4);
                SSD_decode(data_reg(7 downto 4), ssd_hex1);
                SSD_decode(data_reg(3 downto 0), ssd_hex0);
            end if;
       
       end if;
    end process;
    
    ProcessCmd: process (clk)    
    begin
       
        if rising_edge(clk) then
            
            case state_reg is
            when GET_CMD =>														
                busy <= '0';
                update_ssd <= '0';
                if data_valid = '1' then										
                    cmd <= to_integer(unsigned(data_from_master));
                    cmd_ssd <= data_from_master(3 downto 0);
                    data_reg <= (others => '0');
               
                    state_reg <= GET_DATA;
                end if;
                    
            when GET_DATA =>														
                if data_valid = '1' then										
                    data_reg(7 downto 0) <= data_from_master;			
                    state_reg <= DECODE_CMD; 				
                end if;
            
            when DECODE_CMD =>
                busy <= '1';
                update_ssd <= '1';
                
                case cmd is
                    when CMD_LED =>
                        state_reg <= LED_CTRL;
                    when CMD_LED_RESET =>
                        state_reg <= LED_RESET;
                    when others =>
                        assert false report "Unexected cmd" severity note;
                        state_reg <= GET_CMD;
                    end case;
            when LED_CTRL =>
                led_status <= data_reg;
                state_reg <= GET_CMD;
            when LED_RESET =>
                led_status <= (others => '0');
                state_reg <= GET_CMD;
            end case;
        
        end if;     
    end process;
    
    
end architecture rtl;




