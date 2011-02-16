create_module accelerator_FIR_FIR_HW accelerator_FIR_FIR_HW_managed_instance
create_connection accelerator_FIR_FIR_HW_managed_instance.dummy_master/accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_output_buffer_internal_memory0_slave
create_connection accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_master_resource0/accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_output_buffer_internal_memory0_slave
create_connection accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_master_resource1/sdram.avalon_slave_0
set_parameter accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_master_resource1/sdram.avalon_slave_0 arbitrationPriority 64
create_connection accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_master_resource3/sdram.avalon_slave_0
set_parameter accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_master_resource3/sdram.avalon_slave_0 arbitrationPriority 64
create_connection accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_master_resource2/accelerator_FIR_FIR_HW_managed_instance.accelerator_FIR_FIR_HW_output_buffer_internal_memory0_slave
create_connection accelerator_FIR_FIR_HW_managed_instance.dummy_master/accelerator_FIR_FIR_HW_managed_instance.dummy_slave
create_connection accelerator_FIR_FIR_HW_managed_instance.internal_master0/accelerator_FIR_FIR_HW_managed_instance.sub_FIR_HW0
create_connection cpu_0.data_master/accelerator_FIR_FIR_HW_managed_instance.cpu_interface0
create_connection pll_0.c0/accelerator_FIR_FIR_HW_managed_instance.clock
create_connection pll_0.c0/accelerator_FIR_FIR_HW_managed_instance.cpu_clock
auto_assign_base_addresses accelerator_FIR_FIR_HW_managed_instance
set_avalon_base_address accelerator_FIR_FIR_HW_managed_instance.sub_FIR_HW0 0

