# installer-beta.ico
    .section .rodata

    .globl res_installer_beta_ico
res_installer_beta_ico:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/NSIS/installer-beta.ico"

    .globl res_installer_beta_ico_end
res_installer_beta_ico_end:

    .section .note.GNU-stack,"",@progbits
