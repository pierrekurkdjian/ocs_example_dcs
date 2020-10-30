#include <ocs_core_fwk.h>

#include <string>
#include <memory>

#include <ocs_core_fwk.h>

#include "./example_main_ctrl/ExampleMainCtrl.h"
#include "./example_hw_adapter/ExampleHwAdapter.h"

using namespace std;
using namespace gmt;

class ExampleCtrlPkgApp : public CoreApplication
{
    public:

        ExampleCtrlPkgApp();

        virtual ~ExampleCtrlPkgApp();

        virtual void start(int argc, char* argv[]);

    protected:

        CLIHandler cli;
};

ExampleCtrlPkgApp::ExampleCtrlPkgApp()
 : CoreApplication()
 , cli("ExampleCtrlPkg application", "GMT_")
{
    //setup command line
    cli.add_option<string> ("config",  "Name of the configuration snapshot to apply", "default", "")
       .add_option<string> ("logging", "Logging level", "info")
       .add_option<string> ("ctnr_config", "Name of the container configuration file", "default")
       .add_option<void>   ("help",    "Show help");

    auto cntr = make_unique<CoreContainer>();

    // create example_main_ctrl instances
    cntr->add (make_unique<ExampleMainCtrl>("gmt://127.0.0.1/example_dcs/example_main_ctrl", "example_main_ctrl", "127.0.0.1", 8020, "PRIVATE", 100));

    // create example_hw_adapter instances
    cntr->add (make_unique<ExampleHwAdapter>("gmt://127.0.0.1/example_dcs/example_hw1_adapter", "example_hw1_adapter", "127.0.0.1", 9020, "PRIVATE", 100));

    // create example_ctrl_app instances


    this->add (std::move(cntr));
}

ExampleCtrlPkgApp::~ExampleCtrlPkgApp()
{
}

void ExampleCtrlPkgApp::start(int argc, char* argv[])
{
    CoreApplication::initialize_rt_system();

    cli.parse_cmd_line (argc, argv, true);

    if (cli.is_opt("help"))
    {
        cout<<cli<<endl;
    }
    else
    {
        auto cli_opts = cli.get_opt_values();
        configure (*cli_opts);
        CoreApplication::start ();
    }
}

int main (int argc, char* argv[])
{
    //create the application
    ExampleCtrlPkgApp example_ctrl_pkg_app;

    try
    {
        //configure and start the application
        example_ctrl_pkg_app.start (argc, argv);

        //wait until execution end
        example_ctrl_pkg_app.wait();
    }
    catch(std::runtime_error& e) { cerr<<"ERROR in example_ctrl_pkg_app: "<<e.what()<<endl;            }
    catch(std::exception& e)     { cerr<<"ERROR in example_ctrl_pkg_app: "<<e.what()<<endl;            }
    catch(...)                   { cerr<<"ERROR in example_ctrl_pkg_app: unknown exception"<<endl; }

    return 0;
}
