# Shaders/Darken.ps
    .section .rodata

    .globl res_shaders_darken_ps
res_shaders_darken_ps:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/Skymu/Shaders/Darken.ps"

    .globl res_shaders_darken_ps_end
res_shaders_darken_ps_end:

    .section .note.GNU-stack,"",@progbits
