# Themes/Skype4/Main.xaml.cs
    .text

.globl m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor__void
.type m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor__void, @function
m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor__void, .-m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor__void

.globl m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1__void
.type m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1__void, @function
m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0000:
    lea .LN_0_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0005:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_000d:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_000f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0014:
    lea .LN_3_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_IncomingCall_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0019:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_001e:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_001f:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0020:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0025:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0026:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0027:
    lea m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_002d:
    lea .LN_6_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0032:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0037:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0038:
    mov -32(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_003d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_003e:
    mov -32(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0043:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0044:
    mov -40(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0049:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_004e:
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0053:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0058:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0059:
    mov -32(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_005e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_0063:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1__void, .-m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1__void

.globl m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor__void
.type m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor__void, @function
m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor__void, .-m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor__void

.globl m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2__ref_ref
.type m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2__ref_ref, @function
m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_000d:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0012:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0017:
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_001c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0021:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0022:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0027:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_002c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_002d:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0032:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0037:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_CallBottle_get_Caller__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_003c:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_003d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_InitiateCall__ref_b
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_0042:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2__ref_ref, .-m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2__ref_ref

.globl m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext__void
.type m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext__void, @function
m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_004c
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0012:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0013:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0018:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_SelectTab__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_001d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0022:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0025:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_002a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0068
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_002d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_002e:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_002f:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0030:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0035:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_003d:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0042:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0045:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype4_Main_OnContactsLink_d_11__gen_gen
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_004a:
    jmp .Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_009b
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_004c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_004d:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0052:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0053:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0054:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0059:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_005f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0060:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0061:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0062:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0063:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0068:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_006a:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_006f:
    jmp .Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0088
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0088:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0089:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_008b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0090:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0091:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_0096:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_009b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext__void, .-m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext__void

.globl m_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine__ref
.type m_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine__ref, @function
m_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine__ref, .-m_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine__ref

.globl m_Skymu_Skype4_Main_get_AeroTitleFont__void
.type m_Skymu_Skype4_Main_get_AeroTitleFont__void, @function
m_Skymu_Skype4_Main_get_AeroTitleFont__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_get_AeroTitleFont_void_0000:
    lea .LS_0_m_Skymu_Skype4_Main_get_AeroTitleFont_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_get_AeroTitleFont_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_get_AeroTitleFont_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_get_AeroTitleFont__void, .-m_Skymu_Skype4_Main_get_AeroTitleFont__void

.globl m_Skymu_Skype4_Main_get_ResizesTabColumns__void
.type m_Skymu_Skype4_Main_get_ResizesTabColumns__void, @function
m_Skymu_Skype4_Main_get_ResizesTabColumns__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_get_ResizesTabColumns_void_0000:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_get_ResizesTabColumns_void_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_get_ResizesTabColumns_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_get_ResizesTabColumns__void, .-m_Skymu_Skype4_Main_get_ResizesTabColumns__void

.globl m_Skymu_Skype4_Main_GetInitialCallLocation__void
.type m_Skymu_Skype4_Main_GetInitialCallLocation__void, @function
m_Skymu_Skype4_Main_GetInitialCallLocation__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_GetInitialCallLocation_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_GetInitialCallLocation_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_GetInitialCallLocation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_GetInitialCallLocation_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_GetInitialCallLocation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_GetInitialCallLocation__void, .-m_Skymu_Skype4_Main_GetInitialCallLocation__void

.globl m_Skymu_Skype4_Main_ShowHomeView__void
.type m_Skymu_Skype4_Main_ShowHomeView__void, @function
m_Skymu_Skype4_Main_ShowHomeView__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_ShowHomeView_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowHomeView_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowHomeView_void_0006:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowHomeView_void_0007:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype4_Main_ShowHomeView_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowHomeView_void_000d:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowHomeView_void_0012:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowHomeView_void_0013:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype4_Main_ShowHomeView_void_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_ShowHomeView_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_ShowHomeView__void, .-m_Skymu_Skype4_Main_ShowHomeView__void

.globl m_Skymu_Skype4_Main_ShowChatView__void
.type m_Skymu_Skype4_Main_ShowChatView__void, @function
m_Skymu_Skype4_Main_ShowChatView__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_0006:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_0007:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype4_Main_ShowChatView_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_000d:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_0012:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_0013:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype4_Main_ShowChatView_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_0019:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_001e:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowChatView_void_001f:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype4_Main_ShowChatView_void_0024:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_ShowChatView_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_ShowChatView__void, .-m_Skymu_Skype4_Main_ShowChatView__void

.globl m_Skymu_Skype4_Main_OnTabSelecting__ref
.type m_Skymu_Skype4_Main_OnTabSelecting__ref, @function
m_Skymu_Skype4_Main_OnTabSelecting__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelecting_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelecting_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_OnTabSelecting_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelecting_ref_0006:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelecting_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype4_Main_OnTabSelecting_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_OnTabSelecting_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_OnTabSelecting__ref, .-m_Skymu_Skype4_Main_OnTabSelecting__ref

.globl m_Skymu_Skype4_Main_OnTabSelected__ref
.type m_Skymu_Skype4_Main_OnTabSelected__ref, @function
m_Skymu_Skype4_Main_OnTabSelected__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Name__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0008:
    lea .LS_0_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_000d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0012:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Main_OnTabSelected_ref_002f
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0014:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0015:
    lea .LS_1_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_001a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_001f:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Main_OnTabSelected_ref_0050
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0021:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0022:
    lea .LS_2_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0027:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_002c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Main_OnTabSelected_ref_007b
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_002e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_002f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0030:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0035:
    lea .LS_4_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_003a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_003f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0040:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0045:
    lea .LS_6_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $44, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_004a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_004f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0050:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0051:
    mov -40(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0056:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_005b:
    lea .LS_8_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0060:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0065:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_006a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_006b:
    mov -40(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0070:
    lea .LS_10_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0075:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_007a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_007b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_007c:
    mov -40(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0081:
    lea .LS_12_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0086:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_008b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_008c:
    mov -40(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0091:
    lea .LS_14_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rdi
    mov $39, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_0096:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_009b:
    call m_Skymu_Preferences_Settings_get_InboxNoticeShown__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_00a0:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Main_OnTabSelected_ref_00ae
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_00a2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_00a3:
    mov -40(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype4_Main_OnTabSelected_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_00a8:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_00a9:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_00ae:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_OnTabSelected_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_OnTabSelected__ref, .-m_Skymu_Skype4_Main_OnTabSelected__ref

.globl m_Skymu_Skype4_Main_SBNewBtn_Click__ref_ref
.type m_Skymu_Skype4_Main_SBNewBtn_Click__ref_ref, @function
m_Skymu_Skype4_Main_SBNewBtn_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Resources__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_000b:
    lea .LS_1_m_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0010:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0015:
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_001a:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_001c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0021:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContextMenu_set_PlacementTarget__ref
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0026:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0027:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0028:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContextMenu_set_Placement__v
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_002d:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_002e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContextMenu_set_IsOpen__b
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_0033:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_SBNewBtn_Click__ref_ref, .-m_Skymu_Skype4_Main_SBNewBtn_Click__ref_ref

.globl m_Skymu_Skype4_Main_NewMenuItemClick__ref_ref
.type m_Skymu_Skype4_Main_NewMenuItemClick__ref_ref, @function
m_Skymu_Skype4_Main_NewMenuItemClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0001:
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0006:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Name__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_000b:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_000c:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0011:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0012:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0013:
    lea .LS_0_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0018:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_001d:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_003a
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_001f:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0020:
    lea .LS_1_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0025:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_002a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0046
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_002c:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_002d:
    lea .LS_2_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0032:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0037:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0051
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_003a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_003b:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0040:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_ShowAddContactWindow__void
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0045:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0046:
    lea .LS_4_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_004b:
    mov -56(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0050:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0051:
    lea .LS_5_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_0056:
    mov -56(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_005b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_NewMenuItemClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_NewMenuItemClick__ref_ref, .-m_Skymu_Skype4_Main_NewMenuItemClick__ref_ref

.globl m_Skymu_Skype4_Main_OnContactsLink__ref_ref
.type m_Skymu_Skype4_Main_OnContactsLink__ref_ref, @function
m_Skymu_Skype4_Main_OnContactsLink__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_OnContactsLink_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_OnContactsLink_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Main_OnContactsLink_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype4_Main_OnContactsLink_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype4_Main_OnContactsLink_d_11__gen
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_OnContactsLink_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_OnContactsLink__ref_ref, .-m_Skymu_Skype4_Main_OnContactsLink__ref_ref

.globl m_Skymu_Skype4_Main_CloseConversationHint__ref_ref
.type m_Skymu_Skype4_Main_CloseConversationHint__ref_ref, @function
m_Skymu_Skype4_Main_CloseConversationHint__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_CloseConversationHint_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_0006:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_000c:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_000d:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_InboxNoticeShown__b
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_0012:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_CloseConversationHint_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_CloseConversationHint__ref_ref, .-m_Skymu_Skype4_Main_CloseConversationHint__ref_ref

.globl m_Skymu_Skype4_Main_Directory_Click__ref_ref
.type m_Skymu_Skype4_Main_Directory_Click__ref_ref, @function
m_Skymu_Skype4_Main_Directory_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_Directory_Click_ref_ref_0000:
    lea .LS_0_m_Skymu_Skype4_Main_Directory_Click_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_Directory_Click_ref_ref_0005:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_Skype4_Main_Directory_Click_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_Directory_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_Directory_Click__ref_ref, .-m_Skymu_Skype4_Main_Directory_Click__ref_ref

.globl m_Skymu_Skype4_Main_ShowOwnName__ref
.type m_Skymu_Skype4_Main_ShowOwnName__ref, @function
m_Skymu_Skype4_Main_ShowOwnName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowOwnName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowOwnName_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_ShowOwnName_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowOwnName_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_ShowOwnName_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype4_Main_ShowOwnName_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_ShowOwnName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_ShowOwnName__ref, .-m_Skymu_Skype4_Main_ShowOwnName__ref

.globl m_Skymu_Skype4_Main_ShowCreditText__ref
.type m_Skymu_Skype4_Main_ShowCreditText__ref, @function
m_Skymu_Skype4_Main_ShowCreditText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowCreditText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowCreditText_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_ShowCreditText_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowCreditText_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_ShowCreditText_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype4_Main_ShowCreditText_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_ShowCreditText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_ShowCreditText__ref, .-m_Skymu_Skype4_Main_ShowCreditText__ref

.globl m_Skymu_Skype4_Main_ShowLogin__b
.type m_Skymu_Skype4_Main_ShowLogin__b, @function
m_Skymu_Skype4_Main_ShowLogin__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype4_Main_ShowLogin_b_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowLogin_b_0001:
    lea .LN_0_m_Skymu_Skype4_Main_ShowLogin_b(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype4_Login_ctor__b
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype4_Main_ShowLogin_b_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Skype4_Main_ShowLogin_b_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_ShowLogin_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_ShowLogin__b, .-m_Skymu_Skype4_Main_ShowLogin__b

.globl m_Skymu_Skype4_Main_ctor__void
.type m_Skymu_Skype4_Main_ctor__void, @function
m_Skymu_Skype4_Main_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_ctor__void
.Lm_Skymu_Skype4_Main_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype4_Main_InitializeComponent__void
.Lm_Skymu_Skype4_Main_ctor_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_000d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_InitializeMainWindow__void
.Lm_Skymu_Skype4_Main_ctor_void_0012:
    lea .LN_0_m_Skymu_Skype4_Main_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_0017:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype4_Main_ctor_void_002f
.Lm_Skymu_Skype4_Main_ctor_void_0019:
    lea .LN_1_m_Skymu_Skype4_Main_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_001f:
    lea m_Skymu_Skype4_Main_ctor_b_17_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_0025:
    lea .LN_2_m_Skymu_Skype4_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_CallBottle_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype4_Main_ctor_void_002a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_add_IncomingCallTube__gen
.Lm_Skymu_Skype4_Main_ctor_void_002f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_ctor__void, .-m_Skymu_Skype4_Main_ctor__void

.globl m_Skymu_Skype4_Main_InitializeComponent__void
.type m_Skymu_Skype4_Main_InitializeComponent__void, @function
m_Skymu_Skype4_Main_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype4_Main_InitializeComponent_void_0009
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Skype4_Main_InitializeComponent_void(%rip), %rdi
    mov $40, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Skype4_Main_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Skype4_Main_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_InitializeComponent__void, .-m_Skymu_Skype4_Main_InitializeComponent__void

.globl m_Skymu_Skype4_Main_CreateDelegate__ref_ref
.type m_Skymu_Skype4_Main_CreateDelegate__ref_ref, @function
m_Skymu_Skype4_Main_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_CreateDelegate__ref_ref, .-m_Skymu_Skype4_Main_CreateDelegate__ref_ref

.globl m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cd
    cmp $1, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01da
    cmp $2, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e7
    cmp $3, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f4
    cmp $4, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0201
    cmp $5, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020e
    cmp $6, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021b
    cmp $7, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0228
    cmp $8, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024c
    cmp $9, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0259
    cmp $10, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0266
    cmp $11, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0273
    cmp $12, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0280
    cmp $13, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a4
    cmp $14, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b1
    cmp $15, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02be
    cmp $16, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02cb
    cmp $17, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e3
    cmp $18, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fb
    cmp $19, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0313
    cmp $20, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032b
    cmp $21, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0343
    cmp $22, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_035b
    cmp $23, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0373
    cmp $24, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_038b
    cmp $25, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a3
    cmp $26, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03bb
    cmp $27, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d3
    cmp $28, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03eb
    cmp $29, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0403
    cmp $30, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0410
    cmp $31, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041d
    cmp $32, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0435
    cmp $33, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044d
    cmp $34, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0465
    cmp $35, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047d
    cmp $36, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048a
    cmp $37, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0497
    cmp $38, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a4
    cmp $39, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b1
    cmp $40, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04be
    cmp $41, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cb
    cmp $42, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d8
    cmp $43, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e5
    cmp $44, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f2
    cmp $45, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ff
    cmp $46, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0523
    cmp $47, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_053b
    cmp $48, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0553
    cmp $49, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_056b
    cmp $50, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0583
    cmp $51, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_059b
    cmp $52, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b3
    cmp $53, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c0
    cmp $54, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05cd
    cmp $55, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05da
    cmp $56, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e7
    cmp $57, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f4
    cmp $58, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0601
    cmp $59, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_060e
    cmp $60, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061b
    cmp $61, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0628
    cmp $62, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0640
    cmp $63, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0658
    cmp $64, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0670
    cmp $65, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_067d
    cmp $66, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b9
    cmp $67, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06c6
    cmp $68, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d3
    cmp $69, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e0
    cmp $70, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ed
    cmp $71, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06fa
    cmp $72, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0707
    cmp $73, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0714
    cmp $74, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0721
    cmp $75, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0745
    cmp $76, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09f3
    cmp $77, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0752
    cmp $78, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_075f
    cmp $79, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0777
    cmp $80, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0784
    cmp $81, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0791
    cmp $82, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07cc
    cmp $83, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d9
    cmp $84, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e6
    cmp $85, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07f3
    cmp $86, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0800
    cmp $87, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_080d
    cmp $88, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_081a
    cmp $89, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0827
    cmp $90, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0834
    cmp $91, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0841
    cmp $92, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_084e
    cmp $93, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085b
    cmp $94, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0868
    cmp $95, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08a3
    cmp $96, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08b0
    cmp $97, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08bd
    cmp $98, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ca
    cmp $99, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d7
    cmp $100, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08e4
    cmp $101, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f1
    cmp $102, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08fe
    cmp $103, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0922
    cmp $104, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_092f
    cmp $105, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_093c
    cmp $106, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0949
    cmp $107, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0956
    cmp $108, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0963
    cmp $109, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0970
    cmp $110, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_097d
    cmp $111, %eax
    je .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09e6
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c8:
    jmp .Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09f3
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ce:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cf:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01da:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01db:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01dc:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e9:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ee:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f4:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f5:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f6:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fb:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0200:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0201:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0202:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0203:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0208:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0210:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0215:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021d:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0222:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0227:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0228:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0229:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022a:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0234:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0235:
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023b:
    lea m_Skymu_Theming_MainWindowBase_TitleBarIcon_MouseDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0241:
    lea .LN_9_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0246:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024e:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0253:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0258:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0259:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025b:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0260:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0265:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0266:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0267:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0268:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0272:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0273:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0274:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0275:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0280:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0281:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0282:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0287:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_028c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_028d:
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0292:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0293:
    lea m_Skymu_Theming_MainWindowBase_WindowArea_MouseDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0299:
    lea .LN_16_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_029e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseDown__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a4:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a5:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a6:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ab:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b3:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02be:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bf:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c0:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ca:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02cb:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02cc:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d2:
    lea m_Skymu_Theming_MainWindowBase_OnStatus__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d8:
    lea .LN_20_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02dd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e3:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e4:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ea:
    lea m_Skymu_Theming_MainWindowBase_OnStatus__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f0:
    lea .LN_21_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f5:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fa:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fb:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fc:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0301:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0302:
    lea m_Skymu_Theming_MainWindowBase_OnStatus__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0308:
    lea .LN_22_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0312:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0313:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0314:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0319:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_031a:
    lea m_Skymu_Theming_MainWindowBase_OnStatus__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0320:
    lea .LN_23_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0325:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032c:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0331:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0332:
    lea m_Skymu_Theming_MainWindowBase_OnAccountManager__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0338:
    lea .LN_24_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0342:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0343:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0344:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0349:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_034a:
    lea m_Skymu_Theming_MainWindowBase_OnSignOut__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0350:
    lea .LN_25_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0355:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_035a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_035b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_035c:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0361:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0362:
    lea m_Skymu_Theming_MainWindowBase_OnSwitchUser__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0368:
    lea .LN_26_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0372:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0373:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0374:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0379:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037a:
    lea m_Skymu_Theming_MainWindowBase_OnClose__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0380:
    lea .LN_27_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0385:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_038a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_038b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_038c:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0391:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0392:
    lea m_Skymu_Theming_MainWindowBase_OnAddContact__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0398:
    lea .LN_28_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_039d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a3:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a4:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03aa:
    lea m_Skymu_Theming_MainWindowBase_OnCall__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b0:
    lea .LN_29_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b5:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ba:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03bb:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03bc:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c2:
    lea m_Skymu_Theming_MainWindowBase_OnContacts__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c8:
    lea .LN_30_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03cd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d3:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d4:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03da:
    lea m_Skymu_Theming_MainWindowBase_OnRecent__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e0:
    lea .LN_31_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e5:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ea:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03eb:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ec:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f2:
    lea m_Skymu_Theming_MainWindowBase_OnHome__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f8:
    lea .LN_32_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03fd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0402:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0403:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0404:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0405:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_040a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_33_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_040f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0410:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0411:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0412:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0417:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_34_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041e:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0423:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0424:
    lea m_Skymu_Theming_MainWindowBase_OnOptions__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042a:
    lea .LN_35_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0434:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0435:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0436:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_043b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_043c:
    lea m_Skymu_Theming_MainWindowBase_OnCheckUpdates__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0442:
    lea .LN_36_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0447:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044e:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0453:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0454:
    lea m_Skymu_Theming_MainWindowBase_OnAbout__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_045a:
    lea .LN_37_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_045f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0464:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0465:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0466:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_046b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_046c:
    lea m_Skymu_Theming_MainWindowBase_OnPrivacyPolicy__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0472:
    lea .LN_38_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0477:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047f:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0484:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_39_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0489:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048c:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0491:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_40_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0496:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0497:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0498:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0499:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_049e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_41_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a4:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a5:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a6:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ab:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_42_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b3:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_43_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04bd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04be:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04bf:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c0:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_44_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ca:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cb:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cc:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cd:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_45_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04da:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04df:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_46_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e7:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ec:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_47_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f4:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_48_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04fe:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ff:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0500:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0501:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0506:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_49_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_050b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_050c:
    mov -48(%rbp), %rdi
    lea .LN_50_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0511:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0512:
    lea m_Skymu_Theming_MainWindowBase_StatusArea_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0518:
    lea .LN_51_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_051d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0522:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0523:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0524:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0529:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_052a:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0530:
    lea .LN_52_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0535:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_053a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_053b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_053c:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0541:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0542:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0548:
    lea .LN_53_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_054d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0552:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0553:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0554:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0559:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055a:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0560:
    lea .LN_54_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0565:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_056a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_056b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_056c:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0571:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0572:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0578:
    lea .LN_55_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_057d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0582:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0583:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0584:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0589:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_058a:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0590:
    lea .LN_56_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0595:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_059a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_059b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_059c:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a2:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a8:
    lea .LN_57_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ad:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b5:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ba:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_58_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05bf:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c2:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_59_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05cc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05cd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ce:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05cf:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05d4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_60_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05d9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05da:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05db:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05dc:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_61_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e9:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ee:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_62_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f4:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f5:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f6:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05fb:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_63_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0600:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0601:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0602:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0603:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0608:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_64_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_060d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_060e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_060f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0610:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0615:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_65_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061d:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0622:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_66_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0627:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0628:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0629:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_062e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_062f:
    lea m_Skymu_Skype4_Main_NewMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0635:
    lea .LN_67_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_063a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_063f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0640:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0641:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0646:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0647:
    lea m_Skymu_Skype4_Main_NewMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_064d:
    lea .LN_68_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0652:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0657:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0658:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0659:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_065e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_065f:
    lea m_Skymu_Skype4_Main_NewMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0665:
    lea .LN_69_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_066a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_066f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0670:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0671:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0672:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0677:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_70_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_067c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_067d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_067e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_067f:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0684:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_71_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0689:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_068a:
    mov -48(%rbp), %rdi
    lea .LN_72_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_068f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0690:
    lea m_Skymu_Theming_MainWindowBase_SearchBox_Focused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0696:
    lea .LN_73_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_069b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_GotKeyboardFocus__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a0:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a1:
    mov -48(%rbp), %rdi
    lea .LN_74_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a6:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a7:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a8:
    # unsupported in forced mode: ldvirtftn instance void Skymu.Theming.MainWindowBase::SearchBox_Unfocused(object, class [PresentationCore]System.Windows.Input.KeyboardFocusChangedEventArgs)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ae:
    lea .LN_75_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b3:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_LostKeyboardFocus__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ba:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06bb:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06c0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_76_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06c5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06c6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06c7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06c8:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06cd:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_77_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d5:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06da:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_78_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06df:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e2:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_79_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ec:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ed:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ee:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ef:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06f4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_80_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06f9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06fa:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06fb:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06fc:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0701:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_81_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0706:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0707:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0708:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0709:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_070e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_82_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0713:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0714:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0715:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0716:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_071b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_83_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0720:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0721:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0722:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0723:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0728:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_84_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_072d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_072e:
    mov -48(%rbp), %rdi
    lea .LN_85_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0733:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0734:
    lea m_Skymu_Theming_MainWindowBase_ConversationList_ItemClicked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_073a:
    lea .LN_86_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_073f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_PreviewMouseLeftButtonUp__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0744:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0745:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0746:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0747:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_074c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_87_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0751:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0752:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0753:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0754:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0759:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_88_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_075e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_075f:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0760:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0765:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0766:
    lea m_Skymu_Skype4_Main_OnContactsLink__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_076c:
    lea .LN_89_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0771:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ContentElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0776:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0777:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0778:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0779:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_077e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_90_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0783:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0784:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0785:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0786:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_078b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_91_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0790:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0791:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0792:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0793:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0798:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_92_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_079d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_079e:
    mov -48(%rbp), %rdi
    lea .LN_93_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07a3:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07a4:
    lea m_Skymu_Theming_MainWindowBase_SkypeSplitter_Press__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07aa:
    lea .LN_94_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07af:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07b4:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07b5:
    mov -48(%rbp), %rdi
    lea .LN_95_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ba:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07bb:
    lea m_Skymu_Theming_MainWindowBase_SkypeSplitter_MouseMove__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07c1:
    lea .LN_96_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07c6:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseMove__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07cb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07cc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07cd:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ce:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_97_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07da:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07db:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_98_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e8:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ed:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_99_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07f2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07f3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07f4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07f5:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07fa:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_100_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ff:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0800:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0801:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0802:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0807:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_101_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_080c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_080d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_080e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_080f:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0814:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_102_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0819:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_081a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_081b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_081c:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0821:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_103_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0826:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0827:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0828:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0829:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_082e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_104_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0833:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0834:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0835:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0836:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_083b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_105_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0840:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0841:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0842:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0843:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0848:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_106_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_084d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_084e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_084f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0850:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0855:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_107_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085d:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0862:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_108_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0867:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0868:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0869:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_086a:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_086f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_109_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0874:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0875:
    mov -48(%rbp), %rdi
    lea .LN_110_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_087a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_087b:
    lea m_Skymu_Theming_MainWindowBase_ChatTopBarSplitter_Press__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0881:
    lea .LN_111_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0886:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_088b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_088c:
    mov -48(%rbp), %rdi
    lea .LN_112_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0891:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0892:
    lea m_Skymu_Theming_MainWindowBase_ChatTopBarSplitter_MouseMove__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0898:
    lea .LN_113_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_089d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseMove__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08a2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08a3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08a4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08a5:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08aa:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_114_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08af:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08b0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08b1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08b2:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08b7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_115_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08bc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08bd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08be:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08bf:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08c4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_116_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08c9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ca:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08cb:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08cc:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_117_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d9:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08de:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_118_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08e3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08e4:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08e5:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08e6:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08eb:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_119_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f3:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_120_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08fd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08fe:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ff:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0900:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0905:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_121_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_090a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_090b:
    mov -48(%rbp), %rdi
    lea .LN_122_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0910:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0911:
    lea m_Skymu_Theming_MainWindowBase_ConversationItemsList_Loaded__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0917:
    lea .LN_123_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_091c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_Loaded__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0921:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0922:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0923:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0924:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0929:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_124_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_092e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_092f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0930:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0931:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0936:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_125_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_093b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_093c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_093d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_093e:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0943:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_126_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0948:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0949:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_094a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_094b:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0950:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_127_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0955:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0956:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0957:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0958:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_095d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_128_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0962:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0963:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0964:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0965:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_096a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_129_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_096f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0970:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0971:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0972:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0977:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_130_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_097c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_097d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_097e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_097f:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0984:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_131_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0989:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_098a:
    mov -48(%rbp), %rdi
    lea .LN_132_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_098f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0990:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_Focused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0996:
    lea .LN_133_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_099b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_GotKeyboardFocus__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09a0:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09a1:
    mov -48(%rbp), %rdi
    lea .LN_134_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09a6:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09a7:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_Unfocused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09ad:
    lea .LN_135_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09b2:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_LostKeyboardFocus__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09b7:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09b8:
    mov -48(%rbp), %rdi
    lea .LN_136_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09bd:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09be:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_PreviewKeyDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09c4:
    lea .LN_137_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09c9:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_PreviewKeyDown__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09ce:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09cf:
    mov -48(%rbp), %rdi
    lea .LN_138_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09d4:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09d5:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_TextChanged__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09db:
    lea .LN_139_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_TextChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09e0:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_TextBoxBase_add_TextChanged__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09e5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09e6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09e7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09e8:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09ed:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_140_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09f2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09f3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09f4:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09f5:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_141_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_09fa:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref
.type m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref, @function
m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0001:
    mov $77, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0003:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0039
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0005:
    lea .LN_0_m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_EventSetter_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000a:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000c:
    lea .LN_1_m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0011:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_EventSetter_set_Event__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0016:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0018:
    lea m_Skymu_Theming_MainWindowBase_ServerListItem_Clicked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_001e:
    lea .LN_2_m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0023:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_EventSetter_set_Handler__ref
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0028:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0029:
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_002e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Style_get_Setters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0033:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0034:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_SetterBase_Add__gen
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref, .-m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref

.globl m_Skymu_Skype4_Main_ctor_b_17_0__ref_ref
.type m_Skymu_Skype4_Main_ctor_b_17_0__ref_ref, @function
m_Skymu_Skype4_Main_ctor_b_17_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_0000:
    lea .LN_0_m_Skymu_Skype4_Main_ctor_b_17_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Main_ctor_b_17_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_000d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Main_ctor_b_17_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_0014:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_0019:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_001f:
    lea m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_0025:
    lea .LN_3_m_Skymu_Skype4_Main_ctor_b_17_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_002a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke__ref
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_002f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Main_ctor_b_17_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Main_ctor_b_17_0__ref_ref, .-m_Skymu_Skype4_Main_ctor_b_17_0__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "Skymu.Skype4.Main/'<>c__DisplayClass17_1'"

.LN_1_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "CS$<>8__locals1"

.LN_2_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "e"

.LN_3_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "Skymu.Forms.IncomingCall"

.LN_4_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "ic"

.LN_5_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "handler"

.LN_6_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "System.EventHandler"

.LN_7_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "handler"

.LN_8_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "ic"

.LN_9_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "Answered"

.LN_10_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "handler"

.LN_11_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "Answered"

.LN_12_m_Skymu_Skype4_Main_c_DisplayClass17_0_ctor_b_1_void:
    .asciz "ic"

.LN_0_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref:
    .asciz "ic"

.LN_1_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref:
    .asciz "Answered"

.LN_2_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref:
    .asciz "handler"

.LN_3_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref:
    .asciz "Answered"

.LN_4_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_5_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref:
    .asciz "<>4__this"

.LN_6_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_7_m_Skymu_Skype4_Main_c_DisplayClass17_1_ctor_b_2_ref_ref:
    .asciz "e"

.LN_0_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "btnContacts"

.LN_3_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_Skype4_Main_OnContactsLink_d_11_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype4_Main_OnContactsLink_d_11_SetStateMachine_ref:
    .asciz "<>t__builder"

.LS_0_m_Skymu_Skype4_Main_get_AeroTitleFont_void:
    .short 65, 114, 105, 97, 108

.LN_0_m_Skymu_Skype4_Main_GetInitialCallLocation_void:
    .asciz "initial_location"

.LN_0_m_Skymu_Skype4_Main_ShowHomeView_void:
    .asciz "Home"

.LN_1_m_Skymu_Skype4_Main_ShowHomeView_void:
    .asciz "ChatArea"

.LN_0_m_Skymu_Skype4_Main_ShowChatView_void:
    .asciz "StatusHeader"

.LN_1_m_Skymu_Skype4_Main_ShowChatView_void:
    .asciz "Home"

.LN_2_m_Skymu_Skype4_Main_ShowChatView_void:
    .asciz "ChatArea"

.LN_0_m_Skymu_Skype4_Main_OnTabSelecting_ref:
    .asciz "ConversationsHint"

.LS_0_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 98, 116, 110, 83, 101, 114, 118, 101, 114, 115

.LS_1_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 98, 116, 110, 67, 111, 110, 116, 97, 99, 116, 115

.LS_2_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 98, 116, 110, 82, 101, 99, 101, 110, 116, 115

.LN_3_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .asciz "SplashHeader"

.LS_4_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 83, 101, 114, 118, 101, 114, 115

.LN_5_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .asciz "SplashDescription"

.LS_6_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 70, 105, 110, 100, 32, 97, 32, 99, 111, 109, 109, 117, 110, 105, 116, 121, 32, 97, 110, 100, 32, 99, 111, 110, 110, 101, 99, 116, 32, 119, 105, 116, 104, 32, 116, 104, 101, 32, 119, 111, 114, 108, 100, 46

.LN_7_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .asciz "SplashHeader"

.LS_8_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 67, 79, 78, 84, 65, 67, 84, 83

.LN_9_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .asciz "SplashDescription"

.LS_10_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 67, 104, 111, 111, 115, 101, 32, 97, 32, 99, 111, 110, 116, 97, 99, 116, 32, 97, 110, 100, 32, 115, 116, 97, 114, 116, 32, 116, 97, 108, 107, 105, 110, 103, 46

.LN_11_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .asciz "SplashHeader"

.LS_12_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 67, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115

.LN_13_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .asciz "SplashDescription"

.LS_14_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .short 67, 104, 111, 111, 115, 101, 32, 97, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 32, 116, 111, 32, 112, 105, 99, 107, 32, 117, 112, 32, 97, 103, 97, 105, 110, 46

.LN_15_m_Skymu_Skype4_Main_OnTabSelected_ref:
    .asciz "ConversationsHint"

.LN_0_m_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref:
    .asciz "SBNewBtn"

.LS_1_m_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref:
    .short 77, 101, 110, 117

.LN_2_m_Skymu_Skype4_Main_SBNewBtn_Click_ref_ref:
    .asciz "SBNewBtn"

.LS_0_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref:
    .short 99, 111, 110, 116, 97, 99, 116

.LS_1_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref:
    .short 103, 114, 111, 117, 112

.LS_2_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref:
    .short 105, 109, 112, 111, 114, 116

.LN_3_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref:
    .asciz "vmodel"

.LS_4_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref:
    .short 67, 114, 101, 97, 116, 105, 110, 103, 32, 103, 114, 111, 117, 112, 32, 99, 111, 110, 118, 101, 114, 115, 97, 116, 105, 111, 110, 115

.LS_5_m_Skymu_Skype4_Main_NewMenuItemClick_ref_ref:
    .short 73, 109, 112, 111, 114, 116, 105, 110, 103, 32, 99, 111, 110, 116, 97, 99, 116, 115

.LN_0_m_Skymu_Skype4_Main_OnContactsLink_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype4_Main_OnContactsLink_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype4_Main_OnContactsLink_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype4_Main_OnContactsLink_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype4_Main_CloseConversationHint_ref_ref:
    .asciz "ConversationsHint"

.LS_0_m_Skymu_Skype4_Main_Directory_Click_ref_ref:
    .short 68, 105, 114, 101, 99, 116, 111, 114, 121

.LN_0_m_Skymu_Skype4_Main_ShowOwnName_ref:
    .asciz "StatusHeader"

.LN_0_m_Skymu_Skype4_Main_ShowCreditText_ref:
    .asciz "SkypeCreditBox"

.LN_0_m_Skymu_Skype4_Main_ShowLogin_b:
    .asciz "Skymu.Skype4.Login"

.LN_0_m_Skymu_Skype4_Main_ctor_void:
    .asciz "CallPlugin"

.LN_1_m_Skymu_Skype4_Main_ctor_void:
    .asciz "CallPlugin"

.LN_2_m_Skymu_Skype4_Main_ctor_void:
    .asciz "Yggdrasil.Bottles.CallBottle>"

.LN_0_m_Skymu_Skype4_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Skype4_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Skype4_Main_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 116, 104, 101, 109, 101, 115, 47, 115, 107, 121, 112, 101, 52, 47, 109, 97, 105, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Skype4_Main_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FrameArea"

.LN_1_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleBar"

.LN_2_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CaptionButtons"

.LN_3_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "split"

.LN_4_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "minimize"

.LN_5_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "maximize"

.LN_6_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "close"

.LN_7_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleBarIcon"

.LN_8_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleBarIcon"

.LN_9_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_10_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleShadow"

.LN_11_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleShadow2"

.LN_12_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleShadow3"

.LN_13_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleMain"

.LN_14_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WindowArea"

.LN_15_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WindowArea"

.LN_16_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_17_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MenuBarArea"

.LN_18_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MainMenuBar"

.LN_19_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MenubarStatusHolder"

.LN_20_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_21_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_22_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_23_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_24_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_25_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_26_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_27_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_28_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_29_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_30_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_31_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_32_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_33_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ExtrasMenu"

.LN_34_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GetExtrasMenuItem"

.LN_35_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_36_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_37_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_38_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_39_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MainMenuBarDivider"

.LN_40_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContentBgTop"

.LN_41_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContentBgBottom"

.LN_42_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FillWindowHost"

.LN_43_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContentArea"

.LN_44_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarColumn"

.LN_45_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitterColumn"

.LN_46_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Sidebar"

.LN_47_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarStatus"

.LN_48_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusHeader"

.LN_49_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusArea"

.LN_50_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusArea"

.LN_51_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_52_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_53_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_54_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_55_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_56_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_57_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_58_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusIcon"

.LN_59_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProfileGrid"

.LN_60_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarAvatar"

.LN_61_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PseudoStatusBox"

.LN_62_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusBox"

.LN_63_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeCreditBackground"

.LN_64_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeCreditBox"

.LN_65_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContactAddSearchRow"

.LN_66_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SBNewBtn"

.LN_67_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_68_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_69_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_70_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PseudoSearchBox"

.LN_71_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_72_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_73_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_74_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_75_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_76_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarTabs"

.LN_77_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContactsColumn"

.LN_78_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ServersColumn"

.LN_79_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "RecentsColumn"

.LN_80_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnContacts"

.LN_81_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnServers"

.LN_82_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnRecents"

.LN_83_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContactsArea"

.LN_84_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationList"

.LN_85_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationList"

.LN_86_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_87_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ServersList"

.LN_88_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationsHint"

.LN_89_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_90_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BottomButtons"

.LN_91_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SelectedItemHolder"

.LN_92_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_93_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_94_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_95_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_96_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_97_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Home"

.LN_98_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SplashHeader"

.LN_99_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SplashDescription"

.LN_100_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatArea"

.LN_101_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarRow"

.LN_102_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TopbarWindowRow"

.LN_103_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopbarSplitterRow"

.LN_104_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageWindowRow"

.LN_105_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopbar"

.LN_106_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "chatHeader"

.LN_107_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FillMessagePanelHost"

.LN_108_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatProfileArea"

.LN_109_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_110_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_111_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_112_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_113_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_114_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageWindow"

.LN_115_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatButtonRow"

.LN_116_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CallButton"

.LN_117_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "VideoCallButton"

.LN_118_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WifiButton"

.LN_119_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Spinner"

.LN_120_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SpinnerRotate"

.LN_121_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationItemsList"

.LN_122_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationItemsList"

.LN_123_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_124_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageBoxPanel"

.LN_125_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiButton"

.LN_126_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiFlyout"

.LN_127_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiWrapPanel"

.LN_128_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicator"

.LN_129_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicatorIcon"

.LN_130_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicatorText"

.LN_131_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_132_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_133_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_134_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_135_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_136_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_137_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_138_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_139_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.TextChangedEventHandler"

.LN_140_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SendMsgButton"

.LN_141_m_Skymu_Skype4_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "System.Windows.EventSetter"

.LN_1_m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "PreviewMouseLeftButtonUpEvent"

.LN_2_m_Skymu_Skype4_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_0_m_Skymu_Skype4_Main_ctor_b_17_0_ref_ref:
    .asciz "Skymu.Skype4.Main/'<>c__DisplayClass17_0'"

.LN_1_m_Skymu_Skype4_Main_ctor_b_17_0_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype4_Main_ctor_b_17_0_ref_ref:
    .asciz "e"

.LN_3_m_Skymu_Skype4_Main_ctor_b_17_0_ref_ref:
    .asciz "System.Action"

    .section .note.GNU-stack,"",@progbits
