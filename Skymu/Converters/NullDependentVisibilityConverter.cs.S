# Converters/NullDependentVisibilityConverter.cs
    .text

.globl m_Skymu_Converters_NullDependentVisibilityConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_NullDependentVisibilityConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_NullDependentVisibilityConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0001:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0006:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0007:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0008:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0019
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_000a:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_000b:
    mov -72(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0010:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0019
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0012:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0013:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0018:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0019:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_001a:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_001f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0030
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0021:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0022:
    mov -80(%rbp), %rdi
    call m_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0027:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0030
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0029:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_002a:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_002f:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0030:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0031:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_003a
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0033:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0034:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0039:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_003a:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_003b:
    mov -80(%rbp), %rdi
    lea .LN_3_m_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_0040:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_NullDependentVisibilityConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_NullDependentVisibilityConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotImplementedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_NullDependentVisibilityConverter_ctor__void
.type m_Skymu_Converters_NullDependentVisibilityConverter_ctor__void, @function
m_Skymu_Converters_NullDependentVisibilityConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_NullDependentVisibilityConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_NullDependentVisibilityConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_NullDependentVisibilityConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_NullDependentVisibilityConverter_ctor__void, .-m_Skymu_Converters_NullDependentVisibilityConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_1_m_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_2_m_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_3_m_Skymu_Converters_NullDependentVisibilityConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_0_m_Skymu_Converters_NullDependentVisibilityConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.NotImplementedException"

    .section .note.GNU-stack,"",@progbits
