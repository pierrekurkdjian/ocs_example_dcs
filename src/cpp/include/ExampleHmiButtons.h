#ifndef _example_hmi_buttons_h_
#define _example_hmi_buttons_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include <ocs_io_fwk.h>

struct ExampleHmiButtons 
{
    bool                     red_push_button;     // RED Push Button
    bool                     green_push_button;   // GREEN Push Button
    bool                     emergency_button;    // Emergency Button
    MSGPACK_DEFINE_MAP(red_push_button, green_push_button, emergency_button)
};

#endif // _example_hmi_buttons_h_
