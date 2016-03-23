## Generated SDC file "led_control.out.sdc"

## Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
## VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

## DATE    "Fri Sep 18 20:54:32 2015"

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

create_clock -name {s_spi_sck_i} -period 8.000 -waveform { 0.000 4.000 } [get_ports { s_spi_sck_i }]
create_clock -name {clk50} -period 8.000 -waveform { 0.000 4.000 } [get_ports { clk50 }]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {s_spi_sck_i}] -rise_to [get_clocks {s_spi_sck_i}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {s_spi_sck_i}] -fall_to [get_clocks {s_spi_sck_i}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {s_spi_sck_i}] -rise_to [get_clocks {s_spi_sck_i}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {s_spi_sck_i}] -fall_to [get_clocks {s_spi_sck_i}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -rise_to [get_clocks {clk50}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -fall_to [get_clocks {clk50}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -rise_to [get_clocks {s_spi_sck_i}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -fall_to [get_clocks {s_spi_sck_i}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -rise_to [get_clocks {clk50}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -fall_to [get_clocks {clk50}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -rise_to [get_clocks {s_spi_sck_i}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -fall_to [get_clocks {s_spi_sck_i}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {s_spi_sck_i}] -rise_to [get_clocks {clk50}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {s_spi_sck_i}] -fall_to [get_clocks {clk50}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {s_spi_sck_i}] -rise_to [get_clocks {clk50}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {s_spi_sck_i}] -fall_to [get_clocks {clk50}]  0.030  


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

