#ifndef _ExampleMainCtrlSetup_h_
#define _ExampleMainCtrlSetup_h_

#include <ocs_core_fwk.h>

#include <msgpack.hpp>
#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include "../../include/example_dcs_port_types.h"

namespace gmt
{

struct ExampleMainCtrlSetup : public BaseControllerSetup
{

    struct StateVarConf : public  BaseControllerSetup::StateVarConf
    {
        StateVar<ExampleMotor>         motor;
        MSGPACK_DEFINE_MAP(motor, op_state, sim_mode, control_mode)
    };

    struct InputConf : public BaseControllerSetup::InputConf
    {
        DataIO<ExampleHmiButtons>      hmi_inputs_val;
        DataIO<ExampleMotorStatus>     motor_state_val;
        MSGPACK_DEFINE_MAP(hmi_inputs_val, motor_state_val)
    };

    struct OutputConf : public BaseControllerSetup::OutputConf
    {
        DataIO<ExampleMotorControl>    motor_ctrl_req;
        MSGPACK_DEFINE_MAP(motor_ctrl_req)
    };

    struct PropertyConf : public  BaseControllerSetup::PropertyConf
    {
        MSGPACK_DEFINE_MAP(uri, name, host, port, scan_rate, acl, priority)
    };

    struct FaultConf : public BaseControllerSetup::FaultConf
    {
        
    };

    struct AlarmConf : public BaseControllerSetup::AlarmConf
    {
        
    };

    StateVarConf    state_vars;
    InputConf       inputs;
    OutputConf      outputs;
    PropertyConf    properties;
    FaultConf       faults;
    AlarmConf       alarms;

    MSGPACK_DEFINE_MAP(properties, state_vars, inputs, outputs, connectors)
};

} //namespace gmt

#endif // _ExampleMainCtrlSetup_h_
