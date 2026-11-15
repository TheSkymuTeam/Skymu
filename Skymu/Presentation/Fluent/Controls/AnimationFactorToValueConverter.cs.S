# Presentation/Fluent/Controls/AnimationFactorToValueConverter.cs
    .text

.globl m_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack__ref_arr_ref_ref
.type m_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack__ref_arr_ref_ref, @function
m_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack__ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack_ref_arr_ref_ref_0000:
    lea .LN_0_m_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotImplementedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack_ref_arr_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack__ref_arr_ref_ref, .-m_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack__ref_arr_ref_ref

.globl m_Fluent_Controls_AnimationFactorToValueConverter_ctor__void
.type m_Fluent_Controls_AnimationFactorToValueConverter_ctor__void, @function
m_Fluent_Controls_AnimationFactorToValueConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Fluent_Controls_AnimationFactorToValueConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Fluent_Controls_AnimationFactorToValueConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Fluent_Controls_AnimationFactorToValueConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Fluent_Controls_AnimationFactorToValueConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Fluent_Controls_AnimationFactorToValueConverter_ctor__void, .-m_Fluent_Controls_AnimationFactorToValueConverter_ctor__void

    .globl m_Fluent_Controls_AnimationFactorToValueConverter_Convert__arr_ref_ref_ref
    .type m_Fluent_Controls_AnimationFactorToValueConverter_Convert__arr_ref_ref_ref, @function
m_Fluent_Controls_AnimationFactorToValueConverter_Convert__arr_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Fluent_Controls_AnimationFactorToValueConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Fluent_Controls_AnimationFactorToValueConverter_Convert__arr_ref_ref_ref, .-m_Fluent_Controls_AnimationFactorToValueConverter_Convert__arr_ref_ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Fluent_Controls_AnimationFactorToValueConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "System.NotImplementedException"

.LSTUB_m_Fluent_Controls_AnimationFactorToValueConverter_Convert_arr_ref_ref_ref:
    .asciz "Fluent.Controls.AnimationFactorToValueConverter::Convert  [inconsistent stack depth at IL_006c: 3 vs 4]"

    .section .note.GNU-stack,"",@progbits
