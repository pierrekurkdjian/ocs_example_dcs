module.exports =

    info:    "Main Example EtherCAT bus"
    desc:    "Main Example EtherCAT bus"

    masters: [
            { id: 0, rate: 1000 }
        ]

    domains: [
        { id: 0, master: 0,   rate: 1    }
        { id: 1, master: 0,   rate: 10   }
    ]

    slaves: [
        { name: "dig_inp", position: 1, alias: 0, type: "EL1008-00110000" }
        { name: "motor",   position: 6, alias: 0, type: "EL7041-00170000" }
    ]


    data_objects: [
        { name: "red_push_button",       type: "tx_pdo", label: "RED Push Button",   std_name: "Channel 1 : Input",                         module: 1, domain: 0 }
        { name: "green_push_button",     type: "tx_pdo", label: "GREEN Push Button", std_name: "Channel 2 : Input",                         module: 1, domain: 0 }
        { name: "emergency_button",      type: "tx_pdo", label: "Emergency Button",  std_name: "Channel 3 : Input",                         module: 1, domain: 0 }

        { name: "motor_enabled",         type: "tx_pdo", label: "Axis Ready",        std_name: "STM Status : Status__Ready to enable",      module: 6, domain: 0 }
        { name: "motor_ready",           type: "tx_pdo", label: "Axis Enabled",      std_name: "STM Status : Status__Ready",                module: 6, domain: 0 }
        { name: "motor_warning",         type: "tx_pdo", label: "Axis Warning",      std_name: "STM Status : Status__Warning",              module: 6, domain: 0 }
        { name: "motor_error",           type: "tx_pdo", label: "Axis Error",        std_name: "STM Status : Status__Error",                module: 6, domain: 0 }
        { name: "motor_moving_positive", type: "tx_pdo", label: "Axis Moving +",     std_name: "STM Status : Status__Moving positive",      module: 6, domain: 0 }
        { name: "motor_moving_negative", type: "tx_pdo", label: "Axis Moving -",     std_name: "STM Status : Status__Moving negative",      module: 6, domain: 0 }

        { name: "motor_enable",          type: "rx_pdo", label: "Axis Enable",       std_name: "STM Control : Control__Enable",             module: 6, domain: 0 }
        { name: "motor_reset",           type: "rx_pdo", label: "Axis Reset",        std_name: "STM Control : Control__Reset",              module: 6, domain: 0 }
        { name: "motor_velocity",        type: "rx_pdo", label: "Velocity",          std_name: "STM Velocity : Velocity",                   module: 6, domain: 0 }
    ]
