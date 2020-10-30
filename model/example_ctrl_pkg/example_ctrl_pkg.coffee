
Package   'example_ctrl_pkg',
    info: 'Example Controller Package'
    desc: 'Example Controller Package'
    uses: ["ocs_core_fwk"]

    applications:
        main: { desc: "Example Controller package application" }

    connectors:

        example_buttons_connector:
            name:            'example_buttons_connector'
            blocking_mode:   'sync'
            url:             'tcp://127.0.0.1:8101'
            max_latency:     0.5
            nom_rate:        1
            owner:           'example_hw1_adapter'
            endpoints:       [{ role: 'pull', element: "example_main_ctrl",    path: "inputs/hmi_inputs_val/value"}
                              { role: 'push', element: "example_hw1_adapter",      path: "outputs/operator_buttons/value"}]

        example_motor_state_connector:
            name:            'example_motor_state_connector'
            blocking_mode:   'sync'
            url:             'tcp://127.0.0.1:8103'
            max_latency:     0.5
            nom_rate:        1
            owner:           'example_hw1_adapter'
            endpoints:       [{ role: 'pull', element: "example_main_ctrl",    path: "inputs/motor_state_val/value"}
                              { role: 'push', element: "example_hw1_adapter",      path: "outputs/motor_state/value"}]

        example_motor_ctrl_connector:
            name:            'example_motor_ctrl_connector'
            blocking_mode:   'sync'
            url:             'tcp://127.0.0.1:8105'
            max_latency:     0.5
            nom_rate:        1
            owner:           'example_main_ctrl'
            endpoints:       [{ role: 'pull', element: "example_hw1_adapter",    path: "inputs/motor_ctrl/value"}
                              { role: 'push', element: "example_main_ctrl",      path: "outputs/motor_ctrl_req/value"}]
