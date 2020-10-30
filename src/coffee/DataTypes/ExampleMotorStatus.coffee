

class ExampleMotorStatus

    constructor: (def = {}) ->
        {
        @ready = null
        @enabled = null
        @warning = null
        @error = null
        @moving_positive = null
        @moving_negative = null
        } = def

module.exports = { ExampleMotorStatus }

