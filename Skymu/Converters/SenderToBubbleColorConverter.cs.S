# Converters/SenderToBubbleColorConverter.cs
    .text

.globl m_Skymu_Converters_SenderToBubbleColorConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_SenderToBubbleColorConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_SenderToBubbleColorConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0001:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0006:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0007:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0008:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_003d
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_000a:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_000b:
    lea .LN_0_m_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0010:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0011:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0017
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0013:
    mov -72(%rbp), %rax
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0014:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0015:
    jmp .Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_001c
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0017:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_001c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0021:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_003d
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0023:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0028:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_002d:
    lea .LS_1_m_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0032:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0037:
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_003c:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_003d:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0042:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0047:
    lea .LS_2_m_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_004c:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0051:
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_0056:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SenderToBubbleColorConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_SenderToBubbleColorConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_SenderToBubbleColorConverter_ctor__void
.type m_Skymu_Converters_SenderToBubbleColorConverter_ctor__void, @function
m_Skymu_Converters_SenderToBubbleColorConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_SenderToBubbleColorConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_SenderToBubbleColorConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToBubbleColorConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SenderToBubbleColorConverter_ctor__void, .-m_Skymu_Converters_SenderToBubbleColorConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref:
    .asciz "CurrentUser"

.LS_1_m_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref:
    .short 77, 101, 116, 114, 111, 46, 66, 117, 98, 98, 108, 101

.LS_2_m_Skymu_Converters_SenderToBubbleColorConverter_Convert_ref_ref_ref_ref:
    .short 77, 101, 116, 114, 111, 46, 66, 117, 98, 98, 108, 101, 46, 84, 105, 110, 116, 101, 100

.LN_0_m_Skymu_Converters_SenderToBubbleColorConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "DoNothing"

    .section .note.GNU-stack,"",@progbits
