transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src {/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src/half_adder.v}
vlog -vlog01compat -work work +incdir+/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src {/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src/full_adder_structural.v}

vlog -vlog01compat -work work +incdir+/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/tb {/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/tb/tb_fulladder.v}
vlog -vlog01compat -work work +incdir+/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src {/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src/full_adder_structural.v}
vlog -vlog01compat -work work +incdir+/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src {/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src/half_adder.v}
vlog -vlog01compat -work work +incdir+/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src {/home/prabhat-kulkarni/DSD-Verilog/DSD_verilog/02_Combinational_Logic/src/full_adder_direct.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_fulladder

add wave *
view structure
view signals
run -all
