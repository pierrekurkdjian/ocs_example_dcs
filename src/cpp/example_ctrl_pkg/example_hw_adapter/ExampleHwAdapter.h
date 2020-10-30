#ifndef _ExampleHwAdapter_h_
#define _ExampleHwAdapter_h_


#include "ExampleHwAdapterBase.h"

namespace gmt
{

class ExampleHwAdapter : public ExampleHwAdapterBase
{
    public:
        ExampleHwAdapter(
                        const  std::string& comp_uri,
                        const  std::string& comp_name,
                        const  std::string& comp_host,
                        int    comp_port,
                        const  std::string& comp_acl,
                        double comp_scan_rate = 1.0,
                        int comp_prio = GMT_THREAD_DEFAULT_PRIO,
                        int comp_stack_size = GMT_DEFAULT_STACK_SIZE);

        virtual ~ExampleHwAdapter();

        //XXX add your public methods here

    protected:

        void step() override;
        void setup() override;

        //XXX add your protected class members here

    private:

        //XXX add your private class members here
};

} // namespace gmt

#endif   // _ExampleHwAdapter_h_
