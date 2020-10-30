
Adapter            'example_hw_adapter',
    info:          'Example Hw Adapter'
    desc:          'This component defines the interface with the Example Actuators and Sensors'
    abstract:      false
    extends:       ['EthercatAdapter']
    uses:          ["ocs_core_fwk", "ocs_io_fwk"]

    inputs:
        motor_ctrl:       { type: 'example_motor_control',     max_rate: 1000,   desc: 'motor control' }

    outputs:
        operator_buttons: { type: 'example_hmi_buttons',       max_rate: 1000, desc: 'Human Machine Interface (HMI) digital inputs' }
        motor_state:      { type: 'example_motor_status',      max_rate: 1000, desc: 'motor state' }

    data_object_map: [
        # input ports / rx_pdos
        { data_object: "motor_enable",             port: "motor_ctrl",          field: "value.enable" }
        { data_object: "motor_reset",              port: "motor_ctrl",          field: "value.reset" }
        { data_object: "motor_velocity",           port: "motor_ctrl",          field: "value.velocity" }
        # ouput ports / tx_pdos
        { data_object: "red_push_button",          port: "operator_buttons",    field: "value.red_push_button" }
        { data_object: "green_push_button",        port: "operator_buttons",    field: "value.green_push_button" }
        { data_object: "emergency_button",         port: "operator_buttons",    field: "value.emergency_button" }

        { data_object: "motor_ready",              port: "motor_state",         field: "value.ready" }
        { data_object: "motor_enabled",            port: "motor_state",         field: "value.enabled" }
        { data_object: "motor_warning",            port: "motor_state",         field: "value.warning" }
        { data_object: "motor_error",              port: "motor_state",         field: "value.error" }
        { data_object: "motor_moving_positive",    port: "motor_state",         field: "value.moving_positive" }
        { data_object: "motor_moving_negative",    port: "motor_state",         field: "value.moving_negative" }
    ]

    properties:
        uri:       {default: "gmt://127.0.0.1/example_dcs"}
        name:      {default: "example_hw_adapter"}
        host:      {default: "127.0.0.1"}
        port:      {default: 9010}
        scan_rate: {default: 100}

    instance_configurations: ['example_hw1_adapter']
