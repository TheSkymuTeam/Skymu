# Converters/MsgIDMultiToVisibilityConverter.cs
    .text

.globl m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert__arr_ref_ref_ref
.type m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert__arr_ref_ref_ref, @function
m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert__arr_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0001:
    mov -56(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0002:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0003:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0004:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jge .Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_000d
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0006:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0007:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_000c:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_000d:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_000e:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_000f:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0010:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0023
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0012:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0013:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0014:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0015:
    mov -72(%rbp), %rdi
    call shim_unbox
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_001a:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0023
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_001c:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_001d:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0022:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0023:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0024:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0025:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0026:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_002b:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_002c:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_002d:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_002e:
    mov -88(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0033:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0038:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_003d
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_003a:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_003b:
    jmp .Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_003e
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_003d:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_003e:
    mov -88(%rbp), %rdi
    lea .LN_2_m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_0043:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert__arr_ref_ref_ref, .-m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert__arr_ref_ref_ref

.globl m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack__ref_arr_ref_ref
.type m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack__ref_arr_ref_ref, @function
m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack__ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack_ref_arr_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotSupportedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack_ref_arr_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack__ref_arr_ref_ref, .-m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack__ref_arr_ref_ref

.globl m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor__void
.type m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor__void, @function
m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor__void, .-m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_1_m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_2_m_Skymu_Converters_MsgIDMultiToVisibilityConverter_Convert_arr_ref_ref_ref:
    .asciz "System.Windows.Visibility"

.LN_0_m_Skymu_Converters_MsgIDMultiToVisibilityConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "System.NotSupportedException"

    .section .note.GNU-stack,"",@progbits
