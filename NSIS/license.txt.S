# license.txt
    .section .rodata

    .globl res_license_txt
res_license_txt:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/NSIS/license.txt"

    .globl res_license_txt_end
res_license_txt_end:

    .section .note.GNU-stack,"",@progbits
