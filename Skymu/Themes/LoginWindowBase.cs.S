# Themes/LoginWindowBase.cs
    .text

.globl m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext__void
.type m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext__void, @function
m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0053
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0017:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0076
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0019:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_001a:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_001f:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_TryAutoLogin__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0024:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0029:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_002a:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_002c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0031:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_006f
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0033:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0034:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0035:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0036:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0037:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_003d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_003e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0043:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0044:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0049:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_004b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_004c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25__gen_gen
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0051:
    jmp .Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00c3
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0053:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0054:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0059:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_005a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_005b:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0060:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0066:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0067:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0068:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0069:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_006a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_006f:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0071:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0076:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0077:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_007c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0081:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0097
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0083:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0084:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0089:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_get_SelectedIndex__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_008e:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_008f:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0097
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0091:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0092:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol__void
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_0097:
    jmp .Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00b0
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00b0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00b1:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00b3:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00b8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00b9:
    mov -56(%rbp), %rdi
    lea .LN_12_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00be:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_00c3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext__void, .-m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext__void

.globl m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine__ref
.type m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine__ref, @function
m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine__ref, .-m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine__ref

.globl m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext__void
.type m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext__void, @function
m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0074
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0017:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_get_SelectedIndex__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_001c:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_001d:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0024
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_001f:
    jmp .Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00b0
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0024:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0025:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_002a:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_002b:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0030:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0035:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0036:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_003b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_PasswordBox_get_Password__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0040:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_Login__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0045:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_004a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_004b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_004d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0052:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0090
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0055:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0056:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0057:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0058:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_005d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_005e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_005f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0065:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_006a:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_006d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6__gen_gen
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0072:
    jmp .Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00c3
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0074:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0075:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_007a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_007b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_007c:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0081:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0087:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0088:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0089:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_008a:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_008b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0090:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0092:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_0097:
    jmp .Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00b0
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00b0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00b1:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00b3:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00b8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00b9:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00be:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_00c3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext__void, .-m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext__void

.globl m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine__ref
.type m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine__ref, @function
m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine__ref, .-m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine__ref

.globl m_Skymu_Theming_LoginWindowBase_OnLoginButtonUpdated__b
.type m_Skymu_Theming_LoginWindowBase_OnLoginButtonUpdated__b, @function
m_Skymu_Theming_LoginWindowBase_OnLoginButtonUpdated__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnLoginButtonUpdated_b_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnLoginButtonUpdated_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnLoginButtonUpdated__b, .-m_Skymu_Theming_LoginWindowBase_OnLoginButtonUpdated__b

.globl m_Skymu_Theming_LoginWindowBase_ctor__b
.type m_Skymu_Theming_LoginWindowBase_ctor__b, @function
m_Skymu_Theming_LoginWindowBase_ctor__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ctor_b_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ctor_b_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_ctor__void
.Lm_Skymu_Theming_LoginWindowBase_ctor_b_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ctor_b_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ctor_b_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_ctor_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_ctor_b_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_ctor_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_ctor__b, .-m_Skymu_Theming_LoginWindowBase_ctor__b

.globl m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow__ref
.type m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow__ref, @function
m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0007:
    lea m_Skymu_Theming_LoginWindowBase_BoxKeyUp__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_000d:
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0012:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_KeyUp__ref
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0018:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_001d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_001e:
    lea m_Skymu_Theming_LoginWindowBase_BoxKeyUp__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0024:
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0029:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_KeyUp__ref
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_002e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_002f:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginButton__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0034:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0035:
    lea m_Skymu_Theming_LoginWindowBase_buttonLaunch__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_003b:
    lea .LN_2_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0040:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0045:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0046:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0047:
    lea m_Skymu_Theming_LoginWindowBase_Login_ContentRendered__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_004d:
    lea .LN_3_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0052:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_add_ContentRendered__ref
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0057:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0058:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0059:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_005e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_005f:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0064:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0065:
    lea m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation__b(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_006b:
    lea .LN_6_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_1_bool_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0070:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested__gen
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0075:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0076:
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_007b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_007c:
    lea m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0082:
    lea .LN_8_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_1_string_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0087:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested__gen
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_008c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_008d:
    mov -32(%rbp), %rdi
    lea .LN_9_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0092:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0093:
    lea m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_0099:
    lea .LN_10_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_009e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated__gen
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00a3:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00a4:
    mov -32(%rbp), %rdi
    lea .LN_11_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00a9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00aa:
    lea m_Skymu_Theming_LoginWindowBase_OnMainWindowReady__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00b0:
    lea .LN_12_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_IMainWindowHolder_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00b5:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady__gen
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00ba:
    call m_Skymu_Sounds_SoundManager_Init__void
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00bf:
    mov $8, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00c0:
    mov -32(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetStatus__v
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_00c5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow__ref, .-m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow__ref

.globl m_Skymu_Theming_LoginWindowBase_buttonLaunch__ref_ref
.type m_Skymu_Theming_LoginWindowBase_buttonLaunch__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_buttonLaunch__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6__gen
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_buttonLaunch__ref_ref, .-m_Skymu_Theming_LoginWindowBase_buttonLaunch__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated__ref
.type m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated__ref, @function
m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0006:
    call m_System_Windows_Media_Colors_get_Black__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_000b:
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0010:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0015:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0016:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_001b:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_001c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0021:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0022:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0027:
    call m_System_Windows_FontStyles_get_Normal__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_002c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0031:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0032:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0037:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0038:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_003d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_003e:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0050
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0040:
    mov -40(%rbp), %rax
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0041:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0046:
    lea .LS_1_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_004b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0050:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0055:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0056:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginButton__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_005b:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0060:
    lea .LS_2_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0065:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_006a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_006f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0070:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_SkypeName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0075:
    call m_System_Windows_Media_Colors_get_Black__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_007a:
    lea .LN_3_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_007f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0084:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0085:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_008a:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_008b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0090:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0091:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_SkypeName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0096:
    call m_System_Windows_FontStyles_get_Normal__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_009b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00a0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00a1:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_SkypeName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00a6:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00a7:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00ac:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00ad:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00bb
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00af:
    mov -40(%rbp), %rax
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00b0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00b1:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_SkypeName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00b6:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_get_Text__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00bb:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00c0:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00c1:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00c6:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01ba
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00cb:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00cc:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00d1:
    call m_System_Windows_Media_Colors_get_DarkGray__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00d6:
    lea .LN_4_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00db:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00e0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00e1:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00e6:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00e7:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00ec:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00ed:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00f2:
    lea .LS_5_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00f7:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00fc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_00fd:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0102:
    call m_System_Windows_FontStyles_get_Italic__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0107:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_010c:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_010d:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0112:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0113:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0114:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0115:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0116:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0129
    cmp $1, %eax
    je .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_017c
    cmp $2, %eax
    je .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_018e
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0127:
    jmp .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01a0
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0129:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_012a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginButton__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_012f:
    lea .LS_6_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0134:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0139:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_013a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_SkypeName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_013f:
    call m_System_Windows_Media_Colors_get_DarkGray__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0144:
    lea .LN_7_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0149:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_014e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_014f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0154:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0155:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_015a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_015b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_SkypeName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0160:
    call m_System_Windows_FontStyles_get_Italic__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0165:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_016a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_016b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_SkypeName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0170:
    lea .LS_8_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0175:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_017a:
    jmp .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01ba
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_017c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_017d:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginButton__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0182:
    lea .LS_9_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0187:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_018c:
    jmp .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01ba
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_018e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_018f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginButton__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0194:
    lea .LS_10_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_0199:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_019e:
    jmp .Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01ba
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01a0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01a1:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginButton__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01a6:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01ab:
    lea .LS_11_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01b0:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01b5:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01ba:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01bb:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_01c0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated__ref, .-m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated__ref

.globl m_Skymu_Theming_LoginWindowBase_OnMainWindowReady__ref
.type m_Skymu_Theming_LoginWindowBase_OnMainWindowReady__ref, @function
m_Skymu_Theming_LoginWindowBase_OnMainWindowReady__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_RunPostLogin__ref
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_000d:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_000e:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_0014:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_0019:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnMainWindowReady__ref, .-m_Skymu_Theming_LoginWindowBase_OnMainWindowReady__ref

.globl m_Skymu_Theming_LoginWindowBase_BoxKeyUp__ref_ref
.type m_Skymu_Theming_LoginWindowBase_BoxKeyUp__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_BoxKeyUp__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_BoxKeyUp_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_BoxKeyUp_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void
.Lm_Skymu_Theming_LoginWindowBase_BoxKeyUp_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_BoxKeyUp_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_BoxKeyUp__ref_ref, .-m_Skymu_Theming_LoginWindowBase_BoxKeyUp__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void
.type m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void, @function
m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_000b:
    mov -32(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0010:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0031
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0013:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0018:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_PasswordBox_get_Password__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_001d:
    mov -32(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0022:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0051
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0024:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0025:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_002a:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_002f:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0051
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0032:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0037:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_003c:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_004e
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_003f:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0044:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0049:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_004a:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_004c:
    jmp .Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0052
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_004e:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_004f:
    jmp .Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0052
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0051:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0052:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0053:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0054:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginButton__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0059:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_005a:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_005f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0060:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0061:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_OnLoginButtonUpdated__b
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_0066:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void, .-m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void

.globl m_Skymu_Theming_LoginWindowBase_OnChangeLanguage__ref_ref
.type m_Skymu_Theming_LoginWindowBase_OnChangeLanguage__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_OnChangeLanguage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnChangeLanguage_ref_ref_0000:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnChangeLanguage_ref_ref_0005:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_OnChangeLanguage_ref_ref(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnChangeLanguage_ref_ref_000a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnChangeLanguage_ref_ref_000f:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_Theming_LoginWindowBase_OnChangeLanguage_ref_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnChangeLanguage_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnChangeLanguage__ref_ref, .-m_Skymu_Theming_LoginWindowBase_OnChangeLanguage__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnConnectionOptions__ref_ref
.type m_Skymu_Theming_LoginWindowBase_OnConnectionOptions__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_OnConnectionOptions__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnConnectionOptions_ref_ref_0000:
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_OnConnectionOptions_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_Options_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnConnectionOptions_ref_ref_0005:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Theming_LoginWindowBase_OnConnectionOptions_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnConnectionOptions_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnConnectionOptions__ref_ref, .-m_Skymu_Theming_LoginWindowBase_OnConnectionOptions__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnAccessibility__ref_ref
.type m_Skymu_Theming_LoginWindowBase_OnAccessibility__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_OnAccessibility__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnAccessibility_ref_ref_0000:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnAccessibility_ref_ref_0005:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_OnAccessibility_ref_ref(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnAccessibility_ref_ref_000a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnAccessibility_ref_ref_000f:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_Theming_LoginWindowBase_OnAccessibility_ref_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnAccessibility_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnAccessibility__ref_ref, .-m_Skymu_Theming_LoginWindowBase_OnAccessibility__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnHelp__ref_ref
.type m_Skymu_Theming_LoginWindowBase_OnHelp__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_OnHelp__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnHelp_ref_ref_0000:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_OnHelp_ref_ref(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnHelp_ref_ref_0005:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnHelp_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Theming_LoginWindowBase_OnHelp_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnHelp_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnHelp__ref_ref, .-m_Skymu_Theming_LoginWindowBase_OnHelp__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnCheckUpdates__ref_ref
.type m_Skymu_Theming_LoginWindowBase_OnCheckUpdates__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_OnCheckUpdates__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnCheckUpdates_ref_ref_0000:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnCheckUpdates_ref_ref_0001:
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_OnCheckUpdates_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_Pages_Updater_ctor__b
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnCheckUpdates_ref_ref_0006:
    mov -40(%rbp), %rax
.Lm_Skymu_Theming_LoginWindowBase_OnCheckUpdates_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnCheckUpdates_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnCheckUpdates__ref_ref, .-m_Skymu_Theming_LoginWindowBase_OnCheckUpdates__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnPrivacy__ref_ref
.type m_Skymu_Theming_LoginWindowBase_OnPrivacy__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_OnPrivacy__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPrivacy_ref_ref_0000:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_OnPrivacy_ref_ref(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPrivacy_ref_ref_0005:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnPrivacy_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Theming_LoginWindowBase_OnPrivacy_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnPrivacy_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnPrivacy__ref_ref, .-m_Skymu_Theming_LoginWindowBase_OnPrivacy__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnAbout__ref_ref
.type m_Skymu_Theming_LoginWindowBase_OnAbout__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_OnAbout__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnAbout_ref_ref_0000:
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_OnAbout_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_About_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnAbout_ref_ref_0005:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Theming_LoginWindowBase_OnAbout_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnAbout_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnAbout__ref_ref, .-m_Skymu_Theming_LoginWindowBase_OnAbout__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnClose__ref_ref
.type m_Skymu_Theming_LoginWindowBase_OnClose__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_OnClose__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnClose_ref_ref_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnClose_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_Close__b
.Lm_Skymu_Theming_LoginWindowBase_OnClose_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnClose_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnClose__ref_ref, .-m_Skymu_Theming_LoginWindowBase_OnClose__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_MI__ref_ref
.type m_Skymu_Theming_LoginWindowBase_MI__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_MI__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_MI_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_MI_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_MI_ref_ref_0002:
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_MI_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__gen_gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_MI_ref_ref_0007:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_MI_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_MI__ref_ref, .-m_Skymu_Theming_LoginWindowBase_MI__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_SEP__void
.type m_Skymu_Theming_LoginWindowBase_SEP__void, @function
m_Skymu_Theming_LoginWindowBase_SEP__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SEP_void_0000:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_SEP_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SEP_void_0005:
    xor %eax, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SEP_void_0006:
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_SEP_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rdx
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__gen_gen
    mov %r12, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SEP_void_000b:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_SEP_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_SEP__void, .-m_Skymu_Theming_LoginWindowBase_SEP__void

.globl m_Skymu_Theming_LoginWindowBase_Login_Loaded__ref_ref
.type m_Skymu_Theming_LoginWindowBase_Login_Loaded__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_Login_Loaded__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0000:
    call m_Skymu_Preferences_Settings_get_StartMinimized__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0005:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_000e
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0008:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0009:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_WindowState__v
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_000f:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_MenuBarRow__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0014:
    movsd .LD_0_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_001d:
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_GridLength_ctor__f8
    mov %r12, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0022:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_RowDefinition_set_Height__v
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0027:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0028:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0029:
    lea .LN_2_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Native_Windows_MenuBarController_ctor__ref_b
    mov %r12, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_002e:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_Build__void
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0033:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0034:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0039:
    lea .LS_3_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_003e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_DisplayMemberPath__ref
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0043:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0044:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0049:
    lea .LS_4_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_004e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedValuePath__ref
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0053:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0054:
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0059:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_LoadPlugins__void
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_005e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_005f:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0064:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0069:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_GetEnumerator__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_006e:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_006f:
    jmp .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_008a
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0071:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0072:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_Current__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0077:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0078:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0079:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_007e:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_get_Items__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0083:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0084:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemCollection_Add__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0089:
    mov -72(%rbp), %rax
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_008a:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_008b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0090:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0071
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0092:
    jmp .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_009e
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_009e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_009f:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00a4:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00a9:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00bc
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00ab:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00ac:
    mov -72(%rbp), %rdi
    lea .LN_8_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00b1:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00bc
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00b3:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00b4:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00b5:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation__b
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00ba:
    jmp .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00c2
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00bc:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00bd:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol__void
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00c2:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00c3:
    mov -72(%rbp), %rdi
    lea .LN_9_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00c8:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0116
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00ca:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00cb:
    mov -72(%rbp), %rdi
    lea .LN_10_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00d0:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00d5:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0116
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00d7:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00d8:
    mov -72(%rbp), %rdi
    lea .LN_11_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00dd:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00e2:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00e3:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00e4:
    mov -72(%rbp), %rdi
    lea .LN_12_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00e9:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00ee:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00ef:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00f0:
    mov -72(%rbp), %rdi
    lea .LN_13_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00f5:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin__void
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00fa:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_00fb:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0100:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0101:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedItem__ref
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0106:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0107:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0108:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0109:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged__ref_ref
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_010e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_010f:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0110:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0111:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_SetProtocolSelection__ref_ref
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_0116:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_Login_Loaded__ref_ref, .-m_Skymu_Theming_LoginWindowBase_Login_Loaded__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol__void
.type m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol__void, @function
m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_000b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_000c:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_001c
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_000f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0010:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0015:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedItem__ref
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_001d:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0022:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0023:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedIndex__i4
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol__void, .-m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol__void

.globl m_Skymu_Theming_LoginWindowBase_SetProtocolSelection__ref_ref
.type m_Skymu_Theming_LoginWindowBase_SetProtocolSelection__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_SetProtocolSelection__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_000d:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_000e:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated__ref
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0013:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0014:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0019:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_001a:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_001d
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_001d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_001e:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0023:
    mov $4, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0024:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0058
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0027:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_002c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_002d:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0032:
    mov -48(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0037:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0046
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0039:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_003a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_003f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0044:
    jmp .Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_004c
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0046:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0047:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_004c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0051:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0052:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0057:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0058:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0059:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_005e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_005f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0064:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0069:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_006e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_006f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0074:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0075:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_007a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_PasswordBox_set_Password__ref
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_007f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0080:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_CheckEnableLoginButton__void
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_0085:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_SetProtocolSelection__ref_ref, .-m_Skymu_Theming_LoginWindowBase_SetProtocolSelection__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged__ref_ref
.type m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0001:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0006:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_get_SelectedItem__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_000b:
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0010:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0012:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0017:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_001c:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_001d:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_001e:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_001f:
    jmp .Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_004e
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0021:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0022:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0023:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0024:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0025:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0026:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_Plugin__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_002b:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_ToLowerInvariant__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0030:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0031:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0036:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_ToLowerInvariant__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_003b:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0040:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_004a
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0042:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0043:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0044:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0045:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_SetProtocolSelection__ref_ref
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_004a:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_004b:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_004c:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_004d:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_004e:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_004f:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0050:
    mov -88(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0051:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0052:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0021
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0054:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0055:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0063
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0057:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0058:
    mov -96(%rbp), %rdi
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_005d:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_005e:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_0063:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged__ref_ref, .-m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_Login_ContentRendered__ref_ref
.type m_Skymu_Theming_LoginWindowBase_Login_ContentRendered__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_Login_ContentRendered__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25__gen
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_Login_ContentRendered__ref_ref, .-m_Skymu_Theming_LoginWindowBase_Login_ContentRendered__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation__b
.type m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation__b, @function
m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation__b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0036
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0003:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0004:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginControls__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0009:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_000a:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_000f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0010:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_Spinner__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0015:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_001b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_001c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_header__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0021:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0026:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_002b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0030:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0035:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0036:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0037:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_LoginControls__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_003c:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_003d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0042:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0043:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_Spinner__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0048:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0049:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_004e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_004f:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_header__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0054:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0059:
    lea .LS_1_m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_005e:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0063:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_0068:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation__b, .-m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation__b

.globl m_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate__ref_ref
.type m_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref_0000:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref_0005:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref_000b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref_000c:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref_000d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_RoutedEventArgs_set_Handled__b
.Lm_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate__ref_ref, .-m_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_OnClosed__ref
.type m_Skymu_Theming_LoginWindowBase_OnClosed__ref, @function
m_Skymu_Theming_LoginWindowBase_OnClosed__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnClosed_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnClosed_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_OnClosed_ref_0002:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_OnClosed__ref
.Lm_Skymu_Theming_LoginWindowBase_OnClosed_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_OnClosed_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_OnClosed__ref, .-m_Skymu_Theming_LoginWindowBase_OnClosed__ref

.globl m_Skymu_Theming_LoginWindowBase_Login_Closing__ref_ref
.type m_Skymu_Theming_LoginWindowBase_Login_Closing__ref_ref, @function
m_Skymu_Theming_LoginWindowBase_Login_Closing__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref_000e
.Lm_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref_0009:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_Hide__ref
.Lm_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_Login_Closing__ref_ref, .-m_Skymu_Theming_LoginWindowBase_Login_Closing__ref_ref

.globl m_Skymu_Theming_LoginWindowBase_T__ref
.type m_Skymu_Theming_LoginWindowBase_T__ref, @function
m_Skymu_Theming_LoginWindowBase_T__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_T_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_T_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_T_ref_0002:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_FindName__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_T_ref_0007:
    mov -32(%rbp), %rdi
    call shim_unbox
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_T_ref_000c:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_T_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_T__ref, .-m_Skymu_Theming_LoginWindowBase_T__ref

.globl m_Skymu_Theming_LoginWindowBase_get_header__void
.type m_Skymu_Theming_LoginWindowBase_get_header__void, @function
m_Skymu_Theming_LoginWindowBase_get_header__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_header_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_header_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_header_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_header_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_TextBlock__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_header_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_header_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_header__void, .-m_Skymu_Theming_LoginWindowBase_get_header__void

.globl m_Skymu_Theming_LoginWindowBase_get_LoginControls__void
.type m_Skymu_Theming_LoginWindowBase_get_LoginControls__void, @function
m_Skymu_Theming_LoginWindowBase_get_LoginControls__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_LoginControls_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_LoginControls_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_LoginControls_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_LoginControls_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_Grid__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_LoginControls_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_LoginControls_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_LoginControls__void, .-m_Skymu_Theming_LoginWindowBase_get_LoginControls__void

.globl m_Skymu_Theming_LoginWindowBase_get_MenuBarRow__void
.type m_Skymu_Theming_LoginWindowBase_get_MenuBarRow__void, @function
m_Skymu_Theming_LoginWindowBase_get_MenuBarRow__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_MenuBarRow_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_MenuBarRow_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_MenuBarRow_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_MenuBarRow_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_RowDefinition__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_MenuBarRow_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_MenuBarRow_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_MenuBarRow__void, .-m_Skymu_Theming_LoginWindowBase_get_MenuBarRow__void

.globl m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void
.type m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void, @function
m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordLabel_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordLabel_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_PasswordLabel_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordLabel_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_TextBlock__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordLabel_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordLabel_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void, .-m_Skymu_Theming_LoginWindowBase_get_PasswordLabel__void

.globl m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void
.type m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void, @function
m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_PasswordBox__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void, .-m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox__void

.globl m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void
.type m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void, @function
m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_ComboBox__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void, .-m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox__void

.globl m_Skymu_Theming_LoginWindowBase_get_SkypeName__void
.type m_Skymu_Theming_LoginWindowBase_get_SkypeName__void, @function
m_Skymu_Theming_LoginWindowBase_get_SkypeName__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_SkypeName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_SkypeName_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_SkypeName_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_SkypeName_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_TextBlock__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_SkypeName_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_SkypeName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_SkypeName__void, .-m_Skymu_Theming_LoginWindowBase_get_SkypeName__void

.globl m_Skymu_Theming_LoginWindowBase_get_Spinner__void
.type m_Skymu_Theming_LoginWindowBase_get_Spinner__void, @function
m_Skymu_Theming_LoginWindowBase_get_Spinner__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_Spinner_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_Spinner_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_Spinner_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_Spinner_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_Image__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_Spinner_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_Spinner_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_Spinner__void, .-m_Skymu_Theming_LoginWindowBase_get_Spinner__void

.globl m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void
.type m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void, @function
m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_UsernameBox_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_UsernameBox_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_UsernameBox_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_UsernameBox_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_PresentationFramework_System_Windows_Controls_TextBox__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_UsernameBox_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_UsernameBox_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void, .-m_Skymu_Theming_LoginWindowBase_get_UsernameBox__void

.globl m_Skymu_Theming_LoginWindowBase_get_LoginButton__void
.type m_Skymu_Theming_LoginWindowBase_get_LoginButton__void, @function
m_Skymu_Theming_LoginWindowBase_get_LoginButton__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_LoginButton_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_LoginButton_void_0001:
    lea .LS_0_m_Skymu_Theming_LoginWindowBase_get_LoginButton_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_LoginButton_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_Part_class_Skymu_SliceControl__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_get_LoginButton_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_get_LoginButton_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_get_LoginButton__void, .-m_Skymu_Theming_LoginWindowBase_get_LoginButton__void

.globl m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0__ref
.type m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0__ref, @function
m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_get_header__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0__ref, .-m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_b_5_0__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "switchuser"

.LN_3_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "_viewModel"

.LN_4_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>1__state"

.LN_5_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>t__builder"

.LN_7_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "_viewModel"

.LN_11_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_d_25_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "_viewModel"

.LN_3_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Theming_LoginWindowBase_buttonLaunch_d_6_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Theming_LoginWindowBase_ctor_b:
    .asciz "switchuser"

.LN_0_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_1_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_2_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_3_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "System.EventHandler"

.LN_4_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "_viewModel"

.LN_5_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "_viewModel"

.LN_6_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "System.Action`1<bool>"

.LN_7_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "_viewModel"

.LN_8_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "System.Action`1<string>"

.LN_9_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "_viewModel"

.LN_10_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "Skymu.ViewModels.LoginViewModel/PluginListing>"

.LN_11_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "_viewModel"

.LN_12_m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow_ref:
    .asciz "Skymu.ViewModels.IMainWindowHolder>"

.LN_0_m_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Theming_LoginWindowBase_buttonLaunch_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LS_1_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .short 115, 70, 95, 85, 83, 69, 82, 69, 78, 84, 82, 89, 95, 76, 65, 66, 69, 76, 95, 80, 65, 83, 83, 87, 79, 82, 68

.LS_2_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 83, 73, 71, 78, 73, 78

.LN_3_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LN_4_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LS_5_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .short 102, 105, 101, 108, 100, 32, 110, 111, 116, 32, 114, 101, 113, 117, 105, 114, 101, 100

.LS_6_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .short 83, 99, 97, 110, 32, 81, 82, 32, 99, 111, 100, 101

.LN_7_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LS_8_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .short 102, 105, 101, 108, 100, 32, 110, 111, 116, 32, 114, 101, 113, 117, 105, 114, 101, 100

.LS_9_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .short 83, 101, 110, 100, 32, 99, 111, 100, 101

.LS_10_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .short 69, 120, 116, 101, 114, 110, 97, 108, 32, 108, 111, 103, 105, 110

.LS_11_m_Skymu_Theming_LoginWindowBase_OnPluginSelectionUpdated_ref:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 83, 73, 71, 78, 73, 78

.LN_0_m_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref:
    .asciz "_viewModel"

.LN_1_m_Skymu_Theming_LoginWindowBase_OnMainWindowReady_ref:
    .asciz "noCloseEvent"

.LS_0_m_Skymu_Theming_LoginWindowBase_OnChangeLanguage_ref_ref:
    .short 115, 76, 79, 71, 73, 78, 95, 67, 72, 65, 78, 71, 69, 95, 76, 65, 78, 71, 85, 65, 71, 69

.LN_0_m_Skymu_Theming_LoginWindowBase_OnConnectionOptions_ref_ref:
    .asciz "Skymu.Forms.Options"

.LS_0_m_Skymu_Theming_LoginWindowBase_OnAccessibility_ref_ref:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83, 95, 65, 67, 67, 69, 83, 83, 73, 66, 73, 76, 73, 84, 89

.LS_0_m_Skymu_Theming_LoginWindowBase_OnHelp_ref_ref:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 119, 105, 107, 105, 47, 97, 98, 111, 117, 116

.LN_0_m_Skymu_Theming_LoginWindowBase_OnCheckUpdates_ref_ref:
    .asciz "Skymu.Forms.Pages.Updater"

.LS_0_m_Skymu_Theming_LoginWindowBase_OnPrivacy_ref_ref:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 108, 101, 103, 97, 108, 47, 112, 114, 105, 118, 97, 99, 121

.LN_0_m_Skymu_Theming_LoginWindowBase_OnAbout_ref_ref:
    .asciz "Skymu.Forms.About"

.LN_0_m_Skymu_Theming_LoginWindowBase_MI_ref_ref:
    .asciz "System.EventHandler>"

.LS_0_m_Skymu_Theming_LoginWindowBase_SEP_void:
    .short 36

.LN_1_m_Skymu_Theming_LoginWindowBase_SEP_void:
    .asciz "System.EventHandler>"

.LD_0_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .double 0.0

.LN_1_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "System.Windows.GridLength"

.LN_2_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "Skymu.Native.Windows.MenuBarController"

.LS_3_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .short 68, 105, 115, 112, 108, 97, 121, 78, 97, 109, 101

.LS_4_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .short 68, 105, 115, 112, 108, 97, 121, 78, 97, 109, 101

.LN_5_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "_viewModel"

.LN_6_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "_viewModel"

.LN_7_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "_viewModel"

.LN_8_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "switchuser"

.LN_9_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "switchuser"

.LN_10_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "_viewModel"

.LN_11_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "_viewModel"

.LN_12_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "_viewModel"

.LN_13_m_Skymu_Theming_LoginWindowBase_Login_Loaded_ref_ref:
    .asciz "_viewModel"

.LN_0_m_Skymu_Theming_LoginWindowBase_SelectDefaultProtocol_void:
    .asciz "_viewModel"

.LN_0_m_Skymu_Theming_LoginWindowBase_SetProtocolSelection_ref_ref:
    .asciz "_viewModel"

.LN_0_m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref:
    .asciz "_viewModel"

.LN_1_m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged_ref_ref:
    .asciz "_viewModel"

.LN_0_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Theming_LoginWindowBase_Login_ContentRendered_ref_ref:
    .asciz "<>t__builder"

.LS_0_m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b:
    .short 115, 83, 84, 65, 84, 85, 83, 84, 69, 88, 84, 95, 80, 82, 79, 70, 73, 76, 69, 95, 76, 79, 71, 71, 73, 78, 71, 95, 73, 78

.LS_1_m_Skymu_Theming_LoginWindowBase_LoginToggleAnimation_b:
    .short 115, 70, 95, 76, 79, 71, 73, 78, 95, 87, 69, 76, 67, 79, 77, 69

.LS_0_m_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate_ref_ref:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 100, 105, 115, 99, 111, 114, 100

.LN_0_m_Skymu_Theming_LoginWindowBase_Login_Closing_ref_ref:
    .asciz "noCloseEvent"

.LS_0_m_Skymu_Theming_LoginWindowBase_get_header_void:
    .short 104, 101, 97, 100, 101, 114

.LS_0_m_Skymu_Theming_LoginWindowBase_get_LoginControls_void:
    .short 76, 111, 103, 105, 110, 67, 111, 110, 116, 114, 111, 108, 115

.LS_0_m_Skymu_Theming_LoginWindowBase_get_MenuBarRow_void:
    .short 77, 101, 110, 117, 66, 97, 114, 82, 111, 119

.LS_0_m_Skymu_Theming_LoginWindowBase_get_PasswordLabel_void:
    .short 80, 97, 115, 115, 119, 111, 114, 100, 76, 97, 98, 101, 108

.LS_0_m_Skymu_Theming_LoginWindowBase_get_PasswordTokenBox_void:
    .short 80, 97, 115, 115, 119, 111, 114, 100, 84, 111, 107, 101, 110, 66, 111, 120

.LS_0_m_Skymu_Theming_LoginWindowBase_get_ProtocolComboBox_void:
    .short 80, 114, 111, 116, 111, 99, 111, 108, 67, 111, 109, 98, 111, 66, 111, 120

.LS_0_m_Skymu_Theming_LoginWindowBase_get_SkypeName_void:
    .short 83, 107, 121, 112, 101, 78, 97, 109, 101

.LS_0_m_Skymu_Theming_LoginWindowBase_get_Spinner_void:
    .short 83, 112, 105, 110, 110, 101, 114

.LS_0_m_Skymu_Theming_LoginWindowBase_get_UsernameBox_void:
    .short 85, 115, 101, 114, 110, 97, 109, 101, 66, 111, 120

.LS_0_m_Skymu_Theming_LoginWindowBase_get_LoginButton_void:
    .short 76, 111, 103, 105, 110, 66, 117, 116, 116, 111, 110

    .section .note.GNU-stack,"",@progbits
