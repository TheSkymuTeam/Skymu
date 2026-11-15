# Converters/ByteArrayToImageSourceConverter.cs
    .text

.globl m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert__arr_ref_ref_ref
.type m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert__arr_ref_ref_ref, @function
m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert__arr_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0001:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0002:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0003:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0008:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0009:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_000a:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_000b:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_000c:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0011:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0012:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0013:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0020
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0015:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0016:
    mov -88(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0017:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0020
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0019:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_001a:
    mov -96(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_GenerateFromArray__arr
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_001f:
    mov -96(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0020:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0021:
    lea .LS_0_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0026:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_002b:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0033
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_002d:
    lea .LN_1_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0032:
    mov -96(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0033:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0034:
    lea .LS_2_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0039:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_003e:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0046
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0040:
    lea .LN_3_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0045:
    mov -96(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_0046:
    lea .LN_4_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_004b:
    mov -96(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert__arr_ref_ref_ref, .-m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert__arr_ref_ref_ref

.globl m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack__ref_arr_ref_ref
.type m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack__ref_arr_ref_ref, @function
m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack__ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_0000:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_0001:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_0007:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_0008:
    lea .LN_0_m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_000d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_000e:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_000f:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_0010:
    lea .LN_1_m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_0015:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_0016:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack__ref_arr_ref_ref, .-m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack__ref_arr_ref_ref

.globl m_Skymu_Converters_ByteArrayToImageSourceConverter_ctor__void
.type m_Skymu_Converters_ByteArrayToImageSourceConverter_ctor__void, @function
m_Skymu_Converters_ByteArrayToImageSourceConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ByteArrayToImageSourceConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ByteArrayToImageSourceConverter_ctor__void, .-m_Skymu_Converters_ByteArrayToImageSourceConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref:
    .short 103, 114, 111, 117, 112

.LN_1_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref:
    .asciz "GroupAvatar"

.LS_2_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref:
    .short 117, 110, 107, 110, 111, 119, 110

.LN_3_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref:
    .asciz "UnknownAvatar"

.LN_4_m_Skymu_Converters_ByteArrayToImageSourceConverter_Convert_arr_ref_ref_ref:
    .asciz "AnonymousAvatar"

.LN_0_m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "DoNothing"

.LN_1_m_Skymu_Converters_ByteArrayToImageSourceConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "DoNothing"

    .section .note.GNU-stack,"",@progbits
