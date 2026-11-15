# Shaders/DarkenLighten.ps
    .section .rodata

    .globl res_shaders_darkenlighten_ps
res_shaders_darkenlighten_ps:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/Skymu/Shaders/DarkenLighten.ps"

    .globl res_shaders_darkenlighten_ps_end
res_shaders_darkenlighten_ps_end:

    .section .note.GNU-stack,"",@progbits
