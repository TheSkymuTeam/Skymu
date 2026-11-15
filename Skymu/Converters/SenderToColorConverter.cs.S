# Converters/SenderToColorConverter.cs
    .text

.globl m_Skymu_Converters_SenderToColorConverter_Convert__arr_ref_ref_ref
.type m_Skymu_Converters_SenderToColorConverter_Convert__arr_ref_ref_ref, @function
m_Skymu_Converters_SenderToColorConverter_Convert__arr_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0001:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0002:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0003:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0008:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0009:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_000a:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_003f
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_000c:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_000d:
    lea .LN_0_m_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0012:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0013:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0019
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0015:
    mov -88(%rbp), %rax
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0016:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0017:
    jmp .Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_001e
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0019:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_001e:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0023:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_003f
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0025:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_002a:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_002f:
    lea .LS_1_m_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0034:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0039:
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_003e:
    mov -96(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_003f:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0040:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0041:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0042:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0043:
    mov -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0044:
    mov -88(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0049:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0055
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_004b:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_004c:
    mov -96(%rbp), %rdi
    call shim_unbox
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0051:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0052:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0053:
    jmp .Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0056
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0055:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0056:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0057:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0058:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0074
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_005a:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_005f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0064:
    lea .LS_2_m_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0069:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_006e:
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0073:
    mov -104(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0074:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0079:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_007e:
    lea .LS_3_m_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0083:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_0088:
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_008d:
    mov -104(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SenderToColorConverter_Convert__arr_ref_ref_ref, .-m_Skymu_Converters_SenderToColorConverter_Convert__arr_ref_ref_ref

.globl m_Skymu_Converters_SenderToColorConverter_ConvertBack__ref_arr_ref_ref
.type m_Skymu_Converters_SenderToColorConverter_ConvertBack__ref_arr_ref_ref, @function
m_Skymu_Converters_SenderToColorConverter_ConvertBack__ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_0000:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_0001:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_0007:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_0008:
    lea .LN_0_m_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_000d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_000e:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_000f:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_0010:
    lea .LN_1_m_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_0015:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_0016:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SenderToColorConverter_ConvertBack__ref_arr_ref_ref, .-m_Skymu_Converters_SenderToColorConverter_ConvertBack__ref_arr_ref_ref

.globl m_Skymu_Converters_SenderToColorConverter_ctor__void
.type m_Skymu_Converters_SenderToColorConverter_ctor__void, @function
m_Skymu_Converters_SenderToColorConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_SenderToColorConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_SenderToColorConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_SenderToColorConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_SenderToColorConverter_ctor__void, .-m_Skymu_Converters_SenderToColorConverter_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref:
    .asciz "CurrentUser"

.LS_1_m_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 46, 65, 117, 116, 104, 111, 114, 46, 77, 101

.LS_2_m_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 46, 65, 117, 116, 104, 111, 114, 46, 70, 111, 114, 119, 97, 114, 100

.LS_3_m_Skymu_Converters_SenderToColorConverter_Convert_arr_ref_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 46, 65, 117, 116, 104, 111, 114, 46, 79, 116, 104, 101, 114

.LN_0_m_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "DoNothing"

.LN_1_m_Skymu_Converters_SenderToColorConverter_ConvertBack_ref_arr_ref_ref:
    .asciz "DoNothing"

    .section .note.GNU-stack,"",@progbits
