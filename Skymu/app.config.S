# app.config
    .section .rodata

    .globl res_app_config
res_app_config:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/Skymu/app.config"

    .globl res_app_config_end
res_app_config_end:

    .section .note.GNU-stack,"",@progbits
