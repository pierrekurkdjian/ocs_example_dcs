#ifndef _ExampleMainCtrlBase_h_
#define _ExampleMainCtrlBase_h_

// GMT AUTO GENERATED CODE

#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include "../../include/example_dcs_port_types.h"

class ExampleMainCtrlSetup;

namespace gmt
{

class ExampleMainCtrlBase : public BaseController
{
    public:
        ExampleMainCtrlBase(
                        const  std::string& comp_uri,
                        const  std::string& comp_name,
                        const  std::string& comp_host,
                        int    comp_port,
                        const  std::string& comp_acl,
                        double comp_scan_rate = 1.0,
                        int comp_prio = GMT_THREAD_DEFAULT_PRIO,
                        int comp_stack_size = GMT_DEFAULT_STACK_SIZE);

        virtual ~ExampleMainCtrlBase();

    protected:

        typedef ExampleMainCtrlSetup Setup;
        typedef BaseController Base;

        /**
        * Creates the state of the Component, i.e., state variables,
        * inputs, outputs, properties, alarms and faults
        * Overriden from the Component class
        */
        void create_state() override;

        /**
        * Uses the given Component::Setup parameter to configure all the
        * Component interface features (state vars, inputs, outputs, properties, ...)
        * Overriden from the Component class
        */
        void setup_state (const ComponentSetup& conf) override;

        /**
        * Configure the object from a file. The classes that derive from Component
        * must reimplement this method, in order to unpack the binary contents of
        * the configuration file with their Setup structure.
        * Overriden from the Component class
        */
        void configure_from_file (const std::string& fname) override;

    protected:

        // State variables declaration
        StateVar<ExampleMotor>         motor;  ///< motor device state

        // Inputs declaration
        DataIO<ExampleHmiButtons>      hmi_inputs_val;  ///< HMI operation buttons
        DataIO<ExampleMotorStatus>     motor_state_val;  ///< motor state

        // Outputs declaration
        DataIO<ExampleMotorControl>    motor_ctrl_req;  ///< motor control

        // Configuration properties declaration

        // Faults declaration

        // Alarms declaration
};

} // namespace gmt

#endif   // _ExampleMainCtrlBase_h_
