## Generated SDC file "SPI_Slave_Test.out.sdc"

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

## DATE    "Sat Aug 29 17:07:44 2015"

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

create_clock -name {sclk} -period 1.000 -waveform { 0.000 0.500 } [get_ports {sclk}]
create_clock -name {clk} -period 1.000 -waveform { 0.000 0.500 } [get_ports {clk}]
create_clock -name {reset_n} -period 1.000 -waveform { 0.000 0.500 } [get_ports {reset_n}]
create_clock -name {ss_n} -period 1.000 -waveform { 0.000 0.500 } [get_ports {ss_n}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {reset_n}] -rise_to [get_clocks {reset_n}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {reset_n}] -fall_to [get_clocks {reset_n}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {reset_n}] -rise_to [get_clocks {ss_n}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {reset_n}] -fall_to [get_clocks {ss_n}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {reset_n}] -rise_to [get_clocks {clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {reset_n}] -fall_to [get_clocks {clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {reset_n}] -rise_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {reset_n}] -fall_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {reset_n}] -rise_to [get_clocks {reset_n}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {reset_n}] -fall_to [get_clocks {reset_n}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {reset_n}] -rise_to [get_clocks {ss_n}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {reset_n}] -fall_to [get_clocks {ss_n}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {reset_n}] -rise_to [get_clocks {clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {reset_n}] -fall_to [get_clocks {clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {reset_n}] -rise_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {reset_n}] -fall_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {ss_n}] -rise_to [get_clocks {clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {ss_n}] -fall_to [get_clocks {clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {ss_n}] -rise_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {ss_n}] -fall_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {ss_n}] -rise_to [get_clocks {clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {ss_n}] -fall_to [get_clocks {clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {ss_n}] -rise_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {ss_n}] -fall_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {reset_n}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {reset_n}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {ss_n}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {ss_n}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {reset_n}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {reset_n}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {ss_n}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {ss_n}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {sclk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {sclk}] -rise_to [get_clocks {ss_n}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {sclk}] -fall_to [get_clocks {ss_n}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {sclk}] -rise_to [get_clocks {clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {sclk}] -fall_to [get_clocks {clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {sclk}] -rise_to [get_clocks {ss_n}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {sclk}] -fall_to [get_clocks {ss_n}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {sclk}] -rise_to [get_clocks {clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {sclk}] -fall_to [get_clocks {clk}]  0.030  


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

