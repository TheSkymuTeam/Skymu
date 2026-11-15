# Converters/FormatFullTextConverter.cs
    .text

.globl m_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle__void
.type m_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle__void, @function
m_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle__void, .-m_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle__void

.globl m_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle__ref
.type m_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle__ref, @function
m_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle__ref, .-m_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle__ref

.globl m_Skymu_Converters_FormatFullTextConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_FormatFullTextConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_FormatFullTextConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0001:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0006:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0007:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0008:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0010
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_000a:
    lea .LN_0_m_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_000f:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0010:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0011:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0013:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_0018:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_Skymu_Formatting_Formatter_Parse__ref_b_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_001d:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullTextConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_FormatFullTextConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_FormatFullTextConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_FormatFullTextConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_FormatFullTextConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_FormatFullTextConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotSupportedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_FormatFullTextConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullTextConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_FormatFullTextConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_FormatFullTextConverter_ctor__void
.type m_Skymu_Converters_FormatFullTextConverter_ctor__void, @function
m_Skymu_Converters_FormatFullTextConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_FormatFullTextConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_FormatFullTextConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_FormatFullTextConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_FormatFullTextConverter_ctor__void, .-m_Skymu_Converters_FormatFullTextConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_FormatFullTextConverter_get_ViewerStyle_void:
    .asciz "<ViewerStyle>k__BackingField"

.LN_0_m_Skymu_Converters_FormatFullTextConverter_set_ViewerStyle_ref:
    .asciz "<ViewerStyle>k__BackingField"

.LN_0_m_Skymu_Converters_FormatFullTextConverter_Convert_ref_ref_ref_ref:
    .asciz "UnsetValue"

.LN_0_m_Skymu_Converters_FormatFullTextConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.NotSupportedException"

    .section .note.GNU-stack,"",@progbits
