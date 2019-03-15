# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.
vlog "./memory.sv"
vlog "./single_cycle_CPU.sv"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
vsim -voptargs="+acc" -t 1ps -lib work mux2_1_testbench

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
do mux2_1_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
