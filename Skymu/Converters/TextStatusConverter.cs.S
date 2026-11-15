# Converters/TextStatusConverter.cs
    .text

.globl m_Skymu_Converters_TextStatusConverter_Convert__arr_ref_ref_ref
.type m_Skymu_Converters_TextStatusConverter_Convert__arr_ref_ref_ref, @function
m_Skymu_Converters_TextStatusConverter_Convert__arr_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0001:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0002:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0003:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0004:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0005:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_000a:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0025
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_000c:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_000d:
    mov -80(%rbp), %rdi
    call shim_unbox
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0012:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0013:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0015:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_001a:
    lea .LS_0_m_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_001f:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0024:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0025:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0026:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0027:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0028:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0029:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0031
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_002b:
    mov -72(%rbp), %rax
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_002c:
    lea .LN_1_m_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_0031:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_TextStatusConverter_Convert__arr_ref_ref_ref, .-m_Skymu_Converters_TextStatusConverter_Convert__arr_ref_ref_ref

.globl m_Skymu_Converters_TextStatusConverter_ConvertBack__ref_arr_ref_ref
.type m_Skymu_Converters_TextStatusConverter_ConvertBack__ref_arr_ref_ref, @function
m_Skymu_Converters_TextStatusConverter_ConvertBack__ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_ConvertBack_ref_arr_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_TextStatusConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotSupportedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_ConvertBack_ref_arr_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_TextStatusConverter_ConvertBack_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_TextStatusConverter_ConvertBack__ref_arr_ref_ref, .-m_Skymu_Converters_TextStatusConverter_ConvertBack__ref_arr_ref_ref

.globl m_Skymu_Converters_TextStatusConverter_ctor__void
.type m_Skymu_Converters_TextStatusConverter_ctor__void, @function
m_Skymu_Converters_TextStatusConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_TextStatusConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_TextStatusConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_TextStatusConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_TextStatusConverter_ctor__void, .-m_Skymu_Converters_TextStatusConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref:
    .short 32, 109, 101, 109, 98, 101, 114, 115

.LN_1_m_Skymu_Converters_TextStatusConverter_Convert_arr_ref_ref_ref:
    .asciz "Empty"

.LN_0_m_Skymu_Converters_TextStatusConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "System.NotSupportedException"

    .section .note.GNU-stack,"",@progbits
