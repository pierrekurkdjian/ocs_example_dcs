// GMT AUTO GENERATED CODE

#include <ocs_core_fwk.h>

#include "ExampleMainCtrl.h"

using namespace std;
using namespace gmt;

void run() {
    try
    {
        // create instances
        ExampleMainCtrl example_main_ctrl("gmt://127.0.0.1/example_dcs/example_main_ctrl", "example_main_ctrl", "127.0.0.1", 8020, "PRIVATE", 100);

        // configure instances
        example_main_ctrl.configure();

        // start instances
        example_main_ctrl.start();

        // wait until components finish
        example_main_ctrl.wait();
    }
    catch(std::runtime_error& e) { cerr<<"ERROR in example_main_ctrl_app: "<<e.what()<<endl;            }
    catch(std::exception& e)     { cerr<<"ERROR in example_main_ctrl_app: "<<e.what()<<endl;            }
    catch(...)                   { cerr<<"ERROR in example_main_ctrl_app: unknown exception"<<endl; }
}

int main() {
    run();
    return(0);
}
