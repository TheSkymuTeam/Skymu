# app.manifest
    .section .rodata

    .globl res_app_manifest
res_app_manifest:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/Skymu/app.manifest"

    .globl res_app_manifest_end
res_app_manifest_end:

    .section .note.GNU-stack,"",@progbits
