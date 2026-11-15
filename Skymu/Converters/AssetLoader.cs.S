# Converters/AssetLoader.cs
    .text

.globl m_Skymu_Converters_AssetLoader_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_AssetLoader_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_AssetLoader_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0001:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0006:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0007:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0008:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_000c
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_000a:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_000b:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_000c:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_000d:
    lea .LS_0_m_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0012:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0017:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0021
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0019:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_001a:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_001b:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0020:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0021:
    lea .LS_1_m_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $46, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0026:
    lea .LN_2_m_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_002b:
    lea .LS_3_m_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0030:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0031:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_0036:
    mov -72(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoadFromPackUri__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_003b:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_AssetLoader_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_AssetLoader_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_AssetLoader_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_AssetLoader_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_AssetLoader_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_AssetLoader_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_AssetLoader_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotImplementedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_AssetLoader_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_AssetLoader_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_AssetLoader_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_AssetLoader_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_AssetLoader_ctor__void
.type m_Skymu_Converters_AssetLoader_ctor__void, @function
m_Skymu_Converters_AssetLoader_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_AssetLoader_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_AssetLoader_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_AssetLoader_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_AssetLoader_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_AssetLoader_ctor__void, .-m_Skymu_Converters_AssetLoader_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref:
    .short 47

.LS_1_m_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref:
    .short 112, 97, 99, 107, 58, 47, 47, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 58, 44, 44, 44, 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 84, 104, 101, 109, 101, 115, 47

.LN_2_m_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref:
    .asciz "Theme"

.LS_3_m_Skymu_Converters_AssetLoader_Convert_ref_ref_ref_ref:
    .short 47

.LN_0_m_Skymu_Converters_AssetLoader_ConvertBack_ref_ref_ref_ref:
    .asciz "System.NotImplementedException"

    .section .note.GNU-stack,"",@progbits
