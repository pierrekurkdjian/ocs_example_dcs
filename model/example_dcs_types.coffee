

StructType "example_hmi_buttons",
    desc: "digital inputs corresponding to pressed buttons"
    elements:
        red_push_button:   { desc: "RED Push Button",       type: "bool",     units: "" }
        green_push_button: { desc: "GREEN Push Button",     type: "bool",     units: "" }
        emergency_button:  { desc: "Emergency Button",      type: "bool",     units: "" }

StructType "example_motor_status",
    desc: "status of motor device"
    elements:
        ready:             { desc: "Axis Ready",            type: "bool",     units: "" }
        enabled:           { desc: "Axis Enabled",          type: "bool",     units: "" }
        warning:           { desc: "Axis Warning",          type: "bool",     units: "" }
        error:             { desc: "Axis Error",            type: "bool",     units: "" }
        moving_positive:   { desc: "Axis Moving +",         type: "bool",     units: "" }
        moving_negative:   { desc: "Axis Moving -",         type: "bool",     units: "" }

StructType "example_hmi",
    desc:    "Example HMI devices state"
    elements:
        input:             {desc: 'HMI input devices state',  type: 'example_hmi_buttons'}
        # output:            {desc: 'HMI output devices state', type: 'example_hmi_leds'}

StructType "example_motor_control",
    desc:    "motor control"
    elements:
        enable:            { desc: "Axis Enable",           type: "bool",     units: "" }
        reset:             { desc: "Axis Reset",            type: "bool",     units: "" }
        velocity:          { desc: "Velocity",              type: "int16",  units: "steps/s2" }

StructType "example_motor",
    desc:    "Example motor devices state"
    elements:
        state:             {desc: 'HMI motor devices state',   type: 'example_motor_status'}
        command:           {desc: 'HMI motor devices command', type: 'example_motor_control'}
