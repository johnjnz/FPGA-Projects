transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/altera/FPGA-Projects/Projects/de2_clock/seven_segment_display.vhd}
vcom -93 -work work {D:/altera/FPGA-Projects/Projects/de2_clock/DE2_CLOCK.vhd}

