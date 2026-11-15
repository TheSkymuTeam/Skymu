# App.xaml
    .section .rodata

    .globl res_app_xaml
res_app_xaml:
    .incbin "/home/computer/Documents/GitHub/Skymu/archive/Skymu/App.xaml"

    .globl res_app_xaml_end
res_app_xaml_end:

    .section .note.GNU-stack,"",@progbits
