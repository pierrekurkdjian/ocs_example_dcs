DCS       'example_dcs',
    info: 'Hardware Developer Kit Control System'
    desc: require './example_dcs.rst'

    uses:  [
        "ocs_core_fwk"
        "ocs_ctrl_fwk"
    ]

    types: [
        "example_hmi_buttons"
        "example_motor_status"
        "example_motor_control"
        "example_hmi"
        "example_motor"
    ]
