# Converters/ReplyBodyConverter.cs
    .text

.globl m_Skymu_Converters_ReplyBodyConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_ReplyBodyConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_ReplyBodyConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0001:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0006:
    mov -64(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_000b:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0013
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_000d:
    lea .LS_0_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0012:
    mov -64(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0013:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0014:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0019:
    lea .LS_1_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_001e:
    lea .LS_2_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0023:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0028:
    lea .LS_3_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_002d:
    lea .LS_4_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0032:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_0037:
    mov -64(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ReplyBodyConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_ReplyBodyConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_ReplyBodyConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_ReplyBodyConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_ReplyBodyConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_ReplyBodyConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotImplementedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_ReplyBodyConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ReplyBodyConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_ReplyBodyConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_ReplyBodyConverter_ctor__void
.type m_Skymu_Converters_ReplyBodyConverter_ctor__void, @function
m_Skymu_Converters_ReplyBodyConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_ReplyBodyConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_ReplyBodyConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ReplyBodyConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ReplyBodyConverter_ctor__void, .-m_Skymu_Converters_ReplyBodyConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref:
    .short 91, 109, 101, 100, 105, 97, 93

.LS_1_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref:
    .short 13

.LS_2_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref:
    .short 32

.LS_3_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref:
    .short 10

.LS_4_m_Skymu_Converters_ReplyBodyConverter_Convert_ref_ref_ref_ref:
    .short 32

.LN_0_m_Skymu_Converters_ReplyBodyConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.NotImplementedException"

    .section .note.GNU-stack,"",@progbits
