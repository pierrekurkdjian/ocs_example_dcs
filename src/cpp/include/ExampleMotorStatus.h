#ifndef _example_motor_status_h_
#define _example_motor_status_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include <ocs_io_fwk.h>

struct ExampleMotorStatus 
{
    bool                     ready;               // Axis Ready
    bool                     enabled;             // Axis Enabled
    bool                     warning;             // Axis Warning
    bool                     error;               // Axis Error
    bool                     moving_positive;     // Axis Moving +
    bool                     moving_negative;     // Axis Moving -
    MSGPACK_DEFINE_MAP(ready, enabled, warning, error, moving_positive, moving_negative)
};

#endif // _example_motor_status_h_
