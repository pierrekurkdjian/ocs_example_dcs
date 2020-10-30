#ifndef _example_motor_control_h_
#define _example_motor_control_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include <ocs_io_fwk.h>

struct ExampleMotorControl 
{
    bool                     enable;              // Axis Enable
    bool                     reset;               // Axis Reset
    int16_t                  velocity;            // Velocity
    MSGPACK_DEFINE_MAP(enable, reset, velocity)
};

#endif // _example_motor_control_h_
