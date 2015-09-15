transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/johnj/Documents/Development/FPGA/FPGA-Projects/Projects/RAM/SRAM/sram_test/sram_test.vhd}
vcom -93 -work work {C:/Users/johnj/Documents/Development/FPGA/FPGA-Projects/Projects/RAM/SRAM/sram_test/SRAM_controller.vhd}

