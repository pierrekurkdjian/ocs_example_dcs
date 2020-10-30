#include "ExampleMainCtrl.h"

using namespace std;
using namespace gmt;

ExampleMainCtrl::ExampleMainCtrl(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : ExampleMainCtrlBase(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)
{
}

ExampleMainCtrl::~ExampleMainCtrl()
{
}

void ExampleMainCtrl::step()
{
    //XXX add your code here

    /*if (is_step_rate(100))
    {
        // this will be executed every 100 steps
        log_info("step  = " + std::to_string(step_counter));
    }*/
}

void ExampleMainCtrl::setup()
{
    //setup the base class
    Base::setup();

    //setup async input handlers

    //ex: new_async_input_handler ("my_input_name", this, &ExampleMainCtrl::my_input_handler);

    //add behaviors to features

    //setup fault evaluation functions

    //setup alarm evaluation functions

    //other initializations

}
