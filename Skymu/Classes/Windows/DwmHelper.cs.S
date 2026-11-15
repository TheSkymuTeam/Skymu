# Classes/Windows/DwmHelper.cs
    .text

.globl m_Skymu_Native_Windows_DwmHelper_IsDwmEnabled__void
.type m_Skymu_Native_Windows_DwmHelper_IsDwmEnabled__void, @function
m_Skymu_Native_Windows_DwmHelper_IsDwmEnabled__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0000:
    call m_System_Environment_get_OSVersion__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0005:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_OperatingSystem_get_Version__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_000a:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Version_get_Major__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_000f:
    mov $6, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0010:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    jge .Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0014
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0012:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0013:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0014:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0016:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_DwmHelper_DwmIsCompositionEnabled__v
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_001b:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_001c:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_001e:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_001f:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_0020:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_DwmHelper_IsDwmEnabled_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_DwmHelper_IsDwmEnabled__void, .-m_Skymu_Native_Windows_DwmHelper_IsDwmEnabled__void

.globl m_Skymu_Native_Windows_DwmHelper_ctor__void
.type m_Skymu_Native_Windows_DwmHelper_ctor__void, @function
m_Skymu_Native_Windows_DwmHelper_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_DwmHelper_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_DwmHelper_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_DwmHelper_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_DwmHelper_ctor__void, .-m_Skymu_Native_Windows_DwmHelper_ctor__void

    .globl m_Skymu_Native_Windows_DwmHelper_DwmIsCompositionEnabled__ref
    .type m_Skymu_Native_Windows_DwmHelper_DwmIsCompositionEnabled__ref, @function
m_Skymu_Native_Windows_DwmHelper_DwmIsCompositionEnabled__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_DwmHelper_DwmIsCompositionEnabled_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_DwmHelper_DwmIsCompositionEnabled__ref, .-m_Skymu_Native_Windows_DwmHelper_DwmIsCompositionEnabled__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LSTUB_m_Skymu_Native_Windows_DwmHelper_DwmIsCompositionEnabled_ref:
    .asciz "Skymu.Native.Windows.DwmHelper::DwmIsCompositionEnabled  [P/Invoke declaration (native import, no IL body)]"

    .section .note.GNU-stack,"",@progbits
