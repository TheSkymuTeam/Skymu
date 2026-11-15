# header.psd
    .section .rodata

    .globl res_header_psd
res_header_psd:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/NSIS/header.psd"

    .globl res_header_psd_end
res_header_psd_end:

    .section .note.GNU-stack,"",@progbits
