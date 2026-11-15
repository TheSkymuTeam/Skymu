# DebugConfig.cs
    .text

.globl m_Skymu_DebugConfig_ctor__void
.type m_Skymu_DebugConfig_ctor__void, @function
m_Skymu_DebugConfig_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_DebugConfig_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_DebugConfig_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_DebugConfig_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_DebugConfig_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_DebugConfig_ctor__void, .-m_Skymu_DebugConfig_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .note.GNU-stack,"",@progbits
