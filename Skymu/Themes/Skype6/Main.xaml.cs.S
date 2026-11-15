# Themes/Skype6/Main.xaml.cs
    .text

.globl m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor__void
.type m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor__void, @function
m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor__void, .-m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor__void

.globl m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1__void
.type m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1__void, @function
m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0000:
    lea .LN_0_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0005:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_000d:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_000f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0014:
    lea .LN_3_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_IncomingCall_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0019:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_001e:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_001f:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0020:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0025:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0026:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0027:
    lea m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_002d:
    lea .LN_6_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0032:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0037:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0038:
    mov -32(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_003d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_003e:
    mov -32(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0043:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0044:
    mov -40(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0049:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_004e:
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0053:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0058:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0059:
    mov -32(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_005e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_0063:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1__void, .-m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1__void

.globl m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor__void
.type m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor__void, @function
m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor__void, .-m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor__void

.globl m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2__ref_ref
.type m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2__ref_ref, @function
m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_000d:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0012:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0017:
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_001c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0021:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0022:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0027:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_002c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_002d:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0032:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0037:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_CallBottle_get_Caller__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_003c:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_003d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_InitiateCall__ref_b
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_0042:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2__ref_ref, .-m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2__ref_ref

.globl m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext__void
.type m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext__void, @function
m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_004f
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0012:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0013:
    mov -88(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0018:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_SelectTab__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_001d:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0022:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0023:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0025:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_002a:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_006b
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_002d:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_002e:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_002f:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0030:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0035:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0037:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_003d:
    mov -80(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0042:
    lea -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0045:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype6_Main_AddContact_Close_d_15__gen_gen
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_004a:
    jmp .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_012e
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_004f:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0050:
    mov -80(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0055:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0056:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0057:
    mov -80(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_005c:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0062:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0063:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0064:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0065:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0066:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_006b:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_006d:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0072:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0073:
    mov -80(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0078:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0088
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_007a:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_007b:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_007c:
    mov -88(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0081:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0086:
    jmp .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0100
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0088:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0089:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_008a:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_008f:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0090:
    mov -80(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0095:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_get_Items__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_009a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerable_GetEnumerator__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_009f:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00a0:
    jmp .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00de
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00a2:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00a3:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00a8:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00aa:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00ac:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00b1:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00de
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00b3:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00b5:
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00ba:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00bf:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00c0:
    mov -104(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00c5:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00ca:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00cf:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00de
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00d1:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00d2:
    mov -96(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00d7:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00d9:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedItem__ref
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00de:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00df:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00e4:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00a2
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_00e6:
    jmp .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0100
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0100:
    jmp .Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_011b
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_011b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_011c:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_011e:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0123:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0124:
    mov -80(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_0129:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_012e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext__void, .-m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext__void

.globl m_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine__ref
.type m_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine__ref, @function
m_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine__ref, .-m_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine__ref

.globl m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext__void
.type m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext__void, @function
m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0073
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0017:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_001c:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00c2
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0021:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0022:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0027:
    lea .LN_5_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_002c:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_002d:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0032:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0037:
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_DirectMessage__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_003c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_WebServices_Home_Generate__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0046:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0047:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0049:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_004e:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_008f
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0051:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0052:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0053:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0054:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_005a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_005b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0061:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0066:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0068:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0069:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_Skype6_Main_GenerateHome_d_22__gen_gen
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_006e:
    jmp .Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0116
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0073:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0074:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0079:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_007a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_007b:
    mov -56(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0080:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0087:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0088:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0089:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_008a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_008f:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0091:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0096:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00ea
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0098:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0099:
    mov -56(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_009e:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_009f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00a4:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00a5:
    mov -56(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00aa:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00ab:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00b0:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00b1:
    mov -56(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00b6:
    lea .LN_17_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_HomeUnavailable_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00bb:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00c0:
    jmp .Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00ea
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00c2:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00c3:
    mov -56(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00c8:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00c9:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00ce:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00cf:
    mov -56(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00d4:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00d5:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00da:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00db:
    mov -56(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00e0:
    lea .LN_21_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_HomeUnavailable_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00e5:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_00ea:
    jmp .Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0103
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0103:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0104:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0106:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_22_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_010b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_010c:
    mov -56(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0111:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_0116:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext__void, .-m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext__void

.globl m_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine__ref
.type m_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine__ref, @function
m_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine__ref, .-m_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine__ref

.globl m_Skymu_Skype6_Main_ShowHomeView__void
.type m_Skymu_Skype6_Main_ShowHomeView__void, @function
m_Skymu_Skype6_Main_ShowHomeView__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0001:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0002:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype6_Main_ToggleStatusBoxSelection__b
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0008:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_000d:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0012:
    lea .LS_1_m_Skymu_Skype6_Main_ShowHomeView_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0017:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_001c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0022:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0027:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0028:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_ShowHomeView_void_002d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_002e:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0033:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0034:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0039:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_003a:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype6_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_003f:
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype6_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0044:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_ShowHomeView_void_0053
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0046:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0047:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype6_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_004c:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_004d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0052:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0053:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0054:
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype6_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_0059:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowHomeView_void_005a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_ShowHomeView_void_005f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_ShowHomeView_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_ShowHomeView__void, .-m_Skymu_Skype6_Main_ShowHomeView__void

.globl m_Skymu_Skype6_Main_ShowChatView__void
.type m_Skymu_Skype6_Main_ShowChatView__void, @function
m_Skymu_Skype6_Main_ShowChatView__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0001:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0002:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype6_Main_ToggleStatusBoxSelection__b
.Lm_Skymu_Skype6_Main_ShowChatView_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0008:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_000d:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_000e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_ShowChatView_void_0013:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0014:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0019:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_001a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_ShowChatView_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0020:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0025:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0026:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_ShowChatView_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_002c:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0031:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowChatView_void_0032:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_ShowChatView_void_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_ShowChatView_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_ShowChatView__void, .-m_Skymu_Skype6_Main_ShowChatView__void

.globl m_Skymu_Skype6_Main_ToggleStatusBoxSelection__b
.type m_Skymu_Skype6_Main_ToggleStatusBoxSelection__b, @function
m_Skymu_Skype6_Main_ToggleStatusBoxSelection__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_ToggleStatusBoxSelection_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_000c
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_0009:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_000a:
    jmp .Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_000d
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_000c:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_000d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_ToggleStatusBoxSelection_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_ToggleStatusBoxSelection__b, .-m_Skymu_Skype6_Main_ToggleStatusBoxSelection__b

.globl m_Skymu_Skype6_Main_OnTabSelecting__ref
.type m_Skymu_Skype6_Main_OnTabSelecting__ref, @function
m_Skymu_Skype6_Main_OnTabSelecting__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_OnTabSelecting_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0007:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_000c:
    lea .LS_1_m_Skymu_Skype6_Main_OnTabSelecting_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0011:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0016:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0017:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_SetPlaceholder__ref_ref_b
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_001e:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_OnTabSelecting_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0023:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0024:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_OnTabSelecting_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0029:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_002a:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_002f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0030:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype6_Main_OnTabSelecting_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0035:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_0036:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_003b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_OnTabSelecting_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_OnTabSelecting__ref, .-m_Skymu_Skype6_Main_OnTabSelecting__ref

.globl m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref
.type m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref, @function
m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0002:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0007:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0027
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_000a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_000b:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0010:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0015:
    lea .LS_2_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_001a:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_001f:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0020:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_SetPlaceholder__ref_ref_b
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0025:
    jmp .Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0043
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0027:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0028:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0029:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_002e:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0033:
    lea .LS_4_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0038:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_003d:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_003e:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_SetPlaceholder__ref_ref_b
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0043:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0044:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0049:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_004a:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_004b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_004c:
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0051:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0052:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0053:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0054:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0055:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_005a:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_005b:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_005c:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_005d:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_005e:
    jmp .Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_007c
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0060:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0061:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0062:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0063:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0064:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0065:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0066:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0071
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0068:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0069:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_006a:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_006f:
    jmp .Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0078
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0071:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0072:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0073:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0078:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0079:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_007a:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_007b:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_007c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_007d:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_007e:
    mov -64(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_007f:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0080:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0060
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_0082:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref, .-m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref

.globl m_Skymu_Skype6_Main_HomeButton_Click__ref_ref
.type m_Skymu_Skype6_Main_HomeButton_Click__ref_ref, @function
m_Skymu_Skype6_Main_HomeButton_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0002:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_HomeButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_SelectTab__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_000c:
    mov -40(%rbp), %rax
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_000e:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_000f:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0010:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_SetWindow__v_b
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0015:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0017:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_HomeButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_001c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_0021:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_HomeButton_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_HomeButton_Click__ref_ref, .-m_Skymu_Skype6_Main_HomeButton_Click__ref_ref

.globl m_Skymu_Skype6_Main_AddContact_Close__ref_ref
.type m_Skymu_Skype6_Main_AddContact_Close__ref_ref, @function
m_Skymu_Skype6_Main_AddContact_Close__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_AddContact_Close_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_AddContact_Close_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_AddContact_Close_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_AddContact_Close_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype6_Main_AddContact_Close_d_15__gen
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_AddContact_Close_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_AddContact_Close__ref_ref, .-m_Skymu_Skype6_Main_AddContact_Close__ref_ref

.globl m_Skymu_Skype6_Main_AddContact_Click__ref_ref
.type m_Skymu_Skype6_Main_AddContact_Click__ref_ref, @function
m_Skymu_Skype6_Main_AddContact_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0000:
    lea .LN_0_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0005:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_000a:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0033
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_000d:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0012:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0013:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0018:
    lea .LS_2_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_001d:
    mov -64(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0022:
    lea .LS_3_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rdi
    mov $45, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0027:
    lea .LS_4_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_002c:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_002d:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Universal_ShowMessage__ref_ref_v
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0033:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0034:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0039:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_003a:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_003b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_003c:
    mov -80(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0041:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0042:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0043:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0044:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0045:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_004a:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_004b:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_004c:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_004d:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_004e:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0053:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0054:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0055:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0056:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0057:
    jmp .Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0066
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0059:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_005a:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_005b:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_005c:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_005d:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0062:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0063:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0064:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0065:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0066:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0067:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0068:
    mov -64(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0069:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_006a:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0059
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_006c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_006d:
    mov -72(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0072:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0073:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0078:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0079:
    mov -72(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_007e:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_007f:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0084:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0085:
    mov -72(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_008a:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_008b:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0090:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0091:
    mov -72(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0096:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_0097:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_009c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_009d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_009e:
    mov -80(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_00a3:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype6_Main_SelectSidebarTopRowButton__ref
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_00a8:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_00a9:
    mov -72(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype6_Main_AddContact_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_00ae:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_Focus__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_00b3:
    mov -72(%rbp), %rax
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_00b4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_AddContact_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_AddContact_Click__ref_ref, .-m_Skymu_Skype6_Main_AddContact_Click__ref_ref

.globl m_Skymu_Skype6_Main_SearchBox_Unfocused__ref_ref
.type m_Skymu_Skype6_Main_SearchBox_Unfocused__ref_ref, @function
m_Skymu_Skype6_Main_SearchBox_Unfocused__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0006:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_000e:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0019:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Visibility__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_001e:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0031
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0020:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0025:
    lea .LS_3_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_002a:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_002f:
    jmp .Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0040
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0031:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0036:
    lea .LS_4_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_003b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0040:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0041:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_SetPlaceholder__ref_ref_b
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_0046:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_SearchBox_Unfocused__ref_ref, .-m_Skymu_Skype6_Main_SearchBox_Unfocused__ref_ref

.globl m_Skymu_Skype6_Main_CallPhones_Click__ref_ref
.type m_Skymu_Skype6_Main_CallPhones_Click__ref_ref, @function
m_Skymu_Skype6_Main_CallPhones_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_CallPhones_Click_ref_ref_0000:
    lea .LS_0_m_Skymu_Skype6_Main_CallPhones_Click_ref_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_CallPhones_Click_ref_ref_0005:
    mov -40(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_Skype6_Main_CallPhones_Click_ref_ref_000a:
    lea .LS_1_m_Skymu_Skype6_Main_CallPhones_Click_ref_ref(%rip), %rdi
    mov $42, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_CallPhones_Click_ref_ref_000f:
    lea .LS_2_m_Skymu_Skype6_Main_CallPhones_Click_ref_ref(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_CallPhones_Click_ref_ref_0014:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_CallPhones_Click_ref_ref_0015:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_ShowMessage__ref_ref_v
.Lm_Skymu_Skype6_Main_CallPhones_Click_ref_ref_001a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_CallPhones_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_CallPhones_Click__ref_ref, .-m_Skymu_Skype6_Main_CallPhones_Click__ref_ref

.globl m_Skymu_Skype6_Main_UpdateMessageSendButtonState__void
.type m_Skymu_Skype6_Main_UpdateMessageSendButtonState__void, @function
m_Skymu_Skype6_Main_UpdateMessageSendButtonState__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_UpdateMessageSendButtonState_void_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_UpdateMessageSendButtonState_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_UpdateMessageSendButtonState__void, .-m_Skymu_Skype6_Main_UpdateMessageSendButtonState__void

.globl m_Skymu_Skype6_Main_OnConversationSelecting__void
.type m_Skymu_Skype6_Main_OnConversationSelecting__void, @function
m_Skymu_Skype6_Main_OnConversationSelecting__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_OnConversationSelecting_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0007:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_OnConversationSelecting_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_000c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_get_SelectedConversation__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0012:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0018
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0014:
    mov -24(%rbp), %rax
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0015:
    xor %eax, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0016:
    jmp .Lm_Skymu_Skype6_Main_OnConversationSelecting_void_001d
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0018:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_001d:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_OnConversationSelecting_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_OnConversationSelecting__void, .-m_Skymu_Skype6_Main_OnConversationSelecting__void

.globl m_Skymu_Skype6_Main_ShowOwnName__ref
.type m_Skymu_Skype6_Main_ShowOwnName__ref, @function
m_Skymu_Skype6_Main_ShowOwnName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowOwnName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowOwnName_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_ShowOwnName_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowOwnName_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_ShowOwnName_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype6_Main_ShowOwnName_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_ShowOwnName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_ShowOwnName__ref, .-m_Skymu_Skype6_Main_ShowOwnName__ref

.globl m_Skymu_Skype6_Main_GenerateHome__void
.type m_Skymu_Skype6_Main_GenerateHome__void, @function
m_Skymu_Skype6_Main_GenerateHome__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_GenerateHome_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_GenerateHome_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Skype6_Main_GenerateHome_d_22__gen
.Lm_Skymu_Skype6_Main_GenerateHome_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype6_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_GenerateHome_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_GenerateHome_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_GenerateHome__void, .-m_Skymu_Skype6_Main_GenerateHome__void

.globl m_Skymu_Skype6_Main_OnUserCountUpdated__ref
.type m_Skymu_Skype6_Main_OnUserCountUpdated__ref, @function
m_Skymu_Skype6_Main_OnUserCountUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnUserCountUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnUserCountUpdated_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_OnUserCountUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnUserCountUpdated_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_OnUserCountUpdated_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype6_Main_OnUserCountUpdated_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_OnUserCountUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_OnUserCountUpdated__ref, .-m_Skymu_Skype6_Main_OnUserCountUpdated__ref

.globl m_Skymu_Skype6_Main_OnServersUnsupported__void
.type m_Skymu_Skype6_Main_OnServersUnsupported__void, @function
m_Skymu_Skype6_Main_OnServersUnsupported__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_OnServersUnsupported_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_ColumnDefinitions__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_000b:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_000c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ColumnDefinitionCollection_get_Item__i4
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_0011:
    movsd .LD_1_m_Skymu_Skype6_Main_OnServersUnsupported_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_001a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ColumnDefinition_set_MinWidth__f8
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_001f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_OnServersUnsupported_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_OnServersUnsupported__void, .-m_Skymu_Skype6_Main_OnServersUnsupported__void

.globl m_Skymu_Skype6_Main_InitializeMenuBar__void
.type m_Skymu_Skype6_Main_InitializeMenuBar__void, @function
m_Skymu_Skype6_Main_InitializeMenuBar__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_InitializeMenuBar_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_InitializeMenuBar_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_BuildMenuBarController__void
.Lm_Skymu_Skype6_Main_InitializeMenuBar_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_InitializeMenuBar_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_InitializeMenuBar__void, .-m_Skymu_Skype6_Main_InitializeMenuBar__void

.globl m_Skymu_Skype6_Main_ShowLogin__b
.type m_Skymu_Skype6_Main_ShowLogin__b, @function
m_Skymu_Skype6_Main_ShowLogin__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype6_Main_ShowLogin_b_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowLogin_b_0001:
    lea .LN_0_m_Skymu_Skype6_Main_ShowLogin_b(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype6_Login_ctor__b
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype6_Main_ShowLogin_b_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Skype6_Main_ShowLogin_b_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_ShowLogin_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_ShowLogin__b, .-m_Skymu_Skype6_Main_ShowLogin__b

.globl m_Skymu_Skype6_Main_ctor__void
.type m_Skymu_Skype6_Main_ctor__void, @function
m_Skymu_Skype6_Main_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0001:
    lea .LS_0_m_Skymu_Skype6_Main_ctor_void(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0006:
    mov -32(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_ctor_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0011:
    lea .LS_2_m_Skymu_Skype6_Main_ctor_void(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0016:
    mov -32(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_001b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_ctor_void_0020:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0021:
    lea .LS_4_m_Skymu_Skype6_Main_ctor_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0026:
    mov -32(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_002b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype6_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_ctor_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0031:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_ctor__void
.Lm_Skymu_Skype6_Main_ctor_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0037:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype6_Main_InitializeComponent__void
.Lm_Skymu_Skype6_Main_ctor_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_003d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_InitializeMainWindow__void
.Lm_Skymu_Skype6_Main_ctor_void_0042:
    lea .LN_6_m_Skymu_Skype6_Main_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0047:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_ctor_void_005f
.Lm_Skymu_Skype6_Main_ctor_void_0049:
    lea .LN_7_m_Skymu_Skype6_Main_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_004f:
    lea m_Skymu_Skype6_Main_ctor_b_27_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_0055:
    lea .LN_8_m_Skymu_Skype6_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_CallBottle_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_void_005a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_add_IncomingCallTube__gen
.Lm_Skymu_Skype6_Main_ctor_void_005f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_ctor__void, .-m_Skymu_Skype6_Main_ctor__void

.globl m_Skymu_Skype6_Main_InitializeComponent__void
.type m_Skymu_Skype6_Main_InitializeComponent__void, @function
m_Skymu_Skype6_Main_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype6_Main_InitializeComponent_void_0009
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Skype6_Main_InitializeComponent_void(%rip), %rdi
    mov $40, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Skype6_Main_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Skype6_Main_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_InitializeComponent__void, .-m_Skymu_Skype6_Main_InitializeComponent__void

.globl m_Skymu_Skype6_Main_CreateDelegate__ref_ref
.type m_Skymu_Skype6_Main_CreateDelegate__ref_ref, @function
m_Skymu_Skype6_Main_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_CreateDelegate__ref_ref, .-m_Skymu_Skype6_Main_CreateDelegate__ref_ref

.globl m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0119
    cmp $1, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013d
    cmp $2, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014a
    cmp $3, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0157
    cmp $4, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0164
    cmp $5, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0171
    cmp $6, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017e
    cmp $7, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018b
    cmp $8, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01af
    cmp $9, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c7
    cmp $10, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01df
    cmp $11, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f7
    cmp $12, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020f
    cmp $13, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0227
    cmp $14, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023f
    cmp $15, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024c
    cmp $16, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0259
    cmp $17, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0266
    cmp $18, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0273
    cmp $19, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02af
    cmp $20, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bc
    cmp $21, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c9
    cmp $22, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d6
    cmp $23, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e3
    cmp $24, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f0
    cmp $25, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fd
    cmp $26, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030a
    cmp $27, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0317
    cmp $28, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033b
    cmp $29, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f8
    cmp $30, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0348
    cmp $31, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0355
    cmp $32, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0362
    cmp $33, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036f
    cmp $34, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037c
    cmp $35, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0389
    cmp $36, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0396
    cmp $37, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a3
    cmp $38, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03de
    cmp $39, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03eb
    cmp $40, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f8
    cmp $41, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0405
    cmp $42, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0412
    cmp $43, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041f
    cmp $44, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042c
    cmp $45, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0439
    cmp $46, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0446
    cmp $47, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0453
    cmp $48, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0460
    cmp $49, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_049b
    cmp $50, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a8
    cmp $51, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b5
    cmp $52, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c2
    cmp $53, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cf
    cmp $54, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04dc
    cmp $55, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e9
    cmp $56, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f6
    cmp $57, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0503
    cmp $58, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0527
    cmp $59, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0534
    cmp $60, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0541
    cmp $61, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_054e
    cmp $62, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055b
    cmp $63, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0568
    cmp $64, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0575
    cmp $65, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0582
    cmp $66, %eax
    je .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05eb
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0114:
    jmp .Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f8
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0119:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011b:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0120:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0125:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0126:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012c:
    lea m_Skymu_Theming_MainWindowBase_WindowArea_MouseDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0132:
    lea .LN_2_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0137:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseDown__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013f:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0144:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0149:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014c:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0151:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0156:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0157:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0158:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0159:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0163:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0164:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0165:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0166:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0170:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0171:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0172:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0173:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0178:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0180:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0185:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018d:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0192:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0197:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0198:
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019e:
    lea m_Skymu_Theming_MainWindowBase_StatusArea_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a4:
    lea .LN_11_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a9:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ae:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01af:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b0:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b6:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01bc:
    lea .LN_12_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c7:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c8:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cd:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ce:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d4:
    lea .LN_13_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d9:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01de:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01df:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e0:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e6:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ec:
    lea .LN_14_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f7:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f8:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fd:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fe:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0204:
    lea .LN_15_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0209:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020f:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0210:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0215:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0216:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021c:
    lea .LN_16_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0221:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0226:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0227:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0228:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022e:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0234:
    lea .LN_17_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0239:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0240:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0241:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0246:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024e:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0253:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0258:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0259:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025b:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0260:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0265:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0266:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0267:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0268:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_21_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0272:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0273:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0274:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0275:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_22_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0280:
    mov -48(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0285:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0286:
    lea m_Skymu_Theming_MainWindowBase_SearchBox_Focused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_028c:
    lea .LN_24_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0291:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_GotKeyboardFocus__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0296:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0297:
    mov -48(%rbp), %rdi
    lea .LN_25_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_029c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_029d:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_029e:
    # unsupported in forced mode: ldvirtftn instance void Skymu.Theming.MainWindowBase::SearchBox_Unfocused(object, class [PresentationCore]System.Windows.Input.KeyboardFocusChangedEventArgs)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a4:
    lea .LN_26_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a9:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_LostKeyboardFocus__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ae:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02af:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b1:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_27_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bd:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02be:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_28_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ca:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02cb:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_29_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d8:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02dd:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_30_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e5:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ea:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_31_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ef:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f2:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_32_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fe:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ff:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0304:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_33_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0309:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030c:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0311:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_34_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0316:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0317:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0318:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0319:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_031e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_35_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0323:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0324:
    mov -48(%rbp), %rdi
    lea .LN_36_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0329:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032a:
    lea m_Skymu_Theming_MainWindowBase_ConversationList_ItemClicked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0330:
    lea .LN_37_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0335:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_PreviewMouseLeftButtonUp__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033d:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0342:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_38_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0347:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0348:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0349:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_034a:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_034f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_39_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0354:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0355:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0356:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0357:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_035c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_40_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0361:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0362:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0363:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0364:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0369:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_41_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0370:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0371:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0376:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_42_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037e:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0383:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_43_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0388:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0389:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_038a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_038b:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0390:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_44_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0395:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0396:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0397:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0398:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_039d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_45_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a5:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03aa:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_46_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03af:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b0:
    mov -48(%rbp), %rdi
    lea .LN_47_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b6:
    lea m_Skymu_Theming_MainWindowBase_SkypeSplitter_Press__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03bc:
    lea .LN_48_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c6:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c7:
    mov -48(%rbp), %rdi
    lea .LN_49_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03cc:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03cd:
    lea m_Skymu_Theming_MainWindowBase_SkypeSplitter_MouseMove__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d3:
    lea .LN_50_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d8:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseMove__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03dd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03de:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03df:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e0:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_51_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ea:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03eb:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ec:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ed:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_52_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03fa:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ff:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_53_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0404:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0405:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0406:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0407:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_040c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_54_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0411:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0412:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0413:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0414:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0419:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_55_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0420:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0421:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0426:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_56_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042e:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0433:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_57_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0438:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0439:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_043a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_043b:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0440:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_58_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0445:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0446:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0447:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0448:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_59_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0452:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0453:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0454:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0455:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_045a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_60_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_045f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0460:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0461:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0462:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0467:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_61_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_046c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_046d:
    mov -48(%rbp), %rdi
    lea .LN_62_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0472:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0473:
    lea m_Skymu_Theming_MainWindowBase_ChatTopBarSplitter_Press__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0479:
    lea .LN_63_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0483:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0484:
    mov -48(%rbp), %rdi
    lea .LN_64_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0489:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048a:
    lea m_Skymu_Theming_MainWindowBase_ChatTopBarSplitter_MouseMove__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0490:
    lea .LN_65_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0495:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseMove__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_049a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_049b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_049c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_049d:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_66_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04aa:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04af:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_67_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b7:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04bc:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_68_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c4:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_69_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ce:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cf:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d1:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_70_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04db:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04dc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04dd:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04de:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_71_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ea:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04eb:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_72_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f8:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04fd:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_73_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0502:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0503:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0504:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0505:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_050a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_74_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_050f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0510:
    mov -48(%rbp), %rdi
    lea .LN_75_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0515:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0516:
    lea m_Skymu_Theming_MainWindowBase_ConversationItemsList_Loaded__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_051c:
    lea .LN_76_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0521:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_Loaded__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0526:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0527:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0528:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0529:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_052e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_77_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0533:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0534:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0535:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0536:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_053b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_78_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0540:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0541:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0542:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0543:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0548:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_79_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_054d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_054e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_054f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0550:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0555:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_80_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055d:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0562:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_81_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0567:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0568:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0569:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_056a:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_056f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_82_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0574:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0575:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0576:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0577:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_057c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_83_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0581:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0582:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0583:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0584:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0589:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_84_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_058e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_058f:
    mov -48(%rbp), %rdi
    lea .LN_85_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0594:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0595:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_Focused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_059b:
    lea .LN_86_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a0:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_GotKeyboardFocus__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a5:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a6:
    mov -48(%rbp), %rdi
    lea .LN_87_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ab:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ac:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_Unfocused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b2:
    lea .LN_88_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b7:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_LostKeyboardFocus__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05bc:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05bd:
    mov -48(%rbp), %rdi
    lea .LN_89_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c2:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c3:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_PreviewKeyDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c9:
    lea .LN_90_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ce:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_PreviewKeyDown__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05d3:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05d4:
    mov -48(%rbp), %rdi
    lea .LN_91_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05d9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05da:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_TextChanged__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e0:
    lea .LN_92_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_TextChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e5:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_TextBoxBase_add_TextChanged__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ea:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05eb:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ec:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ed:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_93_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f9:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05fa:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_94_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ff:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref
.type m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref, @function
m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0001:
    mov $30, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0003:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0039
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0005:
    lea .LN_0_m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_EventSetter_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000a:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000c:
    lea .LN_1_m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0011:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_EventSetter_set_Event__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0016:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0018:
    lea m_Skymu_Theming_MainWindowBase_ServerListItem_Clicked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_001e:
    lea .LN_2_m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0023:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_EventSetter_set_Handler__ref
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0028:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0029:
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_002e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Style_get_Setters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0033:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0034:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_SetterBase_Add__gen
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref, .-m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref

.globl m_Skymu_Skype6_Main_ctor_b_27_0__ref_ref
.type m_Skymu_Skype6_Main_ctor_b_27_0__ref_ref, @function
m_Skymu_Skype6_Main_ctor_b_27_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_0000:
    lea .LN_0_m_Skymu_Skype6_Main_ctor_b_27_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype6_Main_ctor_b_27_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_000d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype6_Main_ctor_b_27_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_0014:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_0019:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_001f:
    lea m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_0025:
    lea .LN_3_m_Skymu_Skype6_Main_ctor_b_27_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_002a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke__ref
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_002f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype6_Main_ctor_b_27_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype6_Main_ctor_b_27_0__ref_ref, .-m_Skymu_Skype6_Main_ctor_b_27_0__ref_ref

    .globl m_Skymu_Skype6_Main_OnSidebarResized__void
    .type m_Skymu_Skype6_Main_OnSidebarResized__void, @function
m_Skymu_Skype6_Main_OnSidebarResized__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Skype6_Main_OnSidebarResized_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Skype6_Main_OnSidebarResized__void, .-m_Skymu_Skype6_Main_OnSidebarResized__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "Skymu.Skype6.Main/'<>c__DisplayClass27_1'"

.LN_1_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "CS$<>8__locals1"

.LN_2_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "e"

.LN_3_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "Skymu.Forms.IncomingCall"

.LN_4_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "ic"

.LN_5_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "handler"

.LN_6_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "System.EventHandler"

.LN_7_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "handler"

.LN_8_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "ic"

.LN_9_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "Answered"

.LN_10_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "handler"

.LN_11_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "Answered"

.LN_12_m_Skymu_Skype6_Main_c_DisplayClass27_0_ctor_b_1_void:
    .asciz "ic"

.LN_0_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref:
    .asciz "ic"

.LN_1_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref:
    .asciz "Answered"

.LN_2_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref:
    .asciz "handler"

.LN_3_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref:
    .asciz "Answered"

.LN_4_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_5_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref:
    .asciz "<>4__this"

.LN_6_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_7_m_Skymu_Skype6_Main_c_DisplayClass27_1_ctor_b_2_ref_ref:
    .asciz "e"

.LN_0_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "_currentTab"

.LN_3_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "current_window"

.LN_10_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "HomeButton"

.LN_11_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "ConversationList"

.LN_12_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "SelectedContact"

.LN_13_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "ConversationList"

.LN_14_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>1__state"

.LN_15_m_Skymu_Skype6_Main_AddContact_Close_d_15_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype6_Main_AddContact_Close_d_15_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "vmodel"

.LN_3_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "UseSkypeHome"

.LN_4_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "browser"

.LN_5_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "CurrentUser"

.LN_6_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "vmodel"

.LN_7_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "ContactList"

.LN_8_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>t__builder"

.LN_11_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "browser"

.LN_15_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_16_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_17_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "Skymu.Forms.HomeUnavailable"

.LN_18_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "browser"

.LN_19_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_20_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_21_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "Skymu.Forms.HomeUnavailable"

.LN_22_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>1__state"

.LN_23_m_Skymu_Skype6_Main_GenerateHome_d_22_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype6_Main_GenerateHome_d_22_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype6_Main_ShowHomeView_void:
    .asciz "Topbar"

.LS_1_m_Skymu_Skype6_Main_ShowHomeView_void:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 83, 75, 89, 80, 69, 72, 79, 77, 69

.LN_2_m_Skymu_Skype6_Main_ShowHomeView_void:
    .asciz "ChatProfileArea"

.LN_3_m_Skymu_Skype6_Main_ShowHomeView_void:
    .asciz "MessageWindow"

.LN_4_m_Skymu_Skype6_Main_ShowHomeView_void:
    .asciz "vmodel"

.LN_5_m_Skymu_Skype6_Main_ShowHomeView_void:
    .asciz "UseSkypeHome"

.LN_6_m_Skymu_Skype6_Main_ShowHomeView_void:
    .asciz "browser"

.LN_7_m_Skymu_Skype6_Main_ShowHomeView_void:
    .asciz "HomeUnavailableFrame"

.LN_0_m_Skymu_Skype6_Main_ShowChatView_void:
    .asciz "ChatProfileArea"

.LN_1_m_Skymu_Skype6_Main_ShowChatView_void:
    .asciz "MessageWindow"

.LN_2_m_Skymu_Skype6_Main_ShowChatView_void:
    .asciz "browser"

.LN_3_m_Skymu_Skype6_Main_ShowChatView_void:
    .asciz "HomeUnavailableFrame"

.LN_0_m_Skymu_Skype6_Main_ToggleStatusBoxSelection_b:
    .asciz "HomeButton"

.LN_0_m_Skymu_Skype6_Main_OnTabSelecting_ref:
    .asciz "SearchBox"

.LS_1_m_Skymu_Skype6_Main_OnTabSelecting_ref:
    .short 115, 67, 79, 78, 84, 65, 67, 84, 95, 81, 70, 95, 72, 73, 78, 84

.LN_2_m_Skymu_Skype6_Main_OnTabSelecting_ref:
    .asciz "_currentTab"

.LN_3_m_Skymu_Skype6_Main_OnTabSelecting_ref:
    .asciz "AddContactGrid"

.LN_4_m_Skymu_Skype6_Main_OnTabSelecting_ref:
    .asciz "SidebarTabs"

.LN_0_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref:
    .asciz "AddContactButton"

.LN_1_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref:
    .asciz "SearchBox"

.LS_2_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref:
    .short 115, 65, 68, 68, 95, 67, 79, 78, 84, 65, 67, 84, 95, 80, 65, 78, 69, 76, 95, 83, 69, 65, 82, 67, 72, 95, 72, 73, 78, 84

.LN_3_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref:
    .asciz "SearchBox"

.LS_4_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref:
    .short 115, 67, 79, 78, 84, 65, 67, 84, 95, 81, 70, 95, 72, 73, 78, 84

.LN_5_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref:
    .asciz "HomeButton"

.LN_6_m_Skymu_Skype6_Main_SelectSidebarTopRowButton_ref:
    .asciz "AddContactButton"

.LN_0_m_Skymu_Skype6_Main_HomeButton_Click_ref_ref:
    .asciz "_currentTab"

.LN_1_m_Skymu_Skype6_Main_HomeButton_Click_ref_ref:
    .asciz "HomeButton"

.LN_0_m_Skymu_Skype6_Main_AddContact_Close_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype6_Main_AddContact_Close_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype6_Main_AddContact_Close_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype6_Main_AddContact_Close_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "Plugin"

.LN_1_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "AddContactButton"

.LS_2_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .short 67, 65, 76, 76, 95, 69, 82, 82, 79, 82, 49

.LS_3_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .short 84, 104, 105, 115, 32, 112, 108, 117, 103, 105, 110, 32, 100, 111, 101, 115, 32, 110, 111, 116, 32, 115, 117, 112, 112, 111, 114, 116, 32, 97, 100, 100, 105, 110, 103, 32, 99, 111, 110, 116, 97, 99, 116, 115, 46

.LS_4_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .short 67, 97, 110, 39, 116, 32, 121, 111, 117, 32, 106, 117, 115, 116, 32, 117, 115, 101, 32, 121, 111, 117, 114, 32, 115, 109, 97, 114, 116, 112, 104, 111, 110, 101, 63

.LN_5_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "btnContacts"

.LN_6_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "btnRecents"

.LN_7_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "btnServers"

.LN_8_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "SidebarTabs"

.LN_9_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "ConversationList"

.LN_10_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "ServersList"

.LN_11_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "AddContactGrid"

.LN_12_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "AddContactButton"

.LN_13_m_Skymu_Skype6_Main_AddContact_Click_ref_ref:
    .asciz "SearchBox"

.LN_0_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref:
    .asciz "PseudoSearchBox"

.LN_1_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref:
    .asciz "SearchBox"

.LN_2_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref:
    .asciz "AddContactGrid"

.LS_3_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref:
    .short 115, 67, 79, 78, 84, 65, 67, 84, 95, 81, 70, 95, 72, 73, 78, 84

.LS_4_m_Skymu_Skype6_Main_SearchBox_Unfocused_ref_ref:
    .short 115, 65, 68, 68, 95, 67, 79, 78, 84, 65, 67, 84, 95, 80, 65, 78, 69, 76, 95, 83, 69, 65, 82, 67, 72, 95, 72, 73, 78, 84

.LS_0_m_Skymu_Skype6_Main_CallPhones_Click_ref_ref:
    .short 67, 65, 76, 76, 95, 69, 82, 82, 79, 82, 49

.LS_1_m_Skymu_Skype6_Main_CallPhones_Click_ref_ref:
    .short 72, 97, 104, 97, 104, 97, 104, 97, 104, 97, 46, 46, 46, 32, 110, 105, 99, 101, 32, 116, 114, 121, 46, 32, 71, 101, 116, 32, 97, 32, 100, 97, 109, 110, 32, 86, 111, 110, 97, 103, 101, 46

.LS_2_m_Skymu_Skype6_Main_CallPhones_Click_ref_ref:
    .short 67, 97, 110, 39, 116, 32, 121, 111, 117, 32, 106, 117, 115, 116, 32, 117, 115, 101, 32, 121, 111, 117, 114, 32, 115, 109, 97, 114, 116, 112, 104, 111, 110, 101, 63

.LN_0_m_Skymu_Skype6_Main_OnConversationSelecting_void:
    .asciz "Topbar"

.LN_1_m_Skymu_Skype6_Main_OnConversationSelecting_void:
    .asciz "vmodel"

.LN_0_m_Skymu_Skype6_Main_ShowOwnName_ref:
    .asciz "StatusBox"

.LN_0_m_Skymu_Skype6_Main_GenerateHome_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype6_Main_GenerateHome_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype6_Main_GenerateHome_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype6_Main_GenerateHome_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_Skype6_Main_GenerateHome_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype6_Main_OnUserCountUpdated_ref:
    .asciz "GlobalUserCount"

.LN_0_m_Skymu_Skype6_Main_OnServersUnsupported_void:
    .asciz "SidebarTabs"

.LD_1_m_Skymu_Skype6_Main_OnServersUnsupported_void:
    .double 93

.LN_0_m_Skymu_Skype6_Main_ShowLogin_b:
    .asciz "Skymu.Skype6.Login"

.LS_0_m_Skymu_Skype6_Main_ctor_void:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 77, 97, 105, 110, 47, 99, 111, 110, 116, 97, 99, 116, 115, 46, 112, 110, 103

.LN_1_m_Skymu_Skype6_Main_ctor_void:
    .asciz "contactsBtnImage"

.LS_2_m_Skymu_Skype6_Main_ctor_void:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 77, 97, 105, 110, 47, 114, 101, 99, 101, 110, 116, 115, 46, 112, 110, 103

.LN_3_m_Skymu_Skype6_Main_ctor_void:
    .asciz "recentsBtnImage"

.LS_4_m_Skymu_Skype6_Main_ctor_void:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 77, 97, 105, 110, 47, 101, 109, 112, 116, 121, 46, 112, 110, 103

.LN_5_m_Skymu_Skype6_Main_ctor_void:
    .asciz "sidebarBtnEmpty"

.LN_6_m_Skymu_Skype6_Main_ctor_void:
    .asciz "CallPlugin"

.LN_7_m_Skymu_Skype6_Main_ctor_void:
    .asciz "CallPlugin"

.LN_8_m_Skymu_Skype6_Main_ctor_void:
    .asciz "Yggdrasil.Bottles.CallBottle>"

.LN_0_m_Skymu_Skype6_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Skype6_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Skype6_Main_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 116, 104, 101, 109, 101, 115, 47, 115, 107, 121, 112, 101, 54, 47, 109, 97, 105, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Skype6_Main_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WindowArea"

.LN_1_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WindowArea"

.LN_2_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_3_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FillWindowHost"

.LN_4_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContentArea"

.LN_5_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarColumn"

.LN_6_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitterColumn"

.LN_7_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Sidebar"

.LN_8_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusBox"

.LN_9_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusArea"

.LN_10_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusArea"

.LN_11_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_12_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_13_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_14_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_15_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_16_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_17_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_18_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusIcon"

.LN_19_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HomeButton"

.LN_20_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "AddContactButton"

.LN_21_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PseudoSearchBox"

.LN_22_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_23_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_24_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_25_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_26_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_27_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarTabs"

.LN_28_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContactsColumn"

.LN_29_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ServersColumn"

.LN_30_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "RecentsColumn"

.LN_31_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnContacts"

.LN_32_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnServers"

.LN_33_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnRecents"

.LN_34_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContactsArea"

.LN_35_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationList"

.LN_36_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationList"

.LN_37_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_38_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ServersList"

.LN_39_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "AddContactGrid"

.LN_40_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "AddContactInfoPanel"

.LN_41_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "AddContactHint"

.LN_42_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "AddUserList"

.LN_43_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnAddContactClose"

.LN_44_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GlobalUserCount"

.LN_45_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SelectedItemHolder"

.LN_46_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_47_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_48_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_49_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_50_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_51_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatArea"

.LN_52_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarRow"

.LN_53_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TopbarWindowRow"

.LN_54_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopbarSplitterRow"

.LN_55_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageWindowRow"

.LN_56_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Topbar"

.LN_57_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "browser"

.LN_58_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HomeUnavailableFrame"

.LN_59_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FillMessagePanelHost"

.LN_60_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatProfileArea"

.LN_61_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_62_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_63_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_64_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_65_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_66_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageWindow"

.LN_67_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatButtonRow"

.LN_68_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "VideoCallButton"

.LN_69_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CallButton"

.LN_70_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CallDropdown"

.LN_71_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WifiButton"

.LN_72_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Spinner"

.LN_73_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SpinnerRotate"

.LN_74_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationItemsList"

.LN_75_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationItemsList"

.LN_76_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_77_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicator"

.LN_78_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicatorIcon"

.LN_79_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicatorText"

.LN_80_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageBoxPanel"

.LN_81_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiButton"

.LN_82_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiFlyout"

.LN_83_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiWrapPanel"

.LN_84_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_85_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_86_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_87_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_88_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_89_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_90_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_91_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_92_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.TextChangedEventHandler"

.LN_93_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SendMsgButton"

.LN_94_m_Skymu_Skype6_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "System.Windows.EventSetter"

.LN_1_m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "PreviewMouseLeftButtonUpEvent"

.LN_2_m_Skymu_Skype6_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_0_m_Skymu_Skype6_Main_ctor_b_27_0_ref_ref:
    .asciz "Skymu.Skype6.Main/'<>c__DisplayClass27_0'"

.LN_1_m_Skymu_Skype6_Main_ctor_b_27_0_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype6_Main_ctor_b_27_0_ref_ref:
    .asciz "e"

.LN_3_m_Skymu_Skype6_Main_ctor_b_27_0_ref_ref:
    .asciz "System.Action"

.LSTUB_m_Skymu_Skype6_Main_OnSidebarResized_void:
    .asciz "Skymu.Skype6.Main::OnSidebarResized  [floating-point 'bgt']"

    .section .note.GNU-stack,"",@progbits
