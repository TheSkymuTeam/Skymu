# MainViewModel.cs
    .text

.globl m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser__void
.type m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser__void, @function
m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser__void, .-m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser__void

.globl m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor__b
.type m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor__b, @function
m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor__b, .-m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor__b

.globl m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0001:
    mov -96(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0006:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0008:
    mov -96(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_000d:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_000f:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00b1
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0014:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0015:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0016:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00df
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_001c:
    mov -96(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0021:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0034
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0023:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0024:
    mov -96(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0029:
    mov -96(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_002a:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0034
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_002c:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_002d:
    mov -104(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0032:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0039
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0034:
    jmp .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_021f
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0039:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_003a:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_003b:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0041:
    mov -104(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0046:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0047:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0048:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Url__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_004d:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_004f:
    call m_System_IO_Path_GetTempPath__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0054:
    lea .LS_7_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0059:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_ToLowerInvariant__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_005e:
    lea .LS_8_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0063:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0068:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_006d:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0072:
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0077:
    mov -40(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0078:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetStreamAsync__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_007d:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0082:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0084:
    lea -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0086:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_get_IsCompleted__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_008b:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00ce
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_008e:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_008f:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0090:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0091:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0096:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0097:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0099:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_009e:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_009f:
    mov -96(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00a4:
    lea -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00a6:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00a7:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Runtime_System_IO_Stream_valuetype_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00ac:
    jmp .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0239
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00b1:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00b2:
    mov -96(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00b7:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00b9:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00ba:
    mov -96(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00bf:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00c5:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00c6:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00c7:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00c8:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00c9:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00ce:
    lea -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00d0:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_GetResult__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00d5:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00d7:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00d8:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00da:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00df:
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00e0:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00e1:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00e2:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00f5
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00e4:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00e5:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00e6:
    mov -112(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00eb:
    mov -112(%rbp), %rdi
    call m_System_IO_File_Create__ref
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00f0:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_19_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00f5:
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00f6:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00f7:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00f8:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_013f
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00fa:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_00fb:
    mov -104(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0100:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0101:
    mov -112(%rbp), %rdi
    lea .LN_21_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0106:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_CopyToAsync__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_010b:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0110:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0112:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0114:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0119:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_015c
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_011b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_011c:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_011d:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_011e:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_011f:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_22_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0124:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0125:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0127:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_23_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_012c:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_012d:
    mov -96(%rbp), %rdi
    lea .LN_24_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0132:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0134:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0135:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_013a:
    jmp .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0239
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_013f:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0140:
    mov -104(%rbp), %rdi
    lea .LN_25_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0145:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0147:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0148:
    mov -104(%rbp), %rdi
    lea .LN_26_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_014d:
    mov -104(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0153:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0154:
    mov $-1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0155:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0156:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0157:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_27_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_015c:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_015e:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0163:
    jmp .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_017d
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_017d:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_017e:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_017f:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_28_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0184:
    jmp .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_019e
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_019e:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_019f:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01a0:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_29_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01a5:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01a6:
    mov -104(%rbp), %rdi
    lea .LN_30_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01ab:
    mov -104(%rbp), %rdi
    call m_System_IO_File_ReadAllBytes__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01b0:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01b1:
    mov -112(%rbp), %rdi
    lea .LN_31_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01b6:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01b7:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01b8:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Name__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01bd:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_ResolveExtension__arr_ref
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01c2:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01c3:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01c4:
    mov -104(%rbp), %rdi
    lea .LN_32_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01c9:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01ca:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01cf:
    mov -104(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01d1:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01d3:
    mov -104(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01d8:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01e1
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01da:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01dc:
    mov -104(%rbp), %rdi
    call m_System_IO_File_Delete__ref
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01e1:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01e2:
    mov -104(%rbp), %rdi
    lea .LN_33_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01e7:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01e9:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_IO_File_Move__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01ee:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01f0:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01f1:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01f6:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01f7:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01f8:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_34_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_01fd:
    jmp .Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_021f
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_021f:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0220:
    mov $-2, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0222:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_35_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0227:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0228:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0229:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_36_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_022e:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_022f:
    mov -104(%rbp), %rdi
    lea .LN_37_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0234:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_0239:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_c_cctor__void
.type m_Skymu_ViewModels_MainViewModel_c_cctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_cctor_void_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_cctor_void_0005:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_cctor__void, .-m_Skymu_ViewModels_MainViewModel_c_cctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2__ref
.type m_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2__ref, @function
m_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2_ref_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2_ref_0005:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_ConnectionStatus__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2_ref_000a:
    mov -32(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetStatus__v
.Lm_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2_ref_000f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2__ref, .-m_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2__ref

.globl m_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2__ref_i4
.type m_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2__ref_i4, @function
m_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2__ref_i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2_ref_i4_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2_ref_i4_0001:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2_ref_i4_0002:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2_ref_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__gen_gen
    mov %r12, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2_ref_i4_0007:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2_ref_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2__ref_i4, .-m_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2__ref_i4

.globl m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1__ref_ref
.type m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1__ref_ref, @function
m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_0001:
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_0006:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_IsCheckBoxTicked__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_000b:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_0018
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_000d:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_000e:
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_InformDND__b
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_0013:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1__ref_ref, .-m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_1__ref_ref

.globl m_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0__void
.type m_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0__void, @function
m_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0_void_0000:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0_void_0005:
    mov -24(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_PlaySynchronous__ref
.Lm_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0__void, .-m_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0__void

.globl m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0__gen
.type m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0__gen, @function
m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0_gen_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0_gen_0002:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Value__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0_gen_0007:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0__gen, .-m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0__gen

.globl m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1__gen
.type m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1__gen, @function
m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1_gen_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1_gen_0001:
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_First_valuetype_System_Runtime_System_Collections_Generic_KeyValuePair_2_string_string__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1_gen_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1__gen, .-m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1__gen

.globl m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2__gen
.type m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2__gen, @function
m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen_0002:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Key__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen_0007:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen_0009:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Value__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen_000e:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__gen_gen
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen_0013:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2__gen, .-m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2__gen

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0__gen
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0__gen, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen_0002:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_get_Value__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen_0008:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen_000d:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %rcx, %rax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen_000f:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0__gen, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0__gen

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0__ref_ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0__ref_ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventArgs_get_PropertyName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0006:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0010:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_003d
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0013:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0018:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_001d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_001e:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0037
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0020:
    mov -40(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0021:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0026:
    lea m_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_002c:
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_SendOrPostCallback_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0031:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0032:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0037:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_0038:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_SynchronizationContext_Post__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_003d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0__ref_ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0__ref_ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1__ref_ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1__ref_ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0005:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_000d:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0014:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0019:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_001f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0043
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0021:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0026:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_002b:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_002c:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3__void(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0032:
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0037:
    call m_System_Array_Empty_object__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_003c:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_BeginInvoke__ref_arr
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0041:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0042:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0043:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0048:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0049:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_004a:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_004b:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0050:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0051:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0052:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0057:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_005c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_005d:
    mov -72(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0062:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0085
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0064:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0069:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_006e:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_006f:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4__void(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0075:
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_007a:
    call m_System_Array_Empty_object__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_007f:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_BeginInvoke__ref_arr
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0084:
    mov -72(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_0085:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1__ref_ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1__ref_ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListBottle_get_List__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_000b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_000c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0014
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_000f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0010:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0011:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_003a
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0015:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_001a:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_001f:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0024:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0025:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_002a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_002f:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0034:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_Add__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_003a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_003b:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0040:
    mov -32(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0045:
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_004a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_004b:
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0050:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_0055:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_005a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_Add__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_005f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0006:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListBottle_get_List__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_000b:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_000c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_000d:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0014
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_000f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0010:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0011:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_006e
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0015:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_001a:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_001f:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0024:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0029:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_002a:
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_002f:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0030:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0048
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0032:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0033:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0034:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0035:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5__ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_003b:
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0040:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0041:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0042:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0047:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0048:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Yggdrasil_Yggdrasil_Models_DirectMessage__gen_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_004d:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_004e:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_004f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00c9
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0051:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0052:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0057:
    mov -64(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_005c:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0061:
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0066:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0067:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_Remove__gen
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_006c:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_006d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_006e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_006f:
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0074:
    mov -64(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0079:
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_007e:
    mov -64(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0083:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0084:
    mov -72(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0089:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_008a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00a4
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_008c:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_008e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_008f:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6__ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_0095:
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_009a:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_009b:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_009d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00a2:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00a4:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Yggdrasil_Yggdrasil_Models_Conversation__gen_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00a9:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00aa:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00ab:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00c9
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00ad:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00ae:
    mov -64(%rbp), %rdi
    lea .LN_19_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00b3:
    mov -64(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00b8:
    mov -64(%rbp), %rdi
    lea .LN_21_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00bd:
    mov -64(%rbp), %rdi
    lea .LN_22_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00c2:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00c3:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_Remove__gen
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00c8:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_00c9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5__ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5__ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5__ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5__ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6__ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6__ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6__ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6__ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1__ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1__ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1__ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1__ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_0006:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_000b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_0011:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_0016:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Remove__gen
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_001b:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0__ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0__ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0__ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0__ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1__ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1__ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1__ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1__ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3__gen
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3__gen, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_get_item__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_000c:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_0011:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_001b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3__gen, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3__gen

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0__ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0__ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref_000c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref_0011:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0__ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0__ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_000c:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_0011:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Remove__gen
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_0016:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_0006:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_0007:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible__b
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_000d:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_0012:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_0017:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_TypingText__ref
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_0007:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_000c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_TypingText__ref
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_0012:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_0017:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_0018:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible__b
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_001d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0006:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0008:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_000d:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_000f:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_009f
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0015:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0016:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_001b:
    jmp .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00c3
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0020:
    lea .LS_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0025:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0026:
    mov -80(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_002b:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_002c:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_002d:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_002e:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0030:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0035:
    lea .LS_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_003a:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_003f:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0040:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0041:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0046:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_004b:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_004c:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0051
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_004e:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_004f:
    jmp .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0057
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0051:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0052:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_string_Invoke__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0057:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0059:
    mov -80(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_005e:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_005f:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0060:
    mov $5, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0061:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cltd
    idiv %ecx
    mov %edx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0062:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0067:
    mov $100, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0069:
    mov -72(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Delay__i4
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_006e:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0073:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0075:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0077:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_007c:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00bc
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_007e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_007f:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0080:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0081:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0082:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0087:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0088:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_008a:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_008f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0090:
    mov -72(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0095:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0097:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0098:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_009d:
    jmp .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0101
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_009f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00a0:
    mov -72(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00a5:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00a7:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00a8:
    mov -72(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00ad:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00b3:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00b4:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00b5:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00b6:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00b7:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00bc:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00be:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00c3:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00c4:
    mov -72(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00c9:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationToken_get_IsCancellationRequested__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00ce:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0020
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00d3:
    jmp .Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00ee
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00ee:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00ef:
    mov $-2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00f1:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00f6:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00f7:
    mov -72(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_00fc:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_0101:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0__void
.type m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0__void, @function
m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d__gen
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0__void, .-m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0__void

.globl m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_009b
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0015:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_001a:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_001b:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0021
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_001d:
    mov -48(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_001e:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_001f:
    jmp .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0026
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0021:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0026:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0030
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0028:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0029:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_002e:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0035
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0030:
    jmp .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00e5
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0035:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0036:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_003b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0040:
    lea .LS_4_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0045:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0051
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_004c:
    jmp .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00e5
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0051:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0056:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0057:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_005d:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0062:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0067:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_DeleteMessage__ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_006c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0071:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0072:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0074:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0079:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00b7
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_007b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_007c:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_007d:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_007e:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_007f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0084:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0085:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0086:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_008b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_008c:
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0091:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0093:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0094:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_0099:
    jmp .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00f8
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_009b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_009c:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00a1:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00a2:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00a3:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00a8:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00ae:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00af:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00b0:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00b1:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00b2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00b7:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00b9:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00be:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00cc
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00c0:
    lea .LS_13_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00c5:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00c6:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00c7:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Universal_ShowMessage__ref_ref_v
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00cc:
    jmp .Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00e5
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00e5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00e6:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00e8:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00ed:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00ee:
    mov -56(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00f3:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_00f8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_0000:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void(%rip), %rdi
    mov $38, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_0005:
    mov -32(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_000a:
    jmp .Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_0023
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_0023:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_0024:
    mov $-2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_0026:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_0036:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_004e
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0012:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0017:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_TaskCompletionSource_1_bool_get_Task__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_001c:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0021:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0022:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0024:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0029:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_006a
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_002c:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_002d:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_002e:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_002f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0034:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0035:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0036:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_003b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_003c:
    mov -80(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0041:
    lea -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0043:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0044:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_ViewModels_MainViewModel_GetServerList_d_140__gen_gen
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0049:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0112
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_004f:
    mov -80(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0054:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0056:
    mov -80(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_005b:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0062:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0063:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0064:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0065:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_006a:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_006c:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0071:
    mov -80(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0072:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0073:
    mov -80(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0078:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_GetEnumerator__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_007d:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_007f:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00bc
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0081:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0083:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_Current__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0088:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_008a:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_008b:
    mov -80(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0090:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Conversations__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0095:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0097:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_Channels__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_009c:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_ConversationsTable_Write__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00a1:
    mov -80(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00a2:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00a4:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00a6:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_Channels__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00ab:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00ad:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_CategoryMap__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00b2:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_Skymu_ServerChannelHelper_GroupByCategory__gen_gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00b7:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_set_GroupedChannels__gen
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00bc:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00be:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00c3:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0081
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00c5:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00d7
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00d7:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00d8:
    mov -80(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00dd:
    mov -80(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_Server__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00e2:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00e3:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00fe
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00fe:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_00ff:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0101:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0106:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0107:
    mov -80(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_010c:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_010d:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_SetResult__gen
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_0112:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00bd
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0014:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0015:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_IsCallActive__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_001a:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0051
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_001c:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_001d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_001e:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_IsCallActive__b
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0023:
    lea .LS_2_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0028:
    mov -56(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_002d:
    lea .LS_3_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0032:
    mov -56(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0037:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0038:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_003d:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_003e:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0046
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0040:
    mov -48(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0041:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00ea
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0046:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0047:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_bool_Invoke__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_004c:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00ea
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0051:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0052:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0053:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_IsCallActive__b
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0058:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0059:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_005e:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_005f:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0064
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0061:
    mov -48(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0062:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_006a
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0064:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0065:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_bool_Invoke__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_006a:
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_006f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0070:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0089
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0072:
    mov -48(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0073:
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0078:
    lea m_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_007e:
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0083:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0084:
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -56(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0089:
    mov -48(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_008e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0093:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0094:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0096:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_009b:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00d9
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_009d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_009e:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_009f:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00a0:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00a1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00a6:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00a7:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00a8:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00ad:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00ae:
    mov -56(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00b3:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00b5:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00b6:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00bb:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0116
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00bd:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00be:
    mov -56(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00c3:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00c4:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00c5:
    mov -56(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00ca:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00d0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00d1:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00d2:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00d3:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00d4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00d9:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00db:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00e0:
    lea .LS_16_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00e5:
    mov -56(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_PlayLoop__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_00ea:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0103
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0103:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0104:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0106:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_010b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_010c:
    mov -56(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0111:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_0116:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0064
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0017:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_001e
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0019:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00a0
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0020:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0025:
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_002a:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_002f:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0030:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SetConversation__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0035:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_003a:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_003b:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_003d:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0042:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0080
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0045:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0046:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0047:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0048:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_004e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_004f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0055:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_005a:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_005d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0062:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00b3
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0065:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_006a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_006b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_006c:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0071:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0077:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0078:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0079:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_007a:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_007b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0080:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0082:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_0087:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00a0
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00a0:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00a1:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00a3:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00a8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00a9:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00ae:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_00b3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_005c
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0017:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_001b
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0019:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0098
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_001d:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0022:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0027:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0028:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SetConversation__void
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_002d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0032:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0035:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_003a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0078
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_003d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_003e:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_003f:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0040:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0045:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0046:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0047:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_004c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_004d:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0052:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0055:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_005a:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_00ab
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_005d:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0062:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0063:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0064:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0069:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_006f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0070:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0071:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0072:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0073:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0078:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_007a:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_007f:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0098
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0098:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_0099:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_009b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_00a0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_00a1:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_00a6:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_00ab:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0001:
    mov -88(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0006:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0008:
    mov -88(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_000d:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_000f:
    mov -88(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0078
    cmp $1, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0131
    cmp $2, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01b7
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0020:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0021:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_ctor__void
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0026:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_002c:
    mov -88(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0032:
    mov -96(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0037:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_003c:
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0041:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_GetUserInfo__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0046:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_004b:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_004c:
    lea -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_004e:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_IsCompleted__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0053:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0094
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0056:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0057:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0058:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0059:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_005f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0060:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0066:
    mov -88(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_006b:
    lea -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_006d:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_006e:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_Yggdrasil_Yggdrasil_Models_User_valuetype_Skymu_ViewModels_MainViewModel_InitSidebar_d_126__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0073:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02da
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0078:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0079:
    mov -88(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_007e:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_007f:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0080:
    mov -88(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0085:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_008b:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_008c:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_008d:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_008e:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_008f:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0094:
    lea -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0096:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_009b:
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -88(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00a0:
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00a5:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00a6:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00ac
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00a8:
    mov -80(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00a9:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00aa:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00b1
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00ac:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00b1:
    mov -88(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00b6:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00cc
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00b8:
    lea .LS_16_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    mov $69, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00bd:
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_InvalidOperationException_ctor__ref
    mov %r12, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00c2:
    mov -88(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00c7:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02c0
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00cc:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00cd:
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00d2:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00d3:
    lea .LN_19_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Databases_DatabaseManager_ctor__ref_ref
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00d8:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00dd:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00de:
    mov -88(%rbp), %rdi
    lea .LN_21_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00e3:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Accounts__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00e8:
    lea .LN_22_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00ed:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_AccountsTable_Write__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00f2:
    mov -88(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00f3:
    lea .LN_23_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00f8:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_FetchConversations__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_00fd:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0102:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0104:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0106:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_IsCompleted__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_010b:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_014e
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_010d:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_010e:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_010f:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0110:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0111:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_24_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0116:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0117:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0119:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_25_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_011e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_011f:
    mov -88(%rbp), %rdi
    lea .LN_26_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0124:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0126:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0127:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Conversation_valuetype_Skymu_ViewModels_MainViewModel_InitSidebar_d_126__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_012c:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02da
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0131:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0132:
    mov -88(%rbp), %rdi
    lea .LN_27_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0137:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0139:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_013a:
    mov -88(%rbp), %rdi
    lea .LN_28_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_013f:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0145:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0146:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0147:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0148:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0149:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_29_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_014e:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0150:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0155:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0156:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0157:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0158:
    lea .LN_30_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Conversation_ctor__gen
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_015d:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_31_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0162:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0163:
    mov -88(%rbp), %rdi
    lea .LN_32_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0168:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Conversations__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_016d:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_016e:
    mov -96(%rbp), %rdi
    lea .LN_33_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0173:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_ConversationsTable_Write__gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0178:
    mov -88(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0179:
    lea .LN_34_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_017e:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_FetchContacts__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0183:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0188:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_018a:
    lea -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_018c:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_IsCompleted__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0191:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01d4
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0193:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0194:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0195:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0196:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0197:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_35_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_019c:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_019d:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_019f:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_36_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01a4:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01a5:
    mov -88(%rbp), %rdi
    lea .LN_37_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01aa:
    lea -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01ac:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01ad:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_DirectMessage_valuetype_Skymu_ViewModels_MainViewModel_InitSidebar_d_126__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01b2:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02da
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01b7:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01b8:
    mov -88(%rbp), %rdi
    lea .LN_38_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01bd:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01bf:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01c0:
    mov -88(%rbp), %rdi
    lea .LN_39_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01c5:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01cb:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01cc:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01cd:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01ce:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01cf:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_40_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01d4:
    lea -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01d6:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01db:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01dd:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01de:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01e0:
    lea .LN_41_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_DirectMessage_ctor__gen
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01e5:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_42_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01ea:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01eb:
    mov -88(%rbp), %rdi
    lea .LN_43_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01f0:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01f1:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01f6
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01f3:
    mov -80(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01f4:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0207
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01f6:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Contacts__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01fb:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_01fc:
    mov -96(%rbp), %rdi
    lea .LN_44_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0201:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_ContactsTable_Write__gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0206:
    mov -88(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0207:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0208:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_020d:
    mov -88(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_020e:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_020f:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0214:
    lea .LS_45_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0219:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_021e:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_UserCountText__ref
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0223:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0224:
    mov -88(%rbp), %rdi
    lea .LN_46_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0229:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_022a:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_022f
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_022c:
    mov -80(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_022d:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_023a
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_022f:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0230:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_UserCountText__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0235:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_string_Invoke__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_023a:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_023b:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler__void
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0240:
    mov -88(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0241:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0242:
    mov -88(%rbp), %rdi
    lea .LN_47_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0247:
    call m_System_Threading_SynchronizationContext_get_Current__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_024c:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_48_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0251:
    lea .LN_49_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0256:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0257:
    mov -96(%rbp), %rdi
    lea .LN_50_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_025c:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0__ref_ref(%rip), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0262:
    lea .LN_51_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventHandler_ctor__ref_v
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0267:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_add_PropertyChanged__ref
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_026c:
    lea .LN_52_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0271:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0272:
    mov -96(%rbp), %rdi
    lea .LN_53_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0277:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1__ref_ref(%rip), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_027d:
    lea .LN_54_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_ListBottle_ctor__ref_v
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0282:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_add_ListTube__gen
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0287:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0288:
    mov -88(%rbp), %rdi
    lea .LN_55_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_028d:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_028e:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0293
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0290:
    mov -80(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0291:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_029e
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0293:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0294:
    lea .LN_56_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_0299:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_029e:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02c0
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02c0:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02c1:
    mov $-2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02c3:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_57_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02c8:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02c9:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02ca:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_58_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02cf:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02d0:
    mov -88(%rbp), %rdi
    lea .LN_59_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02d5:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_02da:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_000f:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0010:
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0012:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0050
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0014:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0019:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_FetchServers__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_001e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0023:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0024:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0026:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_IsCompleted__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_002b:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_006c
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_002d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_002e:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_002f:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0030:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0031:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0037:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0038:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_003d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_003e:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0043:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0045:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0046:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Server_valuetype_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_004b:
    jmp .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00ec
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0051:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0056:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0057:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0058:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_005d:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0063:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0064:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0065:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0066:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0067:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_006c:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_006e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0073:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0074:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_007c
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0076:
    mov -56(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0077:
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Server_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_007c:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_007d:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_007e:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0083:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0084:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0089
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0086:
    mov -56(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0087:
    jmp .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0095
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0089:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Servers__void
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_008e:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_008f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_ServersTable_Write__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0094:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0095:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0096:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_0097:
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Server_ctor__gen
    mov %r12, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_009c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00a1:
    jmp .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00aa
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00aa:
    jmp .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00be
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00be:
    jmp .Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00d9
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00d9:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00da:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00dc:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00e1:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00e2:
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00e7:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_00ec:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0008:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_004d
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_000b:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_000c:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00a4
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0011:
    mov $45000, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0016:
    mov -56(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Delay__i4
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_001b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0020:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0021:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0023:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0028:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0069
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_002a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_002b:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_002c:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_002d:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_002e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0033:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0034:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0035:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_003a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_003b:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0040:
    lea -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0042:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0043:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_MainViewModel_PingLoop_d_144__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0048:
    jmp .Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00e4
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_004e:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0053:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0055:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_005a:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0061:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0062:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0063:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0064:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0069:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_006b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0070:
    call m_Skymu_WebServices_UserServerAPI_PingServer__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0075:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_007a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_007b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_007d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0082:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00c0
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0084:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0085:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0086:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0087:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0088:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_008e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_008f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0094:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0095:
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_009a:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_009c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_009d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_ViewModels_MainViewModel_PingLoop_d_144__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00a2:
    jmp .Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00e4
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00a4:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00a5:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00aa:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00ab:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00ac:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00b1:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00b7:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00b8:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00b9:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00ba:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00bb:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00c0:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00c2:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00c7:
    mov -56(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00c8:
    jmp .Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_0011
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_00e4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_0000:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void(%rip), %rdi
    mov $42, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_0005:
    mov -32(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_000a:
    jmp .Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_0023
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_0023:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_0024:
    mov $-2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_0026:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_0036:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0001:
    mov -96(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0006:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0008:
    mov -96(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_000d:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_000f:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00c2
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0014:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Microsoft_Win32_OpenFileDialog_ctor__void
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0019:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_001a:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_001b:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0020:
    lea .LS_3_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0025:
    mov $1, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0026:
    mov -120(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_002b:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_002c:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_002d:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_002e:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0033:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0038:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0039:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_Format__ref_arr
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_003e:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_FileDialog_set_Title__ref
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0043:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0044:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0045:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_FileDialog_set_CheckFileExists__b
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_004a:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_004b:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_004c:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_004d:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_CommonDialog_ShowDialog__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0052:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0054:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0056:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_bool_GetValueOrDefault__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_005b:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00e7
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0060:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0061:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_FileDialog_get_FileName__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0066:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0067:
    mov -96(%rbp), %rdi
    call m_System_IO_Path_GetFileName__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_006c:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_006e:
    mov -88(%rbp), %rdi
    call m_System_IO_File_ReadAllBytes__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0073:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0075:
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Attachment_ctor__arr_ref
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_007a:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_007c:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0081:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0082:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0087:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0088:
    mov -72(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_008a:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_008b:
    mov $0, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_008c:
    mov -136(%rbp), %r9
    mov -128(%rbp), %r8
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_SendMessage__ref_ref_ref_ref_b
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0091:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0096:
    mov -96(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0098:
    lea -80(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_009a:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_009f:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00df
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00a1:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00a2:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00a3:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00a4:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00a5:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00aa:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00ab:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00ad:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00b2:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00b3:
    mov -96(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00b8:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00ba:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00bb:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_ViewModels_MainViewModel_SendFile_d_148__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00c0:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0115
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00c2:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00c3:
    mov -96(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00c8:
    mov -96(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00ca:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00cb:
    mov -96(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00d0:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00d6:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00d7:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00d8:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00d9:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00da:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00df:
    lea -80(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00e1:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00e6:
    mov -96(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_00e7:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0102
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0102:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0103:
    mov $-2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0105:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_010a:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_010b:
    mov -96(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0110:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_0115:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $176, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0001:
    mov -120(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0006:
    mov -120(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0008:
    mov -120(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_000d:
    mov -120(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_000f:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00ed
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0014:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0015:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_001a:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0021
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_001c:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_024f
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0021:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0022:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_ClearActiveConversation__void
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0027:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0028:
    mov -120(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_002d:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_002e:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0033
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0030:
    mov -112(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0031:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_003e
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0033:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0034:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0039:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_003e:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_003f:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0040:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation__b
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0045:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0046:
    mov -120(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_004b:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_004c:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0052
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_004e:
    mov -112(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_004f:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0050:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0067
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0052:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Messages__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0057:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0058:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_005d:
    call m_Skymu_Preferences_Settings_get_MessagesToFetch__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0062:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_Read__ref_i4
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0067:
    mov -120(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0068:
    mov -40(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0069:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00a2
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_006b:
    mov -40(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_006c:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Count__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0071:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0072:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00a2
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0074:
    mov -40(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0075:
    mov -120(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0076:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0077:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0078:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation__b
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_007d:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_007e:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_007f:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0084:
    mov -40(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0085:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0086:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Count__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_008b:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_008c:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_008d:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Item__i4
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0092:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0097:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground__ref_ref
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_009c:
    mov -120(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_009d:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0131
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00a2:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00a7:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00a8:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00ad:
    mov $0, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00ae:
    call m_Skymu_Preferences_Settings_get_MessagesToFetch__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00b3:
    xor %eax, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00b4:
    mov -152(%rbp), %r8
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_FetchMessages__ref_v_i4_ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00b9:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00be:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00c0:
    lea -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00c2:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_IsCompleted__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00c7:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_010a
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00c9:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00ca:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00cb:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00cc:
    mov -128(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00cd:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00d2:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00d3:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00d5:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00da:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00db:
    mov -120(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00e0:
    lea -56(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00e2:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00e3:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_ConversationItem_valuetype_Skymu_ViewModels_MainViewModel_SetConversation_d_131__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00e8:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0262
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00ed:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00ee:
    mov -120(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00f3:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00f5:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00f6:
    mov -120(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_00fb:
    mov -120(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0101:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0102:
    mov $-1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0103:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0104:
    mov -128(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0105:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_010a:
    lea -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_010c:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_GetResult__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0111:
    mov -120(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0112:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0113:
    mov -120(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0118:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0119:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_011e
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_011b:
    mov -112(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_011c:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0131
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_011e:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Messages__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0123:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0124:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0125:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_012a:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_012b:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0130:
    mov -120(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0131:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0132:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0137:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_013e
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0139:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_024f
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_013e:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_013f:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0210
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0144:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0145:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Count__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_014a:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_014b:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0210
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0150:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0151:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0156:
    mov -120(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0158:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0170
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_015a:
    lea -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_015c:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Current__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0161:
    mov -120(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0163:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0164:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0169:
    mov -72(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_016b:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Add__gen
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0170:
    lea -64(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0172:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_MoveNext__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0177:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_015a
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0179:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_018d
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_018d:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_018e:
    mov -120(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0190:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0201
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0192:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0193:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0198:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_019a:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Item__i4
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_019f:
    mov -120(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01a4:
    mov -128(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01a6:
    mov -88(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01a8:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01fb
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01aa:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01ac:
    mov $1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01ad:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01ae:
    mov -128(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01b0:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f6
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01b2:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01b3:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01b8:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01ba:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Item__i4
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01bf:
    mov -128(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01c4:
    mov -136(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01c6:
    mov -104(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01c8:
    mov -136(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f0
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01ca:
    mov -88(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01cc:
    mov -104(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01ce:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01d3:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01d8:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier__ref
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01dd:
    mov -88(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01df:
    mov -104(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01e1:
    mov -144(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01e6:
    xor %eax, %eax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01e7:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    cmp %rcx, %rax
    seta %al
    movzbl %al, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01e9:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_PreviousMessageIsAction__b
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01ee:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01fb
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f0:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f2:
    mov $1, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f3:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f4:
    mov -136(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f6:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f8:
    mov $0, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01f9:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    cmp %ecx, %eax
    jge .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01b2
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01fb:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01fd:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01fe:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_01ff:
    mov -144(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0201:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0203:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0204:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0209:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Count__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_020e:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0192
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0210:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0211:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges__void
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0216:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0217:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0218:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation__b
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_021d:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_021e:
    mov -120(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0223:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0224:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0229
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0226:
    mov -112(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0227:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0234
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0229:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_022a:
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_022f:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0234:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_024f
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_024f:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0250:
    mov $-2, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0252:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0257:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0258:
    mov -120(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_025d:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_0262:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_000f:
    mov -64(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0063
    cmp $1, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00f1
    cmp $2, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_014c
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0020:
    call m_Skymu_Preferences_Settings_get_DisableSWS__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0025:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_002c
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0027:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01c0
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_002c:
    call m_Skymu_WebServices_UserServerAPI_GenerateUID__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0031:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0036:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0037:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0039:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_003e:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_007f
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0041:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0042:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0043:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0044:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_004a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_004b:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0051:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0056:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0059:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_005e:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01d3
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0063:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0064:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0069:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_006a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_006b:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0070:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0076:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0077:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0078:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0079:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_007a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_007f:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0081:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0086:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0087:
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_008c:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_008d:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0093
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_008f:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0090:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0091:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0098
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0093:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0098:
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_009d:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_009e:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00a4
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00a0:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00a1:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00a2:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00a9
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00a4:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00a9:
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00ae:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00af:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00b5
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00b1:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00b2:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00b3:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00ba
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00b5:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00ba:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_WebServices_UserServerAPI_SetUserStatus__b_ref_ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00bf:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00c4:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00c5:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00c7:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00cc:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_010d
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00ce:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00cf:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00d0:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00d1:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00d2:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00d7:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00d8:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00d9:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00de:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00df:
    mov -64(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00e4:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00e6:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00e7:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00ec:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01d3
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00f1:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00f2:
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00f7:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00f8:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00f9:
    mov -64(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_00fe:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0104:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0105:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0106:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0107:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0108:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_010d:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_010f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0114:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0115:
    call m_Skymu_WebServices_UserServerAPI_StartPolling__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_011a:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_011f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0120:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0122:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0127:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0168
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0129:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_012a:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_012b:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_012c:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_012d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0132:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0133:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0134:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0139:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_013a:
    mov -64(%rbp), %rdi
    lea .LN_19_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_013f:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0141:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0142:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0147:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01d3
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_014c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_014d:
    mov -64(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0152:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0153:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0154:
    mov -64(%rbp), %rdi
    lea .LN_21_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0159:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_015f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0160:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0161:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0162:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0163:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_22_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0168:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_016a:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_016f:
    call m_Skymu_ViewModels_MainViewModel_PingLoop__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0174:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0175:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0176:
    mov -64(%rbp), %rdi
    lea .LN_23_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_017b:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0188
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_017d:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_017e:
    mov -64(%rbp), %rdi
    lea .LN_24_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0183:
    mov -64(%rbp), %rdi
    call m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated__gen
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0188:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0189:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_018a:
    lea m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0__i4(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0190:
    lea .LN_25_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_1_int32_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_0195:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_26_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_019a:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_019b:
    mov -64(%rbp), %rdi
    lea .LN_27_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01a0:
    mov -64(%rbp), %rdi
    call m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated__gen
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01a5:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01c0
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01c0:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01c1:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01c3:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_28_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01c8:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01c9:
    mov -64(%rbp), %rdi
    lea .LN_29_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01ce:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_01d3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext__void
.type m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_005f
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0011:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0017:
    mov -88(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_001c:
    mov $4, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_001d:
    call m_Skymu_Preferences_Settings_get_MessagesToFetch__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0022:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0023:
    mov -112(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0028:
    mov -112(%rbp), %r8
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_FetchMessages__ref_v_i4_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_002d:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0032:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0033:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0035:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_IsCompleted__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_003a:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_007b
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_003d:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_003e:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_003f:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0040:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0045:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0046:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0047:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_004c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_004d:
    mov -80(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0052:
    lea -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0055:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_ConversationItem_valuetype_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134__gen_gen
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_005a:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_013b
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_005f:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0060:
    mov -80(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0065:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0066:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0067:
    mov -80(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_006c:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0072:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0073:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0074:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0075:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0076:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_007b:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_007d:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0082:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0083:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0084:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_008e
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0086:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0087:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Count__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_008c:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0093
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_008e:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0128
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0093:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0094:
    mov -80(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0099:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_009a:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_009f
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_009c:
    mov -72(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_009d:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00b2
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_009f:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Messages__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00a4:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00a5:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00a6:
    mov -96(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00ab:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00ac:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_Write__gen_ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00b1:
    mov -80(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00b2:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00b3:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00b8:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00b9:
    mov -88(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00be:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00c2
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00c0:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0128
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00c2:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00c3:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00c4:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00c9:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00ca:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00cf:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00d1:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00e9
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00d3:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00d5:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Current__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00da:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00dc:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00dd:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00e2:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00e4:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Add__gen
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00e9:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00eb:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_MoveNext__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00f0:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00d3
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_00f2:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0106
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0106:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0107:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0108:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_010d:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0128
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0128:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0129:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_012b:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0130:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0131:
    mov -80(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_0136:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_013b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext__void

.globl m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine__ref
.type m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine__ref, @function
m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine__ref, .-m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine__ref

.globl m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
.type m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void, @function
m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_ActiveConversation_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_ActiveConversation_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_ActiveConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_ActiveConversation_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_ActiveConversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void, .-m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void

.globl m_Skymu_ViewModels_MainViewModel_get_Database__void
.type m_Skymu_ViewModels_MainViewModel_get_Database__void, @function
m_Skymu_ViewModels_MainViewModel_get_Database__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_Database_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_Database_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_Database_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_Database_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_Database_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_Database__void, .-m_Skymu_ViewModels_MainViewModel_get_Database__void

.globl m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
.type m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void, @function
m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SelectedConversation_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SelectedConversation_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_SelectedConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SelectedConversation_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_SelectedConversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void, .-m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void

.globl m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref
.type m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref, @function
m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_0008:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_SetProperty_class_Yggdrasil_Yggdrasil_Models_Conversation__gen_gen_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_0012:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref, .-m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref

.globl m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation__void
.type m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation__void, @function
m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation__void, .-m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation__void

.globl m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation__v
.type m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation__v, @function
m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_0008:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_SetProperty_bool__gen_gen_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_0012:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation__v, .-m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation__v

.globl m_Skymu_ViewModels_MainViewModel_get_UserCountText__void
.type m_Skymu_ViewModels_MainViewModel_get_UserCountText__void, @function
m_Skymu_ViewModels_MainViewModel_get_UserCountText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_UserCountText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_UserCountText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_UserCountText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_UserCountText_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_UserCountText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_UserCountText__void, .-m_Skymu_ViewModels_MainViewModel_get_UserCountText__void

.globl m_Skymu_ViewModels_MainViewModel_set_UserCountText__ref
.type m_Skymu_ViewModels_MainViewModel_set_UserCountText__ref, @function
m_Skymu_ViewModels_MainViewModel_set_UserCountText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_set_UserCountText_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_0008:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_set_UserCountText_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_SetProperty_string__gen_gen_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_0012:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_set_UserCountText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_set_UserCountText__ref, .-m_Skymu_ViewModels_MainViewModel_set_UserCountText__ref

.globl m_Skymu_ViewModels_MainViewModel_get_TypingText__void
.type m_Skymu_ViewModels_MainViewModel_get_TypingText__void, @function
m_Skymu_ViewModels_MainViewModel_get_TypingText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_TypingText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_TypingText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_TypingText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_TypingText_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_TypingText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_TypingText__void, .-m_Skymu_ViewModels_MainViewModel_get_TypingText__void

.globl m_Skymu_ViewModels_MainViewModel_set_TypingText__ref
.type m_Skymu_ViewModels_MainViewModel_set_TypingText__ref, @function
m_Skymu_ViewModels_MainViewModel_set_TypingText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_set_TypingText_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_0008:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_set_TypingText_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_SetProperty_string__gen_gen_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_0012:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_set_TypingText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_set_TypingText__ref, .-m_Skymu_ViewModels_MainViewModel_set_TypingText__ref

.globl m_Skymu_ViewModels_MainViewModel_get_IsTypingVisible__void
.type m_Skymu_ViewModels_MainViewModel_get_IsTypingVisible__void, @function
m_Skymu_ViewModels_MainViewModel_get_IsTypingVisible__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsTypingVisible_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsTypingVisible_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_IsTypingVisible_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsTypingVisible_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_IsTypingVisible_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_IsTypingVisible__void, .-m_Skymu_ViewModels_MainViewModel_get_IsTypingVisible__void

.globl m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible__v
.type m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible__v, @function
m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_0008:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_SetProperty_bool__gen_gen_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_0012:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible__v, .-m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible__v

.globl m_Skymu_ViewModels_MainViewModel_get_IsCallActive__void
.type m_Skymu_ViewModels_MainViewModel_get_IsCallActive__void, @function
m_Skymu_ViewModels_MainViewModel_get_IsCallActive__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsCallActive_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsCallActive_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_IsCallActive_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_IsCallActive_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_IsCallActive_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_IsCallActive__void, .-m_Skymu_ViewModels_MainViewModel_get_IsCallActive__void

.globl m_Skymu_ViewModels_MainViewModel_set_IsCallActive__v
.type m_Skymu_ViewModels_MainViewModel_set_IsCallActive__v, @function
m_Skymu_ViewModels_MainViewModel_set_IsCallActive__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_set_IsCallActive_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_0008:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_set_IsCallActive_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_SetProperty_bool__gen_gen_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_0012:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_set_IsCallActive_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_set_IsCallActive__v, .-m_Skymu_ViewModels_MainViewModel_set_IsCallActive__v

.globl m_Skymu_ViewModels_MainViewModel_add_Ready__ref
.type m_Skymu_ViewModels_MainViewModel_add_Ready__ref, @function
m_Skymu_ViewModels_MainViewModel_add_Ready__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_Ready_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_Ready_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_Ready_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_Ready__ref, .-m_Skymu_ViewModels_MainViewModel_add_Ready__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_Ready__ref
.type m_Skymu_ViewModels_MainViewModel_remove_Ready__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_Ready__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_Ready_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_Ready_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_Ready_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_Ready__ref, .-m_Skymu_ViewModels_MainViewModel_remove_Ready__ref

.globl m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded__ref
.type m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded__ref, @function
m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded__ref, .-m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded__ref
.type m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded__ref, .-m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded__ref

.globl m_Skymu_ViewModels_MainViewModel_add_ConversationOpened__ref
.type m_Skymu_ViewModels_MainViewModel_add_ConversationOpened__ref, @function
m_Skymu_ViewModels_MainViewModel_add_ConversationOpened__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_ConversationOpened__ref, .-m_Skymu_ViewModels_MainViewModel_add_ConversationOpened__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened__ref
.type m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened__ref, .-m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened__ref

.globl m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged__ref
.type m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged__ref, @function
m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged__ref, .-m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged__ref
.type m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged__ref, .-m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged__ref

.globl m_Skymu_ViewModels_MainViewModel_add_ConversationChanged__ref
.type m_Skymu_ViewModels_MainViewModel_add_ConversationChanged__ref, @function
m_Skymu_ViewModels_MainViewModel_add_ConversationChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_ConversationChanged__ref, .-m_Skymu_ViewModels_MainViewModel_add_ConversationChanged__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged__ref
.type m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged__ref, .-m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged__ref

.globl m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested__ref
.type m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested__ref, @function
m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested__ref, .-m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested__ref
.type m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested__ref, .-m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested__ref

.globl m_Skymu_ViewModels_MainViewModel_add_SignOutRequested__ref
.type m_Skymu_ViewModels_MainViewModel_add_SignOutRequested__ref, @function
m_Skymu_ViewModels_MainViewModel_add_SignOutRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler_1_class_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_SignOutRequested__ref, .-m_Skymu_ViewModels_MainViewModel_add_SignOutRequested__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested__ref
.type m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler_1_class_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested__ref, .-m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested__ref

.globl m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated__ref
.type m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated__ref, @function
m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_string__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated__ref, .-m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated__ref
.type m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_string__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated__ref, .-m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated__ref

.globl m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated__ref
.type m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated__ref, @function
m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_string__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated__ref, .-m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated__ref
.type m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_string__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated__ref, .-m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated__ref

.globl m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged__ref
.type m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged__ref, @function
m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_bool__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged__ref, .-m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged__ref

.globl m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged__ref
.type m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged__ref, @function
m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0010:
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_bool__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0007
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged__ref, .-m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged__ref

.globl m_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_EditMessageCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_EditMessageCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_EditMessageCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_EditMessageCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_EditMessageCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_EditMessageCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_EditMessageCommand_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_EditMessageCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_EditMessageCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_EditMessageCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_SendMessageCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_SendMessageCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_SendMessageCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SendMessageCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SendMessageCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_SendMessageCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SendMessageCommand_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_SendMessageCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_SendMessageCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_SendMessageCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void_0001:
    lea m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0__arr(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void_0007:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Attachment_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void_000c:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Attachment_ctor__gen
    mov %r12, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void_0011:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_VideoCallCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_VideoCallCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_VideoCallCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_VideoCallCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_VideoCallCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_VideoCallCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_VideoCallCommand_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_VideoCallCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_VideoCallCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_VideoCallCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_CallCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_CallCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_CallCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CallCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CallCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_CallCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CallCommand_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_CallCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_CallCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_CallCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_CallToggleCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_CallToggleCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_CallToggleCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CallToggleCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CallToggleCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_CallToggleCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_CallToggleCommand_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_CallToggleCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_CallToggleCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_CallToggleCommand__void

.globl m_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand__void
.type m_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand__void, @function
m_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand__void, .-m_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand__void

.globl m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v
.type m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v, @function
m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_0006:
    lea -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_TryGetValue__gen_gen
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_0011
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_000f:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_0010:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_0012:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v, .-m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v

.globl m_Skymu_ViewModels_MainViewModel_GetIntFromChannelType__v
.type m_Skymu_ViewModels_MainViewModel_GetIntFromChannelType__v, @function
m_Skymu_ViewModels_MainViewModel_GetIntFromChannelType__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_0006:
    lea -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_TryGetValue__gen_gen
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_0011
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_000f:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_0010:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_0012:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetIntFromChannelType__v, .-m_Skymu_ViewModels_MainViewModel_GetIntFromChannelType__v

.globl m_Skymu_ViewModels_MainViewModel_GetStatusFromInt__i4
.type m_Skymu_ViewModels_MainViewModel_GetStatusFromInt__i4, @function
m_Skymu_ViewModels_MainViewModel_GetStatusFromInt__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0005:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0007:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_000d:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0012:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0013:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0__gen(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0019:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_001e:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_valuetype_System_Runtime_System_Collections_Generic_KeyValuePair_2_valuetype_Yggdrasil_Yggdrasil_Enumerations_PresenceStatus_int32__gen_gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0023:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_0026:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_get_Key__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_002b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetStatusFromInt__i4, .-m_Skymu_ViewModels_MainViewModel_GetStatusFromInt__i4

.globl m_Skymu_ViewModels_MainViewModel_DeleteMessage__ref
.type m_Skymu_ViewModels_MainViewModel_DeleteMessage__ref, @function
m_Skymu_ViewModels_MainViewModel_DeleteMessage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120__gen
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0034:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_003e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_DeleteMessage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_DeleteMessage__ref, .-m_Skymu_ViewModels_MainViewModel_DeleteMessage__ref

.globl m_Skymu_ViewModels_MainViewModel_EditMessage__ref
.type m_Skymu_ViewModels_MainViewModel_EditMessage__ref, @function
m_Skymu_ViewModels_MainViewModel_EditMessage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_EditMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_000e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_EditMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_0016:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_EditMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_001b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_001d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_EditMessage_d_121__gen
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_0022:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_0024:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_EditMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_0029:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_002e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_EditMessage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_EditMessage__ref, .-m_Skymu_ViewModels_MainViewModel_EditMessage__ref

.globl m_Skymu_ViewModels_MainViewModel_CopyMessage__ref
.type m_Skymu_ViewModels_MainViewModel_CopyMessage__ref, @function
m_Skymu_ViewModels_MainViewModel_CopyMessage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0006
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0003:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0004:
    jmp .Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_000c
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0007:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_000c:
    mov -32(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0011:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_001e
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0013:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0014:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_0019:
    mov -32(%rbp), %rdi
    call m_System_Windows_Clipboard_SetText__ref
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_001e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_CopyMessage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_CopyMessage__ref, .-m_Skymu_ViewModels_MainViewModel_CopyMessage__ref

.globl m_Skymu_ViewModels_MainViewModel_ReplyToMessage__ref
.type m_Skymu_ViewModels_MainViewModel_ReplyToMessage__ref, @function
m_Skymu_ViewModels_MainViewModel_ReplyToMessage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_000e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_0016:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_001b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_001d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123__gen
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_0022:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_0024:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_0029:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_002e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ReplyToMessage__ref, .-m_Skymu_ViewModels_MainViewModel_ReplyToMessage__ref

.globl m_Skymu_ViewModels_MainViewModel_MoveBookmark__ref
.type m_Skymu_ViewModels_MainViewModel_MoveBookmark__ref, @function
m_Skymu_ViewModels_MainViewModel_MoveBookmark__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_MoveBookmark_ref_0000:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_MoveBookmark_ref(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_MoveBookmark_ref_0005:
    mov -32(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_ViewModels_MainViewModel_MoveBookmark_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_MoveBookmark_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_MoveBookmark__ref, .-m_Skymu_ViewModels_MainViewModel_MoveBookmark__ref

.globl m_Skymu_ViewModels_MainViewModel_ctor__void
.type m_Skymu_ViewModels_MainViewModel_ctor__void, @function
m_Skymu_ViewModels_MainViewModel_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0001:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Threading_Tasks_TaskCompletionSource_1_bool_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_000c:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0017:
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_001c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0022:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_ctor__void
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0028:
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_002d:
    call m_Skymu_Preferences_Settings_get_DisableSWS__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0032:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_ctor_void_0042
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0034:
    call m_Skymu_Preferences_Settings_get_EnableSkypeHome__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0039:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_ctor_void_0042
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_003b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_003c:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_003d:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0042:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0043:
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_ConversationItem_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0048:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_004e:
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_DirectMessage_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0053:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0059:
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Server_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_005e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0063:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0064:
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Conversation_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0069:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_006e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_006f:
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0074:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0079:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_007a:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_007b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0080:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0081:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0082:
    lea m_Skymu_ViewModels_MainViewModel_ctor_b_125_0__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0088:
    lea .LN_19_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_TimerCallback_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_008d:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_008e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_008f:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0090:
    lea .LN_20_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %r8
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Timer_ctor__ref_ref_i4_i4
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0095:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_21_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_009a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_009b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_009c:
    lea m_Skymu_ViewModels_MainViewModel_ctor_b_125_1__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00a2:
    lea .LN_22_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_TimerCallback_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00a7:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00a8:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00a9:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00aa:
    lea .LN_23_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %r8
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Timer_ctor__ref_ref_i4_i4
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00af:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_24_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00b4:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00b5:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00b6:
    lea m_Skymu_ViewModels_MainViewModel_DeleteMessage__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00bc:
    lea .LN_25_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00c1:
    lea .LN_26_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00c6:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_27_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00cb:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00cc:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00cd:
    lea m_Skymu_ViewModels_MainViewModel_EditMessage__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00d3:
    lea .LN_28_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00d8:
    lea .LN_29_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00dd:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_30_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00e2:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00e3:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00e4:
    lea m_Skymu_ViewModels_MainViewModel_ReplyToMessage__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00ea:
    lea .LN_31_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00ef:
    lea .LN_32_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00f4:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_33_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00f9:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00fa:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_00fb:
    lea m_Skymu_ViewModels_MainViewModel_MoveBookmark__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0101:
    lea .LN_34_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0106:
    lea .LN_35_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_010b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_36_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0110:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0111:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0112:
    lea m_Skymu_ViewModels_MainViewModel_CopyMessage__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0118:
    lea .LN_37_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_011d:
    lea .LN_38_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0122:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_39_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0127:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0128:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0129:
    lea m_Skymu_ViewModels_MainViewModel_SendMessage__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_012f:
    lea .LN_40_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0134:
    lea .LN_41_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_string_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0139:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_42_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_013e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_013f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0140:
    lea m_Skymu_ViewModels_MainViewModel_RunSpeedTest__void(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0146:
    lea .LN_43_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_014b:
    lea .LN_44_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0150:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_45_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0155:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0156:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0157:
    lea m_Skymu_ViewModels_MainViewModel_HandleVideoCall__void(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_015d:
    lea .LN_46_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0162:
    lea .LN_47_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_CommunityToolkit_Mvvm_Input_RelayCommand_ctor__ref
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_0167:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_48_m_Skymu_ViewModels_MainViewModel_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_016c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ctor__void, .-m_Skymu_ViewModels_MainViewModel_ctor__void

.globl m_Skymu_ViewModels_MainViewModel_InitSidebar__void
.type m_Skymu_ViewModels_MainViewModel_InitSidebar__void, @function
m_Skymu_ViewModels_MainViewModel_InitSidebar__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_InitSidebar_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_InitSidebar_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_InitSidebar_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_InitSidebar_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_InitSidebar_d_126__gen
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_InitSidebar_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_InitSidebar_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_InitSidebar__void, .-m_Skymu_ViewModels_MainViewModel_InitSidebar__void

.globl m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers__void
.type m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers__void, @function
m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127__gen
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers__void, .-m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers__void

.globl m_Skymu_ViewModels_MainViewModel_SelectConversation__ref
.type m_Skymu_ViewModels_MainViewModel_SelectConversation__ref, @function
m_Skymu_ViewModels_MainViewModel_SelectConversation__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0002:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_SelectedConversation__ref
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0008:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SelectConversation_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_000d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_000e:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0012
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0010:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0012:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0013:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SelectConversation_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_0018:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_001d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SelectConversation_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SelectConversation__ref, .-m_Skymu_ViewModels_MainViewModel_SelectConversation__ref

.globl m_Skymu_ViewModels_MainViewModel_HandleConversationSelected__ref
.type m_Skymu_ViewModels_MainViewModel_HandleConversationSelected__ref, @function
m_Skymu_ViewModels_MainViewModel_HandleConversationSelected__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129__gen
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleConversationSelected__ref, .-m_Skymu_ViewModels_MainViewModel_HandleConversationSelected__ref

.globl m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected__ref
.type m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected__ref, @function
m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130__gen
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected__ref, .-m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected__ref

.globl m_Skymu_ViewModels_MainViewModel_SetConversation__void
.type m_Skymu_ViewModels_MainViewModel_SetConversation__void, @function
m_Skymu_ViewModels_MainViewModel_SetConversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_SetConversation_d_131__gen
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SetConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SetConversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SetConversation__void, .-m_Skymu_ViewModels_MainViewModel_SetConversation__void

.globl m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges__void
.type m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges__void, @function
m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0019
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0008:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0009:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_000f:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0014:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_remove_CollectionChanged__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0019:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_001a:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_001f:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0020:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0022:
    lea m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0028:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Collections_Specialized_NotifyCollectionChangedEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_002d:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0032:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0033:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0038:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0039:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_003e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_add_CollectionChanged__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_0043:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges__void, .-m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges__void

.globl m_Skymu_ViewModels_MainViewModel_ClearActiveConversation__void
.type m_Skymu_ViewModels_MainViewModel_ClearActiveConversation__void, @function
m_Skymu_ViewModels_MainViewModel_ClearActiveConversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_Clear__void
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_000b:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0010:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0011:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0016
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0013:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0014:
    jmp .Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0026
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0016:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_001b:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_001c:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0021
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_001e:
    mov -16(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_001f:
    jmp .Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0026
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0021:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_Clear__void
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0026:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0027:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_002c:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_003f
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_002e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_002f:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0034:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0035:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_003a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_remove_CollectionChanged__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_003f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0040:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0045:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Clear__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_004a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_004b:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_004c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_0051:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ClearActiveConversation__void, .-m_Skymu_ViewModels_MainViewModel_ClearActiveConversation__void

.globl m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground__ref_ref
.type m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground__ref_ref, @function
m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134__gen
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_003a:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_003c:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0041:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_0046:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground__ref_ref, .-m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground__ref_ref

.globl m_Skymu_ViewModels_MainViewModel_OpenImageViewer__void
.type m_Skymu_ViewModels_MainViewModel_OpenImageViewer__void, @function
m_Skymu_ViewModels_MainViewModel_OpenImageViewer__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_OpenImageViewer_void_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_OpenImageViewer_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_OpenImageViewer__void, .-m_Skymu_ViewModels_MainViewModel_OpenImageViewer__void

.globl m_Skymu_ViewModels_MainViewModel_HandleIncoming__ref
.type m_Skymu_ViewModels_MainViewModel_HandleIncoming__ref, @function
m_Skymu_ViewModels_MainViewModel_HandleIncoming__ref:
    push %rbp
    mov %rsp, %rbp
    sub $192, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_ctor__void
    mov %r12, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0005:
    mov -120(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0008:
    mov -128(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_000d:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0012:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0013:
    mov -128(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0018:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0243
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_001d:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_001e:
    mov -128(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0024:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0__ref(%rip), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_002a:
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_002f:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Yggdrasil_Yggdrasil_Models_Conversation__gen_gen
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0034:
    mov -128(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0035:
    mov -40(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0036:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0055
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0038:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0039:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_Database__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_003e:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_get_Messages__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0043:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0044:
    mov -136(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0049:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_004e:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_004f:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Databases_DatabaseManager_MessagesTable_WriteRow__ref_ref
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0054:
    mov -128(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0055:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0056:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_005b:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_005c:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0062
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_005e:
    mov -120(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_005f:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0060:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0067
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0062:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0067:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0068:
    mov -128(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_006d:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0072:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0077:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00e3
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0079:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_007a:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_007f:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0080:
    mov -128(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0085:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_008a:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Add__gen
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_008f:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0090:
    mov -128(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0095:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_009a:
    mov -128(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_009f:
    mov -136(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00a0:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00a1:
    mov -136(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00e3
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00a3:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00a4:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00a9:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00aa:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00b0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00ac:
    mov -128(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00ad:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00ae:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00b5
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00b0:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00b5:
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00ba:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00bb:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00c1
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00bd:
    mov -128(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00be:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00bf:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00c6
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00c1:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00c6:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    call m_System_String_op_Inequality__ref_ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00cb:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00e3
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00cd:
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00d2:
    mov -136(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00d7:
    mov -136(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00e3
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00d9:
    lea .LS_12_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00de:
    mov -136(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00e3:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00e4:
    mov -136(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00e9:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00ee:
    mov -136(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00f3:
    mov -144(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00f4:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00f5:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00fa:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00fb:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_00fc:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0101:
    mov -48(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0102:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0107:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage__ref_v
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_010c:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_010d:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0112:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0113:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0119
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0115:
    mov -136(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0116:
    xor %eax, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0117:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_011e
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0119:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_011e:
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0123:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0124:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_012a
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0126:
    mov -136(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0127:
    xor %eax, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0128:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_012f
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_012a:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_012f:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0134:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0137
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0136:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0137:
    call m_Skymu_Preferences_Settings_get_NotificationTrigger__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_013c:
    mov $1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_013d:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_013e:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_014e
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0140:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0141:
    mov -128(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0146:
    mov $5, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0147:
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_Notification_ctor__ref_i4
    mov %r12, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_014c:
    mov -128(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_014d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_014e:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_014f:
    mov -128(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0154:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0159:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01fa
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_015e:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_015f:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_ParentMessage__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0164:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0165:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_016b
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0167:
    mov -120(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0168:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0169:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_017c
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_016b:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0170:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0171:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0177
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0173:
    mov -112(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0174:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0175:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_017c
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0177:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_017c:
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0181:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0182:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0188
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0184:
    mov -120(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0185:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0186:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_018d
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0188:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_018d:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0192:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01e0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0194:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0195:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_019a:
    mov -120(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_019f:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01df
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01a1:
    lea .LN_19_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01a6:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01a7:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01ad
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01a9:
    mov -112(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01aa:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01ab:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01b2
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01ad:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01b2:
    mov -120(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01b7:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01df
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01b9:
    mov -48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01ba:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01bf:
    lea .LS_20_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01c4:
    lea .LN_21_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01c9:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01ce:
    lea .LS_22_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01d3:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01d8:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Contains__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01dd:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01e0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01df:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01e0:
    call m_Skymu_Preferences_Settings_get_NotificationTrigger__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01e5:
    mov $2, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01e6:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01e7:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01ec:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01ed:
    mov -144(%rbp), %rdi
    lea .LN_23_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01f2:
    mov $5, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01f3:
    lea .LN_24_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_Notification_ctor__ref_i4
    mov %r12, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01f8:
    mov -144(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01f9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01fa:
    call m_Skymu_Preferences_Settings_get_NotificationTrigger__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_01ff:
    mov $4, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0200:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0201:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0206:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0207:
    mov -144(%rbp), %rdi
    lea .LN_25_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_020c:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0235
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_020e:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_020f:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0214:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0215:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_021b
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0217:
    mov -136(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0218:
    xor %eax, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0219:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0220
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_021b:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0220:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0221:
    mov -144(%rbp), %rdi
    lea .LN_26_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0226:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_022b:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    call m_System_String_op_Inequality__ref_ref
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0230:
    mov -136(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0235:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0236:
    mov -144(%rbp), %rdi
    lea .LN_27_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_023b:
    mov $5, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_023c:
    lea .LN_28_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_Notification_ctor__ref_i4
    mov %r12, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0241:
    mov -144(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0242:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0243:
    lea .LN_29_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_ctor__void
    mov %r12, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0248:
    mov -128(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_024a:
    mov -64(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_024c:
    mov -24(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_024d:
    mov -136(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0252:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rdi
    lea .LN_30_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0257:
    mov -64(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0259:
    mov -136(%rbp), %rdi
    lea .LN_31_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_025e:
    mov -136(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02f5
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0263:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0264:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0269:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_026a:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0270
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_026c:
    mov -128(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_026d:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_026e:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0275
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0270:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0275:
    mov -24(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0276:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_027b:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0280:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02f5
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0282:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0283:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0288:
    mov -64(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_028a:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1__ref(%rip), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0290:
    lea .LN_32_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0295:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Yggdrasil_Yggdrasil_Models_ConversationItem__gen_gen
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_029a:
    mov -136(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_029f:
    mov -144(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02a1:
    mov -72(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02a3:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02a8:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02a9:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02ae:
    mov -72(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02b0:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_IndexOf__gen
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02b5:
    mov -144(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02b7:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02b8:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02bd:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02bf:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_RemoveAt__i4
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02c4:
    call m_Skymu_Preferences_Settings_get_MessageLogger__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02c9:
    mov -152(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02ce:
    mov -72(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02d0:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02d1:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02d6:
    lea .LS_33_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02db:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02e0:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_Text__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02e5:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02e6:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02eb:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02ed:
    mov -72(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02ef:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Insert__i4_gen
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02f4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02f5:
    lea .LN_34_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_ctor__void
    mov %r12, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02fa:
    mov -136(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02fc:
    mov -88(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02fe:
    mov -24(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_02ff:
    mov -144(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0304:
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rdi
    lea .LN_35_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0309:
    mov -88(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_030b:
    mov -144(%rbp), %rdi
    lea .LN_36_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0310:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0315:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0316:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_031b:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_031c:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0322
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_031e:
    mov -144(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_031f:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0320:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0327
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0322:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0327:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0328:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_032d:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0332:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0337:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0338:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_033d:
    lea .LN_37_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0342:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0343:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_035c
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0345:
    mov -152(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0346:
    lea .LN_38_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_034b:
    lea m_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2__ref_i4(%rip), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0351:
    lea .LN_39_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__ref_v
    mov %r12, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0356:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0357:
    lea .LN_40_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_global_slot
    mov -152(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_035c:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_Linq_Enumerable_Select_class_Yggdrasil_Yggdrasil_Models_ConversationItem_class_f_AnonymousType3_2_class_Yggdrasil_Yggdrasil_Models_ConversationItem_int32__gen_gen
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0361:
    mov -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0363:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3__gen(%rip), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0369:
    lea .LN_41_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_036e:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_Linq_Enumerable_LastOrDefault_class_f_AnonymousType3_2_class_Yggdrasil_Yggdrasil_Models_ConversationItem_int32__gen_gen
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0373:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0374:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_037a
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0376:
    mov -136(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0377:
    mov $-1, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0378:
    jmp .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_037f
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_037a:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_get_i__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_037f:
    mov -136(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0381:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0383:
    mov $-1, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0384:
    mov -144(%rbp), %rcx
    mov -136(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0386:
    mov -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0388:
    mov -152(%rbp), %rdi
    lea .LN_42_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_038d:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem__void
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0392:
    mov -152(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0397:
    mov -160(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_0399:
    call m_Skymu_Preferences_Settings_get_MessageLogger__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_039e:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03ad
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03a0:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03a1:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03a6:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03a8:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_RemoveAt__i4
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03ad:
    mov -104(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03af:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03b0:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03b5:
    lea .LS_43_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03ba:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03bf:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_Text__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03c4:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03c6:
    call m_Skymu_Preferences_Settings_get_MessageLogger__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03cb:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03cc:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    cmp %ecx, %eax
    seta %al
    movzbl %al, %eax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03ce:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03cf:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03d0:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03d5:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Count__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03da:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    call m_System_Math_Min__i4_i4
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03df:
    mov -160(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03e1:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03e2:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03e7:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03e9:
    mov -104(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03eb:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Insert__i4_gen
    mov %rax, -160(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_03f0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleIncoming_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleIncoming__ref, .-m_Skymu_ViewModels_MainViewModel_HandleIncoming__ref

.globl m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage__ref_v
.type m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage__ref_v, @function
m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0005:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0006:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0007:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_000d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_000e:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0013:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0014:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0__ref(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_001a:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_001f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Yggdrasil_Yggdrasil_Models_Conversation__gen_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0024:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0025:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0026:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0029
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0029:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_002a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_002b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_set_LastMessageTime__v
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0030:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0031:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0036:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0037:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_003b
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0039:
    mov -48(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_003a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_003b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_003c:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0041:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_0046:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage__ref_v, .-m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage__ref_v

.globl m_Skymu_ViewModels_MainViewModel_SendMessage__ref
.type m_Skymu_ViewModels_MainViewModel_SendMessage__ref, @function
m_Skymu_ViewModels_MainViewModel_SendMessage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SendMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SendMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SendMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SendMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SendMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_SendMessage_d_138__gen
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0034:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_SendMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_003e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SendMessage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SendMessage__ref, .-m_Skymu_ViewModels_MainViewModel_SendMessage__ref

.globl m_Skymu_ViewModels_MainViewModel_GetConversationList__void
.type m_Skymu_ViewModels_MainViewModel_GetConversationList__void, @function
m_Skymu_ViewModels_MainViewModel_GetConversationList__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConversationList_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConversationList_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_GetConversationList_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConversationList_void_0006:
    mov -24(%rbp), %rdi
    call m_Skymu_CompactRecentsHelper_GroupByDate__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConversationList_void_000b:
    mov -24(%rbp), %rdi
    call m_System_Linq_Enumerable_Cast_object__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConversationList_void_0010:
    mov -24(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_object__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConversationList_void_0015:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetConversationList_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetConversationList__void, .-m_Skymu_ViewModels_MainViewModel_GetConversationList__void

.globl m_Skymu_ViewModels_MainViewModel_GetServerList__void
.type m_Skymu_ViewModels_MainViewModel_GetServerList__void, @function
m_Skymu_ViewModels_MainViewModel_GetServerList__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0002:
    call m_Yggdrasil_Models_Server_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_GetServerList_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_GetServerList_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_GetServerList_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_GetServerList_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_Start_valuetype_Skymu_ViewModels_MainViewModel_GetServerList_d_140__gen
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_002c:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_GetServerList_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetServerList_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetServerList__void, .-m_Skymu_ViewModels_MainViewModel_GetServerList__void

.globl m_Skymu_ViewModels_MainViewModel_InitiateSignOut__ref
.type m_Skymu_ViewModels_MainViewModel_InitiateSignOut__ref, @function
m_Skymu_ViewModels_MainViewModel_InitiateSignOut__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0017
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0003:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0008:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_000d:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_InternalName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0012:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Purge__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0017:
    lea .LS_2_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_001c:
    mov -32(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0021:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0022:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref(%rip), %rdi
    call shim_global_slot
    mov -32(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0027:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0028:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_002d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_002e:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0033
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0030:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0031:
    jmp .Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_003f
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0033:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0034:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0035:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor__b
    mov %r12, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_003a:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_Invoke__ref_gen
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_003f:
    call m_Skymu_WebServices_UserServerAPI_StopPolling__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0044:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_0045:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_InitiateSignOut__ref, .-m_Skymu_ViewModels_MainViewModel_InitiateSignOut__ref

.globl m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler__void
.type m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler__void, @function
m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143__gen
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler__void, .-m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler__void

.globl m_Skymu_ViewModels_MainViewModel_PingLoop__void
.type m_Skymu_ViewModels_MainViewModel_PingLoop__void, @function
m_Skymu_ViewModels_MainViewModel_PingLoop__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_0000:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_0007:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_PingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_000c:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_000e:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_PingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_0014:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_0016:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_PingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_001b:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_PingLoop_d_144__gen
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_0022:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_0024:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_PingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_0029:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_002e:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_PingLoop_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_PingLoop__void, .-m_Skymu_ViewModels_MainViewModel_PingLoop__void

.globl m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow__void
.type m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow__void, @function
m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0005:
    mov -24(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_000a:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0017
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_000c:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_Pages_AddContact_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0011:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_ShowWindow__void
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0016:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0017:
    lea .LS_2_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_001c:
    mov -32(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0021:
    lea .LS_3_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void(%rip), %rdi
    mov $45, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0026:
    lea .LS_4_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_002b:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_002c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_Skymu_Universal_ShowMessage__ref_ref_v
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_0031:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow__void, .-m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow__void

.globl m_Skymu_ViewModels_MainViewModel_ShowCallPhones__void
.type m_Skymu_ViewModels_MainViewModel_ShowCallPhones__void, @function
m_Skymu_ViewModels_MainViewModel_ShowCallPhones__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowCallPhones_void_0000:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_ShowCallPhones_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowCallPhones_void_0005:
    mov -24(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_ViewModels_MainViewModel_ShowCallPhones_void_000a:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_ShowCallPhones_void(%rip), %rdi
    mov $42, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowCallPhones_void_000f:
    lea .LS_2_m_Skymu_ViewModels_MainViewModel_ShowCallPhones_void(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowCallPhones_void_0014:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ShowCallPhones_void_0015:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Universal_ShowMessage__ref_ref_v
.Lm_Skymu_ViewModels_MainViewModel_ShowCallPhones_void_001a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ShowCallPhones_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ShowCallPhones__void, .-m_Skymu_ViewModels_MainViewModel_ShowCallPhones__void

.globl m_Skymu_ViewModels_MainViewModel_InformDND__void
.type m_Skymu_ViewModels_MainViewModel_InformDND__void, @function
m_Skymu_ViewModels_MainViewModel_InformDND__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0000:
    call m_Skymu_Preferences_Settings_get_InformDND__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0005:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0036
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0007:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_000c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0011:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_InformDND_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0016:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0017:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0030
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0019:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_001a:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_InformDND_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_001f:
    lea m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_0__void(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0025:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_InformDND_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_bool_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_002a:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_002b:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_InformDND_void(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0030:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke_valuetype_System_Runtime_System_Nullable_1_bool__gen
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0035:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_0036:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_InformDND_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_InformDND__void, .-m_Skymu_ViewModels_MainViewModel_InformDND__void

.globl m_Skymu_ViewModels_MainViewModel_SendFile__void
.type m_Skymu_ViewModels_MainViewModel_SendFile__void, @function
m_Skymu_ViewModels_MainViewModel_SendFile__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SendFile_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SendFile_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SendFile_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SendFile_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_SendFile_d_148__gen
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SendFile_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SendFile_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SendFile__void, .-m_Skymu_ViewModels_MainViewModel_SendFile__void

.globl m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator__void
.type m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator__void, @function
m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0009
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_000a:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0010:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0015:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_001a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_001b:
    lea m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0021:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Collections_Specialized_NotifyCollectionChangedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0026:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_add_CollectionChanged__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_002c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_TypingLoop__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0031:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator__void, .-m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator__void

.globl m_Skymu_ViewModels_MainViewModel_TypingLoop__void
.type m_Skymu_ViewModels_MainViewModel_TypingLoop__void, @function
m_Skymu_ViewModels_MainViewModel_TypingLoop__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_TypingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_TypingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_TypingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_TypingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_TypingLoop_d_151__gen
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_TypingLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_TypingLoop_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_TypingLoop__void, .-m_Skymu_ViewModels_MainViewModel_TypingLoop__void

.globl m_Skymu_ViewModels_MainViewModel_RefreshTypingState__void
.type m_Skymu_ViewModels_MainViewModel_RefreshTypingState__void, @function
m_Skymu_ViewModels_MainViewModel_RefreshTypingState__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0005:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_000d:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0012:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0017:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Count__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_001c:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_001d:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_001e:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_001f:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jg .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0048
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0021:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0026:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0027:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_002b
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0029:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_002b:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0030:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0031:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0037:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_003c:
    call m_System_Array_Empty_object__void
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0041:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_BeginInvoke__ref_arr
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0046:
    mov -40(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0047:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0048:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0049:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_004a:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_004b:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0061
    cmp $1, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_008b
    cmp $2, %eax
    je .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00cc
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_005c:
    jmp .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_013f
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0061:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0062:
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0067:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_006c:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_006d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Item__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0072:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0077:
    lea .LS_5_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_007c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0081:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0086:
    jmp .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_014a
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_008b:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_008c:
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0091:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0096:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0097:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Item__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_009c:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00a1:
    lea .LS_8_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00a6:
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00ab:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00b0:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00b1:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Item__i4
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00b6:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00bb:
    lea .LS_10_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00c0:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00c5:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00ca:
    jmp .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_014a
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00cc:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00cd:
    mov $6, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00ce:
    mov -48(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00d3:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00d4:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00d5:
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00da:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00df:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00e0:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Item__i4
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00e5:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00ea:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00eb:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00ec:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00ed:
    lea .LS_13_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00f2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00f3:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00f4:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00f5:
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00fa:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_00ff:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0100:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Item__i4
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0105:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_010a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_010b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_010c:
    mov $3, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_010d:
    lea .LS_15_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0112:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0113:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0114:
    mov $4, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0115:
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_011a:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_011f:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0120:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Item__i4
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0125:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_012a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_012b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_012c:
    mov $5, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_012d:
    lea .LS_17_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0132:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0133:
    mov -32(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0138:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_013d:
    jmp .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_014a
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_013f:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0140:
    lea .LS_19_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0145:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_014a:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_014f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0150:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0154
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0152:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0153:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0154:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0159:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_015a:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0160:
    lea .LN_21_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0165:
    call m_System_Array_Empty_object__void
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_016a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_BeginInvoke__ref_arr
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_016f:
    mov -40(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_0170:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_RefreshTypingState_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_RefreshTypingState__void, .-m_Skymu_ViewModels_MainViewModel_RefreshTypingState__void

.globl m_Skymu_ViewModels_MainViewModel_StopTyping__void
.type m_Skymu_ViewModels_MainViewModel_StopTyping__void, @function
m_Skymu_ViewModels_MainViewModel_StopTyping__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StopTyping_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StopTyping_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_StopTyping_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StopTyping_void_0006:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StopTyping_void_0007:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StopTyping_void_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Timer_Change__i4_i4
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StopTyping_void_000d:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_StopTyping_void_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_StopTyping_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_StopTyping__void, .-m_Skymu_ViewModels_MainViewModel_StopTyping__void

.globl m_Skymu_ViewModels_MainViewModel_StartTyping__void
.type m_Skymu_ViewModels_MainViewModel_StartTyping__void, @function
m_Skymu_ViewModels_MainViewModel_StartTyping__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_StartTyping_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0006:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_StartTyping_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_000b:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingTimeout__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0010:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0011:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Timer_Change__i4_i4
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0016:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0018:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_StartTyping_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_001d:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0064
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_001f:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_StartTyping_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0024:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0025:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_002a:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_002b:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0031
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_002d:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_002e:
    xor %eax, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_002f:
    jmp .Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0036
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0031:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0036:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0037:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_SetTyping__ref_b
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_003c:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_003d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_003e:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_StartTyping_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0043:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_StartTyping_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0048:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingRepeat__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_004d:
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_StartTyping_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0052:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_TypingRepeat__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0057:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Timer_Change__i4_i4
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_005c:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_005d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_005e:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_005f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_StartTyping_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_0064:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_StartTyping_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_StartTyping__void, .-m_Skymu_ViewModels_MainViewModel_StartTyping__void

.globl m_Skymu_ViewModels_MainViewModel_RunSpeedTest__void
.type m_Skymu_ViewModels_MainViewModel_RunSpeedTest__void, @function
m_Skymu_ViewModels_MainViewModel_RunSpeedTest__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155__gen
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_RunSpeedTest_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_RunSpeedTest__void, .-m_Skymu_ViewModels_MainViewModel_RunSpeedTest__void

.globl m_Skymu_ViewModels_MainViewModel_HandleCallToggle__void
.type m_Skymu_ViewModels_MainViewModel_HandleCallToggle__void, @function
m_Skymu_ViewModels_MainViewModel_HandleCallToggle__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156__gen
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleCallToggle_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleCallToggle__void, .-m_Skymu_ViewModels_MainViewModel_HandleCallToggle__void

.globl m_Skymu_ViewModels_MainViewModel_CheckCallEligibility__ref
.type m_Skymu_ViewModels_MainViewModel_CheckCallEligibility__ref, @function
m_Skymu_ViewModels_MainViewModel_CheckCallEligibility__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0005:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0009
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0007:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0008:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0009:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_000a:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_000f:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0031
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0011:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0012:
    mov -48(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0017:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0031
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0019:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_001a:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_001f:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0020:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0021:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_002e
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0024:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_ChannelType__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0029:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_002a:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_002c:
    jmp .Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0032
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_002e:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_002f:
    jmp .Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0032
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0031:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0032:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0033:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0046
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0035:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref(%rip), %rdi
    mov $65, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_003a:
    lea .LS_2_m_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_003f:
    mov $18, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0041:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Universal_ShowMessage__ref_ref_v
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_0046:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_CheckCallEligibility__ref, .-m_Skymu_ViewModels_MainViewModel_CheckCallEligibility__ref

.globl m_Skymu_ViewModels_MainViewModel_HandleVideoCall__void
.type m_Skymu_ViewModels_MainViewModel_HandleVideoCall__void, @function
m_Skymu_ViewModels_MainViewModel_HandleVideoCall__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleVideoCall_void_0000:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_HandleVideoCall_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_HandleVideoCall_void_0005:
    mov -24(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_ViewModels_MainViewModel_HandleVideoCall_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_HandleVideoCall_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_HandleVideoCall__void, .-m_Skymu_ViewModels_MainViewModel_HandleVideoCall__void

.globl m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList__void
.type m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList__void, @function
m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0005:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_000a:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_000b:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0024
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_000d:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_000e:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0013:
    lea m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_0__gen(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0019:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_001e:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_001f:
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0024:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_Linq_Enumerable_GroupBy_valuetype_System_Runtime_System_Collections_Generic_KeyValuePair_2_string_string_string__gen_gen
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0029:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_002e:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_002f:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0048
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0031:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0032:
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0037:
    lea m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_1__gen(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_003d:
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0042:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0043:
    lea .LN_8_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0048:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_Linq_Enumerable_Select_class_System_Linq_System_Linq_IGrouping_2_string_valuetype_System_Runtime_System_Collections_Generic_KeyValuePair_2_string_string_valuetype_System_Runtime_System_Collections_Generic_KeyValuePair_2_string_string__gen_gen
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_004d:
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0052:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0053:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_006c
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0055:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0056:
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_005b:
    lea m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2__gen(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0061:
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0066:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0067:
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_006c:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_Linq_Enumerable_Select_valuetype_System_Runtime_System_Collections_Generic_KeyValuePair_2_string_string_valuetype_System_Runtime_System_ValueTuple_2_string_string__gen_gen
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_0071:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList__void, .-m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList__void

.globl m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName__ref
.type m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName__ref, @function
m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0001:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_000b:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0050
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_000d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_000e:
    lea .LS_1_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0013:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0018:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0054
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_001a:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_001b:
    lea .LS_2_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0020:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0025:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0058
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0027:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0028:
    lea .LS_3_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0032:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_005c
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0034:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0035:
    lea .LS_4_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_003a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_003f:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0060
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0041:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0042:
    lea .LS_5_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0047:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_004c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0064
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_004e:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_007d
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0050:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0051:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0052:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0080
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0054:
    mov $8, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0055:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0056:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0080
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0058:
    mov $6, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0059:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_005a:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0080
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_005c:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_005d:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_005e:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0080
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0060:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0061:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0062:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0080
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0064:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0069:
    lea .LS_6_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref(%rip), %rdi
    mov $38, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_006e:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0073:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0078:
    mov $9, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_007a:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_007b:
    jmp .Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0080
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_007d:
    mov $9, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_007f:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0080:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_0081:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName__ref, .-m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName__ref

.globl m_Skymu_ViewModels_MainViewModel_T__ref_ref
.type m_Skymu_ViewModels_MainViewModel_T__ref_ref, @function
m_Skymu_ViewModels_MainViewModel_T__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0001:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_000d
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0003:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0005:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_000b:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_000c:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_000d:
    lea -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_000f:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0015:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0016:
    mov -80(%rbp), %rdi
    call m_System_Windows_Media_VisualTreeHelper_GetChildrenCount__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_001b:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_001c:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_001d:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_001e:
    jmp .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008b
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0021:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0022:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_Windows_Media_VisualTreeHelper_GetChild__ref_i4
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0027:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0029:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_002b:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0030:
    mov -88(%rbp), %rdi
    call shim_unbox
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0035:
    mov -88(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_T_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_003a:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_004f
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_003c:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_003e:
    mov -24(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_003f:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_FindChild_T__ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0044:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0045:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0046:
    mov -88(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_T_ref_ref(%rip), %rsi
    call shim_box
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_004b:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0087
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_004d:
    jmp .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008f
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_004f:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0050:
    mov -88(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0055:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_007d
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0057:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0059:
    mov -88(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_005e:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0060:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0062:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0087
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0064:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0066:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Name__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_006b:
    mov -24(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_006c:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0071:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0087
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0073:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0075:
    mov -96(%rbp), %rdi
    call shim_unbox
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_007a:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_007b:
    jmp .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008f
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_007d:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_007f:
    mov -88(%rbp), %rdi
    call shim_unbox
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0084:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0085:
    jmp .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008f
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0087:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0088:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0089:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008a:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008b:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008d:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0020
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_008f:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_0090:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_T_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_T__ref_ref, .-m_Skymu_ViewModels_MainViewModel_T__ref_ref

.globl m_Skymu_ViewModels_MainViewModel_cctor__void
.type m_Skymu_ViewModels_MainViewModel_cctor__void, @function
m_Skymu_ViewModels_MainViewModel_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_int32_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0006:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0007:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0008:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_000d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_000e:
    mov $3, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_000f:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0010:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0015:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0016:
    mov $2, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0017:
    mov $3, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0018:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_001d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_001e:
    mov $5, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_001f:
    mov $3, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0020:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0025:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0026:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0027:
    mov $5, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0028:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_002d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_002e:
    mov $4, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_002f:
    mov $5, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0030:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0035:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0036:
    mov $6, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0037:
    mov $19, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0039:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_003f:
    mov $7, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0040:
    mov $9, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0042:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0047:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0048:
    mov $8, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0049:
    mov $14, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_004b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0051:
    mov $9, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0053:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0054:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0059:
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_005e:
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_int32_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0063:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0064:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0065:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0066:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_006b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_006c:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_006d:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_006e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0073:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0074:
    mov $2, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0075:
    mov $6, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0076:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_007b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_007c:
    mov $3, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_007d:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_007e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0083:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0084:
    mov $4, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0085:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0086:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_008b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_008c:
    mov $6, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_008d:
    mov $9, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_008f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0094:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0095:
    mov $5, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0096:
    mov $4, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_0097:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_009c:
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_00a1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_cctor__void, .-m_Skymu_ViewModels_MainViewModel_cctor__void

.globl m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0__arr
.type m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0__arr, @function
m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0__arr:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d__gen
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0__arr, .-m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0__arr

.globl m_Skymu_ViewModels_MainViewModel_ctor_b_125_0__ref
.type m_Skymu_ViewModels_MainViewModel_ctor_b_125_0__ref, @function
m_Skymu_ViewModels_MainViewModel_ctor_b_125_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_000b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_000c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0012
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_000e:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_000f:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0010:
    jmp .Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0017
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0012:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0017:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0018:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_SetTyping__ref_b
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_001d:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_001e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_001f:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0024:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0025:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0026:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Timer_Change__i4_i4
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_002b:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_002c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_002d:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_002e:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_0033:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ctor_b_125_0__ref, .-m_Skymu_ViewModels_MainViewModel_ctor_b_125_0__ref

.globl m_Skymu_ViewModels_MainViewModel_ctor_b_125_1__ref
.type m_Skymu_ViewModels_MainViewModel_ctor_b_125_1__ref, @function
m_Skymu_ViewModels_MainViewModel_ctor_b_125_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0000:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_000b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_000c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0012
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_000e:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_000f:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0010:
    jmp .Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0017
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0012:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0017:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0018:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_SetTyping__ref_b
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_001d:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_001e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_001f:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0020:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_0025:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_ctor_b_125_1__ref, .-m_Skymu_ViewModels_MainViewModel_ctor_b_125_1__ref

.globl m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0__ref_ref
.type m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0__ref_ref, @function
m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0001:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0006:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0009
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0009:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_000a:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Specialized_NotifyCollectionChangedEventArgs_get_Action__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_000f:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0012
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0012:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0013:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Specialized_NotifyCollectionChangedEventArgs_get_NewItems__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0018:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerable_GetEnumerator__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_001d:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_001e:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01dd
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0023:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0024:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0029:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_002a:
    lea .LN_0_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_ctor__void
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_002f:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0030:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0031:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0032:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0037:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0038:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0039:
    mov -104(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_003e:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0043:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0044:
    mov -104(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0049:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01dd
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_004e:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_004f:
    mov -104(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0054:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0059:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_005e:
    lea .LN_5_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0063:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0064:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_006a
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0066:
    mov -104(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0067:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0068:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_006f
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_006a:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_006f:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0074:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_012b
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0079:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_007a:
    mov -96(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_007f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0084:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_012b
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0089:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_008a:
    mov -96(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_008f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0094:
    lea .LS_8_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0099:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_009e:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_012b
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00a3:
    lea .LN_9_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_ctor__void
    mov %r12, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00a8:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00a9:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00aa:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00ab:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00b0:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00b1:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00b2:
    mov -104(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00b7:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Values__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00bc:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00bd:
    mov -112(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00c2:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1__ref(%rip), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00c8:
    lea .LN_13_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00cd:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_Linq_Enumerable_LastOrDefault_class_Yggdrasil_Yggdrasil_Models_Message__gen_gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00d2:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00d3:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00e6
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00d5:
    mov -96(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00d6:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00d7:
    mov -96(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00dc:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Values__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00e1:
    mov -96(%rbp), %rdi
    call m_System_Linq_Enumerable_LastOrDefault_class_Yggdrasil_Yggdrasil_Models_Message__gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00e6:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00eb:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00ec:
    mov -96(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00f1:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_012b
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00f3:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00f4:
    mov -96(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00f9:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00fa:
    mov -104(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_00ff:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0104:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_Remove__gen
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0109:
    mov -96(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_010a:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_010f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0114:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0115:
    lea m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2__void(%rip), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_011b:
    lea .LN_19_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0120:
    call m_System_Array_Empty_object__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0125:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_BeginInvoke__ref_arr
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_012a:
    mov -96(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_012b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_012c:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0131:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0132:
    mov -104(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0137:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_IndexOf__gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_013c:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_013d:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_013e:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0140:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01a1
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0142:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0143:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_ActiveConversation__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0148:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_014a:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Item__i4
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_014f:
    mov -96(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0154:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0156:
    mov -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0158:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_019b
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_015a:
    mov -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_015c:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Identifier__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0161:
    lea .LS_21_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0166:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_016b:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_019b
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_016d:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_016e:
    mov -104(%rbp), %rdi
    lea .LN_22_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0173:
    mov -80(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0175:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_017a:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_017f:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier__ref
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0184:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0185:
    mov -104(%rbp), %rdi
    lea .LN_23_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_018a:
    mov -80(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_018c:
    mov -112(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0191:
    xor %eax, %eax
    mov %rax, -128(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0192:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    cmp %rcx, %rax
    seta %al
    movzbl %al, %eax
    mov %rax, -120(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0194:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_PreviousMessageIsAction__b
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0199:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01a6
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_019b:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_019d:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_019e:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_019f:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01a1:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01a3:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01a4:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    jge .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0142
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01a6:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01a7:
    mov -96(%rbp), %rdi
    lea .LN_24_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01ac:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01b1:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01b6:
    lea .LN_25_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01bb:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01bc:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01c2
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01be:
    mov -96(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01bf:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01c0:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01c7
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01c2:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01c7:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_String_op_Inequality__ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01cc:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01dd
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01ce:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01cf:
    mov -104(%rbp), %rdi
    lea .LN_26_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01d4:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01dd
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01d6:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01d7:
    mov -104(%rbp), %rdi
    lea .LN_27_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01dc:
    mov -104(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01dd:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01de:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01e3:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0023
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01e8:
    jmp .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01fe
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01fe:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_01ff:
    mov -96(%rbp), %rdi
    lea .LN_28_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0204:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0205:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0209
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0207:
    mov -88(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0208:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0209:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_020a:
    lea .LN_29_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_020f:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_0214:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0__ref_ref, .-m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0__ref_ref

.globl m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0__i4
.type m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0__i4, @function
m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0__i4:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0000:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0005:
    lea .LS_0_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_000a:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_000b:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0010:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0011:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0012:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0013:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0018:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0019:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_Format__ref_arr
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_001e:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_001f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0020:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0021:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_set_UserCountText__ref
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0026:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0027:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_002c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_002d:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0031
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_002f:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0030:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0031:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0032:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_string_Invoke__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0__i4, .-m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0__i4

.globl m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0__ref_ref
.type m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0__ref_ref, @function
m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_RefreshTypingState__void
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0__ref_ref, .-m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_b_150_0__ref_ref

    .globl m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_0__void
    .type m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_0__void, @function
m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_0__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_0_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_0__void, .-m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_0__void

    .globl m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_MoveNext__void
    .type m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_MoveNext__void

    .globl m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_MoveNext__void
    .type m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_MoveNext__void

    .globl m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_MoveNext__void
    .type m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_MoveNext__void, @function
m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_MoveNext__void, .-m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_MoveNext__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_get_switchuser_void:
    .asciz "<switchuser>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_SignOutRequestedEventArgs_ctor_b:
    .asciz "<switchuser>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "attachments"

.LN_3_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "attachments"

.LN_4_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "_isDownloading"

.LN_5_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "_isDownloading"

.LN_6_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "attachments"

.LS_7_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .short 83, 107, 121, 109, 117

.LS_8_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .short 95, 97, 116, 116, 97, 99, 104, 109, 101, 110, 116, 95, 116, 101, 109, 112

.LN_9_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<tempPath>5__2"

.LN_10_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "SkymuHttpClient"

.LN_11_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_14_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_15_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_16_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<response>5__3"

.LN_18_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<tempPath>5__2"

.LN_19_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<fileStream>5__4"

.LN_20_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<response>5__3"

.LN_21_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<fileStream>5__4"

.LN_22_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_23_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>u__2"

.LN_24_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_25_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>u__2"

.LN_26_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>u__2"

.LN_27_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_28_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<fileStream>5__4"

.LN_29_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<response>5__3"

.LN_30_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<tempPath>5__2"

.LN_31_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "attachments"

.LN_32_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<tempPath>5__2"

.LN_33_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<tempPath>5__2"

.LN_34_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "_isDownloading"

.LN_35_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_36_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<tempPath>5__2"

.LN_37_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_cctor_void:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c'"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_InitSidebar_b_126_2_ref:
    .asciz "CurrentUser"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_HandleIncoming_b_136_2_ref_i4:
    .asciz "int32>"

.LS_0_m_Skymu_ViewModels_MainViewModel_c_HandleCallToggle_b_156_0_void:
    .short 67, 65, 76, 76, 95, 73, 78, 73, 84

.LN_0_m_Skymu_ViewModels_MainViewModel_c_GetUniqueEmojiList_b_159_2_gen:
    .asciz "string>"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass119_0_GetStatusFromInt_b_0_gen:
    .asciz "value"

.LS_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref:
    .short 67, 111, 110, 110, 101, 99, 116, 105, 111, 110, 83, 116, 97, 116, 117, 115

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref:
    .asciz "curContext"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref:
    .asciz "<>9__126_2"

.LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref:
    .asciz "<>9"

.LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref:
    .asciz "System.Threading.SendOrPostCallback"

.LN_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_0_ref_ref:
    .asciz "<>9__126_2"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass126_1'"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "ubot"

.LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "ubot"

.LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "System.Action"

.LN_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass126_2'"

.LN_6_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "CS$<>8__locals2"

.LN_7_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "rbot"

.LN_8_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "rbot"

.LN_9_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_0_InitSidebar_b_1_ref_ref:
    .asciz "System.Action"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "ubot"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "CS$<>8__locals1"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "<>4__this"

.LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "ContactList"

.LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "ubot"

.LN_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "CS$<>8__locals1"

.LN_6_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "<>4__this"

.LN_7_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "ConversationList"

.LN_8_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_1_InitSidebar_b_3_void:
    .asciz "ubot"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "rbot"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "CS$<>8__locals2"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "CS$<>8__locals1"

.LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "<>4__this"

.LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "ContactList"

.LN_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "<>9__5"

.LN_6_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "bool>"

.LN_7_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "<>9__5"

.LN_8_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "CS$<>8__locals2"

.LN_9_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "CS$<>8__locals1"

.LN_10_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "<>4__this"

.LN_11_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "ContactList"

.LN_12_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "CS$<>8__locals2"

.LN_13_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "CS$<>8__locals1"

.LN_14_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "<>4__this"

.LN_15_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "ConversationList"

.LN_16_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "<>9__6"

.LN_17_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "bool>"

.LN_18_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "<>9__6"

.LN_19_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "CS$<>8__locals2"

.LN_20_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "CS$<>8__locals1"

.LN_21_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "<>4__this"

.LN_22_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_4_void:
    .asciz "ConversationList"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_5_ref:
    .asciz "rbot"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass126_2_InitSidebar_b_6_ref:
    .asciz "rbot"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_0_SubscribeConversationCollectionChanges_b_1_ref:
    .asciz "message"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void:
    .asciz "CS$<>8__locals1"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass132_1_SubscribeConversationCollectionChanges_b_2_void:
    .asciz "match"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_0_HandleIncoming_b_0_ref:
    .asciz "eR"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_1_HandleIncoming_b_1_ref:
    .asciz "eD"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass136_2_HandleIncoming_b_3_gen:
    .asciz "eE"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass137_0_UpdateRecentsListOnNewMessage_b_0_ref:
    .asciz "conversationId"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void:
    .asciz "<>4__this"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass138_0_SendMessage_b_0_void:
    .asciz "pending"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void:
    .asciz "<>4__this"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_0_void:
    .asciz "Empty"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void:
    .asciz "<>4__this"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void:
    .asciz "text"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass152_0_RefreshTypingState_b_1_void:
    .asciz "<>4__this"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<idx>5__2"

.LS_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 77, 97, 105, 110, 47, 110, 101, 116, 119, 111, 114, 107, 45

.LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<idx>5__2"

.LS_5_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .short 46, 112, 110, 103

.LN_6_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>4__this"

.LN_7_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "SpeedTestIconUpdated"

.LN_8_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<idx>5__2"

.LN_9_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<idx>5__2"

.LN_10_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_13_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_14_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_15_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_16_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "token"

.LN_17_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_18_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_c_DisplayClass155_0_RunSpeedTest_b_0_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "message"

.LN_3_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "message"

.LS_4_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .short 64, 115, 107, 121, 109, 117, 47, 115, 101, 110, 100, 105, 110, 103

.LN_5_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "Plugin"

.LN_6_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "message"

.LN_7_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>1__state"

.LN_8_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>t__builder"

.LN_10_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>u__1"

.LN_11_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>1__state"

.LS_13_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .short 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 100, 101, 108, 101, 116, 101, 32, 116, 104, 101, 32, 109, 101, 115, 115, 97, 103, 101, 46

.LN_14_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>1__state"

.LN_15_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_DeleteMessage_d_120_SetStateMachine_ref:
    .asciz "<>t__builder"

.LS_0_m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void:
    .short 69, 100, 105, 116, 105, 110, 103, 32, 109, 101, 115, 115, 97, 103, 101, 115, 32, 102, 114, 111, 109, 32, 116, 104, 101, 32, 99, 111, 110, 116, 101, 120, 116, 32, 109, 101, 110, 117

.LN_1_m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_EditMessage_d_121_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "_serversLoadedSource"

.LN_3_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "ServerList"

.LN_10_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "_database"

.LN_11_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "ServerList"

.LN_12_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>1__state"

.LN_13_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_GetServerList_d_140_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>4__this"

.LS_2_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .short 67, 65, 76, 76, 95, 73, 78

.LS_3_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .short 67, 65, 76, 76, 95, 69, 78, 68

.LN_4_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "CallActiveChanged"

.LN_5_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "CallActiveChanged"

.LN_6_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>9__156_0"

.LN_7_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>9"

.LN_8_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "System.Action"

.LN_9_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>9__156_0"

.LN_10_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>t__builder"

.LN_13_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>u__1"

.LN_14_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>u__1"

.LN_15_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>1__state"

.LS_16_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .short 67, 65, 76, 76, 95, 73, 78

.LN_17_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>1__state"

.LN_18_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_d_156_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "selectedItem"

.LN_3_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "selectedItem"

.LN_4_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>1__state"

.LN_5_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>t__builder"

.LN_7_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_d_129_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "channel"

.LN_3_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "channel"

.LN_4_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>1__state"

.LN_5_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>t__builder"

.LN_7_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_d_130_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass126_0'"

.LN_3_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>8__1"

.LN_4_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>8__1"

.LN_5_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>4__this"

.LN_6_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>4__this"

.LN_7_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Plugin"

.LN_8_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>t__builder"

.LN_11_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "CurrentUser"

.LN_15_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "CurrentUser"

.LS_16_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .short 80, 108, 117, 103, 105, 110, 32, 100, 105, 100, 32, 110, 111, 116, 32, 114, 101, 116, 117, 114, 110, 32, 97, 32, 118, 97, 108, 105, 100, 32, 117, 115, 101, 114, 32, 111, 98, 106, 101, 99, 116, 32, 116, 111, 32, 105, 110, 105, 116, 105, 97, 108, 105, 122, 101, 32, 116, 104, 101, 32, 100, 97, 116, 97, 98, 97, 115, 101, 46

.LN_17_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "System.InvalidOperationException"

.LN_18_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "CurrentUser"

.LN_19_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Skymu.Databases.DatabaseManager"

.LN_20_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "_database"

.LN_21_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "_database"

.LN_22_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "CurrentUser"

.LN_23_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Plugin"

.LN_24_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>1__state"

.LN_25_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__2"

.LN_26_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>t__builder"

.LN_27_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__2"

.LN_28_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__2"

.LN_29_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>1__state"

.LN_30_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Yggdrasil.Models.Conversation>"

.LN_31_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "ConversationList"

.LN_32_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "_database"

.LN_33_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "ConversationList"

.LN_34_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Plugin"

.LN_35_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>1__state"

.LN_36_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__3"

.LN_37_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>t__builder"

.LN_38_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__3"

.LN_39_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>u__3"

.LN_40_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>1__state"

.LN_41_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Yggdrasil.Models.DirectMessage>"

.LN_42_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "ContactList"

.LN_43_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "_database"

.LN_44_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "ContactList"

.LS_45_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .short 115, 67, 65, 76, 76, 80, 72, 79, 78, 69, 83, 95, 82, 65, 84, 69, 83, 95, 76, 79, 65, 68, 73, 78, 71

.LN_46_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "UserCountUpdated"

.LN_47_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>8__1"

.LN_48_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "curContext"

.LN_49_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "CurrentUser"

.LN_50_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>8__1"

.LN_51_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "System.ComponentModel.PropertyChangedEventHandler"

.LN_52_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Plugin"

.LN_53_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>8__1"

.LN_54_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Yggdrasil.Bottles.ListBottle>"

.LN_55_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Ready"

.LN_56_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "Empty"

.LN_57_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>1__state"

.LN_58_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>8__1"

.LN_59_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_InitSidebar_d_126_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "Plugin"

.LN_3_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "Yggdrasil.Models.Server>"

.LN_10_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "_database"

.LN_11_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "Yggdrasil.Models.Server>"

.LN_12_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "ServerList"

.LN_13_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_d_127_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>u__1"

.LN_3_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>1__state"

.LN_7_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>1__state"

.LN_8_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>u__2"

.LN_9_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>t__builder"

.LN_10_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>u__2"

.LN_11_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>u__2"

.LN_12_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_MoveNext_void:
    .asciz "<>1__state"

.LN_0_m_Skymu_ViewModels_MainViewModel_PingLoop_d_144_SetStateMachine_ref:
    .asciz "<>t__builder"

.LS_0_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void:
    .short 82, 101, 112, 108, 121, 105, 110, 103, 32, 116, 111, 32, 109, 101, 115, 115, 97, 103, 101, 115, 32, 102, 114, 111, 109, 32, 116, 104, 101, 32, 99, 111, 110, 116, 101, 120, 116, 32, 109, 101, 110, 117

.LN_1_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_d_123_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "Microsoft.Win32.OpenFileDialog"

.LS_3_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .short 115, 70, 95, 77, 85, 76, 84, 73, 67, 72, 65, 84, 95, 83, 69, 78, 68, 70, 73, 76, 69, 95, 77, 85, 76, 84, 73, 95, 67, 65, 80, 84, 73, 79, 78

.LN_4_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "Yggdrasil.Models.Attachment"

.LN_5_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "Plugin"

.LN_6_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>1__state"

.LN_7_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>t__builder"

.LN_9_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>u__1"

.LN_11_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>1__state"

.LN_13_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SendFile_d_148_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "ConversationOpened"

.LN_3_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "Empty"

.LN_4_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "_database"

.LN_5_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "Plugin"

.LN_6_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>1__state"

.LN_7_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>t__builder"

.LN_9_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>u__1"

.LN_11_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "_database"

.LN_13_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "ConversationLoaded"

.LN_14_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "Empty"

.LN_15_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>1__state"

.LN_16_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SetConversation_d_131_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__1"

.LN_4_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>t__builder"

.LN_5_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>1__state"

.LN_8_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "CurrentUser"

.LN_9_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "CurrentUser"

.LN_10_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "CurrentUser"

.LN_11_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__2"

.LN_13_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>t__builder"

.LN_14_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__2"

.LN_15_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__2"

.LN_16_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>1__state"

.LN_18_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__1"

.LN_19_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>t__builder"

.LN_20_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__1"

.LN_21_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>u__1"

.LN_22_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>1__state"

.LN_23_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "_userCountHandler"

.LN_24_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "_userCountHandler"

.LN_25_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "System.Action`1<int32>"

.LN_26_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "_userCountHandler"

.LN_27_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "_userCountHandler"

.LN_28_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>1__state"

.LN_29_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_d_143_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "Plugin"

.LN_3_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "conversation"

.LN_4_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "afterId"

.LN_5_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>1__state"

.LN_6_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>t__builder"

.LN_8_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "_database"

.LN_12_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "conversation"

.LN_13_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "conversation"

.LN_14_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "_synchronizing"

.LN_15_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "_synchronizing"

.LN_16_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_d_134_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_ActiveConversation_void:
    .asciz "<ActiveConversation>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_Database_void:
    .asciz "_database"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_SelectedConversation_void:
    .asciz "_selectedConversation"

.LN_0_m_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref:
    .asciz "_selectedConversation"

.LS_1_m_Skymu_ViewModels_MainViewModel_set_SelectedConversation_ref:
    .short 83, 101, 108, 101, 99, 116, 101, 100, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110

.LN_0_m_Skymu_ViewModels_MainViewModel_get_IsLoadingConversation_void:
    .asciz "_isLoadingConversation"

.LN_0_m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v:
    .asciz "_isLoadingConversation"

.LS_1_m_Skymu_ViewModels_MainViewModel_set_IsLoadingConversation_v:
    .short 73, 115, 76, 111, 97, 100, 105, 110, 103, 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110

.LN_0_m_Skymu_ViewModels_MainViewModel_get_UserCountText_void:
    .asciz "_userCountText"

.LN_0_m_Skymu_ViewModels_MainViewModel_set_UserCountText_ref:
    .asciz "_userCountText"

.LS_1_m_Skymu_ViewModels_MainViewModel_set_UserCountText_ref:
    .short 85, 115, 101, 114, 67, 111, 117, 110, 116, 84, 101, 120, 116

.LN_0_m_Skymu_ViewModels_MainViewModel_get_TypingText_void:
    .asciz "_typingText"

.LN_0_m_Skymu_ViewModels_MainViewModel_set_TypingText_ref:
    .asciz "_typingText"

.LS_1_m_Skymu_ViewModels_MainViewModel_set_TypingText_ref:
    .short 84, 121, 112, 105, 110, 103, 84, 101, 120, 116

.LN_0_m_Skymu_ViewModels_MainViewModel_get_IsTypingVisible_void:
    .asciz "_isTypingVisible"

.LN_0_m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v:
    .asciz "_isTypingVisible"

.LS_1_m_Skymu_ViewModels_MainViewModel_set_IsTypingVisible_v:
    .short 73, 115, 84, 121, 112, 105, 110, 103, 86, 105, 115, 105, 98, 108, 101

.LN_0_m_Skymu_ViewModels_MainViewModel_get_IsCallActive_void:
    .asciz "_isCallActive"

.LN_0_m_Skymu_ViewModels_MainViewModel_set_IsCallActive_v:
    .asciz "_isCallActive"

.LS_1_m_Skymu_ViewModels_MainViewModel_set_IsCallActive_v:
    .short 73, 115, 67, 97, 108, 108, 65, 99, 116, 105, 118, 101

.LN_0_m_Skymu_ViewModels_MainViewModel_add_Ready_ref:
    .asciz "Ready"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_Ready_ref:
    .asciz "Ready"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_Ready_ref:
    .asciz "Ready"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_Ready_ref:
    .asciz "Ready"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref:
    .asciz "ConversationLoaded"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_ConversationLoaded_ref:
    .asciz "ConversationLoaded"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref:
    .asciz "ConversationLoaded"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_ConversationLoaded_ref:
    .asciz "ConversationLoaded"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref:
    .asciz "ConversationOpened"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_ConversationOpened_ref:
    .asciz "ConversationOpened"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref:
    .asciz "ConversationOpened"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_ConversationOpened_ref:
    .asciz "ConversationOpened"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref:
    .asciz "ConversationItemChanged"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_ConversationItemChanged_ref:
    .asciz "ConversationItemChanged"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref:
    .asciz "ConversationItemChanged"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_ConversationItemChanged_ref:
    .asciz "ConversationItemChanged"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref:
    .asciz "ConversationChanged"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_ConversationChanged_ref:
    .asciz "ConversationChanged"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref:
    .asciz "ConversationChanged"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_ConversationChanged_ref:
    .asciz "ConversationChanged"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref:
    .asciz "CompactRecentsRefreshRequested"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_CompactRecentsRefreshRequested_ref:
    .asciz "CompactRecentsRefreshRequested"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref:
    .asciz "CompactRecentsRefreshRequested"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_CompactRecentsRefreshRequested_ref:
    .asciz "CompactRecentsRefreshRequested"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref:
    .asciz "SignOutRequested"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_SignOutRequested_ref:
    .asciz "SignOutRequested"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref:
    .asciz "SignOutRequested"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_SignOutRequested_ref:
    .asciz "SignOutRequested"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref:
    .asciz "UserCountUpdated"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_UserCountUpdated_ref:
    .asciz "UserCountUpdated"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref:
    .asciz "UserCountUpdated"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_UserCountUpdated_ref:
    .asciz "UserCountUpdated"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref:
    .asciz "SpeedTestIconUpdated"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_SpeedTestIconUpdated_ref:
    .asciz "SpeedTestIconUpdated"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref:
    .asciz "SpeedTestIconUpdated"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_SpeedTestIconUpdated_ref:
    .asciz "SpeedTestIconUpdated"

.LN_0_m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref:
    .asciz "CallActiveChanged"

.LN_1_m_Skymu_ViewModels_MainViewModel_add_CallActiveChanged_ref:
    .asciz "CallActiveChanged"

.LN_0_m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref:
    .asciz "CallActiveChanged"

.LN_1_m_Skymu_ViewModels_MainViewModel_remove_CallActiveChanged_ref:
    .asciz "CallActiveChanged"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_DeleteMessageCommand_void:
    .asciz "<DeleteMessageCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_EditMessageCommand_void:
    .asciz "<EditMessageCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_ReplyToMessageCommand_void:
    .asciz "<ReplyToMessageCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_MoveBookmarkCommand_void:
    .asciz "<MoveBookmarkCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_CopyMessageCommand_void:
    .asciz "<CopyMessageCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_SendMessageCommand_void:
    .asciz "<SendMessageCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_RunSpeedTestCommand_void:
    .asciz "<RunSpeedTestCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void:
    .asciz "Yggdrasil.Models.Attachment[]>"

.LN_1_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_void:
    .asciz "Yggdrasil.Models.Attachment[]>"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_VideoCallCommand_void:
    .asciz "<VideoCallCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_CallCommand_void:
    .asciz "<CallCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_CallToggleCommand_void:
    .asciz "<CallToggleCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_SelectConversationCommand_void:
    .asciz "<SelectConversationCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_GetIntFromStatus_v:
    .asciz "StatusMap"

.LN_0_m_Skymu_ViewModels_MainViewModel_GetIntFromChannelType_v:
    .asciz "ChannelTypeMap"

.LN_0_m_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass119_0'"

.LN_1_m_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4:
    .asciz "value"

.LN_2_m_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4:
    .asciz "StatusMap"

.LN_3_m_Skymu_ViewModels_MainViewModel_GetStatusFromInt_i4:
    .asciz "bool>"

.LN_0_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref:
    .asciz "message"

.LN_3_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref:
    .asciz "<>t__builder"

.LN_5_m_Skymu_ViewModels_MainViewModel_DeleteMessage_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_EditMessage_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_EditMessage_ref:
    .asciz "<>1__state"

.LN_2_m_Skymu_ViewModels_MainViewModel_EditMessage_ref:
    .asciz "<>t__builder"

.LN_3_m_Skymu_ViewModels_MainViewModel_EditMessage_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref:
    .asciz "<>1__state"

.LN_2_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref:
    .asciz "<>t__builder"

.LN_3_m_Skymu_ViewModels_MainViewModel_ReplyToMessage_ref:
    .asciz "<>t__builder"

.LS_0_m_Skymu_ViewModels_MainViewModel_MoveBookmark_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 32, 98, 111, 111, 107, 109, 97, 114, 107, 105, 110, 103

.LN_0_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.Tasks.TaskCompletionSource`1<bool>"

.LN_1_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "_serversLoadedSource"

.LN_2_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Empty"

.LN_3_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "_typingText"

.LN_4_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "MinValue"

.LN_5_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "lastTypingActivity"

.LN_6_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "ActiveViewModel"

.LN_7_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "UseSkypeHome"

.LN_8_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.ConversationItem>"

.LN_9_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<ActiveConversation>k__BackingField"

.LN_10_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.DirectMessage>"

.LN_11_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "ContactList"

.LN_12_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Server>"

.LN_13_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "ServerList"

.LN_14_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Conversation>"

.LN_15_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "ConversationList"

.LN_16_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Message>"

.LN_17_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "_pendingPreviewMessages"

.LN_18_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "_typingActive"

.LN_19_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.TimerCallback"

.LN_20_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.Timer"

.LN_21_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "_typingTimer"

.LN_22_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.TimerCallback"

.LN_23_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.Timer"

.LN_24_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "_typingRepeatTimer"

.LN_25_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.Tasks.Task>"

.LN_26_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Message>"

.LN_27_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<DeleteMessageCommand>k__BackingField"

.LN_28_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.Tasks.Task>"

.LN_29_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Message>"

.LN_30_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<EditMessageCommand>k__BackingField"

.LN_31_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.Tasks.Task>"

.LN_32_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Message>"

.LN_33_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<ReplyToMessageCommand>k__BackingField"

.LN_34_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Message>"

.LN_35_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Message>"

.LN_36_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<MoveBookmarkCommand>k__BackingField"

.LN_37_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Message>"

.LN_38_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "Yggdrasil.Models.Message>"

.LN_39_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<CopyMessageCommand>k__BackingField"

.LN_40_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.Tasks.Task>"

.LN_41_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<string>"

.LN_42_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<SendMessageCommand>k__BackingField"

.LN_43_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Threading.Tasks.Task>"

.LN_44_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "CommunityToolkit.Mvvm.Input.AsyncRelayCommand"

.LN_45_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<RunSpeedTestCommand>k__BackingField"

.LN_46_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "System.Action"

.LN_47_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "CommunityToolkit.Mvvm.Input.RelayCommand"

.LN_48_m_Skymu_ViewModels_MainViewModel_ctor_void:
    .asciz "<VideoCallCommand>k__BackingField"

.LN_0_m_Skymu_ViewModels_MainViewModel_InitSidebar_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_InitSidebar_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_InitSidebar_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_InitSidebar_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_InitSidebar_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_LoadAndCacheServers_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SelectConversation_ref:
    .asciz "ConversationChanged"

.LN_1_m_Skymu_ViewModels_MainViewModel_SelectConversation_ref:
    .asciz "Empty"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref:
    .asciz "selectedItem"

.LN_3_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_ViewModels_MainViewModel_HandleConversationSelected_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref:
    .asciz "channel"

.LN_3_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_ViewModels_MainViewModel_HandleServerItemSelected_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SetConversation_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_SetConversation_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SetConversation_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_SetConversation_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_SetConversation_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void:
    .asciz "_conversationCollectionHandler"

.LN_1_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void:
    .asciz "_conversationCollectionHandler"

.LN_2_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void:
    .asciz "System.Collections.Specialized.NotifyCollectionChangedEventHandler"

.LN_3_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void:
    .asciz "_conversationCollectionHandler"

.LN_4_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_void:
    .asciz "_conversationCollectionHandler"

.LN_0_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void:
    .asciz "_pendingPreviewMessages"

.LN_1_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void:
    .asciz "Plugin"

.LN_2_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void:
    .asciz "_conversationCollectionHandler"

.LN_3_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void:
    .asciz "_conversationCollectionHandler"

.LN_4_m_Skymu_ViewModels_MainViewModel_ClearActiveConversation_void:
    .asciz "_conversationCollectionHandler"

.LN_0_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref:
    .asciz "conversation"

.LN_3_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref:
    .asciz "afterId"

.LN_4_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref:
    .asciz "<>1__state"

.LN_5_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref:
    .asciz "<>t__builder"

.LN_6_m_Skymu_ViewModels_MainViewModel_SyncMessagesInBackground_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass136_0'"

.LN_1_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_2_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_3_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "ConversationList"

.LN_4_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "bool>"

.LN_5_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_6_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_7_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_8_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_9_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "CurrentUser"

.LN_10_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "ActiveViewModel"

.LN_11_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "IsWindowActive"

.LS_12_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .short 73, 77

.LN_13_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_14_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "CurrentUser"

.LN_15_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_16_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "Skymu.Forms.Notification"

.LN_17_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_18_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "CurrentUser"

.LN_19_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "CurrentUser"

.LS_20_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .short 60, 64

.LN_21_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "CurrentUser"

.LS_22_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .short 62

.LN_23_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_24_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "Skymu.Forms.Notification"

.LN_25_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "IsWindowActive"

.LN_26_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_27_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eR"

.LN_28_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "Skymu.Forms.Notification"

.LN_29_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass136_1'"

.LN_30_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eD"

.LN_31_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eD"

.LN_32_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "bool>"

.LS_33_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .short 32, 61, 61, 91, 100, 101, 108, 101, 116, 101, 100, 93, 61, 61

.LN_34_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass136_2'"

.LN_35_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eE"

.LN_36_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eE"

.LN_37_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "<>9__136_2"

.LN_38_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "<>9"

.LN_39_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "int32>>"

.LN_40_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "<>9__136_2"

.LN_41_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "bool>"

.LN_42_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .asciz "eE"

.LS_43_m_Skymu_ViewModels_MainViewModel_HandleIncoming_ref:
    .short 32, 61, 61, 91, 101, 100, 105, 116, 101, 100, 93, 61, 61

.LN_0_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass137_0'"

.LN_1_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v:
    .asciz "conversationId"

.LN_2_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v:
    .asciz "ConversationList"

.LN_3_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v:
    .asciz "bool>"

.LN_4_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v:
    .asciz "CompactRecentsRefreshRequested"

.LN_5_m_Skymu_ViewModels_MainViewModel_UpdateRecentsListOnNewMessage_ref_v:
    .asciz "Empty"

.LN_0_m_Skymu_ViewModels_MainViewModel_SendMessage_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_SendMessage_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SendMessage_ref:
    .asciz "text"

.LN_3_m_Skymu_ViewModels_MainViewModel_SendMessage_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_ViewModels_MainViewModel_SendMessage_ref:
    .asciz "<>t__builder"

.LN_5_m_Skymu_ViewModels_MainViewModel_SendMessage_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_GetConversationList_void:
    .asciz "ConversationList"

.LN_0_m_Skymu_ViewModels_MainViewModel_GetServerList_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_GetServerList_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_GetServerList_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_GetServerList_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_GetServerList_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref:
    .asciz "CurrentUser"

.LN_1_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref:
    .asciz "Plugin"

.LS_2_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref:
    .short 76, 79, 71, 79, 85, 84

.LN_3_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref:
    .asciz "SignedIn"

.LN_4_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref:
    .asciz "SignOutRequested"

.LN_5_m_Skymu_ViewModels_MainViewModel_InitiateSignOut_ref:
    .asciz "Skymu.ViewModels.MainViewModel/SignOutRequestedEventArgs"

.LN_0_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_PingLoop_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_PingLoop_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_ViewModels_MainViewModel_PingLoop_void:
    .asciz "<>t__builder"

.LN_3_m_Skymu_ViewModels_MainViewModel_PingLoop_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void:
    .asciz "Plugin"

.LN_1_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void:
    .asciz "Skymu.Forms.Pages.AddContact"

.LS_2_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void:
    .short 67, 65, 76, 76, 95, 69, 82, 82, 79, 82, 49

.LS_3_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void:
    .short 84, 104, 105, 115, 32, 112, 108, 117, 103, 105, 110, 32, 100, 111, 101, 115, 32, 110, 111, 116, 32, 115, 117, 112, 112, 111, 114, 116, 32, 97, 100, 100, 105, 110, 103, 32, 99, 111, 110, 116, 97, 99, 116, 115, 46

.LS_4_m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow_void:
    .short 67, 97, 110, 39, 116, 32, 121, 111, 117, 32, 106, 117, 115, 116, 32, 117, 115, 101, 32, 121, 111, 117, 114, 32, 115, 109, 97, 114, 116, 112, 104, 111, 110, 101, 63

.LS_0_m_Skymu_ViewModels_MainViewModel_ShowCallPhones_void:
    .short 67, 65, 76, 76, 95, 69, 82, 82, 79, 82, 49

.LS_1_m_Skymu_ViewModels_MainViewModel_ShowCallPhones_void:
    .short 72, 97, 104, 97, 104, 97, 104, 97, 104, 97, 46, 46, 46, 32, 110, 105, 99, 101, 32, 116, 114, 121, 46, 32, 71, 101, 116, 32, 97, 32, 100, 97, 109, 110, 32, 86, 111, 110, 97, 103, 101, 46

.LS_2_m_Skymu_ViewModels_MainViewModel_ShowCallPhones_void:
    .short 67, 97, 110, 39, 116, 32, 121, 111, 117, 32, 106, 117, 115, 116, 32, 117, 115, 101, 32, 121, 111, 117, 114, 32, 115, 109, 97, 114, 116, 112, 104, 111, 110, 101, 63

.LN_0_m_Skymu_ViewModels_MainViewModel_InformDND_void:
    .asciz "<>9__147_0"

.LN_1_m_Skymu_ViewModels_MainViewModel_InformDND_void:
    .asciz "<>9"

.LN_2_m_Skymu_ViewModels_MainViewModel_InformDND_void:
    .asciz "System.Nullable`1<bool>>"

.LN_3_m_Skymu_ViewModels_MainViewModel_InformDND_void:
    .asciz "<>9__147_0"

.LN_0_m_Skymu_ViewModels_MainViewModel_SendFile_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_SendFile_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SendFile_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_SendFile_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_SendFile_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void:
    .asciz "_typingIndicatorSubscribed"

.LN_1_m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void:
    .asciz "_typingIndicatorSubscribed"

.LN_2_m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void:
    .asciz "Plugin"

.LN_3_m_Skymu_ViewModels_MainViewModel_SubscribeTypingIndicator_void:
    .asciz "System.Collections.Specialized.NotifyCollectionChangedEventHandler"

.LN_0_m_Skymu_ViewModels_MainViewModel_TypingLoop_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_TypingLoop_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_TypingLoop_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_TypingLoop_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_TypingLoop_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass152_0'"

.LN_1_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "Plugin"

.LN_3_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "System.Action"

.LN_4_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "Plugin"

.LS_5_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .short 32, 105, 115, 32, 116, 121, 112, 105, 110, 103, 46, 46, 46

.LN_6_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "text"

.LN_7_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "Plugin"

.LS_8_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .short 32, 97, 110, 100, 32

.LN_9_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "Plugin"

.LS_10_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .short 32, 97, 114, 101, 32, 116, 121, 112, 105, 110, 103, 46, 46, 46

.LN_11_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "text"

.LN_12_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "Plugin"

.LS_13_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .short 44, 32

.LN_14_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "Plugin"

.LS_15_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .short 44, 32, 97, 110, 100, 32

.LN_16_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "Plugin"

.LS_17_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .short 32, 97, 114, 101, 32, 116, 121, 112, 105, 110, 103, 46, 46, 46

.LN_18_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "text"

.LS_19_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .short 77, 117, 108, 116, 105, 112, 108, 101, 32, 112, 101, 111, 112, 108, 101, 32, 97, 114, 101, 32, 116, 121, 112, 105, 110, 103, 46, 46, 46

.LN_20_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "text"

.LN_21_m_Skymu_ViewModels_MainViewModel_RefreshTypingState_void:
    .asciz "System.Action"

.LN_0_m_Skymu_ViewModels_MainViewModel_StopTyping_void:
    .asciz "_typingTimer"

.LN_0_m_Skymu_ViewModels_MainViewModel_StartTyping_void:
    .asciz "_typingTimer"

.LN_1_m_Skymu_ViewModels_MainViewModel_StartTyping_void:
    .asciz "Plugin"

.LN_2_m_Skymu_ViewModels_MainViewModel_StartTyping_void:
    .asciz "_typingActive"

.LN_3_m_Skymu_ViewModels_MainViewModel_StartTyping_void:
    .asciz "Plugin"

.LN_4_m_Skymu_ViewModels_MainViewModel_StartTyping_void:
    .asciz "_typingRepeatTimer"

.LN_5_m_Skymu_ViewModels_MainViewModel_StartTyping_void:
    .asciz "Plugin"

.LN_6_m_Skymu_ViewModels_MainViewModel_StartTyping_void:
    .asciz "Plugin"

.LN_7_m_Skymu_ViewModels_MainViewModel_StartTyping_void:
    .asciz "_typingActive"

.LN_0_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_MainViewModel_HandleCallToggle_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref:
    .asciz "CallPlugin"

.LS_1_m_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref:
    .short 84, 104, 101, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 32, 121, 111, 117, 32, 97, 114, 101, 32, 116, 114, 121, 105, 110, 103, 32, 116, 111, 32, 99, 97, 108, 108, 32, 105, 115, 32, 111, 102, 32, 97, 110, 32, 105, 110, 101, 108, 105, 103, 105, 98, 108, 101, 32, 116, 121, 112, 101, 46

.LS_2_m_Skymu_ViewModels_MainViewModel_CheckCallEligibility_ref:
    .short 67, 97, 110, 110, 111, 116, 32, 115, 116, 97, 114, 116, 32, 99, 97, 108, 108

.LS_0_m_Skymu_ViewModels_MainViewModel_HandleVideoCall_void:
    .short 86, 105, 100, 101, 111, 32, 99, 97, 108, 108, 105, 110, 103

.LN_0_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "Map"

.LN_1_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9__159_0"

.LN_2_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9"

.LN_3_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "string>"

.LN_4_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9__159_0"

.LN_5_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9__159_1"

.LN_6_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9"

.LN_7_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "string>>"

.LN_8_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9__159_1"

.LN_9_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9__159_2"

.LN_10_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9"

.LN_11_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "string>>"

.LN_12_m_Skymu_ViewModels_MainViewModel_GetUniqueEmojiList_void:
    .asciz "<>9__159_2"

.LS_0_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref:
    .short 111, 110, 108, 105, 110, 101

.LS_1_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref:
    .short 111, 102, 102, 108, 105, 110, 101

.LS_2_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref:
    .short 105, 110, 118, 105, 115, 105, 98, 108, 101

.LS_3_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref:
    .short 97, 119, 97, 121

.LS_4_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref:
    .short 100, 110, 100

.LS_5_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref:
    .short 99, 97, 108, 108, 95, 102, 111, 114, 119, 97, 114, 100, 105, 110, 103

.LS_6_m_Skymu_ViewModels_MainViewModel_GetConnectionStatusFromName_ref:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 80, 65, 71, 69, 95, 70, 79, 82, 87, 65, 82, 68, 73, 78, 71, 65, 78, 68, 86, 79, 73, 67, 69, 77, 65, 73, 76

.LN_0_m_Skymu_ViewModels_MainViewModel_T_ref_ref:
    .asciz "!!T"

.LN_1_m_Skymu_ViewModels_MainViewModel_T_ref_ref:
    .asciz "!!T"

.LN_0_m_Skymu_ViewModels_MainViewModel_cctor_void:
    .asciz "int32>"

.LN_1_m_Skymu_ViewModels_MainViewModel_cctor_void:
    .asciz "StatusMap"

.LN_2_m_Skymu_ViewModels_MainViewModel_cctor_void:
    .asciz "int32>"

.LN_3_m_Skymu_ViewModels_MainViewModel_cctor_void:
    .asciz "ChannelTypeMap"

.LN_0_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr:
    .asciz "attachments"

.LN_3_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr:
    .asciz "<>1__state"

.LN_4_m_Skymu_ViewModels_MainViewModel_get_OpenImageCommand_b_91_0_arr:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref:
    .asciz "Plugin"

.LN_1_m_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref:
    .asciz "_typingRepeatTimer"

.LN_2_m_Skymu_ViewModels_MainViewModel_ctor_b_125_0_ref:
    .asciz "_typingActive"

.LN_0_m_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref:
    .asciz "Plugin"

.LN_1_m_Skymu_ViewModels_MainViewModel_ctor_b_125_1_ref:
    .asciz "_typingActive"

.LN_0_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass132_0'"

.LN_1_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LN_3_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LN_4_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LN_5_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "CurrentUser"

.LN_6_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LN_7_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LS_8_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .short 64, 115, 107, 121, 109, 117, 47, 115, 101, 110, 100, 105, 110, 103

.LN_9_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "Skymu.ViewModels.MainViewModel/'<>c__DisplayClass132_1'"

.LN_10_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_11_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "_pendingPreviewMessages"

.LN_12_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_13_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "bool>"

.LN_14_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "_pendingPreviewMessages"

.LN_15_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "match"

.LN_16_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "match"

.LN_17_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "_pendingPreviewMessages"

.LN_18_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "match"

.LN_19_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "System.Action"

.LN_20_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LS_21_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .short 64, 115, 107, 121, 109, 117, 47, 115, 101, 110, 100, 105, 110, 103

.LN_22_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LN_23_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LN_24_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "message"

.LN_25_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "CurrentUser"

.LN_26_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "IsWindowActive"

.LN_27_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "_synchronizing"

.LN_28_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "ConversationItemChanged"

.LN_29_m_Skymu_ViewModels_MainViewModel_SubscribeConversationCollectionChanges_b_132_0_ref_ref:
    .asciz "Empty"

.LS_0_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4:
    .short 115, 84, 79, 84, 65, 76, 95, 85, 83, 69, 82, 83, 95, 79, 78, 76, 73, 78, 69

.LN_1_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4:
    .asciz "System.Int32"

.LN_2_m_Skymu_ViewModels_MainViewModel_SkymuApiStatusHandler_b_143_0_i4:
    .asciz "UserCountUpdated"

.LSTUB_m_Skymu_ViewModels_MainViewModel_c_InformDND_b_147_0_void:
    .asciz "Skymu.ViewModels.MainViewModel/<>c::'<InformDND>b__147_0'  [inconsistent stack depth at IL_0065: 16 vs 15]"

.LSTUB_m_Skymu_ViewModels_MainViewModel_RunSpeedTest_d_155_MoveNext_void:
    .asciz "Skymu.ViewModels.MainViewModel/<RunSpeedTest>d__155::MoveNext  [float conversion]"

.LSTUB_m_Skymu_ViewModels_MainViewModel_SendMessage_d_138_MoveNext_void:
    .asciz "Skymu.ViewModels.MainViewModel/<SendMessage>d__138::MoveNext  [constructor with 7 arguments (limit 5)]"

.LSTUB_m_Skymu_ViewModels_MainViewModel_TypingLoop_d_151_MoveNext_void:
    .asciz "Skymu.ViewModels.MainViewModel/<TypingLoop>d__151::MoveNext  [floating-point 'bge']"

    .section .note.GNU-stack,"",@progbits
