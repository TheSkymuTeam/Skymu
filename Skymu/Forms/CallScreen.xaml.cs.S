# Forms/CallScreen.xaml.cs
    .text

.globl m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor__b_b
.type m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor__b_b, @function
m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor__b_b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor__b_b, .-m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor__b_b

.globl m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext__void
.type m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext__void, @function
m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_005a
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0012:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0013:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00dc
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0018:
    lea .LS_2_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_001d:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_001e:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0023:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_PlayAsync__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0028:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_002d:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_002e:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0030:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0035:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0076
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0038:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0039:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_003a:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_003b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0041:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0042:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0047:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0048:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_004d:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_004f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0050:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d__gen_gen
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0055:
    jmp .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0138
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_005a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_005b:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0060:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0062:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0067:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_006d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_006e:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_006f:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0070:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0071:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0076:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0078:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_007d:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_007e:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0083:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0088:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00ff
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_008a:
    jmp .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0125
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_008f:
    call m_Skymu_Preferences_Settings_get_CallOutToReconnectSound__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0094:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_009d
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0096:
    lea .LS_12_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_009b:
    jmp .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00a2
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_009d:
    lea .LS_13_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00a2:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00a3:
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00a8:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_PlayAsync__ref_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00ad:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00b2:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00b3:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00b5:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00ba:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00f8
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00bc:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00bd:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00be:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00bf:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00c0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00c5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00c6:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00c7:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00cc:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00cd:
    mov -56(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00d2:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00d4:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00d5:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d__gen_gen
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00da:
    jmp .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0138
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00dc:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00dd:
    mov -56(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00e2:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00e3:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00e4:
    mov -56(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00e9:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00ef:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00f0:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00f1:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00f2:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00f3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_20_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00f8:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00fa:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_00ff:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0100:
    mov -56(%rbp), %rdi
    lea .LN_21_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0105:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationToken_get_IsCancellationRequested__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_010a:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_008f
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_010c:
    jmp .Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0125
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0125:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0126:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0128:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_22_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_012d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_012e:
    mov -56(%rbp), %rdi
    lea .LN_23_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0133:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_0138:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext__void, .-m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext__void

.globl m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine__ref
.type m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine__ref, @function
m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine__ref, .-m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine__ref

.globl m_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor__void
.type m_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor__void, @function
m_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor__void, .-m_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor__void

.globl m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0__void
.type m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0__void, @function
m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d__gen
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0__void, .-m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0__void

.globl m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext__void
.type m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext__void, @function
m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0094
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0014:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0015:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0016:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_001b:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_001c:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    sete %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_001e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0023:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0024:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0029:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_003e
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_002b:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_002c:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0031:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0032:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0037:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Source__ref
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_003c:
    jmp .Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_004f
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_003e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_003f:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0044:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0045:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_004a:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Source__ref
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_004f:
    lea .LN_9_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0054:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0055:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_005a:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_005b:
    mov -72(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0060:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_SetMuted__ref_b
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0065:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_006a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_006b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_006d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0072:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00b0
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0074:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0075:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0076:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0077:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0078:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_007d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_007e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_007f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0084:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0085:
    mov -56(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_008a:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_008c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_008d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_Forms_CallScreen_OnMuteToggled_d_36__gen_gen
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0092:
    jmp .Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00e4
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0094:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_0095:
    mov -56(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_009a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_009b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_009c:
    mov -56(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00a1:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00a7:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00a8:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00a9:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00aa:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00ab:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00b0:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00b2:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00b7:
    mov -56(%rbp), %rax
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00b8:
    jmp .Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00d1
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00d1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00d2:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00d4:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00d9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00da:
    mov -56(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00df:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_00e4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext__void, .-m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext__void

.globl m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine__ref
.type m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine__ref, @function
m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine__ref, .-m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine__ref

.globl m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext__void
.type m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext__void, @function
m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0006:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0008:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_000d:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_000f:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00df
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0014:
    lea .LN_2_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_CallScreen_c_DisplayClass26_0_ctor__void
    mov %r12, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0019:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_001a:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_001c:
    mov -80(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0021:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0026:
    lea .LN_5_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_002b:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_002c:
    lea m_Skymu_Forms_CallScreen_OnCallStateChanged__ref_ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0032:
    lea .LN_6_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_CallBottle_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0037:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_add_CallStateChangedTube__gen
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_003c:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_003d:
    lea .LS_7_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0042:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0043:
    mov -88(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0048:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0049:
    mov -96(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_004e:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_004f:
    mov -104(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0054:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0055:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0056:
    lea .LN_10_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_005b:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_005c:
    lea .LN_11_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %r8
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ActiveCall_ctor__ref_ref_b_arr
    mov %r12, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0061:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0066:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0067:
    lea .LN_13_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Threading_CancellationTokenSource_ctor__void
    mov %r12, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_006c:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0071:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0072:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0073:
    mov -80(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0078:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_get_Token__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_007d:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0082:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0083:
    lea m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0__void(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0089:
    lea .LN_17_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_008e:
    mov -72(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run__gen
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0093:
    mov -72(%rbp), %rax
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0094:
    lea .LN_18_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0099:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_009a:
    mov -80(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_009f:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00a0:
    mov -88(%rbp), %rdi
    lea .LN_20_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00a5:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00a6:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_StartCall__ref_b_b
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00ab:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00b0:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00b2:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00b4:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_get_IsCompleted__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00b9:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00fc
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00bb:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00bc:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00bd:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00be:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00bf:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_21_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00c4:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00c5:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00c7:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_22_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00cc:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00cd:
    mov -72(%rbp), %rdi
    lea .LN_23_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00d2:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00d4:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00d5:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_Yggdrasil_Yggdrasil_Models_ActiveCall_valuetype_Skymu_Forms_CallScreen_StartCall_d_26__gen_gen
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00da:
    jmp .Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0188
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00df:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00e0:
    mov -72(%rbp), %rdi
    lea .LN_24_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00e5:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00e7:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00e8:
    mov -72(%rbp), %rdi
    lea .LN_25_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00ed:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00f3:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00f4:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00f5:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00f6:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00f7:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_26_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00fc:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_00fe:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_GetResult__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0103:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0104:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0105:
    mov -72(%rbp), %rdi
    lea .LN_27_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_010a:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_010e
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_010c:
    jmp .Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0175
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_010e:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_010f:
    mov -72(%rbp), %rdi
    lea .LN_28_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0114:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_Cancel__void
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0119:
    lea .LS_29_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_011e:
    mov -72(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0123:
    lea .LS_30_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0128:
    mov -72(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_012d:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_012e:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_014d
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0130:
    lea .LS_31_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0135:
    mov -72(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_013a:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_013b:
    mov -72(%rbp), %rdi
    lea .LN_32_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0140:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0141:
    lea .LN_33_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0146:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_014b:
    jmp .Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_015a
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_014d:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_014e:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI__void
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0153:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0154:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0155:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_34_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_015a:
    jmp .Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0175
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0175:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0176:
    mov $-2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0178:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_35_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_017d:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_017e:
    mov -72(%rbp), %rdi
    lea .LN_36_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0183:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_0188:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext__void, .-m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext__void

.globl m_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine__ref
.type m_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine__ref, @function
m_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine__ref, .-m_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine__ref

.globl m_Skymu_Forms_CallScreen_StartCall__b
.type m_Skymu_Forms_CallScreen_StartCall__b, @function
m_Skymu_Forms_CallScreen_StartCall__b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_StartCall_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_b_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_StartCall_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0016:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_StartCall_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_b_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_StartCall_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_StartCall_b(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Forms_CallScreen_StartCall_d_26__gen
.Lm_Skymu_Forms_CallScreen_StartCall_b_0032:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0034:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_StartCall_b(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_StartCall_b_003e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_StartCall_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_StartCall__b, .-m_Skymu_Forms_CallScreen_StartCall__b

.globl m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI__void
.type m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI__void, @function
m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0006:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0007:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_000d:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_000e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0013:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0014:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0019:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_001a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0020:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0021:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0026:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0027:
    lea .LN_4_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_002c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0032:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0037:
    lea .LS_7_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_003c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0041:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0042:
    lea .LN_8_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Threading_DispatcherTimer_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0047:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0048:
    movsd .LD_9_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0051:
    mov -40(%rbp), %rdi
    call m_System_TimeSpan_FromSeconds__f8
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0056:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_set_Interval__v
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_005b:
    mov -24(%rbp), %rdx
    mov -16(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0061:
    mov -24(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0066:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0067:
    lea m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_006d:
    lea .LN_12_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0072:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_add_Tick__ref
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0077:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0078:
    mov -24(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_007d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Start__void
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_0082:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI__void, .-m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI__void

.globl m_Skymu_Forms_CallScreen_add_HangUpRequested__ref
.type m_Skymu_Forms_CallScreen_add_HangUpRequested__ref, @function
m_Skymu_Forms_CallScreen_add_HangUpRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_add_HangUpRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0010:
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_add_HangUpRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0007
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_add_HangUpRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_add_HangUpRequested__ref, .-m_Skymu_Forms_CallScreen_add_HangUpRequested__ref

.globl m_Skymu_Forms_CallScreen_remove_HangUpRequested__ref
.type m_Skymu_Forms_CallScreen_remove_HangUpRequested__ref, @function
m_Skymu_Forms_CallScreen_remove_HangUpRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_remove_HangUpRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0010:
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_remove_HangUpRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0007
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_remove_HangUpRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_remove_HangUpRequested__ref, .-m_Skymu_Forms_CallScreen_remove_HangUpRequested__ref

.globl m_Skymu_Forms_CallScreen_add_LocationChangeRequested__ref
.type m_Skymu_Forms_CallScreen_add_LocationChangeRequested__ref, @function
m_Skymu_Forms_CallScreen_add_LocationChangeRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0010:
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler_1_class_Skymu_Forms_CallScreen_LocationChangeEventArgs__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0007
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_add_LocationChangeRequested__ref, .-m_Skymu_Forms_CallScreen_add_LocationChangeRequested__ref

.globl m_Skymu_Forms_CallScreen_remove_LocationChangeRequested__ref
.type m_Skymu_Forms_CallScreen_remove_LocationChangeRequested__ref, @function
m_Skymu_Forms_CallScreen_remove_LocationChangeRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0010:
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler_1_class_Skymu_Forms_CallScreen_LocationChangeEventArgs__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0007
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_remove_LocationChangeRequested__ref, .-m_Skymu_Forms_CallScreen_remove_LocationChangeRequested__ref

.globl m_Skymu_Forms_CallScreen_OnCallStateChanged__ref_ref
.type m_Skymu_Forms_CallScreen_OnCallStateChanged__ref_ref, @function
m_Skymu_Forms_CallScreen_OnCallStateChanged__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_CallBottle_get_State__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0006:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0007:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0020
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_000a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_000f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0010:
    lea m_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0016:
    lea .LN_0_m_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_001b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke__ref
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_0020:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnCallStateChanged__ref_ref, .-m_Skymu_Forms_CallScreen_OnCallStateChanged__ref_ref

.globl m_Skymu_Forms_CallScreen_OnMuteToggled__ref_ref
.type m_Skymu_Forms_CallScreen_OnMuteToggled__ref_ref, @function
m_Skymu_Forms_CallScreen_OnMuteToggled__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Forms_CallScreen_OnMuteToggled_d_36__gen
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnMuteToggled__ref_ref, .-m_Skymu_Forms_CallScreen_OnMuteToggled__ref_ref

.globl m_Skymu_Forms_CallScreen_OnSidebarToggled__ref_ref
.type m_Skymu_Forms_CallScreen_OnSidebarToggled__ref_ref, @function
m_Skymu_Forms_CallScreen_OnSidebarToggled__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_000c:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0011:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0012:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    sete %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0014:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0019:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_001a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_001b:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0021:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0026:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_002b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_SetButtonSource__ref_b
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0030:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0031:
    mov -40(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0036:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_003e
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0038:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_ExitFullscreen__void
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_003e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_003f:
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0044:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0058
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0046:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0047:
    mov -40(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_004c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_004d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_004e:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0053:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_LocationChangeEventArgs_Invoke__ref_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_0058:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnSidebarToggled__ref_ref, .-m_Skymu_Forms_CallScreen_OnSidebarToggled__ref_ref

.globl m_Skymu_Forms_CallScreen_OnChatToggled__ref_ref
.type m_Skymu_Forms_CallScreen_OnChatToggled__ref_ref, @function
m_Skymu_Forms_CallScreen_OnChatToggled__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_000c:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0011:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0012:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    sete %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0014:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0019:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_001a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_001b:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0021:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0026:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_002b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_SetButtonSource__ref_b
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0030:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0031:
    mov -40(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0036:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_003e
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0038:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_ExitFullscreen__void
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_003e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_003f:
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0044:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0058
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0046:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0047:
    mov -40(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_004c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_004d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_004e:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0053:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_LocationChangeEventArgs_Invoke__ref_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_0058:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnChatToggled_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnChatToggled__ref_ref, .-m_Skymu_Forms_CallScreen_OnChatToggled__ref_ref

.globl m_Skymu_Forms_CallScreen_OnFullscreenToggled__ref_ref
.type m_Skymu_Forms_CallScreen_OnFullscreenToggled__ref_ref, @function
m_Skymu_Forms_CallScreen_OnFullscreenToggled__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0002:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0007:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0008:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    sete %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_000a:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_000f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0011:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0017:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_001c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_SetButtonSource__ref_b
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0021:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0022:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0027:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0030
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0029:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_002a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_EnterFullscreen__void
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_002f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0030:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_ExitFullscreen__void
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_0036:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnFullscreenToggled__ref_ref, .-m_Skymu_Forms_CallScreen_OnFullscreenToggled__ref_ref

.globl m_Skymu_Forms_CallScreen_EnterFullscreen__void
.type m_Skymu_Forms_CallScreen_EnterFullscreen__void, @function
m_Skymu_Forms_CallScreen_EnterFullscreen__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0001:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0002:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_GetFrameParent__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0007:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_000d:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0012:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0045
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0014:
    jmp .Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0027
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0017:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_001c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Frame_get_NavigationService__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0021:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Navigation_NavigationService_RemoveBackEntry__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0026:
    mov -24(%rbp), %rax
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0028:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_002d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Frame_get_NavigationService__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0032:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Navigation_NavigationService_get_CanGoBack__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0037:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0016
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0039:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_003a:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_003f:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0040:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0045:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0046:
    lea .LN_5_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Window_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_004b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_004c:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_004d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_WindowStyle__v
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0052:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0053:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0054:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_WindowState__v
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_005a:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_005b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_ResizeMode__v
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0062:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0067:
    mov -16(%rbp), %rdx
    mov -8(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_006d:
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0072:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0073:
    lea m_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0079:
    lea .LN_8_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_007e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_add_Closed__ref
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0083:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0084:
    mov -24(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0089:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0097
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_008b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_008c:
    mov -24(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0091:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0092:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0097:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0098:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_0099:
    mov -32(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_009e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_009f:
    mov -40(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_00a4:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_SetButtonSource__ref_b
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_00a9:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_00aa:
    mov -24(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_CallScreen_EnterFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_00af:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_00b4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_EnterFullscreen__void, .-m_Skymu_Forms_CallScreen_EnterFullscreen__void

.globl m_Skymu_Forms_CallScreen_ExitFullscreen__void
.type m_Skymu_Forms_CallScreen_ExitFullscreen__void, @function
m_Skymu_Forms_CallScreen_ExitFullscreen__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0001:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0002:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0008:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0009:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_000f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0014:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_SetButtonSource__ref_b
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0019:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_001a:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_001f:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0020:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0025:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0026:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_002b:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_006a
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_002d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_002e:
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0033:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0034:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Frame_set_NavigationUIVisibility__v
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0039:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_003a:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_003f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0040:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0045:
    jmp .Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0058
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0047:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0048:
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_004d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Frame_get_NavigationService__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0052:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Navigation_NavigationService_RemoveBackEntry__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0057:
    mov -24(%rbp), %rax
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0059:
    mov -24(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_005e:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Frame_get_NavigationService__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0063:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Navigation_NavigationService_get_CanGoBack__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0068:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0047
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_006a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_006b:
    mov -24(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0070:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0071:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0076
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0073:
    mov -16(%rbp), %rax
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0074:
    jmp .Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_007b
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0076:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_007b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_007c:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_007d:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_CallScreen_ExitFullscreen_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_0082:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_ExitFullscreen_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_ExitFullscreen__void, .-m_Skymu_Forms_CallScreen_ExitFullscreen__void

.globl m_Skymu_Forms_CallScreen_GetFrameParent__void
.type m_Skymu_Forms_CallScreen_GetFrameParent__void, @function
m_Skymu_Forms_CallScreen_GetFrameParent__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0001:
    mov -40(%rbp), %rdi
    call m_System_Windows_Media_VisualTreeHelper_GetParent__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0006:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0007:
    jmp .Lm_Skymu_Forms_CallScreen_GetFrameParent_void_001c
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0009:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_000a:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_000f:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0010:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0011:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0015
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0013:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0014:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0015:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0016:
    mov -48(%rbp), %rdi
    call m_System_Windows_Media_VisualTreeHelper_GetParent__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_001b:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_001c:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_001d:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0009
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_001f:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_0020:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_GetFrameParent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_GetFrameParent__void, .-m_Skymu_Forms_CallScreen_GetFrameParent__void

.globl m_Skymu_Forms_CallScreen_SetButtonSource__ref_b
.type m_Skymu_Forms_CallScreen_SetButtonSource__ref_b, @function
m_Skymu_Forms_CallScreen_SetButtonSource__ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0002:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0007:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0021
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0009:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_000a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_000b:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0015
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_000e:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0013:
    jmp .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_001b
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0015:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0016:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_001b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Source__ref
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0020:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0021:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0022:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0023:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0028:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0042
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_002a:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_002b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_002c:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0036
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_002e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_002f:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0034:
    jmp .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_003c
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0036:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0037:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_003c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Source__ref
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0041:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0042:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0043:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0044:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0049:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0062
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_004b:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_004c:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_004d:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0057
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_004f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0050:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0055:
    jmp .Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_005d
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0057:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0058:
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_005d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Source__ref
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_0062:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_SetButtonSource_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_SetButtonSource__ref_b, .-m_Skymu_Forms_CallScreen_SetButtonSource__ref_b

.globl m_Skymu_Forms_CallScreen_OnHangUp__ref_ref
.type m_Skymu_Forms_CallScreen_OnHangUp__ref_ref, @function
m_Skymu_Forms_CallScreen_OnHangUp__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0002:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0008:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_000d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_000e:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0013
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0010:
    mov -32(%rbp), %rax
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0011:
    jmp .Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0018
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0013:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_Cancel__void
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0018:
    lea .LS_2_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_001d:
    mov -40(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0022:
    lea .LS_3_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0027:
    mov -40(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_002c:
    lea .LN_4_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0031:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0032:
    lea m_Skymu_Forms_CallScreen_OnCallStateChanged__ref_ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0038:
    lea .LN_5_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_CallBottle_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_003d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_remove_CallStateChangedTube__gen
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0042:
    lea .LN_6_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0047:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0048:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_004d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_EndCall__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0052:
    mov -40(%rbp), %rax
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0053:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0054:
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0059:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_005a:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_005f
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_005c:
    mov -32(%rbp), %rax
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_005d:
    jmp .Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0064
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_005f:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Stop__void
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0064:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0065:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0066:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_006b:
    lea .LS_10_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0070:
    mov -40(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0075:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0076:
    mov -40(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_007b:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0083
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_007d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_007e:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_ExitFullscreen__void
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0083:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0084:
    mov -40(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0089:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_008a:
    lea .LN_13_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_008f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_0094:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnHangUp_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnHangUp__ref_ref, .-m_Skymu_Forms_CallScreen_OnHangUp__ref_ref

.globl m_Skymu_Forms_CallScreen_InitializeComponent__void
.type m_Skymu_Forms_CallScreen_InitializeComponent__void, @function
m_Skymu_Forms_CallScreen_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0009
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_CallScreen_InitializeComponent_void(%rip), %rdi
    mov $38, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_CallScreen_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_InitializeComponent__void, .-m_Skymu_Forms_CallScreen_InitializeComponent__void

.globl m_Skymu_Forms_CallScreen_CreateDelegate__ref_ref
.type m_Skymu_Forms_CallScreen_CreateDelegate__ref_ref, @function
m_Skymu_Forms_CallScreen_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_CreateDelegate__ref_ref, .-m_Skymu_Forms_CallScreen_CreateDelegate__ref_ref

.globl m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0049
    cmp $1, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0061
    cmp $2, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006e
    cmp $3, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007b
    cmp $4, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0088
    cmp $5, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0095
    cmp $6, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a2
    cmp $7, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00af
    cmp $8, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bc
    cmp $9, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c9
    cmp $10, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d6
    cmp $11, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e3
    cmp $12, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f0
    cmp $13, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fd
    cmp $14, %eax
    je .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010a
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0044:
    jmp .Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0117
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0049:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004a:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0050:
    lea m_Skymu_Forms_CallScreen_Resized__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0056:
    lea .LN_0_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_SizeChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_SizeChanged__ref
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0060:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0061:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0062:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0063:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0068:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0070:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0075:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007d:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0082:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0087:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0088:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0089:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008a:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0094:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0095:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0096:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0097:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a4:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ae:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00af:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b1:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bd:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00be:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ca:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cb:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d8:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dd:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e5:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ea:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ef:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f2:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fe:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ff:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0104:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0109:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010c:
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0111:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0116:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0117:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0118:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0119:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0__ref_ref
.type m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0__ref_ref, @function
m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0002:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0007:
    movsd .LD_1_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0010:
    mov -56(%rbp), %rdi
    call m_System_TimeSpan_FromSeconds__f8
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0015:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_TimeSpan_Add__v
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_001a:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_001f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0020:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0025:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0026:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_002b:
    lea .LS_5_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0030:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_TimeSpan_ToString__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_0035:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_003a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0__ref_ref, .-m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0__ref_ref

.globl m_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0__void
.type m_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0__void, @function
m_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0_void_0001:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0_void_0002:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0_void_0003:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_OnHangUp__ref_ref
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0__void, .-m_Skymu_Forms_CallScreen_OnCallStateChanged_b_35_0__void

.globl m_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0__ref_ref
.type m_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0__ref_ref, @function
m_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref_000e
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref_0009:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_CallScreen_ExitFullscreen__void
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0__ref_ref, .-m_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0__ref_ref

    .globl m_Skymu_Forms_CallScreen_ctor__ref_ref_ref
    .type m_Skymu_Forms_CallScreen_ctor__ref_ref_ref, @function
m_Skymu_Forms_CallScreen_ctor__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_CallScreen_ctor_ref_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_CallScreen_ctor__ref_ref_ref, .-m_Skymu_Forms_CallScreen_ctor__ref_ref_ref

    .globl m_Skymu_Forms_CallScreen_Resized__ref_ref
    .type m_Skymu_Forms_CallScreen_Resized__ref_ref, @function
m_Skymu_Forms_CallScreen_Resized__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_CallScreen_Resized_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_CallScreen_Resized__ref_ref, .-m_Skymu_Forms_CallScreen_Resized__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b:
    .asciz "SidebarToggle"

.LN_1_m_Skymu_Forms_CallScreen_LocationChangeEventArgs_ctor_b_b:
    .asciz "ChatToggle"

.LN_0_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>4__this"

.LS_2_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .short 67, 65, 76, 76, 95, 73, 78, 73, 84

.LN_3_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "token"

.LN_4_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_5_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_7_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>4__this"

.LN_11_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "_is_answer"

.LS_12_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .short 67, 65, 76, 76, 95, 79, 85, 84

.LS_13_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .short 67, 65, 76, 76, 95, 82, 69, 67, 79, 78, 78, 69, 67, 84, 95, 70, 82, 79, 78, 84

.LN_14_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "token"

.LN_15_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_16_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_17_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_18_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_19_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_20_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_21_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "token"

.LN_22_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_23_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_Forms_CallScreen_c_DisplayClass26_0_StartCall_b_0_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "isMuted"

.LN_3_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "isMuted"

.LN_4_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "isMuted"

.LN_5_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "MuteButton"

.LN_6_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "muted"

.LN_7_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "MuteButton"

.LN_8_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "unmuted"

.LN_9_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "CallPlugin"

.LN_10_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "_call"

.LN_11_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "isMuted"

.LN_12_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>1__state"

.LN_13_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>u__1"

.LN_14_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>t__builder"

.LN_15_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>u__1"

.LN_16_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>u__1"

.LN_17_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>1__state"

.LN_18_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>1__state"

.LN_19_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_OnMuteToggled_d_36_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "Skymu.Forms.CallScreen/'<>c__DisplayClass26_0'"

.LN_3_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>4__this"

.LN_4_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>4__this"

.LN_5_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "CallPlugin"

.LN_6_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "Yggdrasil.Bottles.CallBottle>"

.LS_7_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .short 73, 78, 73, 84

.LN_8_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "_conversation"

.LN_9_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "is_video"

.LN_10_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "CurrentUser"

.LN_11_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "Yggdrasil.Models.ActiveCall"

.LN_12_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "_call"

.LN_13_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "System.Threading.CancellationTokenSource"

.LN_14_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "_ringCts"

.LN_15_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "_ringCts"

.LN_16_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "token"

.LN_17_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "System.Threading.Tasks.Task>"

.LN_18_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "CallPlugin"

.LN_19_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "_conversation"

.LN_20_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "is_video"

.LN_21_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>1__state"

.LN_22_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>u__1"

.LN_23_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>t__builder"

.LN_24_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>u__1"

.LN_25_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>u__1"

.LN_26_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>1__state"

.LN_27_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "_hangUpRequested"

.LN_28_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "_ringCts"

.LS_29_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .short 67, 65, 76, 76, 95, 79, 85, 84

.LS_30_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .short 67, 65, 76, 76, 95, 73, 78, 73, 84

.LS_31_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .short 67, 65, 76, 76, 95, 69, 82, 82, 79, 82, 49

.LN_32_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "HangUpRequested"

.LN_33_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "Empty"

.LN_34_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "_call"

.LN_35_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>1__state"

.LN_36_m_Skymu_Forms_CallScreen_StartCall_d_26_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_StartCall_d_26_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_StartCall_b:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_CallScreen_StartCall_b:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_CallScreen_StartCall_b:
    .asciz "is_video"

.LN_3_m_Skymu_Forms_CallScreen_StartCall_b:
    .asciz "<>1__state"

.LN_4_m_Skymu_Forms_CallScreen_StartCall_b:
    .asciz "<>t__builder"

.LN_5_m_Skymu_Forms_CallScreen_StartCall_b:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "MyAvatar"

.LN_1_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "MyAvatar"

.LN_2_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "ConnectionAnimation"

.LN_3_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "ConnectionAnimation"

.LN_4_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "Zero"

.LN_5_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "_callElapsed"

.LN_6_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "CallStatus"

.LS_7_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .short 48, 48, 58, 48, 48

.LN_8_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "System.Windows.Threading.DispatcherTimer"

.LD_9_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .double 1

.LN_10_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "_callTimer"

.LN_11_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "_callTimer"

.LN_12_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "System.EventHandler"

.LN_13_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_void:
    .asciz "_callTimer"

.LN_0_m_Skymu_Forms_CallScreen_add_HangUpRequested_ref:
    .asciz "HangUpRequested"

.LN_1_m_Skymu_Forms_CallScreen_add_HangUpRequested_ref:
    .asciz "HangUpRequested"

.LN_0_m_Skymu_Forms_CallScreen_remove_HangUpRequested_ref:
    .asciz "HangUpRequested"

.LN_1_m_Skymu_Forms_CallScreen_remove_HangUpRequested_ref:
    .asciz "HangUpRequested"

.LN_0_m_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref:
    .asciz "LocationChangeRequested"

.LN_1_m_Skymu_Forms_CallScreen_add_LocationChangeRequested_ref:
    .asciz "LocationChangeRequested"

.LN_0_m_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref:
    .asciz "LocationChangeRequested"

.LN_1_m_Skymu_Forms_CallScreen_remove_LocationChangeRequested_ref:
    .asciz "LocationChangeRequested"

.LN_0_m_Skymu_Forms_CallScreen_OnCallStateChanged_ref_ref:
    .asciz "System.Action"

.LN_0_m_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Forms_CallScreen_OnMuteToggled_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "location"

.LN_1_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "location"

.LN_2_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "SidebarToggle"

.LN_3_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "SidebarToggle"

.LN_4_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "SidebarButton"

.LN_5_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "location"

.LN_6_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "SidebarToggle"

.LN_7_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "isFullscreen"

.LN_8_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "LocationChangeRequested"

.LN_9_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "LocationChangeRequested"

.LN_10_m_Skymu_Forms_CallScreen_OnSidebarToggled_ref_ref:
    .asciz "location"

.LN_0_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "location"

.LN_1_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "location"

.LN_2_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "ChatToggle"

.LN_3_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "ChatToggle"

.LN_4_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "ChatButton"

.LN_5_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "location"

.LN_6_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "ChatToggle"

.LN_7_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "isFullscreen"

.LN_8_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "LocationChangeRequested"

.LN_9_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "LocationChangeRequested"

.LN_10_m_Skymu_Forms_CallScreen_OnChatToggled_ref_ref:
    .asciz "location"

.LN_0_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref:
    .asciz "isFullscreen"

.LN_1_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref:
    .asciz "isFullscreen"

.LN_2_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref:
    .asciz "FullscreenButton"

.LN_3_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref:
    .asciz "isFullscreen"

.LN_4_m_Skymu_Forms_CallScreen_OnFullscreenToggled_ref_ref:
    .asciz "isFullscreen"

.LN_0_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_originalFrame"

.LN_1_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_originalFrame"

.LN_2_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_originalFrame"

.LN_3_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_originalFrame"

.LN_4_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_originalFrame"

.LN_5_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "System.Windows.Window"

.LN_6_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_fullscreenWindow"

.LN_7_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_fullscreenWindow"

.LN_8_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "System.EventHandler"

.LN_9_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_originalFrame"

.LN_10_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_originalFrame"

.LN_11_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "FullscreenButton"

.LN_12_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "isFullscreen"

.LN_13_m_Skymu_Forms_CallScreen_EnterFullscreen_void:
    .asciz "_fullscreenWindow"

.LN_0_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "isFullscreen"

.LN_1_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "FullscreenButton"

.LN_2_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "isFullscreen"

.LN_3_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "_fullscreenWindow"

.LN_4_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "_originalFrame"

.LN_5_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "_originalFrame"

.LN_6_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "_originalFrame"

.LN_7_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "_originalFrame"

.LN_8_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "_originalFrame"

.LN_9_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "_fullscreenWindow"

.LN_10_m_Skymu_Forms_CallScreen_ExitFullscreen_void:
    .asciz "_fullscreenWindow"

.LN_0_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "SidebarButton"

.LN_1_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "sidebar_expand"

.LN_2_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "sidebar_collapse"

.LN_3_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "ChatButton"

.LN_4_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "chat_inactive"

.LN_5_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "chat_active"

.LN_6_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "FullscreenButton"

.LN_7_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "screen_expand"

.LN_8_m_Skymu_Forms_CallScreen_SetButtonSource_ref_b:
    .asciz "screen_contract"

.LN_0_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "_hangUpRequested"

.LN_1_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "_ringCts"

.LS_2_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .short 67, 65, 76, 76, 95, 79, 85, 84

.LS_3_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .short 67, 65, 76, 76, 95, 73, 78, 73, 84

.LN_4_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "CallPlugin"

.LN_5_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "Yggdrasil.Bottles.CallBottle>"

.LN_6_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "CallPlugin"

.LN_7_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "_call"

.LN_8_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "_callTimer"

.LN_9_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "_callTimer"

.LS_10_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .short 72, 65, 78, 71, 85, 80

.LN_11_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "isFullscreen"

.LN_12_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "HangUpRequested"

.LN_13_m_Skymu_Forms_CallScreen_OnHangUp_ref_ref:
    .asciz "Empty"

.LN_0_m_Skymu_Forms_CallScreen_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_CallScreen_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_CallScreen_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 99, 97, 108, 108, 115, 99, 114, 101, 101, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_CallScreen_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.SizeChangedEventHandler"

.LN_1_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "floor"

.LN_2_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "bottom_gradient"

.LN_3_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Logo"

.LN_4_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PartnerAvatar"

.LN_5_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PartnerDisplayName"

.LN_6_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CallStatus"

.LN_7_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConnectionAnimation"

.LN_8_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MyAvatar"

.LN_9_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ActionBar"

.LN_10_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ActionBarContainer"

.LN_11_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarButton"

.LN_12_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatButton"

.LN_13_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MuteButton"

.LN_14_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FullscreenButton"

.LN_15_m_Skymu_Forms_CallScreen_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref:
    .asciz "_callElapsed"

.LD_1_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref:
    .double 1

.LN_2_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref:
    .asciz "_callElapsed"

.LN_3_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref:
    .asciz "CallStatus"

.LN_4_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref:
    .asciz "_callElapsed"

.LS_5_m_Skymu_Forms_CallScreen_SwitchToOngoingCallUI_b_27_0_ref_ref:
    .short 109, 109, 92, 58, 115, 115

.LN_0_m_Skymu_Forms_CallScreen_EnterFullscreen_b_41_0_ref_ref:
    .asciz "isFullscreen"

.LSTUB_m_Skymu_Forms_CallScreen_ctor_ref_ref_ref:
    .asciz "Skymu.Forms.CallScreen::.ctor  [inconsistent stack depth at IL_013d: 1 vs 2]"

.LSTUB_m_Skymu_Forms_CallScreen_Resized_ref_ref:
    .asciz "Skymu.Forms.CallScreen::Resized  [floating-point 'clt']"

    .section .note.GNU-stack,"",@progbits
