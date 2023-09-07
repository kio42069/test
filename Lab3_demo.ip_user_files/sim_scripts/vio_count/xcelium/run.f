-makelib xcelium_lib/xil_defaultlib -sv \
  "X:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "X:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Lab3_demo.srcs/sources_1/ip/vio_count/sim/vio_count.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

