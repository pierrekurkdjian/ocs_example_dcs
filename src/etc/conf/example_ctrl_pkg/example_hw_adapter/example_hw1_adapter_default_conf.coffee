# Component example_hw1_adapter instance configuration file (generated from model)

module.exports =
    properties:
        uri:
            type: 'string'
            desc: 'Uri path for the component'
            name: 'uri'
            default_value: 'gmt://127.0.0.1/example_dcs/example_hw1_adapter'
        name:
            type: 'string'
            desc: 'Name the component'
            name: 'name'
            default_value: 'example_hw1_adapter'
        host:
            type: 'string'
            desc: 'Default host for deployment.'
            name: 'host'
            default_value: '127.0.0.1'
        port:
            type: 'integer'
            desc: 'Default configuration port'
            name: 'port'
            default_value: 9020
        scan_rate:
            type: 'float'
            desc: 'The scanning rate of the component loop in Hz. In each iteration of the loop the component must process its ports and health status. The estimation of the state variables, is defined by the state variable sampling rate and it may use an estimation model. The control of the state variable is defined by the state variable control rate. It must calculate the control output, if necessary with a control model. The scanning rate shall be always higher that the maximum of the sampling or control rate of any of its states variables'
            name: 'scan_rate'
            default_value: 100
        acl:
            type: 'string'
            desc: 'Access Control List. List of namespaces that can issue a command to the controller. TBC'
            name: 'acl'
            default_value: 'PRIVATE'
        priority:
            type: 'integer'
            min: 0
            max: 100
            desc: "The priority property defines the relative priority between Component running in different Threads. The priority shall be interpreted higher when the value is higher. This property can be used by implementations that support real time behavior. When the property value is 0 the Component doesn't require any real-time consideration by the implementation"
            name: 'priority'
            default_value: 0
        ecat_catalog_file:
            type: 'String'
            desc: 'Name of the Ethercat catalog file'
            name: 'ecat_catalog_file'
            default_value: 'catalog'
        ecat_fieldbus_file:
            type: 'String'
            desc: 'Name of the fieldbus configuration of the Ethercat field bus'
            name: 'ecat_fieldbus_file'
            default_value: 'fieldbus'
    inputs:
        motor_ctrl:
            type: 'example_motor_control'
            max_rate: 1000
            desc: 'motor control'
            name: 'motor_ctrl'
    outputs:
        operator_buttons:
            type: 'example_hmi_buttons'
            max_rate: 1000
            desc: 'Human Machine Interface (HMI) digital inputs'
            name: 'operator_buttons'
        motor_state:
            type: 'example_motor_status'
            max_rate: 1000
            desc: 'motor state'
            name: 'motor_state'
    state_vars:
        op_state:
            type: 'OpState'
            max_rate: 1
            sampling_rate: 1
            is_controllable: true
            desc: 'Operational Mode State Variable'
            name: 'op_state'
            default_value: 'OFF'
        ethercat_state:
            type: 'ethercat_master_state'
            desc: 'Ethercat state variable'
            name: 'ethercat_state'
            default_value: 'OFF'
        sdo_read_state:
            type: 'sdo_request_state'
            desc: 'SDO reading state variable'
            name: 'sdo_read_state'
            default_value: 'IDLE'
        sdo_write_enable:
            type: 'sdo_write_enable'
            desc: 'enable SDO sending from master to slaves'
            name: 'sdo_write_enable'
            default_value: 'ENABLED'
    faults: {}
    alarms: {}
    connectors:
        example_buttons_connector:
            name: 'example_buttons_connector'
            blocking_mode: 'sync'
            url: 'tcp://127.0.0.1:8101'
            max_latency: 0.5
            nom_rate: 1
            owner: 'example_hw1_adapter'
            endpoints: [
                {
                    role: 'pull'
                    element: 'example_main_ctrl'
                    path: 'inputs/hmi_inputs_val/value'
                }
                {
                    role: 'push'
                    element: 'example_hw1_adapter'
                    path: 'outputs/operator_buttons/value'
                }
            ]
        example_motor_state_connector:
            name: 'example_motor_state_connector'
            blocking_mode: 'sync'
            url: 'tcp://127.0.0.1:8103'
            max_latency: 0.5
            nom_rate: 1
            owner: 'example_hw1_adapter'
            endpoints: [
                {
                    role: 'pull'
                    element: 'example_main_ctrl'
                    path: 'inputs/motor_state_val/value'
                }
                {
                    role: 'push'
                    element: 'example_hw1_adapter'
                    path: 'outputs/motor_state/value'
                }
            ]
        example_motor_ctrl_connector:
            name: 'example_motor_ctrl_connector'
            blocking_mode: 'sync'
            url: 'tcp://127.0.0.1:8105'
            max_latency: 0.5
            nom_rate: 1
            owner: 'example_main_ctrl'
            endpoints: [
                {
                    role: 'pull'
                    element: 'example_hw1_adapter'
                    path: 'inputs/motor_ctrl/value'
                }
                {
                    role: 'push'
                    element: 'example_main_ctrl'
                    path: 'outputs/motor_ctrl_req/value'
                }
            ]