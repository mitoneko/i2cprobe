create_clock -name clk_i -period 20.000 [get_ports {clk_i}]
derive_pll_clocks 
derive_clock_uncertainty 
set_false_path -from [get_ports {key[0] key[1] key[2] key[3] sw[0] sw[1] sw[2] sw[3] sw[4] sw[5] sw[6] sw[7] sw[8] sw[9]}]
set_false_path -to [get_ports {hex0[0] hex0[1] hex0[2] hex0[3] hex0[4] hex0[5] hex0[6] hex1[0] hex1[1] hex1[2] hex1[3] hex1[4] hex1[5] hex1[6] hex2[0] hex2[1] hex2[2] hex2[3] hex2[4] hex2[5] hex2[6] hex3[0] hex3[1] hex3[2] hex3[3] hex3[4] hex3[5] hex3[6] hex4[0] hex4[1] hex4[2] hex4[3] hex4[4] hex4[5] hex4[6] hex5[0] hex5[1] hex5[2] hex5[3] hex5[4] hex5[5] hex5[6] led[0] led[1] led[2] led[3] led[4] led[5] led[6] led[7] led[8] led[9]}]
set_false_path -from [get_ports {scl sda}]
set_false_path -to [get_ports {scl sda}]