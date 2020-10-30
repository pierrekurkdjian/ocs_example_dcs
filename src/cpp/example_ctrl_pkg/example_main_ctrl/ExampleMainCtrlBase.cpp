// GMT AUTO GENERATED CODE

#include "ExampleMainCtrlSetup.h"
#include "ExampleMainCtrlBase.h"

using namespace std;
using namespace gmt;

ExampleMainCtrlBase::ExampleMainCtrlBase(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : BaseController(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)
{
    ExampleMainCtrlBase::create_state();
}

ExampleMainCtrlBase::~ExampleMainCtrlBase()
{
}

void ExampleMainCtrlBase::create_state()
{
    //create the state vars of the class
    new_state_var ("motor", motor);

    //create the input dataio of the class
    new_input ("hmi_inputs_val", hmi_inputs_val);
    new_input ("motor_state_val", motor_state_val);

    //create the output dataio of the class
    new_output ("motor_ctrl_req", motor_ctrl_req);

    //create the properties of the class

    //create the faults of the class

    //create the alarms of the class
}

//reads and unpacks the configuration file, and calls the setup() method with
//the decoded configuration
void ExampleMainCtrlBase::configure_from_file (const std::string& fname)
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

void ExampleMainCtrlBase::setup_state(const ComponentSetup& config)
{
    const Setup::StateVarConf&  sv_confs        = dynamic_cast<const Setup&>(config).state_vars;
    const Setup::InputConf&     input_confs    = dynamic_cast<const Setup&>(config).inputs;
    const Setup::OutputConf&    output_confs   = dynamic_cast<const Setup&>(config).outputs;
    const Setup::PropertyConf&  property_confs = dynamic_cast<const Setup&>(config).properties;
    
    


    log_info("state setup");

    // setup state variables
    setup_state_var(motor,                         sv_confs.motor,               config);
    setup_state_var(op_state,                      sv_confs.op_state,            config);
    setup_state_var(sim_mode,                      sv_confs.sim_mode,            config);
    setup_state_var(control_mode,                  sv_confs.control_mode,        config);

    // setup inputs
    setup_input(hmi_inputs_val,                    input_confs.hmi_inputs_val,   config);
    setup_input(motor_state_val,                   input_confs.motor_state_val,  config);

    // setup outputs
    setup_output(motor_ctrl_req,                   output_confs.motor_ctrl_req,  config);

    // setup properties
    setup_property(uri,                            property_confs.uri,           config);
    setup_property(name,                           property_confs.name,          config);
    setup_property(host,                           property_confs.host,          config);
    setup_property(port,                           property_confs.port,          config);
    setup_property(scan_rate,                      property_confs.scan_rate,     config);
    setup_property(acl,                            property_confs.acl,           config);
    setup_property(priority,                       property_confs.priority,      config);

    // setup faults

    // setup alarms

}
