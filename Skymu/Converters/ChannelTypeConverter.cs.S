# Converters/ChannelTypeConverter.cs
    .text

.globl m_Skymu_Converters_ChannelTypeConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_ChannelTypeConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_ChannelTypeConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_0001:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_0006:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_001b
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_0008:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_0009:
    mov -72(%rbp), %rdi
    call shim_unbox
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_000e:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_000f:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_0010:
    mov -72(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_GetIntFromChannelType__v
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_0015:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_001a:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_001b:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_001c:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_0021:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ChannelTypeConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_ChannelTypeConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_ChannelTypeConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_ChannelTypeConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_ChannelTypeConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_ChannelTypeConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ChannelTypeConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ChannelTypeConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_ChannelTypeConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_ChannelTypeConverter_ctor__void
.type m_Skymu_Converters_ChannelTypeConverter_ctor__void, @function
m_Skymu_Converters_ChannelTypeConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_ChannelTypeConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_ChannelTypeConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ChannelTypeConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ChannelTypeConverter_ctor__void, .-m_Skymu_Converters_ChannelTypeConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Int32"

.LN_1_m_Skymu_Converters_ChannelTypeConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Int32"

.LN_0_m_Skymu_Converters_ChannelTypeConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "DoNothing"

    .section .note.GNU-stack,"",@progbits
