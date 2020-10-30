module.exports =

        {  #slave 0
            product_name: "EL1008"
            vendor_id:    0x2
            product_code: 0x03f03052
            revision_id:  0x00120000
            pdos: [
                {
                    mapping_name:  "Channel 1",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a00,
                    sync_manager:  0,
                    pdo_list: [
                        { name: "Channel 1 : Input"                                                    , index: 0x6000, sub_index: 1, bit: 0, bit_length: 1 }
                    ]
                }
                {
                    mapping_name:  "Channel 2",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a01,
                    sync_manager:  0,
                    pdo_list: [
                        { name: "Channel 2 : Input"                                                    , index: 0x6010, sub_index: 1, bit: 0, bit_length: 1 }
                    ]
                }
                {
                    mapping_name:  "Channel 3",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a02,
                    sync_manager:  0,
                    pdo_list: [
                        { name: "Channel 3 : Input"                                                    , index: 0x6020, sub_index: 1, bit: 0, bit_length: 1 }
                    ]
                }
                {
                    mapping_name:  "Channel 4",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a03,
                    sync_manager:  0,
                    pdo_list: [
                        { name: "Channel 4 : Input"                                                    , index: 0x6030, sub_index: 1, bit: 0, bit_length: 1 }
                    ]
                }
                {
                    mapping_name:  "Channel 5",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a04,
                    sync_manager:  0,
                    pdo_list: [
                        { name: "Channel 5 : Input"                                                    , index: 0x6040, sub_index: 1, bit: 0, bit_length: 1 }
                    ]
                }
                {
                    mapping_name:  "Channel 6",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a05,
                    sync_manager:  0,
                    pdo_list: [
                        { name: "Channel 6 : Input"                                                    , index: 0x6050, sub_index: 1, bit: 0, bit_length: 1 }
                    ]
                }
                {
                    mapping_name:  "Channel 7",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a06,
                    sync_manager:  0,
                    pdo_list: [
                        { name: "Channel 7 : Input"                                                    , index: 0x6060, sub_index: 1, bit: 0, bit_length: 1 }
                    ]
                }
                {
                    mapping_name:  "Channel 8",
                    direction:     "TX",  # From slave to master
                    mapping_index: 0x1a07,
                    sync_manager:  0,
                    pdo_list: [
                        { name: "Channel 8 : Input"                                                    , index: 0x6070, sub_index: 1, bit: 0, bit_length: 1 }
                    ]
                }
            ]
            sdos: [
            ]
        }
