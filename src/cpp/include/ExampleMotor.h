#ifndef _example_motor_h_
#define _example_motor_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include <ocs_io_fwk.h>
#include "ExampleMotorControl.h"
#include "ExampleMotorStatus.h"

struct ExampleMotor 
{
    ExampleMotorStatus       state;               // HMI motor devices state
    ExampleMotorControl      command;             // HMI motor devices command
    MSGPACK_DEFINE_MAP(state, command)
};

#endif // _example_motor_h_
