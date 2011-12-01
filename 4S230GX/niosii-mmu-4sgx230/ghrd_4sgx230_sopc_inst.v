  //Example instantiation for system 'ghrd_4sgx230_sopc'
  ghrd_4sgx230_sopc ghrd_4sgx230_sopc_inst
    (
      .aux_scan_clk_from_the_ddr3_top          (aux_scan_clk_from_the_ddr3_top),
      .aux_scan_clk_reset_n_from_the_ddr3_top  (aux_scan_clk_reset_n_from_the_ddr3_top),
      .clkin_100                               (clkin_100),
      .ddr3_top_aux_full_rate_clk_out          (ddr3_top_aux_full_rate_clk_out),
      .ddr3_top_aux_half_rate_clk_out          (ddr3_top_aux_half_rate_clk_out),
      .ddr3_top_phy_clk_out                    (ddr3_top_phy_clk_out),
      .dll_reference_clk_from_the_ddr3_top     (dll_reference_clk_from_the_ddr3_top),
      .dqs_delay_ctrl_export_from_the_ddr3_top (dqs_delay_ctrl_export_from_the_ddr3_top),
      .global_reset_n_to_the_ddr3_top          (global_reset_n_to_the_ddr3_top),
      .in_port_to_the_button_pio               (in_port_to_the_button_pio),
      .in_port_to_the_dipsw_pio                (in_port_to_the_dipsw_pio),
      .led_an_from_the_tse_mac                 (led_an_from_the_tse_mac),
      .led_char_err_from_the_tse_mac           (led_char_err_from_the_tse_mac),
      .led_col_from_the_tse_mac                (led_col_from_the_tse_mac),
      .led_crs_from_the_tse_mac                (led_crs_from_the_tse_mac),
      .led_disp_err_from_the_tse_mac           (led_disp_err_from_the_tse_mac),
      .led_link_from_the_tse_mac               (led_link_from_the_tse_mac),
      .local_init_done_from_the_ddr3_top       (local_init_done_from_the_ddr3_top),
      .local_refresh_ack_from_the_ddr3_top     (local_refresh_ack_from_the_ddr3_top),
      .local_wdata_req_from_the_ddr3_top       (local_wdata_req_from_the_ddr3_top),
      .mdc_from_the_tse_mac                    (mdc_from_the_tse_mac),
      .mdio_in_to_the_tse_mac                  (mdio_in_to_the_tse_mac),
      .mdio_oen_from_the_tse_mac               (mdio_oen_from_the_tse_mac),
      .mdio_out_from_the_tse_mac               (mdio_out_from_the_tse_mac),
      .mem_addr_from_the_ddr3_top              (mem_addr_from_the_ddr3_top),
      .mem_ba_from_the_ddr3_top                (mem_ba_from_the_ddr3_top),
      .mem_cas_n_from_the_ddr3_top             (mem_cas_n_from_the_ddr3_top),
      .mem_cke_from_the_ddr3_top               (mem_cke_from_the_ddr3_top),
      .mem_clk_n_to_and_from_the_ddr3_top      (mem_clk_n_to_and_from_the_ddr3_top),
      .mem_clk_to_and_from_the_ddr3_top        (mem_clk_to_and_from_the_ddr3_top),
      .mem_cs_n_from_the_ddr3_top              (mem_cs_n_from_the_ddr3_top),
      .mem_dm_from_the_ddr3_top                (mem_dm_from_the_ddr3_top),
      .mem_dq_to_and_from_the_ddr3_top         (mem_dq_to_and_from_the_ddr3_top),
      .mem_dqs_to_and_from_the_ddr3_top        (mem_dqs_to_and_from_the_ddr3_top),
      .mem_dqsn_to_and_from_the_ddr3_top       (mem_dqsn_to_and_from_the_ddr3_top),
      .mem_odt_from_the_ddr3_top               (mem_odt_from_the_ddr3_top),
      .mem_ras_n_from_the_ddr3_top             (mem_ras_n_from_the_ddr3_top),
      .mem_reset_n_from_the_ddr3_top           (mem_reset_n_from_the_ddr3_top),
      .mem_we_n_from_the_ddr3_top              (mem_we_n_from_the_ddr3_top),
      .oct_ctl_rs_value_to_the_ddr3_top        (oct_ctl_rs_value_to_the_ddr3_top),
      .oct_ctl_rt_value_to_the_ddr3_top        (oct_ctl_rt_value_to_the_ddr3_top),
      .out_port_from_the_led_pio               (out_port_from_the_led_pio),
      .ref_clk_to_the_tse_mac                  (ref_clk_to_the_tse_mac),
      .reset_n                                 (reset_n),
      .reset_phy_clk_n_from_the_ddr3_top       (reset_phy_clk_n_from_the_ddr3_top),
      .rx_recovclkout_from_the_tse_mac         (rx_recovclkout_from_the_tse_mac),
      .rxd_to_the_uart                         (rxd_to_the_uart),
      .rxp_to_the_tse_mac                      (rxp_to_the_tse_mac),
      .select_n_to_the_ext_flash               (select_n_to_the_ext_flash),
      .select_n_to_the_ext_flash_1             (select_n_to_the_ext_flash_1),
      .tb_fsm_address                          (tb_fsm_address),
      .tb_fsm_data                             (tb_fsm_data),
      .tb_fsm_readn                            (tb_fsm_readn),
      .tb_fsm_writen                           (tb_fsm_writen),
      .txd_from_the_uart                       (txd_from_the_uart),
      .txp_from_the_tse_mac                    (txp_from_the_tse_mac)
    );
