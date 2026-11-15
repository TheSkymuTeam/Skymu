# Converters/ConversionHelpers.cs
    .text

.globl m_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment__ref
.type m_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment__ref, @function
m_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0008:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0025
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_000b:
    mov -48(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_000c:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_000d:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_000e:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0025
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0010:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0011:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0012:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0013:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0018:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0027
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_001a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_001b:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_001c:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_001d:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0022:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0023:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0027
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0026:
    mov -64(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0027:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0028:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0029:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_002a:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_002f:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0030:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0031:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0037
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0033:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0034:
    mov -64(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0035:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0039
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0037:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0038:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_0039:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_003a:
    mov -72(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment__ref, .-m_Skymu_Converters_ConversionHelpers_RetrieveImageAttachment__ref

.globl m_Skymu_Converters_ConversionHelpers_ctor__void
.type m_Skymu_Converters_ConversionHelpers_ctor__void, @function
m_Skymu_Converters_ConversionHelpers_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_ConversionHelpers_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_ConversionHelpers_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_ConversionHelpers_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_ConversionHelpers_ctor__void, .-m_Skymu_Converters_ConversionHelpers_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .note.GNU-stack,"",@progbits
