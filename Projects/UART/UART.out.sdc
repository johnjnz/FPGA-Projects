## Generated SDC file "UART.out.sdc"

## Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus II License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

## DATE    "Sat Oct 25 11:21:45 2014"

##
## DEVICE  "EP4CE115F29C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk_50Mhz} -period 1.000 -waveform { 0.000 0.500 } [get_ports {clk_50Mhz}]
create_clock -name {RX:RX_COM|busy} -period 1.000 -waveform { 0.000 0.500 } [get_registers {RX:RX_COM|busy}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {RX:RX_COM|busy}] -rise_to [get_clocks {RX:RX_COM|busy}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {RX:RX_COM|busy}] -fall_to [get_clocks {RX:RX_COM|busy}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {RX:RX_COM|busy}] -rise_to [get_clocks {clk_50Mhz}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {RX:RX_COM|busy}] -fall_to [get_clocks {clk_50Mhz}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {RX:RX_COM|busy}] -rise_to [get_clocks {RX:RX_COM|busy}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {RX:RX_COM|busy}] -fall_to [get_clocks {RX:RX_COM|busy}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {RX:RX_COM|busy}] -rise_to [get_clocks {clk_50Mhz}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {RX:RX_COM|busy}] -fall_to [get_clocks {clk_50Mhz}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clk_50Mhz}] -rise_to [get_clocks {RX:RX_COM|busy}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clk_50Mhz}] -fall_to [get_clocks {RX:RX_COM|busy}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clk_50Mhz}] -rise_to [get_clocks {clk_50Mhz}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_50Mhz}] -fall_to [get_clocks {clk_50Mhz}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_50Mhz}] -rise_to [get_clocks {RX:RX_COM|busy}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clk_50Mhz}] -fall_to [get_clocks {RX:RX_COM|busy}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clk_50Mhz}] -rise_to [get_clocks {clk_50Mhz}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_50Mhz}] -fall_to [get_clocks {clk_50Mhz}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

