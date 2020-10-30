// GMT AUTO GENERATED CODE

#include <ocs_core_fwk.h>

#include "ExampleHwAdapter.h"

using namespace std;
using namespace gmt;

void run() {
    try
    {
        // create instances
        ExampleHwAdapter example_hw1_adapter("gmt://127.0.0.1/example_dcs/example_hw1_adapter", "example_hw1_adapter", "127.0.0.1", 9020, "PRIVATE", 100);

        // configure instances
        example_hw1_adapter.configure();

        // start instances
        example_hw1_adapter.start();

        // wait until components finish
        example_hw1_adapter.wait();
    }
    catch(std::runtime_error& e) { cerr<<"ERROR in example_hw_adapter_app: "<<e.what()<<endl;            }
    catch(std::exception& e)     { cerr<<"ERROR in example_hw_adapter_app: "<<e.what()<<endl;            }
    catch(...)                   { cerr<<"ERROR in example_hw_adapter_app: unknown exception"<<endl; }
}

int main() {
    run();
    return(0);
}
