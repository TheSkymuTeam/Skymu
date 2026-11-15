# Properties/launchSettings.json
    .section .rodata

    .globl res_properties_launchsettings_json
res_properties_launchsettings_json:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/Skymu/Properties/launchSettings.json"

    .globl res_properties_launchsettings_json_end
res_properties_launchsettings_json_end:

    .section .note.GNU-stack,"",@progbits
