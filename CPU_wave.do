onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/Dout
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/inst_decoder/inst
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/inst_decoder/ALU_control
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/inst_decoder/op
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/Din1
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/Din2
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/Dout
add wave -noupdate -radix hexadecimal -childformat {{{/CPU_testbench/dut/unit/control[2]} -radix hexadecimal} {{/CPU_testbench/dut/unit/control[1]} -radix hexadecimal} {{/CPU_testbench/dut/unit/control[0]} -radix hexadecimal}} -subitemconfig {{/CPU_testbench/dut/unit/control[2]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/unit/control[1]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/unit/control[0]} {-height 15 -radix hexadecimal}} /CPU_testbench/dut/unit/control
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/Rm
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/Rn
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/Rd
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/clk
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/rst
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/run
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/ZF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/VF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/CF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/NF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/sumVF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/sumCF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/diffVF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/diffCF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/data_local_data
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/data_inout
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/data_address
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/data_en
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/data_RW
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/data_cs
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/instR
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/pc
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/result
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/OpR
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/signExt
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/OpdA
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/OpdB
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/sum
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/diff
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/bitand
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/bitor
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/bitxor
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/lshift
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/en
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/rsel1
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/rsel2
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/wsel
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/D
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/read1
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/read2
add wave -noupdate -radix hexadecimal -childformat {{{/CPU_testbench/dut/regs/Q[31]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[30]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[29]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[28]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[27]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[26]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[25]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[24]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[23]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[22]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[21]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[20]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[19]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[18]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[17]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[16]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[15]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[14]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[13]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[12]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[11]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[10]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[9]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[8]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[7]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[6]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[5]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[4]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[3]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[2]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[1]} -radix hexadecimal} {{/CPU_testbench/dut/regs/Q[0]} -radix hexadecimal}} -expand -subitemconfig {{/CPU_testbench/dut/regs/Q[31]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[30]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[29]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[28]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[27]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[26]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[25]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[24]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[23]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[22]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[21]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[20]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[19]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[18]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[17]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[16]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[15]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[14]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[13]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[12]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[11]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[10]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[9]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[8]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[7]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[6]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[5]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[4]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[3]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[2]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[1]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/regs/Q[0]} {-height 15 -radix hexadecimal}} /CPU_testbench/dut/regs/Q
add wave -noupdate -radix hexadecimal -childformat {{{/CPU_testbench/dut/dat_mem/stored_memory[127]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[126]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[125]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[124]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[123]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[122]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[121]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[120]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[119]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[118]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[117]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[116]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[115]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[114]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[113]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[112]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[111]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[110]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[109]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[108]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[107]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[106]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[105]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[104]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[103]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[102]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[101]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[100]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[99]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[98]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[97]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[96]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[95]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[94]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[93]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[92]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[91]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[90]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[89]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[88]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[87]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[86]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[85]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[84]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[83]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[82]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[81]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[80]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[79]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[78]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[77]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[76]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[75]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[74]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[73]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[72]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[71]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[70]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[69]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[68]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[67]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[66]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[65]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[64]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[63]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[62]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[61]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[60]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[59]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[58]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[57]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[56]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[55]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[54]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[53]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[52]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[51]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[50]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[49]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[48]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[47]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[46]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[45]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[44]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[43]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[42]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[41]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[40]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[39]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[38]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[37]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[36]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[35]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[34]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[33]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[32]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[31]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[30]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[29]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[28]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[27]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[26]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[25]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[24]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[23]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[22]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[21]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[20]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[19]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[18]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[17]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[16]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[15]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[14]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[13]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[12]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[11]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[10]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[9]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[8]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[7]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[6]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[5]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[4]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[3]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[2]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[1]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[0]} -radix hexadecimal}} -expand -subitemconfig {{/CPU_testbench/dut/dat_mem/stored_memory[127]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[126]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[125]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[124]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[123]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[122]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[121]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[120]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[119]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[118]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[117]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[116]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[115]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[114]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[113]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[112]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[111]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[110]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[109]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[108]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[107]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[106]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[105]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[104]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[103]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[102]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[101]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[100]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[99]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[98]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[97]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[96]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[95]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[94]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[93]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[92]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[91]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[90]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[89]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[88]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[87]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[86]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[85]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[84]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[83]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[82]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[81]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[80]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[79]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[78]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[77]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[76]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[75]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[74]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[73]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[72]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[71]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[70]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[69]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[68]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[67]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[66]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[65]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[64]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[63]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[62]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[61]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[60]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[59]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[58]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[57]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[56]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[55]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[54]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[53]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[52]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[51]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[50]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[49]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[48]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[47]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[46]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[45]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[44]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[43]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[42]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[41]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[40]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[39]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[38]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[37]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[36]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[35]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[34]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[33]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[32]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[31]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[30]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[29]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[28]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[27]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[26]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[25]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[24]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[23]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[22]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[21]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[20]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[19]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[18]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[17]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[16]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[15]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[14]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[13]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[12]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[11]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[10]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[9]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[8]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[7]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[6]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[5]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[4]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[3]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[2]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[1]} {-height 15 -radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[0]} {-height 15 -radix hexadecimal}} /CPU_testbench/dut/dat_mem/stored_memory
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {627 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 246
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
WaveRestoreZoom {0 ps} {8768 ps}
