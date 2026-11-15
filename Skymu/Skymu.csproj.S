# Skymu.csproj
    .section .rodata

    .globl res_skymu_csproj
res_skymu_csproj:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/Skymu/Skymu.csproj"

    .globl res_skymu_csproj_end
res_skymu_csproj_end:

    .section .note.GNU-stack,"",@progbits
