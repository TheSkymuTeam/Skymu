# Converters/PreviewVisibilityConverter.cs
    .text

.globl m_Skymu_Converters_PreviewVisibilityConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_PreviewVisibilityConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_PreviewVisibilityConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0001:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0006:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0007:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0008:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0017
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_000a:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_000b:
    lea .LS_0_m_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0010:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0015:
    jmp .Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0018
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0017:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0018:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0019:
    mov -88(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_001e:
    lea .LS_1_m_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0023:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0028:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0029:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_002a:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    xor %ecx, %eax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_002b:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0030
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_002d:
    mov $2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_002e:
    jmp .Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0031
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0030:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0031:
    mov -88(%rbp), %rdi
    lea .LN_2_m_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_0036:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_PreviewVisibilityConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_PreviewVisibilityConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_PreviewVisibilityConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_PreviewVisibilityConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_PreviewVisibilityConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_PreviewVisibilityConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotSupportedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_PreviewVisibilityConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_PreviewVisibilityConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_PreviewVisibilityConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_PreviewVisibilityConverter_ctor__void
.type m_Skymu_Converters_PreviewVisibilityConverter_ctor__void, @function
m_Skymu_Converters_PreviewVisibilityConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_PreviewVisibilityConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_PreviewVisibilityConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_PreviewVisibilityConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_PreviewVisibilityConverter_ctor__void, .-m_Skymu_Converters_PreviewVisibilityConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref:
    .short 64, 115, 107, 121, 109, 117, 47, 115, 101, 110, 100, 105, 110, 103

.LS_1_m_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref:
    .short 105, 110, 118, 101, 114, 116

.LN_2_m_Skymu_Converters_PreviewVisibilityConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_0_m_Skymu_Converters_PreviewVisibilityConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.NotSupportedException"

    .section .note.GNU-stack,"",@progbits
