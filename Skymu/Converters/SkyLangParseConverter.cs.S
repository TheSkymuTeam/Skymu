# Converters/SkyLangParseConverter.cs
    .text

.globl m_Skymu_Converters_SkyLangParseConverter_Convert__arr_ref_ref_ref
.type m_Skymu_Converters_SkyLangParseConverter_Convert__arr_ref_ref_ref, @function
m_Skymu_Converters_SkyLangParseConverter_Convert__arr_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0000:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0001:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0006:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0007:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0008:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_001d
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_000a:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_000f:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0010:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0015:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0016:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0017:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_Skymu_Formatting_Formatter_ProcessLangText__ref_arr_b
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_001c:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_001d:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_001e:
    mov -80(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_001f:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_002d
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0021:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0022:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0023:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0024:
    mov -88(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0029:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_002a:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_002b:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0033
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_002d:
    lea .LN_0_m_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0032:
    mov -96(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0033:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0038:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0039:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_003e:
    mov -24(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_003f:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0040:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_Linq_Enumerable_Skip_object__gen_i4
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0045:
    mov -104(%rbp), %rdi
    call m_System_Linq_Enumerable_ToArray_object__gen
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_004a:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_004b:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_Skymu_Formatting_Formatter_ProcessLangText__ref_arr_b
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_0050:
    mov -96(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SkyLangParseConverter_Convert__arr_ref_ref_ref, .-m_Skymu_Converters_SkyLangParseConverter_Convert__arr_ref_ref_ref

.globl m_Skymu_Converters_SkyLangParseConverter_ConvertBack__ref_arr_ref_ref
.type m_Skymu_Converters_SkyLangParseConverter_ConvertBack__ref_arr_ref_ref, @function
m_Skymu_Converters_SkyLangParseConverter_ConvertBack__ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_ConvertBack_ref_arr_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_SkyLangParseConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotSupportedException_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_ConvertBack_ref_arr_ref_ref_0005:
    mov -56(%rbp), %rdi
    call shim_throw
.Lm_Skymu_Converters_SkyLangParseConverter_ConvertBack_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SkyLangParseConverter_ConvertBack__ref_arr_ref_ref, .-m_Skymu_Converters_SkyLangParseConverter_ConvertBack__ref_arr_ref_ref

.globl m_Skymu_Converters_SkyLangParseConverter_ctor__void
.type m_Skymu_Converters_SkyLangParseConverter_ctor__void, @function
m_Skymu_Converters_SkyLangParseConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_SkyLangParseConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_SkyLangParseConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SkyLangParseConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SkyLangParseConverter_ctor__void, .-m_Skymu_Converters_SkyLangParseConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_SkyLangParseConverter_Convert_arr_ref_ref_ref:
    .asciz "UnsetValue"

.LN_0_m_Skymu_Converters_SkyLangParseConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "System.NotSupportedException"

    .section .note.GNU-stack,"",@progbits
