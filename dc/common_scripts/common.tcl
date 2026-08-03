# Read libraries
set search_path [list "." "/courses/ee6350/pdk2025/tcbn65gplus/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn65gplus_200a" "/tools/synopsys/syn/U-2022.12-SP7/libraries/syn"]
set synthetic_library [list "dw_foundation.sldb"]
set target_db "tcbn65gplustc_ccs.db"
if {[info exists ::env(DC_TARGET_LIBRARY)]} {
    set target_db $::env(DC_TARGET_LIBRARY)
}
set link_library [list "*" $target_db "dw_foundation.sldb"]
set target_library [list $target_db]
