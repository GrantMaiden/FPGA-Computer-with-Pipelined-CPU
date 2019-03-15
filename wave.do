onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal {/CPU_testbench/instMem[0]}
add wave -noupdate -radix hexadecimal {/CPU_testbench/instMem[1]}
add wave -noupdate -radix hexadecimal {/CPU_testbench/instMem[2]}
add wave -noupdate -radix hexadecimal {/CPU_testbench/instMem[3]}
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/Din1
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/Din2
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/Dout
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/control
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/clk
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/rst
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/run
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/enter
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/ZF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/VF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/CF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/NF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/sumVF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/sumCF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/diffVF
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/diffCF
add wave -noupdate /CPU_testbench/dut/pc
add wave -noupdate /CPU_testbench/dut/instR
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/A
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/unit/B
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
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/rsel1
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/rsel2
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/wsel
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/D
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/read1
add wave -noupdate -radix hexadecimal /CPU_testbench/dut/regs/read2
add wave -noupdate -radix hexadecimal {/CPU_testbench/dut/regs/Q[3]}
add wave -noupdate -radix hexadecimal {/CPU_testbench/dut/regs/Q[2]}
add wave -noupdate -radix hexadecimal {/CPU_testbench/dut/regs/Q[1]}
add wave -noupdate -radix hexadecimal {/CPU_testbench/dut/regs/Q[0]}
add wave -noupdate -radix hexadecimal -childformat {{{/CPU_testbench/dut/dat_mem/stored_memory[127]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[126]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[125]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[124]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[123]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[122]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[121]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[120]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[119]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[118]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[117]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[116]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[115]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[114]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[113]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[112]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[111]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[110]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[109]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[108]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[107]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[106]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[105]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[104]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[103]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[102]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[101]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[100]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[99]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[98]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[97]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[96]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[95]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[94]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[93]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[92]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[91]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[90]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[89]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[88]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[87]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[86]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[85]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[84]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[83]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[82]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[81]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[80]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[79]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[78]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[77]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[76]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[75]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[74]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[73]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[72]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[71]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[70]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[69]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[68]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[67]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[66]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[65]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[64]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[63]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[62]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[61]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[60]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[59]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[58]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[57]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[56]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[55]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[54]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[53]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[52]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[51]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[50]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[49]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[48]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[47]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[46]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[45]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[44]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[43]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[42]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[41]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[40]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[39]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[38]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[37]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[36]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[35]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[34]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[33]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[32]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[31]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[30]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[29]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[28]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[27]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[26]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[25]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[24]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[23]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[22]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[21]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[20]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[19]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[18]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[17]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[16]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[15]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[14]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[13]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[12]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[11]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[10]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[9]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[8]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[7]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[6]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[5]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[4]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[3]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[2]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[1]} -radix hexadecimal} {{/CPU_testbench/dut/dat_mem/stored_memory[0]} -radix hexadecimal}} -expand -subitemconfig {{/CPU_testbench/dut/dat_mem/stored_memory[127]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[126]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[125]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[124]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[123]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[122]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[121]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[120]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[119]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[118]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[117]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[116]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[115]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[114]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[113]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[112]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[111]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[110]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[109]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[108]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[107]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[106]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[105]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[104]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[103]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[102]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[101]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[100]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[99]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[98]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[97]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[96]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[95]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[94]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[93]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[92]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[91]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[90]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[89]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[88]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[87]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[86]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[85]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[84]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[83]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[82]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[81]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[80]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[79]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[78]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[77]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[76]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[75]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[74]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[73]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[72]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[71]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[70]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[69]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[68]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[67]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[66]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[65]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[64]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[63]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[62]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[61]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[60]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[59]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[58]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[57]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[56]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[55]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[54]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[53]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[52]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[51]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[50]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[49]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[48]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[47]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[46]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[45]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[44]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[43]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[42]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[41]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[40]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[39]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[38]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[37]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[36]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[35]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[34]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[33]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[32]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[31]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[30]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[29]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[28]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[27]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[26]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[25]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[24]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[23]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[22]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[21]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[20]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[19]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[18]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[17]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[16]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[15]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[14]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[13]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[12]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[11]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[10]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[9]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[8]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[7]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[6]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[5]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[4]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[3]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[2]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[1]} {-radix hexadecimal} {/CPU_testbench/dut/dat_mem/stored_memory[0]} {-radix hexadecimal}} /CPU_testbench/dut/dat_mem/stored_memory
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {199 ps} 0}
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
WaveRestoreZoom {135 ps} {1655 ps}
