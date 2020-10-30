#ifndef _ExampleHwAdapterSetup_h_
#define _ExampleHwAdapterSetup_h_

#include <ocs_core_fwk.h>

#include <msgpack.hpp>
#include <ocs_core_fwk.h>
#include <ocs_io_fwk.h>
#include "../../include/example_dcs_port_types.h"

namespace gmt
{

struct ExampleHwAdapterSetup : public EthercatAdapterSetup
{

    struct StateVarConf : public  EthercatAdapterSetup::StateVarConf
    {
        MSGPACK_DEFINE_MAP(op_state, ethercat_state, sdo_read_state, sdo_write_enable)
    };

    struct InputConf : public EthercatAdapterSetup::InputConf
    {
        DataIO<ExampleMotorControl>    motor_ctrl;
        MSGPACK_DEFINE_MAP(motor_ctrl)
    };

    struct OutputConf : public EthercatAdapterSetup::OutputConf
    {
        DataIO<ExampleHmiButtons>      operator_buttons;
        DataIO<ExampleMotorStatus>     motor_state;
        MSGPACK_DEFINE_MAP(operator_buttons, motor_state)
    };

    struct PropertyConf : public  EthercatAdapterSetup::PropertyConf
    {
        MSGPACK_DEFINE_MAP(uri, name, host, port, scan_rate, acl, priority, ecat_catalog_file, ecat_fieldbus_file)
    };

    struct FaultConf : public EthercatAdapterSetup::FaultConf
    {
        
    };

    struct AlarmConf : public EthercatAdapterSetup::AlarmConf
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

#endif // _ExampleHwAdapterSetup_h_
