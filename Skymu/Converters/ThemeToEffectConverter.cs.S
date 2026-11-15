# Converters/ThemeToEffectConverter.cs
    .text

.globl m_Skymu_Converters_ThemeToEffectConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_ThemeToEffectConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_ThemeToEffectConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref_0000:
    call m_Skymu_Universal_get_IsDarkTheme__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref_000d
.Lm_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref_0007:
    lea .LN_0_m_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Shaders_DarkenShader_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref_000c:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref_000d:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref_000e:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ThemeToEffectConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_ThemeToEffectConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_ThemeToEffectConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_ThemeToEffectConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_ThemeToEffectConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ThemeToEffectConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_ThemeToEffectConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotImplementedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_ThemeToEffectConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_ThemeToEffectConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ThemeToEffectConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_ThemeToEffectConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_ThemeToEffectConverter_ctor__void
.type m_Skymu_Converters_ThemeToEffectConverter_ctor__void, @function
m_Skymu_Converters_ThemeToEffectConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_ThemeToEffectConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_ThemeToEffectConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_ThemeToEffectConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ThemeToEffectConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ThemeToEffectConverter_ctor__void, .-m_Skymu_Converters_ThemeToEffectConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_ThemeToEffectConverter_Convert_ref_ref_ref_ref:
    .asciz "Skymu.Shaders.DarkenShader"

.LN_0_m_Skymu_Converters_ThemeToEffectConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.NotImplementedException"

    .section .note.GNU-stack,"",@progbits
