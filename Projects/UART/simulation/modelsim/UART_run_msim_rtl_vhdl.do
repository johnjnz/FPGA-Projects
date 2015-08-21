transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/altera/FPGA-Projects/Projects/UART/lcd_controller.vhd}
vcom -93 -work work {D:/altera/FPGA-Projects/Projects/UART/TX.vhd}
vcom -93 -work work {D:/altera/FPGA-Projects/Projects/UART/UART.vhd}
vcom -93 -work work {D:/altera/FPGA-Projects/Projects/UART/RX.vhd}

