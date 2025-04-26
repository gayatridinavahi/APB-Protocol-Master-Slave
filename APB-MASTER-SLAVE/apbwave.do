onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb/clk
add wave -noupdate -format Logic -radix unsigned /tb/rst
add wave -noupdate -format Logic -radix unsigned /tb/start_valid
add wave -noupdate -format Logic -radix unsigned /tb/st_wr_rd
add wave -noupdate -format Literal -radix unsigned /tb/wr_data
add wave -noupdate -format Literal -radix unsigned /tb/wr_addr
add wave -noupdate -format Literal -radix unsigned /tb/rd_addr
add wave -noupdate -format Literal -radix unsigned /tb/rd_data
add wave -noupdate -format Logic -radix unsigned /tb/TOP/clk
add wave -noupdate -format Logic -radix unsigned /tb/TOP/rst
add wave -noupdate -format Logic -radix unsigned /tb/TOP/start_valid
add wave -noupdate -format Logic -radix unsigned /tb/TOP/st_wr_rd
add wave -noupdate -format Literal -radix unsigned /tb/TOP/wr_data
add wave -noupdate -format Literal -radix unsigned /tb/TOP/wr_addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/rd_addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/rd_data
add wave -noupdate -format Literal -radix unsigned /tb/TOP/PADDR
add wave -noupdate -format Literal -radix unsigned /tb/TOP/PDATA
add wave -noupdate -format Literal -radix unsigned /tb/TOP/PRDATA
add wave -noupdate -format Logic -radix unsigned /tb/TOP/PWRITE
add wave -noupdate -format Logic -radix unsigned /tb/TOP/PSEL
add wave -noupdate -format Logic -radix unsigned /tb/TOP/PENABLE
add wave -noupdate -format Logic -radix unsigned /tb/TOP/PREADY
add wave -noupdate -format Literal -radix unsigned /tb/TOP/reg_data_out
add wave -noupdate -format Logic -radix unsigned /tb/TOP/wr_en
add wave -noupdate -format Logic -radix unsigned /tb/TOP/rd_en
add wave -noupdate -format Literal -radix unsigned /tb/TOP/addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/data_in
add wave -noupdate -format Logic -radix unsigned /tb/TOP/REGISTER/clk
add wave -noupdate -format Logic -radix unsigned /tb/TOP/REGISTER/rst
add wave -noupdate -format Logic -radix unsigned /tb/TOP/REGISTER/wr_en
add wave -noupdate -format Logic -radix unsigned /tb/TOP/REGISTER/rd_en
add wave -noupdate -format Literal -radix unsigned /tb/TOP/REGISTER/addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/REGISTER/data_in
add wave -noupdate -format Literal -radix unsigned /tb/TOP/REGISTER/data_out
add wave -noupdate -format Literal -radix unsigned /tb/TOP/REGISTER/regA
add wave -noupdate -format Literal -radix unsigned /tb/TOP/REGISTER/regB
add wave -noupdate -format Logic -radix unsigned /tb/TOP/MASTER/clk
add wave -noupdate -format Logic -radix unsigned /tb/TOP/MASTER/rst
add wave -noupdate -format Logic -radix unsigned /tb/TOP/MASTER/start_valid
add wave -noupdate -format Logic -radix unsigned /tb/TOP/MASTER/st_wr_rd
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/wr_data
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/rd_data
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/wr_addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/rd_addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/PADDR
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/PDATA
add wave -noupdate -format Logic -radix unsigned /tb/TOP/MASTER/PWRITE
add wave -noupdate -format Logic -radix unsigned /tb/TOP/MASTER/PSEL
add wave -noupdate -format Logic -radix unsigned /tb/TOP/MASTER/PENABLE
add wave -noupdate -format Logic -radix unsigned /tb/TOP/MASTER/PREADY
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/PRDATA
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/write_data
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/write_addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/read_data
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/read_addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/m_current_state
add wave -noupdate -format Literal -radix unsigned /tb/TOP/MASTER/m_next_state
add wave -noupdate -format Logic -radix unsigned /tb/TOP/SLAVE/PCLK
add wave -noupdate -format Logic -radix unsigned /tb/TOP/SLAVE/PRESETn
add wave -noupdate -format Logic -radix unsigned /tb/TOP/SLAVE/PSEL
add wave -noupdate -format Logic -radix unsigned /tb/TOP/SLAVE/PENABLE
add wave -noupdate -format Logic -radix unsigned /tb/TOP/SLAVE/PWRITE
add wave -noupdate -format Literal -radix unsigned /tb/TOP/SLAVE/PADDR
add wave -noupdate -format Literal -radix unsigned /tb/TOP/SLAVE/PWDATA
add wave -noupdate -format Literal -radix unsigned /tb/TOP/SLAVE/PRDATA
add wave -noupdate -format Logic -radix unsigned /tb/TOP/SLAVE/PREADY
add wave -noupdate -format Logic -radix unsigned /tb/TOP/SLAVE/wr_en
add wave -noupdate -format Logic -radix unsigned /tb/TOP/SLAVE/rd_en
add wave -noupdate -format Literal -radix unsigned /tb/TOP/SLAVE/addr
add wave -noupdate -format Literal -radix unsigned /tb/TOP/SLAVE/data_in
add wave -noupdate -format Literal -radix unsigned /tb/TOP/SLAVE/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {215 ps} 0}
configure wave -namecolwidth 231
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {419 ps}
