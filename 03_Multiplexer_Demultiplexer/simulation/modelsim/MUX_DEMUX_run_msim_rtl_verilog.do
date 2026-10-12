transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/03_Multiplexer_Demultiplexer/src {/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/03_Multiplexer_Demultiplexer/src/mux_direct_2.v}
vlog -vlog01compat -work work +incdir+/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/03_Multiplexer_Demultiplexer/src {/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/03_Multiplexer_Demultiplexer/src/mux_structural_4.v}

