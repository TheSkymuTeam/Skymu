# Converters/ForwardedMessageStatusConverter.cs
    .text

.globl m_Skymu_Converters_ForwardedMessageStatusConverter_Convert__arr_ref_ref_ref
.type m_Skymu_Converters_ForwardedMessageStatusConverter_Convert__arr_ref_ref_ref, @function
m_Skymu_Converters_ForwardedMessageStatusConverter_Convert__arr_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0001:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0002:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0003:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0004:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0005:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_000a:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0016
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_000c:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_000d:
    mov -80(%rbp), %rdi
    call shim_unbox
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0012:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0013:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0014:
    jmp .Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0017
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0016:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0017:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0018:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0019:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_004a
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_001b:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_001c:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_001d:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_001e:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0023:
    mov -88(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0028:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0030
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_002a:
    lea .LS_0_m_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_002f:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0030:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0031:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0032:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0033:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0034:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_003a
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0036:
    mov -80(%rbp), %rax
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0037:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0038:
    jmp .Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_003f
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_003a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_003f:
    lea .LS_1_m_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0044:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_0049:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_004a:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_004b:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_004c:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_004d:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ForwardedMessageStatusConverter_Convert__arr_ref_ref_ref, .-m_Skymu_Converters_ForwardedMessageStatusConverter_Convert__arr_ref_ref_ref

.globl m_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack__ref_arr_ref_ref
.type m_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack__ref_arr_ref_ref, @function
m_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack__ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack_ref_arr_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotImplementedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack_ref_arr_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack__ref_arr_ref_ref, .-m_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack__ref_arr_ref_ref

.globl m_Skymu_Converters_ForwardedMessageStatusConverter_ctor__void
.type m_Skymu_Converters_ForwardedMessageStatusConverter_ctor__void, @function
m_Skymu_Converters_ForwardedMessageStatusConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ForwardedMessageStatusConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ForwardedMessageStatusConverter_ctor__void, .-m_Skymu_Converters_ForwardedMessageStatusConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref:
    .short 70, 111, 114, 119, 97, 114, 100, 101, 100, 32, 109, 101, 115, 115, 97, 103, 101

.LS_1_m_Skymu_Converters_ForwardedMessageStatusConverter_Convert_arr_ref_ref_ref:
    .short 32, 40, 102, 111, 114, 119, 97, 114, 100, 101, 100, 41

.LN_0_m_Skymu_Converters_ForwardedMessageStatusConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "System.NotImplementedException"

    .section .note.GNU-stack,"",@progbits
