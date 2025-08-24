#[test_only]
module multisig::multisig_test_utils;

use multisig::multisig;

/// Returns test multisig public keys for testing
#[test_only]
public fun get_test_multisig_pks(): vector<vector<u8>> {
    // Simple test public keys - 32 bytes each
    vector[
        vector[
            1u8,
            2u8,
            3u8,
            4u8,
            5u8,
            6u8,
            7u8,
            8u8,
            9u8,
            10u8,
            11u8,
            12u8,
            13u8,
            14u8,
            15u8,
            16u8,
            17u8,
            18u8,
            19u8,
            20u8,
            21u8,
            22u8,
            23u8,
            24u8,
            25u8,
            26u8,
            27u8,
            28u8,
            29u8,
            30u8,
            31u8,
            32u8,
        ],
        vector[
            33u8,
            34u8,
            35u8,
            36u8,
            37u8,
            38u8,
            39u8,
            40u8,
            41u8,
            42u8,
            43u8,
            44u8,
            45u8,
            46u8,
            47u8,
            48u8,
            49u8,
            50u8,
            51u8,
            52u8,
            53u8,
            54u8,
            55u8,
            56u8,
            57u8,
            58u8,
            59u8,
            60u8,
            61u8,
            62u8,
            63u8,
            64u8,
        ],
    ]
}

/// Returns test multisig weights for testing
#[test_only]
public fun get_test_multisig_weights(): vector<u8> {
    vector[1u8, 1u8]
}

/// Returns test multisig threshold for testing
#[test_only]
public fun get_test_multisig_threshold(): u16 {
    2u16
}

/// Returns the derived multisig address for testing
#[test_only]
public fun get_test_multisig_address(): address {
    multisig::derive_multisig_address_quiet(
        get_test_multisig_pks(),
        get_test_multisig_weights(),
        get_test_multisig_threshold(),
    )
}