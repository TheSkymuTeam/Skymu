# Converters/StringToDoubleConverter.cs
    .text

.globl m_Skymu_Converters_StringToDoubleConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_StringToDoubleConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_StringToDoubleConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_0001:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_0006:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_001c
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_0008:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_0009:
    mov -72(%rbp), %rdi
    call shim_unbox
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_000e:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_000f:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_0011:
    call m_System_Globalization_CultureInfo_get_InvariantCulture__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_0016:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Double_ToString__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_001b:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_001c:
    lea .LS_0_m_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_0021:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_StringToDoubleConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_StringToDoubleConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_StringToDoubleConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_StringToDoubleConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_StringToDoubleConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0001:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0006:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0007:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0008:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0025
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_000a:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_000b:
    mov $167, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0010:
    call m_System_Globalization_CultureInfo_get_InvariantCulture__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0015:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0017:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_Double_TryParse__ref_v_ref_v
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_001c:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0025
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_001e:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_001f:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0024:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0025:
    movsd .LD_1_m_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_002e:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_0033:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_StringToDoubleConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_StringToDoubleConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_StringToDoubleConverter_ctor__void
.type m_Skymu_Converters_StringToDoubleConverter_ctor__void, @function
m_Skymu_Converters_StringToDoubleConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StringToDoubleConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_StringToDoubleConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StringToDoubleConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_StringToDoubleConverter_ctor__void, .-m_Skymu_Converters_StringToDoubleConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Converters_StringToDoubleConverter_Convert_ref_ref_ref_ref:
    .short 51, 48

.LN_0_m_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.Double"

.LD_1_m_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref:
    .double 30

.LN_2_m_Skymu_Converters_StringToDoubleConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "System.Double"

    .section .note.GNU-stack,"",@progbits
