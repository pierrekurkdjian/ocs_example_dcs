// GMT AUTO GENERATED CODE

#include "ExampleHwAdapterSetup.h"
#include "ExampleHwAdapterBase.h"

using namespace std;
using namespace gmt;

ExampleHwAdapterBase::ExampleHwAdapterBase(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : EthercatAdapter(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)
{
    ExampleHwAdapterBase::create_state();
}

ExampleHwAdapterBase::~ExampleHwAdapterBase()
{
}

void ExampleHwAdapterBase::create_state()
{
    //create the state vars of the class

    //create the input dataio of the class
    new_input ("motor_ctrl", motor_ctrl);

    //create the output dataio of the class
    new_output ("operator_buttons", operator_buttons);
    new_output ("motor_state", motor_state);

    //create the properties of the class

    //create the faults of the class

    //create the alarms of the class
}

//reads and unpacks the configuration file, and calls the setup() method with
//the decoded configuration
void ExampleHwAdapterBase::configure_from_file (const std::string& fname)
{
    try
    {
        log_info ("Configure from file "+fname);
        Setup conf;

        load_conf_file (fname, conf);
        setup_wrapper (conf);
    }
    catch (std::exception& ex)
    {
        throw std::runtime_error("ERROR while opening configuration file "+fname+": "+ex.what());
    }
    catch (...)
    {
        throw std::runtime_error("ERROR while opening configuration file "+fname);
    }

    log_info ("Configuration applied!");
}

void ExampleHwAdapterBase::setup_state(const ComponentSetup& config)
{
    const Setup::StateVarConf&  sv_confs        = dynamic_cast<const Setup&>(config).state_vars;
    const Setup::InputConf&     input_confs    = dynamic_cast<const Setup&>(config).inputs;
    const Setup::OutputConf&    output_confs   = dynamic_cast<const Setup&>(config).outputs;
    const Setup::PropertyConf&  property_confs = dynamic_cast<const Setup&>(config).properties;
    
    


    log_info("state setup");

    // setup state variables
    setup_state_var(op_state,                      sv_confs.op_state,            config);
    setup_state_var(ethercat_state,                sv_confs.ethercat_state,      config);
    setup_state_var(sdo_read_state,                sv_confs.sdo_read_state,      config);
    setup_state_var(sdo_write_enable,              sv_confs.sdo_write_enable,    config);

    // setup inputs
    setup_input(motor_ctrl,                        input_confs.motor_ctrl,       config);

    // setup outputs
    setup_output(operator_buttons,                 output_confs.operator_buttons, config);
    setup_output(motor_state,                      output_confs.motor_state,     config);

    // setup properties
    setup_property(uri,                            property_confs.uri,           config);
    setup_property(name,                           property_confs.name,          config);
    setup_property(host,                           property_confs.host,          config);
    setup_property(port,                           property_confs.port,          config);
    setup_property(scan_rate,                      property_confs.scan_rate,     config);
    setup_property(acl,                            property_confs.acl,           config);
    setup_property(priority,                       property_confs.priority,      config);
    setup_property(ecat_catalog_file,              property_confs.ecat_catalog_file, config);
    setup_property(ecat_fieldbus_file,             property_confs.ecat_fieldbus_file, config);

    // setup faults

    // setup alarms

    // create data_object references
    create_data_object_ref(motor_ctrl.value.enable,                 "motor_enable");
    create_data_object_ref(motor_ctrl.value.reset,                  "motor_reset");
    create_data_object_ref(motor_ctrl.value.velocity,               "motor_velocity");
    create_data_object_ref(operator_buttons.value.red_push_button,  "red_push_button");
    create_data_object_ref(operator_buttons.value.green_push_button, "green_push_button");
    create_data_object_ref(operator_buttons.value.emergency_button, "emergency_button");
    create_data_object_ref(motor_state.value.ready,                 "motor_ready");
    create_data_object_ref(motor_state.value.enabled,               "motor_enabled");
    create_data_object_ref(motor_state.value.warning,               "motor_warning");
    create_data_object_ref(motor_state.value.error,                 "motor_error");
    create_data_object_ref(motor_state.value.moving_positive,       "motor_moving_positive");
    create_data_object_ref(motor_state.value.moving_negative,       "motor_moving_negative");
}
