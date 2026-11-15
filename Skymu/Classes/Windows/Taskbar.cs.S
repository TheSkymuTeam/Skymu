# Classes/Windows/Taskbar.cs
    .text

.globl m_Skymu_Native_Windows_Taskbar_ctor__void
.type m_Skymu_Native_Windows_Taskbar_ctor__void, @function
m_Skymu_Native_Windows_Taskbar_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Taskbar_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Taskbar_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_Taskbar_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Taskbar_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Taskbar_ctor__void, .-m_Skymu_Native_Windows_Taskbar_ctor__void

    .globl m_Skymu_Native_Windows_Taskbar_marshal__b
    .type m_Skymu_Native_Windows_Taskbar_marshal__b, @function
m_Skymu_Native_Windows_Taskbar_marshal__b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Taskbar_marshal_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Taskbar_marshal__b, .-m_Skymu_Native_Windows_Taskbar_marshal__b

    .globl m_Skymu_Native_Windows_Taskbar_Flash__ref
    .type m_Skymu_Native_Windows_Taskbar_Flash__ref, @function
m_Skymu_Native_Windows_Taskbar_Flash__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Taskbar_Flash_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Taskbar_Flash__ref, .-m_Skymu_Native_Windows_Taskbar_Flash__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LSTUB_m_Skymu_Native_Windows_Taskbar_marshal_b:
    .asciz "Skymu.Native.Windows.Taskbar::marshal  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Taskbar_Flash_ref:
    .asciz "Skymu.Native.Windows.Taskbar::Flash  [ldtoken (metadata token)]"

    .section .note.GNU-stack,"",@progbits
