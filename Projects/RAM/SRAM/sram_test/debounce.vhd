library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;

entity debounce is
    generic(
        COUNTER_SIZE    :  INTEGER := 19                    --counter size (19 bits gives 10.5ms with 50MHz clock)
    );                        
    port (
        clk             : in  std_logic;                    --input clock
        button          : in  std_logic;                    --input signal to be debounced
        result          : out std_logic                     --debounced signal
    ); 
end debounce;

architecture arch of debounce is
    signal flipflops    : std_logic_vector(1 downto 0); --input flip flops
    signal counter_set  : std_logic;                    --sync reset to zero
    signal counter_out  : std_logic_vector(COUNTER_SIZE downto 0) := (others => '0'); 
begin

    counter_set <= flipflops(0) xor flipflops(1);   --determine when to start/reset counter
  
    process(clk)
    begin
        if rising_edge(clk) then
      
            flipflops(0) <= button;
            flipflops(1) <= flipflops(0);
      
            if counter_set = '1' then                  --reset counter because input is changing
                counter_out <= (others => '0');
            ELSIF counter_out(COUNTER_SIZE) = '0' then --stable input time is not yet met
                counter_out <= counter_out + 1;
            ELSE                                        --stable input time is met
                result <= flipflops(1);
            end if;    
        end if;
    end process;
end arch;
