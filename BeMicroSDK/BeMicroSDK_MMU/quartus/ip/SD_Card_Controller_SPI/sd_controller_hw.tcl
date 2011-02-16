# TCL File Generated by Component Editor 7.2sp1 on:
# Mon Feb 25 15:25:34 PST 2008
# DO NOT MODIFY

set_source_file "sd_controller.v"
set_module "sd_controller"
set_module_description ""
set_module_property "author" "Nate Knight"
set_module_property "displayName" "SD Card Controller (SPI)"
set_module_property "editable" "true"
set_module_property "group" "Memories and Memory Controllers/SD Card"
set_module_property "instantiateInSystemModule" "true"
#set_module_property "synthesisFiles" [ list "sd_controller.v" "sd_data_ram.v" ]
set_module_property "version" "7.2"

# Module parameters
#add_parameter "IDLE" "integer" "0" ""
#set_parameter_property "IDLE" "enabled" "false"
#add_parameter "SHIFT_OUT_CMD" "integer" "1" ""
#set_parameter_property "SHIFT_OUT_CMD" "enabled" "false"
#add_parameter "WAIT_FOR_RSP_START" "integer" "2" ""
#set_parameter_property "WAIT_FOR_RSP_START" "enabled" "false"
#add_parameter "SHIFT_IN_CMD_RSP" "integer" "3" ""
#set_parameter_property "SHIFT_IN_CMD_RSP" "enabled" "false"
#add_parameter "WAIT_FOR_DATA_START" "integer" "4" ""
#set_parameter_property "WAIT_FOR_DATA_START" "enabled" "false"
#add_parameter "SHIFT_IN_DATA" "integer" "5" ""
#set_parameter_property "SHIFT_IN_DATA" "enabled" "false"
#add_parameter "SHIFT_IN_CRC16" "integer" "6" ""
#set_parameter_property "SHIFT_IN_CRC16" "enabled" "false"
#add_parameter "SHIFT_OUT_DATA_TOKEN" "integer" "7" ""
#set_parameter_property "SHIFT_OUT_DATA_TOKEN" "enabled" "false"
#add_parameter "SHIFT_OUT_DATA" "integer" "8" ""
#set_parameter_property "SHIFT_OUT_DATA" "enabled" "false"
#add_parameter "SHIFT_OUT_CRC16" "integer" "9" ""
#set_parameter_property "SHIFT_OUT_CRC16" "enabled" "false"
#add_parameter "SHIFT_IN_DATA_RSP" "integer" "10" ""
#set_parameter_property "SHIFT_IN_DATA_RSP" "enabled" "false"
#add_parameter "DATA_BUSY" "integer" "11" ""
#set_parameter_property "DATA_BUSY" "enabled" "false"
#add_parameter "ERROR_STATE" "integer" "12" ""
#set_parameter_property "ERROR_STATE" "enabled" "false"
#add_parameter "WAIT" "integer" "13" ""
#set_parameter_property "WAIT" "enabled" "false"

# Interface global_signals_clock
add_interface "global_signals_clock" "clock" "sink" "asynchronous"
# Ports in interface global_signals_clock
add_port_to_interface "global_signals_clock" "clk" "clk"
add_port_to_interface "global_signals_clock" "reset_n" "reset_n"

# Interface avalon_slave
add_interface "avalon_slave" "avalon" "slave" "global_signals_clock"
set_interface_property "avalon_slave" "isNonVolatileStorage" "false"
set_interface_property "avalon_slave" "burstOnBurstBoundariesOnly" "false"
set_interface_property "avalon_slave" "readLatency" "0"
set_interface_property "avalon_slave" "holdTime" "0"
set_interface_property "avalon_slave" "printableDevice" "false"
set_interface_property "avalon_slave" "readWaitTime" "1"
set_interface_property "avalon_slave" "setupTime" "0"
set_interface_property "avalon_slave" "addressAlignment" "DYNAMIC"
set_interface_property "avalon_slave" "writeWaitTime" "1"
set_interface_property "avalon_slave" "timingUnits" "Cycles"
set_interface_property "avalon_slave" "minimumUninterruptedRunLength" "1"
set_interface_property "avalon_slave" "isMemoryDevice" "true"
set_interface_property "avalon_slave" "linewrapBursts" "false"
set_interface_property "avalon_slave" "writeWaitStates" "1"
set_interface_property "avalon_slave" "maximumPendingReadTransactions" "0"
# Ports in interface avalon_slave
add_port_to_interface "avalon_slave" "avalon_slave_address" "address"
add_port_to_interface "avalon_slave" "avalon_slave_readdata" "readdata"
add_port_to_interface "avalon_slave" "avalon_slave_writedata" "writedata"
add_port_to_interface "avalon_slave" "avalon_slave_write" "write"
add_port_to_interface "avalon_slave" "avalon_slave_read" "read"
add_port_to_interface "avalon_slave" "avalon_slave_chipselect" "chipselect"
add_port_to_interface "avalon_slave" "avalon_slave_byteenable" "byteenable"

# Interface avalon_slave_export
add_interface "avalon_slave_export" "conduit" "start" "global_signals_clock"
# Ports in interface avalon_slave_export
add_port_to_interface "avalon_slave_export" "spi_data_out" "export"
add_port_to_interface "avalon_slave_export" "spi_data_in" "export"
add_port_to_interface "avalon_slave_export" "spi_cs_n" "export"
add_port_to_interface "avalon_slave_export" "spi_clk" "export"
