library ieee;
    use ieee.std_logic_1164.all;
 
entity group_debounce is
    generic 
    (   
        INPUTS  :       positive := 8;                                                      
        PERIOD  :       positive := 10000);                                           
    Port 
    (  
        clk     : in    std_logic := 'X';                                            
        data_i  : in    std_logic_vector (INPUTS-1 downto 0) := (others => 'X');         
        data_o  : out   std_logic_vector (INPUTS-1 downto 0);                           
        strb_o  : out   std_logic                                                  
    );                      
end group_debounce;
 
architecture rtl of group_debounce is
    
    signal reg_A        : std_logic_vector (INPUTS-1 downto 0) := (others => '0');   
    signal reg_B        : std_logic_vector (INPUTS-1 downto 0) := (others => '0');   
    signal reg_out      : std_logic_vector (INPUTS-1 downto 0) := (others => '0');        
    signal dat_strb     : std_logic := '0';                                         
    signal strb_reg     : std_logic := '0';                                         
    signal strb_next    : std_logic := '0';                                        
    signal dat_diff     : std_logic := '0';                                         
    
    signal cnt_reg      : integer range PERIOD + 1 downto 0 := 0;                   
    signal cnt_next     : integer range PERIOD + 1 downto 0 := 0;                  
begin

    cnt_reg_proc: process (clk) is
    begin
        if rising_edge(clk) then
            cnt_reg <= cnt_next;
        end if;
    end process cnt_reg_proc;
    
    cnt_next_proc: cnt_next <=  0 when dat_diff = '1' or dat_strb = '1' else cnt_reg + 1;
    final_cnt_proc: dat_strb <= '1' when cnt_reg = PERIOD else '0';
 
    
    pipeline_proc: process (clk) is
    begin
        if rising_edge(clk) then
            
            reg_A <= data_i;
            reg_B <= reg_A;
            
            strb_reg <= strb_next;
        end if;
        
        if rising_edge(clk) then
            if dat_strb = '1' then
                reg_out <= reg_B;
            end if;
        end if;
    end process pipeline_proc;
    
    
    edge_detector_proc: dat_diff <= '1' when reg_A /= reg_B else '0';
    next_strobe_proc: strb_next <= '1' when ((reg_out /= reg_B) and dat_strb = '1') else '0';
 
    
    data_o_proc:    data_o <= reg_out;
    strb_o_proc:    strb_o <= strb_reg;
end rtl;
 