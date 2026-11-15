# Converters/IsCurrentUserToVisibilityConverter.cs
    .text

.globl m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0001:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0006:
    lea .LN_0_m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_000b:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_000c:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0012
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_000e:
    mov -64(%rbp), %rax
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_000f:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0010:
    jmp .Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0017
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0012:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0017:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_001c:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0021
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_001e:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_001f:
    jmp .Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0022
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0021:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0022:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_0027:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotImplementedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor__void
.type m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor__void, @function
m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor__void, .-m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref:
    .asciz "CurrentUser"

.LN_1_m_Skymu_Converters_IsCurrentUserToVisibilityConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_0_m_Skymu_Converters_IsCurrentUserToVisibilityConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.NotImplementedException"

    .section .note.GNU-stack,"",@progbits
