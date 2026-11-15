# installer.ico
    .section .rodata

    .globl res_installer_ico
res_installer_ico:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/NSIS/installer.ico"

    .globl res_installer_ico_end
res_installer_ico_end:

    .section .note.GNU-stack,"",@progbits
