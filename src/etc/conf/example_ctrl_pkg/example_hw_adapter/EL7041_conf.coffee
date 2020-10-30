module.exports =

        {  #slave 1
            product_name: "EL7041"
            vendor_id:    0x2
            product_code: 0x1b813052
            revision_id:  0x00180000
            pdos: [
                {
                    mapping_name:  "ENC Control compact",
                    direction:     "RX",  # From master to slave
                    mapping_index: 0x1600,
                    sync_manager:  2,
                    pdo_list: [
                        { name: "ENC Control compact : Control__Enable latch C"                        , index: 0x7000, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "ENC Control compact : Control__Enable latch extern on positive edge"  , index: 0x7000, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "ENC Control compact : Control__Set counter"                           , index: 0x7000, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "ENC Control compact : Control__Enable latch extern on negative edge"  , index: 0x7000, sub_index: 4, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 4 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 8 }
                        { name: "ENC Control compact : Set counter value"                              , index: 0x7000, sub_index: 17, bit: 0, bit_length: 16 }
                    ]
                }
                {
                    mapping_name:  "ENC Control",
                    direction:     "RX",  # From master to slave
                    mapping_index: 0x1601,
                    sync_manager:  2,
                    pdo_list: [
                        { name: "ENC Control : Control__Enable latch C"                                , index: 0x7000, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "ENC Control : Control__Enable latch extern on positive edge"          , index: 0x7000, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "ENC Control : Control__Set counter"                                   , index: 0x7000, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "ENC Control : Control__Enable latch extern on negative edge"          , index: 0x7000, sub_index: 4, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 4 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 8 }
                        { name: "ENC Control : Set counter value"                                      , index: 0x7000, sub_index: 17, bit: 0, bit_length: 32 }
                    ]
                }
                {
                    mapping_name:  "STM Control",
                    direction:     "RX",  # From master to slave
                    mapping_index: 0x1602,
                    sync_manager:  2,
                    pdo_list: [
                        { name: "STM Control : Control__Enable"                                        , index: 0x7010, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "STM Control : Control__Reset"                                         , index: 0x7010, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "STM Control : Control__Reduce torque"                                 , index: 0x7010, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 5 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 8 }
                    ]
                }
                {
                    mapping_name:  "STM Position",
                    direction:     "RX",  # From master to slave
                    mapping_index: 0x1603,
                    sync_manager:  2,
                    pdo_list: [
                        { name: "STM Position : Position"                                              , index: 0x7010, sub_index: 17, bit: 0, bit_length: 32 }
                    ]
                }
                {
                    mapping_name:  "STM Velocity",
                    direction:     "RX",  # From master to slave
                    mapping_index: 0x1604,
                    sync_manager:  2,
                    pdo_list: [
                        { name: "STM Velocity : Velocity"                                              , index: 0x7010, sub_index: 33, bit: 0, bit_length: 16 }
                    ]
                }
                {
                    mapping_name:  "POS Control compact",
                    direction:     "RX",  # From master to slave
                    mapping_index: 0x1605,
                    sync_manager:  2,
                    pdo_list: [
                        { name: "POS Control compact : Control__Execute"                               , index: 0x7020, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "POS Control compact : Control__Emergency stop"                        , index: 0x7020, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 6 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 8 }
                        { name: "POS Control compact : Target position"                                , index: 0x7020, sub_index: 17, bit: 0, bit_length: 32 }
                    ]
                }
                {
                    mapping_name:  "POS Control",
                    direction:     "RX",  # From master to slave
                    mapping_index: 0x1606,
                    sync_manager:  2,
                    pdo_list: [
                        { name: "POS Control : Control__Execute"                                       , index: 0x7020, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "POS Control : Control__Emergency stop"                                , index: 0x7020, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 6 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 8 }
                        { name: "POS Control : Target position"                                        , index: 0x7020, sub_index: 17, bit: 0, bit_length: 32 }
                        { name: "POS Control : Velocity"                                               , index: 0x7020, sub_index: 33, bit: 0, bit_length: 16 }
                        { name: "POS Control : Start type"                                             , index: 0x7020, sub_index: 34, bit: 0, bit_length: 16 }
                        { name: "POS Control : Acceleration"                                           , index: 0x7020, sub_index: 35, bit: 0, bit_length: 16 }
                        { name: "POS Control : Deceleration"                                           , index: 0x7020, sub_index: 36, bit: 0, bit_length: 16 }
                    ]
                }
                {
                    mapping_name:  "POS Control 2",
                    direction:     "RX",  # From master to slave
                    mapping_index: 0x1607,
                    sync_manager:  2,
                    pdo_list: [
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 2 }
                        { name: "POS Control 2 : Control__Enable auto start"                           , index: 0x7021, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 13 }
                        { name: "POS Control 2 : Target position"                                      , index: 0x7021, sub_index: 17, bit: 0, bit_length: 32 }
                        { name: "POS Control 2 : Velocity"                                             , index: 0x7021, sub_index: 33, bit: 0, bit_length: 16 }
                        { name: "POS Control 2 : Start type"                                           , index: 0x7021, sub_index: 34, bit: 0, bit_length: 16 }
                        { name: "POS Control 2 : Acceleration"                                         , index: 0x7021, sub_index: 35, bit: 0, bit_length: 16 }
                        { name: "POS Control 2 : Deceleration"                                         , index: 0x7021, sub_index: 36, bit: 0, bit_length: 16 }
                    ]
                }
                {
                    mapping_name:  "ENC Status compact",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a00,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "ENC Status compact : Status__Latch C valid"                           , index: 0x6000, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Latch extern valid"                      , index: 0x6000, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Set counter done"                        , index: 0x6000, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Counter underflow"                       , index: 0x6000, sub_index: 4, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Counter overflow"                        , index: 0x6000, sub_index: 5, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 2 }
                        { name: "ENC Status compact : Status__Extrapolation stall"                     , index: 0x6000, sub_index: 8, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Status of input A"                       , index: 0x6000, sub_index: 9, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Status of input B"                       , index: 0x6000, sub_index: 10, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Status of input C"                       , index: 0x6000, sub_index: 11, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Status of extern latch"                  , index: 0x6000, sub_index: 13, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__Sync error"                              , index: 0x6000, sub_index: 14, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Status__TxPDO Toggle"                            , index: 0x6000, sub_index: 16, bit: 0, bit_length: 1 }
                        { name: "ENC Status compact : Counter value"                                   , index: 0x6000, sub_index: 17, bit: 0, bit_length: 16 }
                        { name: "ENC Status compact : Latch value"                                     , index: 0x6000, sub_index: 18, bit: 0, bit_length: 16 }
                    ]
                }
                {
                    mapping_name:  "ENC Status",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a01,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "ENC Status : Status__Latch C valid"                                   , index: 0x6000, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Latch extern valid"                              , index: 0x6000, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Set counter done"                                , index: 0x6000, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Counter underflow"                               , index: 0x6000, sub_index: 4, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Counter overflow"                                , index: 0x6000, sub_index: 5, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 2 }
                        { name: "ENC Status : Status__Extrapolation stall"                             , index: 0x6000, sub_index: 8, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Status of input A"                               , index: 0x6000, sub_index: 9, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Status of input B"                               , index: 0x6000, sub_index: 10, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Status of input C"                               , index: 0x6000, sub_index: 11, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Status of extern latch"                          , index: 0x6000, sub_index: 13, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__Sync error"                                      , index: 0x6000, sub_index: 14, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Status__TxPDO Toggle"                                    , index: 0x6000, sub_index: 16, bit: 0, bit_length: 1 }
                        { name: "ENC Status : Counter value"                                           , index: 0x6000, sub_index: 17, bit: 0, bit_length: 32 }
                        { name: "ENC Status : Latch value"                                             , index: 0x6000, sub_index: 18, bit: 0, bit_length: 32 }
                    ]
                }
                {
                    mapping_name:  "ENC Timest. compact",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a02,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "ENC Timest. compact : Timestamp"                                      , index: 0x6000, sub_index: 22, bit: 0, bit_length: 32 }
                    ]
                }
                {
                    mapping_name:  "STM Status",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a03,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "STM Status : Status__Ready to enable"                                 , index: 0x6010, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__Ready"                                           , index: 0x6010, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__Warning"                                         , index: 0x6010, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__Error"                                           , index: 0x6010, sub_index: 4, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__Moving positive"                                 , index: 0x6010, sub_index: 5, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__Moving negative"                                 , index: 0x6010, sub_index: 6, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__Torque reduced"                                  , index: 0x6010, sub_index: 7, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 3 }
                        { name: "STM Status : Status__Digital input 1"                                 , index: 0x6010, sub_index: 12, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__Digital input 2"                                 , index: 0x6010, sub_index: 13, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__Sync error"                                      , index: 0x6010, sub_index: 14, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 1 }
                        { name: "STM Status : Status__TxPDO Toggle"                                    , index: 0x6010, sub_index: 16, bit: 0, bit_length: 1 }
                    ]
                }
                {
                    mapping_name:  "STM Synchron info data",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a04,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "STM Synchron info data : Info data 1"                                 , index: 0x6010, sub_index: 17, bit: 0, bit_length: 16 }
                        { name: "STM Synchron info data : Info data 2"                                 , index: 0x6010, sub_index: 18, bit: 0, bit_length: 16 }
                    ]
                }
                {
                    mapping_name:  "POS Status compact",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a05,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "POS Status compact : Status__Busy"                                    , index: 0x6020, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "POS Status compact : Status__In-Target"                               , index: 0x6020, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "POS Status compact : Status__Warning"                                 , index: 0x6020, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "POS Status compact : Status__Error"                                   , index: 0x6020, sub_index: 4, bit: 0, bit_length: 1 }
                        { name: "POS Status compact : Status__Calibrated"                              , index: 0x6020, sub_index: 5, bit: 0, bit_length: 1 }
                        { name: "POS Status compact : Status__Accelerate"                              , index: 0x6020, sub_index: 6, bit: 0, bit_length: 1 }
                        { name: "POS Status compact : Status__Decelerate"                              , index: 0x6020, sub_index: 7, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 8 }
                    ]
                }
                {
                    mapping_name:  "POS Status",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a06,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "POS Status : Status__Busy"                                            , index: 0x6020, sub_index: 1, bit: 0, bit_length: 1 }
                        { name: "POS Status : Status__In-Target"                                       , index: 0x6020, sub_index: 2, bit: 0, bit_length: 1 }
                        { name: "POS Status : Status__Warning"                                         , index: 0x6020, sub_index: 3, bit: 0, bit_length: 1 }
                        { name: "POS Status : Status__Error"                                           , index: 0x6020, sub_index: 4, bit: 0, bit_length: 1 }
                        { name: "POS Status : Status__Calibrated"                                      , index: 0x6020, sub_index: 5, bit: 0, bit_length: 1 }
                        { name: "POS Status : Status__Accelerate"                                      , index: 0x6020, sub_index: 6, bit: 0, bit_length: 1 }
                        { name: "POS Status : Status__Decelerate"                                      , index: 0x6020, sub_index: 7, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 1 }
                        { name: "*** gap ***"                                                          , index: 0x0, bit: 0, bit_length: 8 }
                        { name: "POS Status : Actual position"                                         , index: 0x6020, sub_index: 17, bit: 0, bit_length: 32 }
                        { name: "POS Status : Actual velocity"                                         , index: 0x6020, sub_index: 33, bit: 0, bit_length: 16 }
                        { name: "POS Status : Actual drive time"                                       , index: 0x6020, sub_index: 34, bit: 0, bit_length: 32 }
                    ]
                }
                {
                    mapping_name:  "STM Internal position",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a07,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "STM Internal position : Internal position"                            , index: 0x6010, sub_index: 20, bit: 0, bit_length: 32 }
                    ]
                }
                {
                    mapping_name:  "STM External position",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a08,
                    sync_manager:  3,
                    pdo_list: [
                        { name: "STM External position : External position"                            , index: 0x6010, sub_index: 21, bit: 0, bit_length: 32 }
                    ]
                }
            ]
            sdos: [
                { name: "Restore default parameters : SubIndex 000"                            , index: 0x1011, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "Identity : SubIndex 000"                                              , index: 0x1018, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "Identity : Vendor ID"                                                 , index: 0x1018, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "Identity : Product code"                                              , index: 0x1018, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "Identity : Revision"                                                  , index: 0x1018, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "Identity : Serial number"                                             , index: 0x1018, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "Backup parameter handling : SubIndex 000"                             , index: 0x10f0, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "Backup parameter handling : Checksum"                                 , index: 0x10f0, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "Diagnosis History : SubIndex 000"                                     , index: 0x10f3, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "Diagnosis History : Maximum Messages"                                 , index: 0x10f3, sub_index: 1, bit: 0, bit_length: 8, access: "ro" }
                { name: "Diagnosis History : Newest Message"                                   , index: 0x10f3, sub_index: 2, bit: 0, bit_length: 8, access: "ro" }
                { name: "Diagnosis History : Newest Acknowledged Message"                      , index: 0x10f3, sub_index: 3, bit: 0, bit_length: 8, access: "rw" }
                { name: "Diagnosis History : New Messages Available"                           , index: 0x10f3, sub_index: 4, bit: 0, bit_length: 1, access: "ro" }
                { name: "Diagnosis History : Flags"                                            , index: 0x10f3, sub_index: 5, bit: 0, bit_length: 16, access: "rw" }
                { name: "Diagnosis History : Diagnosis Message 001"                            , index: 0x10f3, sub_index: 6, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 002"                            , index: 0x10f3, sub_index: 7, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 003"                            , index: 0x10f3, sub_index: 8, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 004"                            , index: 0x10f3, sub_index: 9, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 005"                            , index: 0x10f3, sub_index: 10, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 006"                            , index: 0x10f3, sub_index: 11, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 007"                            , index: 0x10f3, sub_index: 12, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 008"                            , index: 0x10f3, sub_index: 13, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 009"                            , index: 0x10f3, sub_index: 14, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 010"                            , index: 0x10f3, sub_index: 15, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 011"                            , index: 0x10f3, sub_index: 16, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 012"                            , index: 0x10f3, sub_index: 17, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 013"                            , index: 0x10f3, sub_index: 18, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 014"                            , index: 0x10f3, sub_index: 19, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 015"                            , index: 0x10f3, sub_index: 20, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 016"                            , index: 0x10f3, sub_index: 21, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 017"                            , index: 0x10f3, sub_index: 22, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 018"                            , index: 0x10f3, sub_index: 23, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 019"                            , index: 0x10f3, sub_index: 24, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 020"                            , index: 0x10f3, sub_index: 25, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 021"                            , index: 0x10f3, sub_index: 26, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 022"                            , index: 0x10f3, sub_index: 27, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 023"                            , index: 0x10f3, sub_index: 28, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 024"                            , index: 0x10f3, sub_index: 29, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 025"                            , index: 0x10f3, sub_index: 30, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 026"                            , index: 0x10f3, sub_index: 31, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 027"                            , index: 0x10f3, sub_index: 32, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 028"                            , index: 0x10f3, sub_index: 33, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 029"                            , index: 0x10f3, sub_index: 34, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 030"                            , index: 0x10f3, sub_index: 35, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 031"                            , index: 0x10f3, sub_index: 36, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 032"                            , index: 0x10f3, sub_index: 37, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 033"                            , index: 0x10f3, sub_index: 38, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 034"                            , index: 0x10f3, sub_index: 39, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 035"                            , index: 0x10f3, sub_index: 40, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 036"                            , index: 0x10f3, sub_index: 41, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 037"                            , index: 0x10f3, sub_index: 42, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 038"                            , index: 0x10f3, sub_index: 43, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 039"                            , index: 0x10f3, sub_index: 44, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 040"                            , index: 0x10f3, sub_index: 45, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 041"                            , index: 0x10f3, sub_index: 46, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 042"                            , index: 0x10f3, sub_index: 47, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 043"                            , index: 0x10f3, sub_index: 48, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 044"                            , index: 0x10f3, sub_index: 49, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 045"                            , index: 0x10f3, sub_index: 50, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 046"                            , index: 0x10f3, sub_index: 51, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 047"                            , index: 0x10f3, sub_index: 52, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 048"                            , index: 0x10f3, sub_index: 53, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 049"                            , index: 0x10f3, sub_index: 54, bit: 0, bit_length: 224, access: "ro" }
                { name: "Diagnosis History : Diagnosis Message 050"                            , index: 0x10f3, sub_index: 55, bit: 0, bit_length: 224, access: "ro" }
                { name: "ENC RxPDO-Par Control compact : SubIndex 000"                         , index: 0x1400, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC RxPDO-Par Control compact : Exclude RxPDOs"                       , index: 0x1400, sub_index: 6, bit: 0, bit_length: 48, access: "ro" }
                { name: "ENC RxPDO-Par Control : SubIndex 000"                                 , index: 0x1401, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC RxPDO-Par Control : Exclude RxPDOs"                               , index: 0x1401, sub_index: 6, bit: 0, bit_length: 48, access: "ro" }
                { name: "STM RxPDO-Par Position : SubIndex 000"                                , index: 0x1403, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM RxPDO-Par Position : Exclude RxPDOs"                              , index: 0x1403, sub_index: 6, bit: 0, bit_length: 48, access: "ro" }
                { name: "STM RxPDO-Par Velocity : SubIndex 000"                                , index: 0x1404, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM RxPDO-Par Velocity : Exclude RxPDOs"                              , index: 0x1404, sub_index: 6, bit: 0, bit_length: 48, access: "ro" }
                { name: "POS RxPDO-Par Control compact : SubIndex 000"                         , index: 0x1405, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS RxPDO-Par Control compact : Exclude RxPDOs"                       , index: 0x1405, sub_index: 6, bit: 0, bit_length: 48, access: "ro" }
                { name: "POS RxPDO-Par Control : SubIndex 000"                                 , index: 0x1406, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS RxPDO-Par Control : Exclude RxPDOs"                               , index: 0x1406, sub_index: 6, bit: 0, bit_length: 48, access: "ro" }
                { name: "POS RxPDO-Par Control 2 : SubIndex 000"                               , index: 0x1407, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS RxPDO-Par Control 2 : Exclude RxPDOs"                             , index: 0x1407, sub_index: 6, bit: 0, bit_length: 48, access: "ro" }
                { name: "ENC RxPDO-Map Control compact : SubIndex 000"                         , index: 0x1600, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC RxPDO-Map Control compact : SubIndex 001"                         , index: 0x1600, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control compact : SubIndex 002"                         , index: 0x1600, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control compact : SubIndex 003"                         , index: 0x1600, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control compact : SubIndex 004"                         , index: 0x1600, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control compact : SubIndex 005"                         , index: 0x1600, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control compact : SubIndex 006"                         , index: 0x1600, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control compact : SubIndex 007"                         , index: 0x1600, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control : SubIndex 000"                                 , index: 0x1601, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC RxPDO-Map Control : SubIndex 001"                                 , index: 0x1601, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control : SubIndex 002"                                 , index: 0x1601, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control : SubIndex 003"                                 , index: 0x1601, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control : SubIndex 004"                                 , index: 0x1601, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control : SubIndex 005"                                 , index: 0x1601, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control : SubIndex 006"                                 , index: 0x1601, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC RxPDO-Map Control : SubIndex 007"                                 , index: 0x1601, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM RxPDO-Map Control : SubIndex 000"                                 , index: 0x1602, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM RxPDO-Map Control : SubIndex 001"                                 , index: 0x1602, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM RxPDO-Map Control : SubIndex 002"                                 , index: 0x1602, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM RxPDO-Map Control : SubIndex 003"                                 , index: 0x1602, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM RxPDO-Map Control : SubIndex 004"                                 , index: 0x1602, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM RxPDO-Map Control : SubIndex 005"                                 , index: 0x1602, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM RxPDO-Map Position : SubIndex 000"                                , index: 0x1603, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM RxPDO-Map Position : SubIndex 001"                                , index: 0x1603, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM RxPDO-Map Velocity : SubIndex 000"                                , index: 0x1604, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM RxPDO-Map Velocity : SubIndex 001"                                , index: 0x1604, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control compact : SubIndex 000"                         , index: 0x1605, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS RxPDO-Map Control compact : SubIndex 001"                         , index: 0x1605, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control compact : SubIndex 002"                         , index: 0x1605, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control compact : SubIndex 003"                         , index: 0x1605, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control compact : SubIndex 004"                         , index: 0x1605, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control compact : SubIndex 005"                         , index: 0x1605, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 000"                                 , index: 0x1606, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 001"                                 , index: 0x1606, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 002"                                 , index: 0x1606, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 003"                                 , index: 0x1606, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 004"                                 , index: 0x1606, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 005"                                 , index: 0x1606, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 006"                                 , index: 0x1606, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 007"                                 , index: 0x1606, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 008"                                 , index: 0x1606, sub_index: 8, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control : SubIndex 009"                                 , index: 0x1606, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 000"                               , index: 0x1607, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 001"                               , index: 0x1607, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 002"                               , index: 0x1607, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 003"                               , index: 0x1607, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 004"                               , index: 0x1607, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 005"                               , index: 0x1607, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 006"                               , index: 0x1607, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 007"                               , index: 0x1607, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS RxPDO-Map Control 2 : SubIndex 008"                               , index: 0x1607, sub_index: 8, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Par Status compact : SubIndex 000"                          , index: 0x1800, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC TxPDO-Par Status compact : Exclude TxPDOs"                        , index: 0x1800, sub_index: 6, bit: 0, bit_length: 16, access: "ro" }
                { name: "ENC TxPDO-Par Status : SubIndex 000"                                  , index: 0x1801, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC TxPDO-Par Status : Exclude TxPDOs"                                , index: 0x1801, sub_index: 6, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS TxPDO-Par Status compact : SubIndex 000"                          , index: 0x1805, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS TxPDO-Par Status compact : Exclude TxPDOs"                        , index: 0x1805, sub_index: 6, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS TxPDO-Par Status : SubIndex 000"                                  , index: 0x1806, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS TxPDO-Par Status : Exclude TxPDOs"                                , index: 0x1806, sub_index: 6, bit: 0, bit_length: 16, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 000"                          , index: 0x1a00, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 001"                          , index: 0x1a00, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 002"                          , index: 0x1a00, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 003"                          , index: 0x1a00, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 004"                          , index: 0x1a00, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 005"                          , index: 0x1a00, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 006"                          , index: 0x1a00, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 007"                          , index: 0x1a00, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 008"                          , index: 0x1a00, sub_index: 8, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 009"                          , index: 0x1a00, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 010"                          , index: 0x1a00, sub_index: 10, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 011"                          , index: 0x1a00, sub_index: 11, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 012"                          , index: 0x1a00, sub_index: 12, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 013"                          , index: 0x1a00, sub_index: 13, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 014"                          , index: 0x1a00, sub_index: 14, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 015"                          , index: 0x1a00, sub_index: 15, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 016"                          , index: 0x1a00, sub_index: 16, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status compact : SubIndex 017"                          , index: 0x1a00, sub_index: 17, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 000"                                  , index: 0x1a01, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 001"                                  , index: 0x1a01, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 002"                                  , index: 0x1a01, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 003"                                  , index: 0x1a01, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 004"                                  , index: 0x1a01, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 005"                                  , index: 0x1a01, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 006"                                  , index: 0x1a01, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 007"                                  , index: 0x1a01, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 008"                                  , index: 0x1a01, sub_index: 8, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 009"                                  , index: 0x1a01, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 010"                                  , index: 0x1a01, sub_index: 10, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 011"                                  , index: 0x1a01, sub_index: 11, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 012"                                  , index: 0x1a01, sub_index: 12, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 013"                                  , index: 0x1a01, sub_index: 13, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 014"                                  , index: 0x1a01, sub_index: 14, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 015"                                  , index: 0x1a01, sub_index: 15, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 016"                                  , index: 0x1a01, sub_index: 16, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Status : SubIndex 017"                                  , index: 0x1a01, sub_index: 17, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC TxPDO-Map Timest. compact : SubIndex 000"                         , index: 0x1a02, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC TxPDO-Map Timest. compact : SubIndex 001"                         , index: 0x1a02, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 000"                                  , index: 0x1a03, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 001"                                  , index: 0x1a03, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 002"                                  , index: 0x1a03, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 003"                                  , index: 0x1a03, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 004"                                  , index: 0x1a03, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 005"                                  , index: 0x1a03, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 006"                                  , index: 0x1a03, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 007"                                  , index: 0x1a03, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 008"                                  , index: 0x1a03, sub_index: 8, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 009"                                  , index: 0x1a03, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 010"                                  , index: 0x1a03, sub_index: 10, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 011"                                  , index: 0x1a03, sub_index: 11, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 012"                                  , index: 0x1a03, sub_index: 12, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 013"                                  , index: 0x1a03, sub_index: 13, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Status : SubIndex 014"                                  , index: 0x1a03, sub_index: 14, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Synchron info data : SubIndex 000"                      , index: 0x1a04, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM TxPDO-Map Synchron info data : SubIndex 001"                      , index: 0x1a04, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Synchron info data : SubIndex 002"                      , index: 0x1a04, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 000"                          , index: 0x1a05, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 001"                          , index: 0x1a05, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 002"                          , index: 0x1a05, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 003"                          , index: 0x1a05, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 004"                          , index: 0x1a05, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 005"                          , index: 0x1a05, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 006"                          , index: 0x1a05, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 007"                          , index: 0x1a05, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 008"                          , index: 0x1a05, sub_index: 8, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status compact : SubIndex 009"                          , index: 0x1a05, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 000"                                  , index: 0x1a06, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 001"                                  , index: 0x1a06, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 002"                                  , index: 0x1a06, sub_index: 2, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 003"                                  , index: 0x1a06, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 004"                                  , index: 0x1a06, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 005"                                  , index: 0x1a06, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 006"                                  , index: 0x1a06, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 007"                                  , index: 0x1a06, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 008"                                  , index: 0x1a06, sub_index: 8, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 009"                                  , index: 0x1a06, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 010"                                  , index: 0x1a06, sub_index: 10, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 011"                                  , index: 0x1a06, sub_index: 11, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS TxPDO-Map Status : SubIndex 012"                                  , index: 0x1a06, sub_index: 12, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map Internal position : SubIndex 000"                       , index: 0x1a07, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM TxPDO-Map Internal position : SubIndex 001"                       , index: 0x1a07, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM TxPDO-Map External position : SubIndex 000"                       , index: 0x1a08, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM TxPDO-Map External position : SubIndex 001"                       , index: 0x1a08, sub_index: 1, bit: 0, bit_length: 32, access: "ro" }
                { name: "Sync manager type : SubIndex 000"                                     , index: 0x1c00, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "SM output parameter : SubIndex 000"                                   , index: 0x1c32, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "SM output parameter : Sync mode"                                      , index: 0x1c32, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "SM output parameter : Cycle time"                                     , index: 0x1c32, sub_index: 2, bit: 0, bit_length: 32, access: "rw" }
                { name: "SM output parameter : Shift time"                                     , index: 0x1c32, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM output parameter : Sync modes supported"                           , index: 0x1c32, sub_index: 4, bit: 0, bit_length: 16, access: "ro" }
                { name: "SM output parameter : Minimum cycle time"                             , index: 0x1c32, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM output parameter : Calc and copy time"                             , index: 0x1c32, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM output parameter : Minimum delay time"                             , index: 0x1c32, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM output parameter : Command"                                        , index: 0x1c32, sub_index: 8, bit: 0, bit_length: 16, access: "rw" }
                { name: "SM output parameter : Maximum delay time"                             , index: 0x1c32, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM output parameter : SM event missed counter"                        , index: 0x1c32, sub_index: 11, bit: 0, bit_length: 16, access: "ro" }
                { name: "SM output parameter : Cycle exceeded counter"                         , index: 0x1c32, sub_index: 12, bit: 0, bit_length: 16, access: "ro" }
                { name: "SM output parameter : Shift too short counter"                        , index: 0x1c32, sub_index: 13, bit: 0, bit_length: 16, access: "ro" }
                { name: "SM output parameter : Sync error"                                     , index: 0x1c32, sub_index: 32, bit: 0, bit_length: 1, access: "ro" }
                { name: "SM input parameter : SubIndex 000"                                    , index: 0x1c33, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "SM input parameter : Sync mode"                                       , index: 0x1c33, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "SM input parameter : Cycle time"                                      , index: 0x1c33, sub_index: 2, bit: 0, bit_length: 32, access: "rw" }
                { name: "SM input parameter : Shift time"                                      , index: 0x1c33, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM input parameter : Sync modes supported"                            , index: 0x1c33, sub_index: 4, bit: 0, bit_length: 16, access: "ro" }
                { name: "SM input parameter : Minimum cycle time"                              , index: 0x1c33, sub_index: 5, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM input parameter : Calc and copy time"                              , index: 0x1c33, sub_index: 6, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM input parameter : Minimum delay time"                              , index: 0x1c33, sub_index: 7, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM input parameter : Command"                                         , index: 0x1c33, sub_index: 8, bit: 0, bit_length: 16, access: "rw" }
                { name: "SM input parameter : Maximum delay time"                              , index: 0x1c33, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "SM input parameter : SM event missed counter"                         , index: 0x1c33, sub_index: 11, bit: 0, bit_length: 16, access: "ro" }
                { name: "SM input parameter : Cycle exceeded counter"                          , index: 0x1c33, sub_index: 12, bit: 0, bit_length: 16, access: "ro" }
                { name: "SM input parameter : Shift too short counter"                         , index: 0x1c33, sub_index: 13, bit: 0, bit_length: 16, access: "ro" }
                { name: "SM input parameter : Sync error"                                      , index: 0x1c33, sub_index: 32, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : SubIndex 000"                                       , index: 0x6000, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC Inputs Ch.1 : Latch C valid"                                      , index: 0x6000, sub_index: 1, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Latch extern valid"                                 , index: 0x6000, sub_index: 2, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Set counter done"                                   , index: 0x6000, sub_index: 3, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Counter underflow"                                  , index: 0x6000, sub_index: 4, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Counter overflow"                                   , index: 0x6000, sub_index: 5, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Extrapolation stall"                                , index: 0x6000, sub_index: 8, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Status of input A"                                  , index: 0x6000, sub_index: 9, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Status of input B"                                  , index: 0x6000, sub_index: 10, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Status of input C"                                  , index: 0x6000, sub_index: 11, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Status of extern latch"                             , index: 0x6000, sub_index: 13, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Sync error"                                         , index: 0x6000, sub_index: 14, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : TxPDO Toggle"                                       , index: 0x6000, sub_index: 16, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Inputs Ch.1 : Counter value"                                      , index: 0x6000, sub_index: 17, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC Inputs Ch.1 : Latch value"                                        , index: 0x6000, sub_index: 18, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC Inputs Ch.1 : Timestamp"                                          , index: 0x6000, sub_index: 22, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM Inputs Ch.1 : SubIndex 000"                                       , index: 0x6010, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Inputs Ch.1 : Ready to enable"                                    , index: 0x6010, sub_index: 1, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Ready"                                              , index: 0x6010, sub_index: 2, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Warning"                                            , index: 0x6010, sub_index: 3, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Error"                                              , index: 0x6010, sub_index: 4, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Moving positive"                                    , index: 0x6010, sub_index: 5, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Moving negative"                                    , index: 0x6010, sub_index: 6, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Torque reduced"                                     , index: 0x6010, sub_index: 7, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Digital input 1"                                    , index: 0x6010, sub_index: 12, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Digital input 2"                                    , index: 0x6010, sub_index: 13, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Sync error"                                         , index: 0x6010, sub_index: 14, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : TxPDO Toggle"                                       , index: 0x6010, sub_index: 16, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Inputs Ch.1 : Info data 1"                                        , index: 0x6010, sub_index: 17, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Inputs Ch.1 : Info data 2"                                        , index: 0x6010, sub_index: 18, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Inputs Ch.1 : Internal position"                                  , index: 0x6010, sub_index: 20, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM Inputs Ch.1 : External position"                                  , index: 0x6010, sub_index: 21, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS Inputs Ch.1 : SubIndex 000"                                       , index: 0x6020, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS Inputs Ch.1 : Busy"                                               , index: 0x6020, sub_index: 1, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Inputs Ch.1 : In-Target"                                          , index: 0x6020, sub_index: 2, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Inputs Ch.1 : Warning"                                            , index: 0x6020, sub_index: 3, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Inputs Ch.1 : Error"                                              , index: 0x6020, sub_index: 4, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Inputs Ch.1 : Calibrated"                                         , index: 0x6020, sub_index: 5, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Inputs Ch.1 : Accelerate"                                         , index: 0x6020, sub_index: 6, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Inputs Ch.1 : Decelerate"                                         , index: 0x6020, sub_index: 7, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Inputs Ch.1 : Actual position"                                    , index: 0x6020, sub_index: 17, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS Inputs Ch.1 : Actual velocity"                                    , index: 0x6020, sub_index: 33, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Inputs Ch.1 : Actual drive time"                                  , index: 0x6020, sub_index: 34, bit: 0, bit_length: 32, access: "ro" }
                { name: "ENC Outputs Ch.1 : SubIndex 000"                                      , index: 0x7000, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC Outputs Ch.1 : Enable latch C"                                    , index: 0x7000, sub_index: 1, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Outputs Ch.1 : Enable latch extern on positive edge"              , index: 0x7000, sub_index: 2, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Outputs Ch.1 : Set counter"                                       , index: 0x7000, sub_index: 3, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Outputs Ch.1 : Enable latch extern on negative edge"              , index: 0x7000, sub_index: 4, bit: 0, bit_length: 1, access: "ro" }
                { name: "ENC Outputs Ch.1 : Set counter value"                                 , index: 0x7000, sub_index: 17, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM Outputs Ch.1 : SubIndex 000"                                      , index: 0x7010, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Outputs Ch.1 : Enable"                                            , index: 0x7010, sub_index: 1, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Outputs Ch.1 : Reset"                                             , index: 0x7010, sub_index: 2, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Outputs Ch.1 : Reduce torque"                                     , index: 0x7010, sub_index: 3, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Outputs Ch.1 : Position"                                          , index: 0x7010, sub_index: 17, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM Outputs Ch.1 : Velocity"                                          , index: 0x7010, sub_index: 33, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Outputs Ch.1 : SubIndex 000"                                      , index: 0x7020, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS Outputs Ch.1 : Execute"                                           , index: 0x7020, sub_index: 1, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Outputs Ch.1 : Emergency stop"                                    , index: 0x7020, sub_index: 2, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Outputs Ch.1 : Target position"                                   , index: 0x7020, sub_index: 17, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS Outputs Ch.1 : Velocity"                                          , index: 0x7020, sub_index: 33, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Outputs Ch.1 : Start type"                                        , index: 0x7020, sub_index: 34, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Outputs Ch.1 : Acceleration"                                      , index: 0x7020, sub_index: 35, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Outputs Ch.1 : Deceleration"                                      , index: 0x7020, sub_index: 36, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Outputs 2 Ch.1 : SubIndex 000"                                    , index: 0x7021, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS Outputs 2 Ch.1 : Enable auto start"                               , index: 0x7021, sub_index: 3, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Outputs 2 Ch.1 : Target position"                                 , index: 0x7021, sub_index: 17, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS Outputs 2 Ch.1 : Velocity"                                        , index: 0x7021, sub_index: 33, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Outputs 2 Ch.1 : Start type"                                      , index: 0x7021, sub_index: 34, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Outputs 2 Ch.1 : Acceleration"                                    , index: 0x7021, sub_index: 35, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Outputs 2 Ch.1 : Deceleration"                                    , index: 0x7021, sub_index: 36, bit: 0, bit_length: 16, access: "ro" }
                { name: "ENC Settings Ch.1 : SubIndex 000"                                     , index: 0x8000, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "ENC Settings Ch.1 : Disable filter"                                   , index: 0x8000, sub_index: 8, bit: 0, bit_length: 1, access: "rw" }
                { name: "ENC Settings Ch.1 : Enable micro increments"                          , index: 0x8000, sub_index: 10, bit: 0, bit_length: 1, access: "rw" }
                { name: "ENC Settings Ch.1 : Reversion of rotation"                            , index: 0x8000, sub_index: 14, bit: 0, bit_length: 1, access: "rw" }
                { name: "STM Motor Settings Ch.1 : SubIndex 000"                               , index: 0x8010, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Motor Settings Ch.1 : Maximal current"                            , index: 0x8010, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Reduced current"                            , index: 0x8010, sub_index: 2, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Nominal voltage"                            , index: 0x8010, sub_index: 3, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Motor coil resistance"                      , index: 0x8010, sub_index: 4, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Motor EMF"                                  , index: 0x8010, sub_index: 5, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Motor fullsteps"                            , index: 0x8010, sub_index: 6, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Encoder increments (4-fold)"                , index: 0x8010, sub_index: 7, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Start velocity"                             , index: 0x8010, sub_index: 9, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Drive on delay time"                        , index: 0x8010, sub_index: 16, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Motor Settings Ch.1 : Drive off delay time"                       , index: 0x8010, sub_index: 17, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings Ch.1 : SubIndex 000"                          , index: 0x8011, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Controller Settings Ch.1 : Kp factor (curr.)"                     , index: 0x8011, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings Ch.1 : Ki factor (curr.)"                     , index: 0x8011, sub_index: 2, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings Ch.1 : Inner window (curr.)"                  , index: 0x8011, sub_index: 3, bit: 0, bit_length: 8, access: "rw" }
                { name: "STM Controller Settings Ch.1 : Outer window (curr.)"                  , index: 0x8011, sub_index: 5, bit: 0, bit_length: 8, access: "rw" }
                { name: "STM Controller Settings Ch.1 : Filter cut off frequency (curr.)"      , index: 0x8011, sub_index: 6, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings Ch.1 : Ka factor (curr.)"                     , index: 0x8011, sub_index: 7, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings Ch.1 : Kd factor (curr.)"                     , index: 0x8011, sub_index: 8, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Features Ch.1 : SubIndex 000"                                     , index: 0x8012, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Features Ch.1 : Operation mode"                                   , index: 0x8012, sub_index: 1, bit: 0, bit_length: 4, access: "rw" }
                { name: "STM Features Ch.1 : Speed range"                                      , index: 0x8012, sub_index: 5, bit: 0, bit_length: 3, access: "rw" }
                { name: "STM Features Ch.1 : Feedback type"                                    , index: 0x8012, sub_index: 8, bit: 0, bit_length: 1, access: "rw" }
                { name: "STM Features Ch.1 : Invert motor polarity"                            , index: 0x8012, sub_index: 9, bit: 0, bit_length: 1, access: "rw" }
                { name: "STM Features Ch.1 : Select info data 1"                               , index: 0x8012, sub_index: 17, bit: 0, bit_length: 8, access: "rw" }
                { name: "STM Features Ch.1 : Select info data 2"                               , index: 0x8012, sub_index: 25, bit: 0, bit_length: 8, access: "rw" }
                { name: "STM Features Ch.1 : Invert digital input 1"                           , index: 0x8012, sub_index: 48, bit: 0, bit_length: 1, access: "rw" }
                { name: "STM Features Ch.1 : Invert digital input 2"                           , index: 0x8012, sub_index: 49, bit: 0, bit_length: 1, access: "rw" }
                { name: "STM Features Ch.1 : Function for input 1"                             , index: 0x8012, sub_index: 50, bit: 0, bit_length: 4, access: "rw" }
                { name: "STM Features Ch.1 : Function for input 2"                             , index: 0x8012, sub_index: 54, bit: 0, bit_length: 4, access: "rw" }
                { name: "STM Controller Settings 2 Ch.1 : SubIndex 000"                        , index: 0x8013, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Controller Settings 2 Ch.1 : Kp factor (velo./pos.)"              , index: 0x8013, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings 2 Ch.1 : Ki factor (velo./pos.)"              , index: 0x8013, sub_index: 2, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings 2 Ch.1 : Inner window (velo./pos.)"           , index: 0x8013, sub_index: 3, bit: 0, bit_length: 8, access: "rw" }
                { name: "STM Controller Settings 2 Ch.1 : Outer window (velo./pos.)"           , index: 0x8013, sub_index: 5, bit: 0, bit_length: 8, access: "rw" }
                { name: "STM Controller Settings 2 Ch.1 : Filter cut off frequency (velo./pos.)", index: 0x8013, sub_index: 6, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings 2 Ch.1 : Ka factor (velo./pos.)"              , index: 0x8013, sub_index: 7, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Controller Settings 2 Ch.1 : Kd factor (velo./pos.)"              , index: 0x8013, sub_index: 8, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : SubIndex 000"                                     , index: 0x8020, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS Settings Ch.1 : Velocity min."                                    , index: 0x8020, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Velocity max."                                    , index: 0x8020, sub_index: 2, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Acceleration pos."                                , index: 0x8020, sub_index: 3, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Acceleration neg."                                , index: 0x8020, sub_index: 4, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Deceleration pos."                                , index: 0x8020, sub_index: 5, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Deceleration neg."                                , index: 0x8020, sub_index: 6, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Emergency deceleration"                           , index: 0x8020, sub_index: 7, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Calibration position"                             , index: 0x8020, sub_index: 8, bit: 0, bit_length: 32, access: "rw" }
                { name: "POS Settings Ch.1 : Calibration velocity (towards plc cam)"           , index: 0x8020, sub_index: 9, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Calibration Velocity (off plc cam)"               , index: 0x8020, sub_index: 10, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Target window"                                    , index: 0x8020, sub_index: 11, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : In-Target timeout"                                , index: 0x8020, sub_index: 12, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Dead time compensation"                           , index: 0x8020, sub_index: 13, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Settings Ch.1 : Modulo factor"                                    , index: 0x8020, sub_index: 14, bit: 0, bit_length: 32, access: "rw" }
                { name: "POS Settings Ch.1 : Modulo tolerance window"                          , index: 0x8020, sub_index: 15, bit: 0, bit_length: 32, access: "rw" }
                { name: "POS Settings Ch.1 : Position lag max."                                , index: 0x8020, sub_index: 16, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Features Ch.1 : SubIndex 000"                                     , index: 0x8021, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS Features Ch.1 : Start type"                                       , index: 0x8021, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "POS Features Ch.1 : Time information"                                 , index: 0x8021, sub_index: 17, bit: 0, bit_length: 2, access: "rw" }
                { name: "POS Features Ch.1 : Invert calibration cam search direction"          , index: 0x8021, sub_index: 19, bit: 0, bit_length: 1, access: "rw" }
                { name: "POS Features Ch.1 : Invert sync impulse search direction"             , index: 0x8021, sub_index: 20, bit: 0, bit_length: 1, access: "rw" }
                { name: "POS Features Ch.1 : Emergency stop on position lag error"             , index: 0x8021, sub_index: 21, bit: 0, bit_length: 1, access: "rw" }
                { name: "POS Features Ch.1 : Enhanced diag history"                            , index: 0x8021, sub_index: 22, bit: 0, bit_length: 1, access: "rw" }
                { name: "STM Info data Ch.1 : SubIndex 000"                                    , index: 0x9010, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Info data Ch.1 : Status word"                                     , index: 0x9010, sub_index: 1, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data Ch.1 : Motor coil voltage A"                            , index: 0x9010, sub_index: 2, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data Ch.1 : Motor coil voltage B"                            , index: 0x9010, sub_index: 3, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data Ch.1 : Motor coil current A"                            , index: 0x9010, sub_index: 4, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data Ch.1 : Motor coil current B"                            , index: 0x9010, sub_index: 5, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data Ch.1 : Duty cycle A"                                    , index: 0x9010, sub_index: 6, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Info data Ch.1 : Duty cycle B"                                    , index: 0x9010, sub_index: 7, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Info data Ch.1 : Motor velocity"                                  , index: 0x9010, sub_index: 8, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data Ch.1 : Internal position"                               , index: 0x9010, sub_index: 9, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM Info data Ch.1 : External position"                               , index: 0x9010, sub_index: 19, bit: 0, bit_length: 32, access: "ro" }
                { name: "POS Info data Ch.1 : SubIndex 000"                                    , index: 0x9020, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS Info data Ch.1 : Status word"                                     , index: 0x9020, sub_index: 1, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Info data Ch.1 : State (drive controller)"                        , index: 0x9020, sub_index: 3, bit: 0, bit_length: 16, access: "ro" }
                { name: "POS Info data Ch.1 : Actual position lag"                             , index: 0x9020, sub_index: 4, bit: 0, bit_length: 32, access: "ro" }
                { name: "STM Diag data Ch.1 : SubIndex 000"                                    , index: 0xa010, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Diag data Ch.1 : Saturated"                                       , index: 0xa010, sub_index: 1, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Over temperature"                                , index: 0xa010, sub_index: 2, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Torque overload"                                 , index: 0xa010, sub_index: 3, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Under voltage"                                   , index: 0xa010, sub_index: 4, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Over voltage"                                    , index: 0xa010, sub_index: 5, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Short circuit A"                                 , index: 0xa010, sub_index: 6, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Short circuit B"                                 , index: 0xa010, sub_index: 7, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : No control power"                                , index: 0xa010, sub_index: 8, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Misc error"                                      , index: 0xa010, sub_index: 9, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Configuration"                                   , index: 0xa010, sub_index: 10, bit: 0, bit_length: 1, access: "ro" }
                { name: "STM Diag data Ch.1 : Actual operation mode"                           , index: 0xa010, sub_index: 17, bit: 0, bit_length: 4, access: "ro" }
                { name: "POS Diag data Ch.1 : SubIndex 000"                                    , index: 0xa020, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "POS Diag data Ch.1 : Command rejected"                                , index: 0xa020, sub_index: 1, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Diag data Ch.1 : Command aborted"                                 , index: 0xa020, sub_index: 2, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Diag data Ch.1 : Target overrun"                                  , index: 0xa020, sub_index: 3, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Diag data Ch.1 : Target timeout"                                  , index: 0xa020, sub_index: 4, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Diag data Ch.1 : Position lag"                                    , index: 0xa020, sub_index: 5, bit: 0, bit_length: 1, access: "ro" }
                { name: "POS Diag data Ch.1 : Emergency stop"                                  , index: 0xa020, sub_index: 6, bit: 0, bit_length: 1, access: "ro" }
                { name: "Modular device profile : SubIndex 000"                                , index: 0xf000, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "Modular device profile : Module index distance"                       , index: 0xf000, sub_index: 1, bit: 0, bit_length: 16, access: "ro" }
                { name: "Modular device profile : Maximum number of modules"                   , index: 0xf000, sub_index: 2, bit: 0, bit_length: 16, access: "ro" }
                { name: "Download revision : SubIndex 000"                                     , index: 0xf081, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "Download revision : Revision number"                                  , index: 0xf081, sub_index: 1, bit: 0, bit_length: 32, access: "rw" }
                { name: "STM Vendor data : SubIndex 000"                                       , index: 0xf80f, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Vendor data : PWM Frequency"                                      , index: 0xf80f, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Vendor data : Deadtime"                                           , index: 0xf80f, sub_index: 2, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Vendor data : Deadtime space"                                     , index: 0xf80f, sub_index: 3, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Vendor data : Warning temperature"                                , index: 0xf80f, sub_index: 4, bit: 0, bit_length: 8, access: "rw" }
                { name: "STM Vendor data : Switch off temperature"                             , index: 0xf80f, sub_index: 5, bit: 0, bit_length: 8, access: "rw" }
                { name: "STM Vendor data : Analog trigger point"                               , index: 0xf80f, sub_index: 6, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Vendor data : Calibration offset A"                               , index: 0xf80f, sub_index: 7, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Vendor data : Calibration offset B"                               , index: 0xf80f, sub_index: 8, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Info data : SubIndex 000"                                         , index: 0xf900, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Info data : Software version (driver)"                            , index: 0xf900, sub_index: 1, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data : Internal temperature"                                 , index: 0xf900, sub_index: 2, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Info data : Control voltage"                                      , index: 0xf900, sub_index: 4, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data : Motor supply voltage"                                 , index: 0xf900, sub_index: 5, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Info data : Cycle time"                                           , index: 0xf900, sub_index: 6, bit: 0, bit_length: 16, access: "ro" }
                { name: "STM Command : SubIndex 000"                                           , index: 0xfb00, sub_index: 0, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Command : Request"                                                , index: 0xfb00, sub_index: 1, bit: 0, bit_length: 16, access: "rw" }
                { name: "STM Command : Status"                                                 , index: 0xfb00, sub_index: 2, bit: 0, bit_length: 8, access: "ro" }
                { name: "STM Command : Response"                                               , index: 0xfb00, sub_index: 3, bit: 0, bit_length: 32, access: "ro" }
            ]
        }
