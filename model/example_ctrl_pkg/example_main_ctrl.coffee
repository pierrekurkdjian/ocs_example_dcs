Controller         'example_main_ctrl',
    info:          'Example main Controller'
    desc:          'This component implements the control of the Example'
    extends:       ['BaseController']
    abstract:      false
    uses:          ["ocs_core_fwk", "ocs_ctrl_fwk"]

    instances:     1
    c_factor:      1
    r_factor:      1
    procurement:   "swc"
    phase:         "design"
    resource:      "labor"
    assignee:      "person1"
    fte_perc:      "100"
    status:        "DONE"
    activity_type: "activity"
    release:       [1]
    stage:         "1"

    state_vars:
        motor:
            desc:               'motor device state'
            type:               'example_motor'
            max_rate:           1000
            blocking_mode:      'sync'
            is_controllable:    false

    inputs:
        hmi_inputs_val:
            desc:            'HMI operation buttons'
            type:            'example_hmi_buttons'
            max_rate:        1000
            storage:         100

        motor_state_val:
            desc:            'motor state'
            type:            'example_motor_status'
            max_rate:        1000
            storage:         100

    outputs:
        motor_ctrl_req:
            type:            'example_motor_control'
            max_rate:        1000
            desc:            'motor control'
            storage:         100

    properties:
        uri:       {default: "gmt://127.0.0.1/example_dcs"}
        name:      {default: "example_main_ctrl"}
        host:      {default: "127.0.0.1"}
        port:      {default: 8010}
        scan_rate: {default: 100}

    instance_configurations: ['example_main_ctrl']
