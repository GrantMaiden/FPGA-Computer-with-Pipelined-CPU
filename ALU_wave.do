onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /ALU_testbench/Din1
add wave -noupdate -radix hexadecimal /ALU_testbench/Din2
add wave -noupdate -radix hexadecimal /ALU_testbench/Dout
add wave -noupdate -radix hexadecimal /ALU_testbench/control
add wave -noupdate -radix hexadecimal /ALU_testbench/clk
add wave -noupdate -radix hexadecimal /ALU_testbench/rst
add wave -noupdate -radix hexadecimal /ALU_testbench/enter
add wave -noupdate -radix hexadecimal /ALU_testbench/run
add wave -noupdate -radix hexadecimal /ALU_testbench/ZF
add wave -noupdate -radix hexadecimal /ALU_testbench/VF
add wave -noupdate -radix hexadecimal /ALU_testbench/CF
add wave -noupdate -radix hexadecimal /ALU_testbench/NF
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/control
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/clk
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/rst
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/run
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/enter
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/ZF
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/VF
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/CF
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/NF
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/result
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/OpdA
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/OpdB
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/OpR
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/signExt
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/sum
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/diff
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/bitand
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/bitor
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/bitxor
add wave -noupdate -radix hexadecimal /ALU_testbench/dut/lshift
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {338 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 172
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 50
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {3518 ps}
