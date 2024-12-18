set disassembly-flavor intel

tui enable

tui new-layout asm_regs {-horizontal asm 1 regs 1} 2 status 0 cmd 1
tui new-layout regs_asm_src {-horizontal regs 2 asm 3 src 2 } 2 status 0 cmd 1
tui new-layout nested_mix_split {-horizontal regs 1 {src 1 asm 2} 3} 2 status 0 cmd 1

tui new-layout dhs_ra_sc {-horizontal regs 2 asm 3} 2 {-horizontal src 2 {status 1 cmd 1} 3} 1
tui new-layout dhs_rs_ac {-horizontal regs 2 src 3 } 3 {-horizontal asm 2 {status 1 cmd 1} 3 } 4

# bugs
tui new-layout regs_asm_src_cmd {-horizontal regs 2 asm 3 src 2 } 2 {-horizontal cmd 1 status 0} 1
#tui new-layout bug { -horizontal regs 2 { src 1 asm 2 } } 2 status 0 cmd 1 # crushes gdb
#tui new-layout bug { -horizontal regs 2 {src 1 asm 2} } 0  status 0 cmd 1
#tui new-layout dhs {-horizontal src 2 asm 3 regs 2 } 2 {-horizontal {status 1 cmd 1} } 1

tui layout dhs_rs_ac
focus asm
