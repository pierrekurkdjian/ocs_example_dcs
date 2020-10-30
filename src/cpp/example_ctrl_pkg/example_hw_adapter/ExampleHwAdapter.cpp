#include "ExampleHwAdapter.h"

using namespace std;
using namespace gmt;

ExampleHwAdapter::ExampleHwAdapter(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : ExampleHwAdapterBase(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)
{
}

ExampleHwAdapter::~ExampleHwAdapter()
{
}

void ExampleHwAdapter::step()
{
    if (is_step_rate(100))    // every 1000 steps = 1 second
    {
        // following values should go to user interface
        std::cout << "ADAPTER ctrl enable         = " << motor_ctrl.value.enable << "\n";
        std::cout << "ADAPTER ctrl reset          = " << motor_ctrl.value.reset << "\n";
        std::cout << "ADAPTER ctrl velocity       = " << motor_ctrl.value.velocity << "\n";
        std::cout << "\n";
        std::cout << "ADAPTER status Axis Ready   = " << motor_state.value.ready << "\n";
        std::cout << "ADAPTER status Axis Enabled = " << motor_state.value.enabled << "\n";
        std::cout << "ADAPTER status Axis Warning = " << motor_state.value.warning << "\n";
        std::cout << "ADAPTER status Axis Error   = " << motor_state.value.error << "\n";
        std::cout << "ADAPTER status Axis Moving+ = " << motor_state.value.moving_positive << "\n";
        std::cout << "ADAPTER status Axis Moving- = " << motor_state.value.moving_negative << "\n";
        std::cout << "\n";
        std::cout << "\n";
    }

    // switch (ethercat_state.value)
    // {
    //     case EthercatMasterState::OFF:
    //         ethercat_state.goal = EthercatMasterState::IDLE;
    //         break;
    //     case EthercatMasterState::IDLE:
    //         ethercat_state.goal = EthercatMasterState::RUNNING;
    //         break;
    //     default:
    //         break;
    // }

}

void ExampleHwAdapter::setup()
{
    //setup the base class
    Base::setup();

    //setup async input handlers

    //ex: new_async_input_handler ("my_input_name", this, &ExampleHwAdapter::my_input_handler);

    //add behaviors to features

    //setup fault evaluation functions

    //setup alarm evaluation functions

    //other initializations

}
