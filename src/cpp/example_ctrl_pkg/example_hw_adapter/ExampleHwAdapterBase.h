#ifndef _ExampleHwAdapterBase_h_
#define _ExampleHwAdapterBase_h_

// GMT AUTO GENERATED CODE

#include <ocs_core_fwk.h>
#include <ocs_io_fwk.h>
#include "../../include/example_dcs_port_types.h"

class ExampleHwAdapterSetup;

namespace gmt
{

class ExampleHwAdapterBase : public EthercatAdapter
{
    public:
        ExampleHwAdapterBase(
                        const  std::string& comp_uri,
                        const  std::string& comp_name,
                        const  std::string& comp_host,
                        int    comp_port,
                        const  std::string& comp_acl,
                        double comp_scan_rate = 1.0,
                        int comp_prio = GMT_THREAD_DEFAULT_PRIO,
                        int comp_stack_size = GMT_DEFAULT_STACK_SIZE);

        virtual ~ExampleHwAdapterBase();

    protected:

        typedef ExampleHwAdapterSetup Setup;
        typedef EthercatAdapter Base;

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

        // Inputs declaration
        DataIO<ExampleMotorControl>    motor_ctrl;  ///< motor control

        // Outputs declaration
        DataIO<ExampleHmiButtons>      operator_buttons;  ///< Human Machine Interface (HMI) digital inputs
        DataIO<ExampleMotorStatus>     motor_state;  ///< motor state

        // Configuration properties declaration

        // Faults declaration

        // Alarms declaration
};

} // namespace gmt

#endif   // _ExampleHwAdapterBase_h_
