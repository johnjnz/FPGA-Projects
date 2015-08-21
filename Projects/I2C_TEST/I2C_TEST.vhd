library ieee;
    use ieee.STD_LOGIC_1164.all;
    use ieee.numeric_std.all;
   
entity I2C_TEST is
    port (
        scl                 : inout STD_LOGIC;
        sda                 : inout STD_LOGIC;
        clk                 : in    STD_LOGIC;
        rst                 : in    STD_LOGIC
    );
end I2C_TEST;

architecture RTL of I2C_TEST is

signal read_req             : STD_LOGIC                      := '0';
signal data_to_master       : STD_LOGIC_VECTOR (7 downto 0)  := "01010101";
signal data_valid           : STD_LOGIC                      := '0';
signal data_from_master     : STD_LOGIC_VECTOR (7 downto 0)  := (others => '0');
signal data_reg             : STD_LOGIC_VECTOR (7 downto 0);

component I2C_SLAVE is
    generic (
        SLAVE_ADDR          : STD_LOGIC_VECTOR(6 downto 0)   := "0000000"
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
    
process (clk)    
begin
   
if rising_edge(clk) then
    if data_valid = '1' then
        data_to_master <= STD_LOGIC_VECTOR(unsigned(data_from_master) + 1);
    end if;
end if;
      
end process;
end architecture rtl;