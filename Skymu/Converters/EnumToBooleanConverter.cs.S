# Converters/EnumToBooleanConverter.cs
    .text

.globl m_Skymu_Converters_EnumToBooleanConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_EnumToBooleanConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_EnumToBooleanConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0001:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0006
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0003:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0004:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_000d
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0006:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0007:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_000c:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_000d:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_000e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0013:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0014:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0019:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_001a:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Equals__ref_v
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_001f:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_0024:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_EnumToBooleanConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_EnumToBooleanConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_EnumToBooleanConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_EnumToBooleanConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_EnumToBooleanConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0001:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0006
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0003:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0004:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_000c
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0006:
    lea .LN_0_m_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_000b:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_000c:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_000d:
    mov -88(%rbp), %rdi
    call shim_unbox
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0012:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0059
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0014:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0015:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_001a:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_001b:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_001c:
    mov -88(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0021:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0022:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0024:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0025:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0026:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0027:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0028:
    jmp .Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0042
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_002a:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_002b:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_002c:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_002d:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_002e:
    mov -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_002f:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Type_get_IsEnum__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0034:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_003e
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0036:
    mov -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0037:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0038:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_Enum_Parse__ref_ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_003d:
    mov -104(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_003e:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_003f:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0040:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0041:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0042:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0043:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0044:
    mov -96(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0045:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0046:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_002a
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0048:
    lea .LS_1_m_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    mov $87, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_004d:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_004e:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_String_Format__ref_ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0053:
    lea .LN_2_m_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ArgumentException_ctor__ref
    mov %r12, -104(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0058:
    mov -104(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_0059:
    lea .LN_3_m_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_005e:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_EnumToBooleanConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_EnumToBooleanConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_EnumToBooleanConverter_ctor__void
.type m_Skymu_Converters_EnumToBooleanConverter_ctor__void, @function
m_Skymu_Converters_EnumToBooleanConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_EnumToBooleanConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_EnumToBooleanConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_EnumToBooleanConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_EnumToBooleanConverter_ctor__void, .-m_Skymu_Converters_EnumToBooleanConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Boolean"

.LN_1_m_Skymu_Converters_EnumToBooleanConverter_Convert_ref_ref_ref_ref:
    .asciz "System.Boolean"

.LN_0_m_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "DoNothing"

.LS_1_m_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref:
    .short 116, 97, 114, 103, 101, 116, 84, 121, 112, 101, 32, 123, 48, 125, 32, 105, 115, 32, 110, 111, 116, 32, 97, 110, 32, 101, 110, 117, 109, 46, 32, 85, 115, 101, 32, 120, 58, 83, 116, 97, 116, 105, 99, 32, 111, 114, 32, 101, 110, 115, 117, 114, 101, 32, 98, 105, 110, 100, 105, 110, 103, 32, 116, 97, 114, 103, 101, 116, 115, 32, 97, 110, 32, 101, 110, 117, 109, 32, 112, 114, 111, 112, 101, 114, 116, 121, 46

.LN_2_m_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.ArgumentException"

.LN_3_m_Skymu_Converters_EnumToBooleanConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "DoNothing"

    .section .note.GNU-stack,"",@progbits
