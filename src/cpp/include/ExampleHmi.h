#ifndef _example_hmi_h_
#define _example_hmi_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include <ocs_io_fwk.h>
#include "ExampleHmiButtons.h"

struct ExampleHmi 
{
    ExampleHmiButtons        input;               // HMI input devices state
    MSGPACK_DEFINE_MAP(input)
};

#endif // _example_hmi_h_
