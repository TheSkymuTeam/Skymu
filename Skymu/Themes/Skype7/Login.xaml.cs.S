# Themes/Skype7/Login.xaml.cs
    .text

.globl m_Skymu_Skype7_Login_c_cctor__void
.type m_Skymu_Skype7_Login_c_cctor__void, @function
m_Skymu_Skype7_Login_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Skype7_Login_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Skype7_Login_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype7_Login_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Skype7_Login_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Skype7_Login_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Skype7_Login_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_c_cctor__void, .-m_Skymu_Skype7_Login_c_cctor__void

.globl m_Skymu_Skype7_Login_c_ctor__void
.type m_Skymu_Skype7_Login_c_ctor__void, @function
m_Skymu_Skype7_Login_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Login_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_Login_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_c_ctor__void, .-m_Skymu_Skype7_Login_c_ctor__void

.globl m_Skymu_Skype7_Login_c_ctor_b_4_0__void
.type m_Skymu_Skype7_Login_c_ctor_b_4_0__void, @function
m_Skymu_Skype7_Login_c_ctor_b_4_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Login_c_ctor_b_4_0_void_0000:
    lea .LN_0_m_Skymu_Skype7_Login_c_ctor_b_4_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype7_Main_ctor__void
    mov %r12, -24(%rbp)
.Lm_Skymu_Skype7_Login_c_ctor_b_4_0_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_c_ctor_b_4_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_c_ctor_b_4_0__void, .-m_Skymu_Skype7_Login_c_ctor_b_4_0__void

.globl m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext__void
.type m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext__void, @function
m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0074
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0017:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_get_SelectedIndex__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_001c:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_001d:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0024
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_001f:
    jmp .Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00b0
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0024:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0025:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_002a:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_002b:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0030:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0035:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0036:
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_003b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_PasswordBox_get_Password__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0040:
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
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0045:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_004a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_004b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_004d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0052:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0090
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0055:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0056:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0057:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0058:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_005d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_005e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_005f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0065:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_006a:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_006d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Login_LoginButton_Click_d_5__gen_gen
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0072:
    jmp .Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00c3
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0074:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0075:
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_007a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_007b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_007c:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0081:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0087:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0088:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0089:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_008a:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_008b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0090:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0092:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_0097:
    jmp .Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00b0
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00b0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00b1:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00b3:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00b8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00b9:
    mov -56(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00be:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_00c3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext__void, .-m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext__void

.globl m_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine__ref
.type m_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine__ref, @function
m_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine__ref, .-m_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine__ref

.globl m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext__void
.type m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext__void, @function
m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0001:
    mov -88(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0006:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0008:
    mov -88(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_000d:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_000f:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_012f
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0014:
    call m_Skymu_Preferences_Settings_get_StartMinimized__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0019:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0022
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_001c:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_001d:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_WindowState__v
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0022:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0023:
    mov -88(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0028:
    lea .LS_3_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_002d:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_set_DisplayMemberPath__ref
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0032:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0033:
    mov -88(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0038:
    lea .LS_5_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_003d:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedValuePath__ref
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0042:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0043:
    mov -88(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0048:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_LoadPlugins__void
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_004d:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_004e:
    mov -88(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0053:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0058:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_GetEnumerator__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_005d:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_005e:
    jmp .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0079
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0060:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0061:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_Current__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0066:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0067:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0068:
    mov -88(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_006d:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemsControl_get_Items__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0072:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0073:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ItemCollection_Add__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0078:
    mov -88(%rbp), %rax
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0079:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_007a:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_007f:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0060
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0081:
    jmp .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0091
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0091:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0092:
    mov -88(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0097:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_009c:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00d7
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_009e:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_009f:
    mov -88(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00a4:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00a9:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00ab:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00ac:
    mov -88(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00b1:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00b6:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00b8:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00b9:
    mov -88(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00be:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00c0:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedItem__ref
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00c5:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00c6:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00c7:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00c8:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_ProtocolSelectionChanged__ref_ref
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00cd:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00ce:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00d0:
    mov -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00d2:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_SetProtocolSelection__ref_ref
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00d7:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00d8:
    mov -88(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00dd:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00e2:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0155
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00e4:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00e5:
    mov -88(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00ea:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0155
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00ec:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00ed:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00ee:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_LoginToggleAnimation__b
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00f3:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00f4:
    mov -88(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00f9:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_TryAutoLogin__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_00fe:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0103:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0105:
    lea -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0107:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_010c:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_014c
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_010e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_010f:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0110:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0111:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0112:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0117:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0118:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_011a:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_011f:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0120:
    mov -88(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0125:
    lea -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0127:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0128:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Skype7_Login_Login_Loaded_d_10__gen_gen
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_012d:
    jmp .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0189
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_012f:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0130:
    mov -88(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0135:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0137:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0138:
    mov -88(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_013d:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0143:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0144:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0145:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0146:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0147:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_21_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_014c:
    lea -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_014e:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0153:
    jmp .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_015b
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0155:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0156:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_SelectDefaultProtocol__void
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_015b:
    jmp .Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0176
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0176:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0177:
    mov $-2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0179:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_22_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_017e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_017f:
    mov -88(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0184:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_0189:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext__void, .-m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext__void

.globl m_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine__ref
.type m_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine__ref, @function
m_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine__ref, .-m_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine__ref

.globl m_Skymu_Skype7_Login_ctor__ref
.type m_Skymu_Skype7_Login_ctor__ref, @function
m_Skymu_Skype7_Login_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_ctor__void
.Lm_Skymu_Skype7_Login_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_ctor_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_000e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_InitializeComponent__void
.Lm_Skymu_Skype7_Login_ctor_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0014:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0019:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_001a:
    lea m_Skymu_Skype7_Login_BoxKeyUp__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0020:
    lea .LN_2_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_KeyUp__ref
.Lm_Skymu_Skype7_Login_ctor_ref_002a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_002b:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0030:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0031:
    lea m_Skymu_Skype7_Login_BoxKeyUp__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0037:
    lea .LN_4_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_003c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_KeyUp__ref
.Lm_Skymu_Skype7_Login_ctor_ref_0041:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0042:
    lea .LN_5_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0047:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0048:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_ctor_ref_0061
.Lm_Skymu_Skype7_Login_ctor_ref_004a:
    mov -32(%rbp), %rax
.Lm_Skymu_Skype7_Login_ctor_ref_004b:
    lea .LN_6_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0050:
    lea m_Skymu_Skype7_Login_c_ctor_b_4_0__void(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0056:
    lea .LN_7_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_IMainWindowHolder_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_005b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_005c:
    lea .LN_8_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_global_slot
    mov -32(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Skype7_Login_ctor_ref_0061:
    lea .LN_9_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_LoginViewModel_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0066:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Login_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_ctor_ref_006b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_006c:
    mov -32(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Login_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0071:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0072:
    lea m_Skymu_Skype7_Login_LoginToggleAnimation__b(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0078:
    lea .LN_12_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_1_bool_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_007d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested__gen
.Lm_Skymu_Skype7_Login_ctor_ref_0082:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0083:
    mov -32(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Login_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0088:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0089:
    lea m_Skymu_Skype7_Login_ctor_b_4_1__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_008f:
    lea .LN_14_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_1_string_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_0094:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested__gen
.Lm_Skymu_Skype7_Login_ctor_ref_0099:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_009a:
    mov -32(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Login_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_009f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00a0:
    lea m_Skymu_Skype7_Login_OnPluginSelectionUpdated__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00a6:
    lea .LN_16_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00ab:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated__gen
.Lm_Skymu_Skype7_Login_ctor_ref_00b0:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00b1:
    mov -32(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Login_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00b6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00b7:
    lea m_Skymu_Skype7_Login_OnMainWindowReady__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00bd:
    lea .LN_18_m_Skymu_Skype7_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_IMainWindowHolder_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00c2:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady__gen
.Lm_Skymu_Skype7_Login_ctor_ref_00c7:
    call m_Skymu_Sounds_SoundManager_Init__void
.Lm_Skymu_Skype7_Login_ctor_ref_00cc:
    mov $8, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_ref_00cd:
    mov -32(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetStatus__v
.Lm_Skymu_Skype7_Login_ctor_ref_00d2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_ctor__ref, .-m_Skymu_Skype7_Login_ctor__ref

.globl m_Skymu_Skype7_Login_LoginButton_Click__ref_ref
.type m_Skymu_Skype7_Login_LoginButton_Click__ref_ref, @function
m_Skymu_Skype7_Login_LoginButton_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_LoginButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_LoginButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_LoginButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_LoginButton_Click_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Login_LoginButton_Click_d_5__gen
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_LoginButton_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_LoginButton_Click__ref_ref, .-m_Skymu_Skype7_Login_LoginButton_Click__ref_ref

.globl m_Skymu_Skype7_Login_OnPluginSelectionUpdated__ref
.type m_Skymu_Skype7_Login_OnPluginSelectionUpdated__ref, @function
m_Skymu_Skype7_Login_OnPluginSelectionUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0006:
    call m_System_Windows_Media_Colors_get_Gray__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_000b:
    lea .LN_1_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0010:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0015:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0016:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_001b:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_001c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0021:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0022:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0027:
    call m_System_Windows_FontStyles_get_Normal__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_002c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0031:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0032:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0037:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0038:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_003d:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_003e:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0050
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0040:
    mov -48(%rbp), %rax
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0041:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0046:
    lea .LS_5_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_004b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0050:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0055:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_005a:
    lea .LS_6_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_005f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0064:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0065:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0066:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_006b:
    call m_System_Windows_Media_Colors_get_Gray__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0070:
    lea .LN_8_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0075:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_007a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_007b:
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0080:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0081:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0086:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0087:
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_008c:
    call m_System_Windows_FontStyles_get_Normal__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0091:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0096:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0097:
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_009c:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_009d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00a2:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00a3:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00b1
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00a5:
    mov -48(%rbp), %rax
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00a6:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00a7:
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00ac:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_get_Text__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00b1:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00b6:
    lea .LN_13_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00bb:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00cf
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00bd:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00be:
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00c3:
    lea .LS_15_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00c8:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00cd:
    jmp .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00f3
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00cf:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00d0:
    mov -48(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00d5:
    lea .LS_17_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00da:
    lea .LN_18_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00df:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_Name__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00e4:
    lea .LS_19_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00e9:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00ee:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00f3:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00f4:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00f9:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01c5
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00fe:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_00ff:
    mov -48(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0104:
    call m_System_Windows_Media_Colors_get_LightGray__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0109:
    lea .LN_21_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_010e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0113:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0114:
    mov -48(%rbp), %rdi
    lea .LN_22_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0119:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_011a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_011f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0120:
    mov -48(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0125:
    lea .LS_24_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_012a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_012f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0130:
    mov -48(%rbp), %rdi
    lea .LN_25_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0135:
    call m_System_Windows_FontStyles_get_Italic__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_013a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_013f:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0140:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0145:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0146:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0147:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0148:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0149:
    mov -48(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_015c
    cmp $1, %eax
    je .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01a5
    cmp $2, %eax
    je .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01ad
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_015a:
    jmp .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01b5
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_015c:
    lea .LS_26_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0161:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0162:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0163:
    mov -48(%rbp), %rdi
    lea .LN_27_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0168:
    call m_System_Windows_Media_Colors_get_LightGray__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_016d:
    lea .LN_28_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0172:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0177:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0178:
    mov -48(%rbp), %rdi
    lea .LN_29_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_017d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_017e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0183:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0184:
    mov -48(%rbp), %rdi
    lea .LN_30_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0189:
    call m_System_Windows_FontStyles_get_Italic__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_018e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0193:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0194:
    mov -48(%rbp), %rdi
    lea .LN_31_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_0199:
    lea .LS_32_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_019e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01a3:
    jmp .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01c5
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01a5:
    lea .LS_33_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01aa:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01ab:
    jmp .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01c5
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01ad:
    lea .LS_34_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01b2:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01b3:
    jmp .Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01c5
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01b5:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01ba:
    lea .LS_35_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01bf:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01c4:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01c5:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01c6:
    mov -48(%rbp), %rdi
    lea .LN_36_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01cb:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01cc:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01d1:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01d2:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_CheckEnableLoginButton__void
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_01d7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_OnPluginSelectionUpdated__ref, .-m_Skymu_Skype7_Login_OnPluginSelectionUpdated__ref

.globl m_Skymu_Skype7_Login_OnMainWindowReady__ref
.type m_Skymu_Skype7_Login_OnMainWindowReady__ref, @function
m_Skymu_Skype7_Login_OnMainWindowReady__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_OnMainWindowReady_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_RunPostLogin__ref
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_000d:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_000e:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_OnMainWindowReady_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_0014:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_0019:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_OnMainWindowReady_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_OnMainWindowReady__ref, .-m_Skymu_Skype7_Login_OnMainWindowReady__ref

.globl m_Skymu_Skype7_Login_BoxKeyUp__ref_ref
.type m_Skymu_Skype7_Login_BoxKeyUp__ref_ref, @function
m_Skymu_Skype7_Login_BoxKeyUp__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_BoxKeyUp_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_BoxKeyUp_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_CheckEnableLoginButton__void
.Lm_Skymu_Skype7_Login_BoxKeyUp_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_BoxKeyUp_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_BoxKeyUp__ref_ref, .-m_Skymu_Skype7_Login_BoxKeyUp__ref_ref

.globl m_Skymu_Skype7_Login_CheckEnableLoginButton__void
.type m_Skymu_Skype7_Login_CheckEnableLoginButton__void, @function
m_Skymu_Skype7_Login_CheckEnableLoginButton__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_000b:
    mov -24(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0010:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0031
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0013:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0018:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_PasswordBox_get_Password__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_001d:
    mov -24(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0022:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_004b
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0024:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0025:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_002a:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_002f:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_004b
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0032:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0037:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_003c:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_008d
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_003f:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0044:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0049:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_008d
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_004b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_004c:
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0051:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0056:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0080
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0059:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_005e:
    movsd .LD_7_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0067:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_006d:
    mov -24(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0072:
    movsd .LD_9_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_007b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0080:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0081:
    mov -24(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0086:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0087:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_008c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_008e:
    mov -24(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0093:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0094:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_0099:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_009a:
    mov -24(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_009f:
    movsd .LD_13_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_00a8:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_00ad:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_00ae:
    mov -24(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_00b3:
    movsd .LD_15_m_Skymu_Skype7_Login_CheckEnableLoginButton_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_00bc:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_00c1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_CheckEnableLoginButton_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_CheckEnableLoginButton__void, .-m_Skymu_Skype7_Login_CheckEnableLoginButton__void

.globl m_Skymu_Skype7_Login_Login_Loaded__ref_ref
.type m_Skymu_Skype7_Login_Login_Loaded__ref_ref, @function
m_Skymu_Skype7_Login_Login_Loaded__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_0016:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_001e:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_Login_Loaded_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_0023:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Skype7_Login_Login_Loaded_d_10__gen
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_Login_Loaded_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_Login_Loaded__ref_ref, .-m_Skymu_Skype7_Login_Login_Loaded__ref_ref

.globl m_Skymu_Skype7_Login_SelectDefaultProtocol__void
.type m_Skymu_Skype7_Login_SelectDefaultProtocol__void, @function
m_Skymu_Skype7_Login_SelectDefaultProtocol__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_SelectDefaultProtocol_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_000b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_000c:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_001c
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_000f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0010:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_SelectDefaultProtocol_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0015:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedItem__ref
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_001d:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_SelectDefaultProtocol_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0022:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0023:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedIndex__i4
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_SelectDefaultProtocol_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_SelectDefaultProtocol__void, .-m_Skymu_Skype7_Login_SelectDefaultProtocol__void

.globl m_Skymu_Skype7_Login_SetProtocolSelection__ref_ref
.type m_Skymu_Skype7_Login_SetProtocolSelection__ref_ref, @function
m_Skymu_Skype7_Login_SetProtocolSelection__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_SetProtocolSelection_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_000d:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_000e:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_OnPluginSelectionUpdated__ref
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0013:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0014:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0019:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_001a:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_001d
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_001d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_001e:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0023:
    mov $4, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0024:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0058
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0027:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_SetProtocolSelection_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_002c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_002d:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0032:
    mov -48(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0037:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0046
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0039:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_003a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_003f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0044:
    jmp .Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_004c
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0046:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0047:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_004c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_set_Text__ref
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0051:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0052:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_CheckEnableLoginButton__void
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0057:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0058:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0059:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_SetProtocolSelection_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_005e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_005f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0064:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0069:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_set_Text__ref
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_006e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_006f:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_SetProtocolSelection_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0074:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0075:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_007a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_PasswordBox_set_Password__ref
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_007f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0080:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_CheckEnableLoginButton__void
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_0085:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_SetProtocolSelection_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_SetProtocolSelection__ref_ref, .-m_Skymu_Skype7_Login_SetProtocolSelection__ref_ref

.globl m_Skymu_Skype7_Login_ProtocolSelectionChanged__ref_ref
.type m_Skymu_Skype7_Login_ProtocolSelectionChanged__ref_ref, @function
m_Skymu_Skype7_Login_ProtocolSelectionChanged__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0006:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_get_SelectedItem__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_000b:
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0010:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0012:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0017:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_001c:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_001d:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_001e:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_001f:
    jmp .Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_004e
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0021:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0022:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0023:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0024:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0025:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0026:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_Plugin__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_002b:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_ToLowerInvariant__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0030:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0031:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0036:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_ToLowerInvariant__void
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_003b:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0040:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_004a
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0042:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0043:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0044:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0045:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_Login_SetProtocolSelection__ref_ref
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_004a:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_004b:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_004c:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_004d:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_004e:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_004f:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0050:
    mov -88(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0051:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0052:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0021
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0054:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0055:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0063
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0057:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0058:
    mov -96(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_005d:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_005e:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_0063:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_ProtocolSelectionChanged__ref_ref, .-m_Skymu_Skype7_Login_ProtocolSelectionChanged__ref_ref

.globl m_Skymu_Skype7_Login_LoginToggleAnimation__b
.type m_Skymu_Skype7_Login_LoginToggleAnimation__b, @function
m_Skymu_Skype7_Login_LoginToggleAnimation__b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0028
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0003:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0004:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_LoginToggleAnimation_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0009:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_000a:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_000f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0010:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_LoginToggleAnimation_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_001b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_001c:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_LoginToggleAnimation_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0021:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0022:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0027:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0028:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0029:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_LoginToggleAnimation_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_002e:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_002f:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0034:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0035:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Login_LoginToggleAnimation_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_003a:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_003b:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0040:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0041:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Login_LoginToggleAnimation_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0046:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0047:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_004c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_004d:
    mov -32(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_Login_LoginToggleAnimation_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0052:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0057:
    lea .LS_7_m_Skymu_Skype7_Login_LoginToggleAnimation_b(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_005c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0061:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_0066:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_LoginToggleAnimation_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_LoginToggleAnimation__b, .-m_Skymu_Skype7_Login_LoginToggleAnimation__b

.globl m_Skymu_Skype7_Login_Hyperlink_RequestNavigate__ref_ref
.type m_Skymu_Skype7_Login_Hyperlink_RequestNavigate__ref_ref, @function
m_Skymu_Skype7_Login_Hyperlink_RequestNavigate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Navigation_RequestNavigateEventArgs_get_Uri__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Uri_get_AbsoluteUri__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_000b:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_000c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_0011:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_0012:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_0013:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_RoutedEventArgs_set_Handled__b
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_Hyperlink_RequestNavigate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_Hyperlink_RequestNavigate__ref_ref, .-m_Skymu_Skype7_Login_Hyperlink_RequestNavigate__ref_ref

.globl m_Skymu_Skype7_Login_FooterLink_Click__ref_ref
.type m_Skymu_Skype7_Login_FooterLink_Click__ref_ref, @function
m_Skymu_Skype7_Login_FooterLink_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_FooterLink_Click_ref_ref_0000:
    lea .LS_0_m_Skymu_Skype7_Login_FooterLink_Click_ref_ref(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_FooterLink_Click_ref_ref_0005:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_FooterLink_Click_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Skype7_Login_FooterLink_Click_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_FooterLink_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_FooterLink_Click__ref_ref, .-m_Skymu_Skype7_Login_FooterLink_Click__ref_ref

.globl m_Skymu_Skype7_Login_Login_Closing__ref_ref
.type m_Skymu_Skype7_Login_Login_Closing__ref_ref, @function
m_Skymu_Skype7_Login_Login_Closing__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_Login_Closing_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Login_Closing_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_Login_Closing_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Login_Closing_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_Login_Closing_ref_ref_0012
.Lm_Skymu_Skype7_Login_Login_Closing_ref_ref_0008:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Login_Closing_ref_ref_000d:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_Shutdown__void
.Lm_Skymu_Skype7_Login_Login_Closing_ref_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_Login_Closing_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_Login_Closing__ref_ref, .-m_Skymu_Skype7_Login_Login_Closing__ref_ref

.globl m_Skymu_Skype7_Login_OnClosed__ref
.type m_Skymu_Skype7_Login_OnClosed__ref, @function
m_Skymu_Skype7_Login_OnClosed__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Login_OnClosed_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnClosed_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_OnClosed_ref_0002:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_OnClosed__ref
.Lm_Skymu_Skype7_Login_OnClosed_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnClosed_ref_0008:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_OnClosed_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnClosed_ref_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_Login_OnClosed_ref_0019
.Lm_Skymu_Skype7_Login_OnClosed_ref_000f:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_OnClosed_ref_0014:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_Shutdown__void
.Lm_Skymu_Skype7_Login_OnClosed_ref_0019:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_OnClosed_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_OnClosed__ref, .-m_Skymu_Skype7_Login_OnClosed__ref

.globl m_Skymu_Skype7_Login_Window_MouseDown__ref_ref
.type m_Skymu_Skype7_Login_Window_MouseDown__ref_ref, @function
m_Skymu_Skype7_Login_Window_MouseDown__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_Window_MouseDown_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Window_MouseDown_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_Window_MouseDown_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Window_MouseDown_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_Focus__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_Window_MouseDown_ref_ref_000b:
    mov -40(%rbp), %rax
.Lm_Skymu_Skype7_Login_Window_MouseDown_ref_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_Window_MouseDown_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_Window_MouseDown__ref_ref, .-m_Skymu_Skype7_Login_Window_MouseDown__ref_ref

.globl m_Skymu_Skype7_Login_Grid_KeyDown__ref_ref
.type m_Skymu_Skype7_Login_Grid_KeyDown__ref_ref, @function
m_Skymu_Skype7_Login_Grid_KeyDown__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_Grid_KeyDown_ref_ref_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_Grid_KeyDown_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_Grid_KeyDown__ref_ref, .-m_Skymu_Skype7_Login_Grid_KeyDown__ref_ref

.globl m_Skymu_Skype7_Login_InitializeComponent__void
.type m_Skymu_Skype7_Login_InitializeComponent__void, @function
m_Skymu_Skype7_Login_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_Login_InitializeComponent_void_0009
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_Login_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Skype7_Login_InitializeComponent_void(%rip), %rdi
    mov $41, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Skype7_Login_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Skype7_Login_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_InitializeComponent__void, .-m_Skymu_Skype7_Login_InitializeComponent__void

.globl m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0079
    cmp $1, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a8
    cmp $2, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b5
    cmp $3, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c2
    cmp $4, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e6
    cmp $5, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010a
    cmp $6, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0117
    cmp $7, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0124
    cmp $8, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0131
    cmp $9, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013e
    cmp $10, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014b
    cmp $11, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0158
    cmp $12, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0165
    cmp $13, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0172
    cmp $14, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017f
    cmp $15, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018c
    cmp $16, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0199
    cmp $17, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a6
    cmp $18, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b3
    cmp $19, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c0
    cmp $20, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cd
    cmp $21, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01da
    cmp $22, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e7
    cmp $23, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020b
    cmp $24, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0218
    cmp $25, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0225
    cmp $26, %eax
    je .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0232
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0074:
    jmp .Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023f
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0079:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007a:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0080:
    lea m_Skymu_Skype7_Login_Login_Loaded__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0086:
    lea .LN_0_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_Loaded__ref
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0090:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0091:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0096:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0097:
    lea m_Skymu_Skype7_Login_Window_MouseDown__ref_ref(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009d:
    lea .LN_1_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a2:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseDown__ref
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00aa:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00af:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b7:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bc:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c4:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ce:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cf:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d4:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d5:
    lea m_Skymu_Skype7_Login_ProtocolSelectionChanged__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00db:
    lea .LN_6_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_SelectionChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e0:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_add_SelectionChanged__ref
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e8:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ed:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f2:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f3:
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f9:
    lea m_Skymu_Skype7_Login_Grid_KeyDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ff:
    lea .LN_9_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0104:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_KeyDown__ref
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0109:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010c:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0111:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0116:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0117:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0118:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0119:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0123:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0124:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0125:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0126:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0130:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0131:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0132:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0133:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0138:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0140:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0145:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014d:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0152:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0157:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0158:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0159:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015a:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0164:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0165:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0166:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0167:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0171:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0172:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0173:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0174:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0179:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0180:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0181:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0186:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018e:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0193:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0198:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0199:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019b:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_21_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a8:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ad:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_22_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b5:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ba:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01bf:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c2:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_24_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ce:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cf:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_25_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01da:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01db:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01dc:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_26_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e9:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ee:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_27_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f3:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f4:
    mov -48(%rbp), %rdi
    lea .LN_28_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fa:
    lea m_Skymu_Skype7_Login_LoginButton_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0200:
    lea .LN_29_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0205:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020d:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0212:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_30_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0217:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0218:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0219:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021a:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_31_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0224:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0225:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0226:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0227:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_32_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0231:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0232:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0233:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0234:
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0239:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_33_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0240:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0241:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_34_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0246:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Skype7_Login_ctor_b_4_1__ref
.type m_Skymu_Skype7_Login_ctor_b_4_1__ref, @function
m_Skymu_Skype7_Login_ctor_b_4_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_Login_ctor_b_4_1_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_b_4_1_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_Login_ctor_b_4_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_Login_ctor_b_4_1_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_Login_ctor_b_4_1_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype7_Login_ctor_b_4_1_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_Login_ctor_b_4_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_Login_ctor_b_4_1__ref, .-m_Skymu_Skype7_Login_ctor_b_4_1__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Skype7_Login_c_cctor_void:
    .asciz "Skymu.Skype7.Login/'<>c'"

.LN_1_m_Skymu_Skype7_Login_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Skype7_Login_c_ctor_b_4_0_void:
    .asciz "Skymu.Skype7.Main"

.LN_0_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "ProtocolComboBox"

.LN_3_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "_viewModel"

.LN_4_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "UsernameBox"

.LN_5_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "PasswordTokenBox"

.LN_6_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>1__state"

.LN_7_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>t__builder"

.LN_9_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>u__1"

.LN_11_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>1__state"

.LN_13_m_Skymu_Skype7_Login_LoginButton_Click_d_5_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Login_LoginButton_Click_d_5_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "ProtocolComboBox"

.LS_3_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .short 68, 105, 115, 112, 108, 97, 121, 78, 97, 109, 101

.LN_4_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "ProtocolComboBox"

.LS_5_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .short 68, 105, 115, 112, 108, 97, 121, 78, 97, 109, 101

.LN_6_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "_viewModel"

.LN_7_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "_viewModel"

.LN_8_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "ProtocolComboBox"

.LN_9_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "_viewModel"

.LN_10_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "_viewModel"

.LN_11_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "_viewModel"

.LN_12_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "ProtocolComboBox"

.LN_13_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "_viewModel"

.LN_14_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "switchuser"

.LN_15_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "_viewModel"

.LN_16_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_18_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_19_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_20_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_21_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_22_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_23_m_Skymu_Skype7_Login_Login_Loaded_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Login_Login_Loaded_d_10_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "switchuser"

.LN_1_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "UsernameBox"

.LN_2_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_3_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "PasswordTokenBox"

.LN_4_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_5_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "<>9__4_0"

.LN_6_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "<>9"

.LN_7_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "Skymu.ViewModels.IMainWindowHolder>"

.LN_8_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "<>9__4_0"

.LN_9_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "Skymu.ViewModels.LoginViewModel"

.LN_10_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "_viewModel"

.LN_11_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "_viewModel"

.LN_12_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "System.Action`1<bool>"

.LN_13_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "_viewModel"

.LN_14_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "System.Action`1<string>"

.LN_15_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "_viewModel"

.LN_16_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "Skymu.ViewModels.LoginViewModel/PluginListing>"

.LN_17_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "_viewModel"

.LN_18_m_Skymu_Skype7_Login_ctor_ref:
    .asciz "Skymu.ViewModels.IMainWindowHolder>"

.LN_0_m_Skymu_Skype7_Login_LoginButton_Click_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Login_LoginButton_Click_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Login_LoginButton_Click_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Login_LoginButton_Click_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "PasswordHint"

.LN_1_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LN_2_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "PasswordTokenBox"

.LN_3_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "PasswordHint"

.LN_4_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "PasswordHint"

.LS_5_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 115, 70, 95, 85, 83, 69, 82, 69, 78, 84, 82, 89, 95, 76, 65, 66, 69, 76, 95, 80, 65, 83, 83, 87, 79, 82, 68

.LS_6_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 83, 73, 71, 78, 73, 78

.LN_7_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameHint"

.LN_8_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LN_9_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameBox"

.LN_10_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameHint"

.LN_11_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameHint"

.LN_12_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameHint"

.LN_13_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "Plugin"

.LN_14_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "SubHeader"

.LS_15_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 0

.LN_16_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "SubHeader"

.LS_17_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 119, 105, 116, 104, 32

.LN_18_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "Plugin"

.LS_19_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 32, 97, 99, 99, 111, 117, 110, 116

.LN_20_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "PasswordHint"

.LN_21_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LN_22_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "PasswordTokenBox"

.LN_23_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "PasswordHint"

.LS_24_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 102, 105, 101, 108, 100, 32, 110, 111, 116, 32, 114, 101, 113, 117, 105, 114, 101, 100

.LN_25_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "PasswordHint"

.LS_26_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 83, 99, 97, 110, 32, 81, 82, 32, 99, 111, 100, 101

.LN_27_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameHint"

.LN_28_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LN_29_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameBox"

.LN_30_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameHint"

.LN_31_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "UsernameHint"

.LS_32_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 102, 105, 101, 108, 100, 32, 110, 111, 116, 32, 114, 101, 113, 117, 105, 114, 101, 100

.LS_33_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 83, 101, 110, 100, 32, 99, 111, 100, 101

.LS_34_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 69, 120, 116, 101, 114, 110, 97, 108, 32, 108, 111, 103, 105, 110

.LS_35_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 83, 73, 71, 78, 73, 78

.LN_36_m_Skymu_Skype7_Login_OnPluginSelectionUpdated_ref:
    .asciz "LoginButtonLabel"

.LN_0_m_Skymu_Skype7_Login_OnMainWindowReady_ref:
    .asciz "_viewModel"

.LN_1_m_Skymu_Skype7_Login_OnMainWindowReady_ref:
    .asciz "noCloseEvent"

.LN_0_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "UsernameBox"

.LN_1_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "PasswordTokenBox"

.LN_2_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "PasswordTokenBox"

.LN_3_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "PasswordTokenBox"

.LN_4_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "UsernameBox"

.LN_5_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "LoginButton"

.LN_6_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "LoginButtonLabel"

.LD_7_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .double 1

.LN_8_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "LoginButton"

.LD_9_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .double 1

.LN_10_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "LoginButton"

.LN_11_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "LoginButton"

.LN_12_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "LoginButton"

.LD_13_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .double 0.4

.LN_14_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .asciz "LoginButtonLabel"

.LD_15_m_Skymu_Skype7_Login_CheckEnableLoginButton_void:
    .double 0.4

.LN_0_m_Skymu_Skype7_Login_Login_Loaded_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype7_Login_Login_Loaded_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_Login_Login_Loaded_ref_ref:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype7_Login_Login_Loaded_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype7_Login_SelectDefaultProtocol_void:
    .asciz "_viewModel"

.LN_1_m_Skymu_Skype7_Login_SelectDefaultProtocol_void:
    .asciz "ProtocolComboBox"

.LN_2_m_Skymu_Skype7_Login_SelectDefaultProtocol_void:
    .asciz "ProtocolComboBox"

.LN_0_m_Skymu_Skype7_Login_SetProtocolSelection_ref_ref:
    .asciz "_viewModel"

.LN_1_m_Skymu_Skype7_Login_SetProtocolSelection_ref_ref:
    .asciz "UsernameBox"

.LN_2_m_Skymu_Skype7_Login_SetProtocolSelection_ref_ref:
    .asciz "UsernameBox"

.LN_3_m_Skymu_Skype7_Login_SetProtocolSelection_ref_ref:
    .asciz "PasswordTokenBox"

.LN_0_m_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref:
    .asciz "ProtocolComboBox"

.LN_1_m_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref:
    .asciz "_viewModel"

.LN_2_m_Skymu_Skype7_Login_ProtocolSelectionChanged_ref_ref:
    .asciz "_viewModel"

.LN_0_m_Skymu_Skype7_Login_LoginToggleAnimation_b:
    .asciz "SelectorStrip"

.LN_1_m_Skymu_Skype7_Login_LoginToggleAnimation_b:
    .asciz "ControlsGrid"

.LN_2_m_Skymu_Skype7_Login_LoginToggleAnimation_b:
    .asciz "Spinner"

.LN_3_m_Skymu_Skype7_Login_LoginToggleAnimation_b:
    .asciz "SelectorStrip"

.LN_4_m_Skymu_Skype7_Login_LoginToggleAnimation_b:
    .asciz "ControlsGrid"

.LN_5_m_Skymu_Skype7_Login_LoginToggleAnimation_b:
    .asciz "Spinner"

.LN_6_m_Skymu_Skype7_Login_LoginToggleAnimation_b:
    .asciz "Header"

.LS_7_m_Skymu_Skype7_Login_LoginToggleAnimation_b:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 83, 73, 71, 78, 73, 78

.LS_0_m_Skymu_Skype7_Login_FooterLink_Click_ref_ref:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 100, 105, 115, 99, 111, 114, 100, 46, 103, 103, 47, 80, 99, 102, 115, 71, 121, 122, 50

.LN_0_m_Skymu_Skype7_Login_Login_Closing_ref_ref:
    .asciz "noCloseEvent"

.LN_0_m_Skymu_Skype7_Login_OnClosed_ref:
    .asciz "noCloseEvent"

.LN_0_m_Skymu_Skype7_Login_Window_MouseDown_ref_ref:
    .asciz "MainGrid"

.LN_0_m_Skymu_Skype7_Login_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Skype7_Login_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Skype7_Login_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 116, 104, 101, 109, 101, 115, 47, 115, 107, 121, 112, 101, 55, 47, 108, 111, 103, 105, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Skype7_Login_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_1_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_2_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SelectorStrip"

.LN_3_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProtocolText"

.LN_4_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProtocolComboBox"

.LN_5_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProtocolComboBox"

.LN_6_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.SelectionChangedEventHandler"

.LN_7_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MainGrid"

.LN_8_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MainGrid"

.LN_9_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_10_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "N1"

.LN_11_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "N1Transform"

.LN_12_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Spinner"

.LN_13_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SpinnerRotate"

.LN_14_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ControlsGrid"

.LN_15_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Header"

.LN_16_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HeaderTransform"

.LN_17_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SubHeader"

.LN_18_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SubHeaderTransform"

.LN_19_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "N4"

.LN_20_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UsernameBox"

.LN_21_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UsernameHint"

.LN_22_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "N4Transform"

.LN_23_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "N5"

.LN_24_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PasswordTokenBox"

.LN_25_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PasswordHint"

.LN_26_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "N5Transform"

.LN_27_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LoginButton"

.LN_28_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LoginButton"

.LN_29_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_30_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LoginButtonLabel"

.LN_31_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LoginButtonTransform"

.LN_32_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "N7"

.LN_33_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "N7Transform"

.LN_34_m_Skymu_Skype7_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Skype7_Login_ctor_b_4_1_ref:
    .asciz "Header"

    .section .note.GNU-stack,"",@progbits
