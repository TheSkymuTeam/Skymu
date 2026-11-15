# header.bmp
    .section .rodata

    .globl res_header_bmp
res_header_bmp:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/NSIS/header.bmp"

    .globl res_header_bmp_end
res_header_bmp_end:

    .section .note.GNU-stack,"",@progbits
