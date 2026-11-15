# Classes/Windows/MenuBarController.cs
    .text

.globl m_Skymu_Native_Windows_MenuBarController_c_cctor__void
.type m_Skymu_Native_Windows_MenuBarController_c_cctor__void, @function
m_Skymu_Native_Windows_MenuBarController_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Native_Windows_MenuBarController_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Native_Windows_MenuBarController_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_c_cctor__void, .-m_Skymu_Native_Windows_MenuBarController_c_cctor__void

.globl m_Skymu_Native_Windows_MenuBarController_c_ctor__void
.type m_Skymu_Native_Windows_MenuBarController_c_ctor__void, @function
m_Skymu_Native_Windows_MenuBarController_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_MenuBarController_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_c_ctor__void, .-m_Skymu_Native_Windows_MenuBarController_c_ctor__void

.globl m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5_ref_ref_0000:
    call m_Skymu_Forms_Pages_AccountManager_Open__void
.Lm_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5_ref_ref_0005:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9_ref_ref_0000:
    call m_Skymu_Forms_Pages_AccountManager_Open__void
.Lm_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9_ref_ref_0005:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext__void
.type m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext__void, @function
m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0006:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0008:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0049
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_000a:
    lea .LN_1_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_000f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0010:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0015:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_SetConnectionStatus__v
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_001a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_001f:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0020:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0022:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0027:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0065
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0029:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_002a:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_002b:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_002c:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_002d:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0032:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0033:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0034:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0039:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_003a:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_003f:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0041:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0042:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_Native_Windows_MenuBarController_OnStatus_d_17__gen_gen
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0047:
    jmp .Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0099
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_004a:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_004f:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0051:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0056:
    mov -48(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_005d:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_005e:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_005f:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0060:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0065:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0067:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_006c:
    mov -48(%rbp), %rax
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_006d:
    jmp .Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0086
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0087:
    mov $-2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0089:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_008e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_008f:
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0094:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult__void
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_0099:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext__void, .-m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext__void

.globl m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine__ref
.type m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine__ref, @function
m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine__ref, .-m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine__ref

.globl m_Skymu_Native_Windows_MenuBarController_ctor__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_ctor__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_ctor__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0008:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Native_Windows_NativeMenuBar_ctor__ref
    mov %r12, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_000d:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0014:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0019:
    lea .LN_3_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_ctor__ref
    mov %r12, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_001e:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0023:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0025:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_002a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_002b:
    mov -40(%rbp), %rdi
    lea .LN_6_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0030:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0038
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0032:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0033:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_DisableExtras__void
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_0038:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_ctor_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_ctor__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_ctor__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_ICN__i4
.type m_Skymu_Native_Windows_MenuBarController_ICN__i4, @function
m_Skymu_Native_Windows_MenuBarController_ICN__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ICN_i4_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ICN_i4_0001:
    lea .LS_0_m_Skymu_Native_Windows_MenuBarController_ICN_i4(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ICN_i4_0006:
    call m_Skymu_Preferences_Settings_get_Theme__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ICN_i4_000b:
    lea .LS_1_m_Skymu_Native_Windows_MenuBarController_ICN_i4(%rip), %rdi
    mov $39, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ICN_i4_0010:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ICN_i4_0015:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet__i4_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_ICN_i4_001a:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_ICN_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_ICN__i4, .-m_Skymu_Native_Windows_MenuBarController_ICN__i4

.globl m_Skymu_Native_Windows_MenuBarController_L__ref
.type m_Skymu_Native_Windows_MenuBarController_L__ref, @function
m_Skymu_Native_Windows_MenuBarController_L__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_L_ref_0000:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_L_ref_0005:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_L_ref_0006:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_L_ref_000b:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_L_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_L__ref, .-m_Skymu_Native_Windows_MenuBarController_L__ref

.globl m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_MI__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_MI__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_0002:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_MI_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__gen_gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_0007:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_MI__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_MI__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_2
.type m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_2, @function
m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_2:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_2_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_2_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_2_0002:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_MI_ref_ref_2(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_ctor__gen_gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_2_0007:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_2_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_2, .-m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_2

.globl m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen
.type m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen, @function
m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_gen_0001:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_gen_0002:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_gen_0003:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_MI_ref_ref_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_int_ctor__gen_gen_gen
    mov %r12, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_gen_0008:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen, .-m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen

.globl m_Skymu_Native_Windows_MenuBarController_MI__ref
.type m_Skymu_Native_Windows_MenuBarController_MI__ref, @function
m_Skymu_Native_Windows_MenuBarController_MI__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_0001:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_0002:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_MI_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__gen_gen
    mov %r12, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_MI_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_MI__ref, .-m_Skymu_Native_Windows_MenuBarController_MI__ref

.globl m_Skymu_Native_Windows_MenuBarController_SEP__void
.type m_Skymu_Native_Windows_MenuBarController_SEP__void, @function
m_Skymu_Native_Windows_MenuBarController_SEP__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_SEP_void_0000:
    lea .LS_0_m_Skymu_Native_Windows_MenuBarController_SEP_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_SEP_void_0005:
    xor %eax, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_SEP_void_0006:
    lea .LN_1_m_Skymu_Native_Windows_MenuBarController_SEP_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rdx
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__gen_gen
    mov %r12, -16(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_SEP_void_000b:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_SEP_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_SEP__void, .-m_Skymu_Native_Windows_MenuBarController_SEP__void

.globl m_Skymu_Native_Windows_MenuBarController_Build__void
.type m_Skymu_Native_Windows_MenuBarController_Build__void, @function
m_Skymu_Native_Windows_MenuBarController_Build__void:
    push %rbp
    mov %rsp, %rbp
    sub $160, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0006:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_0365
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_000c:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0012:
    lea .LS_2_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0017:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_001c:
    mov $11, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_001e:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0023:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0024:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0025:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0026:
    lea .LS_3_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_002b:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0031:
    mov -88(%rbp), %rdi
    lea .LN_4_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0036:
    lea .LN_5_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Native_Windows_NativeSubMenu_ctor__ref
    mov %r12, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_003b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_003c:
    lea .LS_6_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0041:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0046:
    mov $7, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0047:
    mov -104(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_004c:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_004d:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_004f:
    lea .LS_7_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0054:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_005a:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_0__ref_ref(%rip), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0060:
    lea .LN_8_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -128(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0066:
    mov $2, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0067:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_ICN__i4
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_006c:
    lea .LN_9_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -136(%rbp), %rsi
    mov %r12, %rdi
    call m_int_ctor__gen
    mov %r12, -136(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0071:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0076:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_007b:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_007c:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_007d:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_007e:
    lea .LS_10_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0083:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0088:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0089:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_1__ref_ref(%rip), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_008f:
    lea .LN_11_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0094:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0095:
    mov $3, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0096:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_ICN__i4
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_009b:
    lea .LN_12_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %rsi
    mov %r12, %rdi
    call m_int_ctor__gen
    mov %r12, -128(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00a0:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00a5:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00aa:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00ab:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00ac:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00ad:
    lea .LS_13_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00b2:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00b7:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00b8:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_2__ref_ref(%rip), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00be:
    lea .LN_14_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00c3:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00c4:
    mov $5, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00c5:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_ICN__i4
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00ca:
    lea .LN_15_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -120(%rbp), %rsi
    mov %r12, %rdi
    call m_int_ctor__gen
    mov %r12, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00cf:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00d4:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00d9:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00da:
    mov $3, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00db:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00dc:
    lea .LS_16_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00e1:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00e6:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00e7:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_3__ref_ref(%rip), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00ed:
    lea .LN_17_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00f2:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00f3:
    mov $6, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00f4:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_ICN__i4
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00f9:
    lea .LN_18_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rsi
    mov %r12, %rdi
    call m_int_ctor__gen
    mov %r12, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_00fe:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0103:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0108:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0109:
    mov $4, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_010a:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_010b:
    lea .LS_19_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0110:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0115:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0116:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_4__ref_ref(%rip), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_011c:
    lea .LN_20_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0121:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0122:
    mov $6, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0123:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_ICN__i4
    mov %rax, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0128:
    lea .LN_21_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_int_ctor__gen
    mov %r12, -104(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_012d:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0132:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0137:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0138:
    mov $5, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0139:
    lea .LS_22_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_013e:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_013f:
    lea -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0141:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0147:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0148:
    lea .LN_23_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_int_ctor__gen_gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_014d:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0152:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0153:
    mov $6, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0154:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0155:
    lea .LS_24_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_015a:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_015f:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0160:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0161:
    mov $13, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0163:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_ICN__i4
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0168:
    lea .LN_25_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_int_ctor__gen
    mov %r12, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_016d:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0172:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0177:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeSubMenu_CreateWithIcons__ref_arr
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_017c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_2
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0181:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0182:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0183:
    mov -48(%rbp), %rdi
    lea .LN_26_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0188:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0189:
    mov -56(%rbp), %rdi
    lea .LN_27_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_018e:
    lea .LN_28_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0193:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0198:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0199:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_019a:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_019f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01a0:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01a1:
    mov -64(%rbp), %rdi
    lea .LN_29_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01a6:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01a7:
    mov -72(%rbp), %rdi
    lea .LN_30_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01ac:
    lea .LN_31_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01b1:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01b6:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01b7:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01b8:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01b9:
    lea .LS_32_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01be:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01c3:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01c8:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01c9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01ca:
    mov -64(%rbp), %rdi
    lea .LN_33_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01cf:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01d0:
    mov -72(%rbp), %rdi
    lea .LN_34_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01d5:
    lea .LN_35_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01da:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01df:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01e0:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01e1:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01e2:
    lea .LS_36_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01e7:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01ec:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01f1:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01f2:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01f3:
    mov -64(%rbp), %rdi
    lea .LN_37_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01f8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01f9:
    mov -72(%rbp), %rdi
    lea .LN_38_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_01fe:
    lea .LN_39_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0203:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0208:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0209:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_020a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_020b:
    lea .LS_40_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0210:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0215:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_021a:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_021b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_021c:
    mov -64(%rbp), %rdi
    lea .LN_41_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0221:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0222:
    mov -72(%rbp), %rdi
    lea .LN_42_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0227:
    lea .LN_43_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_022c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0231:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0232:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0233:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0238:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0239:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_023a:
    mov -64(%rbp), %rdi
    lea .LN_44_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_023f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0240:
    mov -72(%rbp), %rdi
    lea .LN_45_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0245:
    lea .LN_46_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_024a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_024f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0250:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0251:
    lea .LS_47_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0256:
    lea .LN_48_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_025b:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_025c:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_0275
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_025e:
    mov -64(%rbp), %rax
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_025f:
    lea .LN_49_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0264:
    lea m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_5__ref_ref(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_026a:
    lea .LN_50_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_026f:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0270:
    lea .LN_51_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_global_slot
    mov -64(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0275:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_027a:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_027b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_027c:
    mov -56(%rbp), %rdi
    lea .LN_52_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0281:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0282:
    mov -64(%rbp), %rdi
    lea .LN_53_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0287:
    lea .LN_54_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_028c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0291:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0292:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0293:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0294:
    lea .LS_55_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0299:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_029e:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02a3:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02a4:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02a5:
    mov -64(%rbp), %rdi
    lea .LN_56_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02aa:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02ab:
    mov -72(%rbp), %rdi
    lea .LN_57_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02b0:
    lea .LN_58_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02b5:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02ba:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02bb:
    mov $8, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02bc:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02bd:
    lea .LS_59_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02c2:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02c7:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02c8:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_6__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02ce:
    lea .LN_60_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02d3:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02d8:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02d9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02da:
    mov -64(%rbp), %rdi
    lea .LN_61_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02df:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02e0:
    mov -72(%rbp), %rdi
    lea .LN_62_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02e5:
    lea .LN_63_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02ea:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02ef:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02f0:
    mov $9, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02f2:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02f3:
    lea .LS_64_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02f8:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02fd:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_02fe:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_7__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0304:
    lea .LN_65_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0309:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_030e:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_030f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0310:
    mov -64(%rbp), %rdi
    lea .LN_66_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0315:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0316:
    mov -72(%rbp), %rdi
    lea .LN_67_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_031b:
    lea .LN_68_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0320:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0325:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0326:
    mov $10, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0328:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0329:
    lea .LS_69_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_032e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0333:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0334:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_8__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_033a:
    lea .LN_70_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_033f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0344:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0345:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0346:
    mov -64(%rbp), %rdi
    lea .LN_71_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_034b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_034c:
    mov -72(%rbp), %rdi
    lea .LN_72_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0351:
    lea .LN_73_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0356:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_035b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0360:
    jmp .Lm_Skymu_Native_Windows_MenuBarController_Build_void_0403
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0365:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0366:
    mov -48(%rbp), %rdi
    lea .LN_74_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_036b:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_MenuBarController_Build_void_0403
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0370:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0371:
    mov -48(%rbp), %rdi
    lea .LN_75_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0376:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0377:
    lea .LS_76_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_037c:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0381:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0382:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0387:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0388:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0389:
    lea .LS_77_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_038e:
    lea .LN_78_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0393:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0394:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_03ad
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0396:
    mov -80(%rbp), %rax
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0397:
    lea .LN_79_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_039c:
    lea m_Skymu_Native_Windows_MenuBarController_c_Build_b_11_9__ref_ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03a2:
    lea .LN_80_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03a7:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03a8:
    lea .LN_81_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_global_slot
    mov -80(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03ad:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03b2:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03b3:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03b4:
    mov -72(%rbp), %rdi
    lea .LN_82_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03b9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03ba:
    mov -80(%rbp), %rdi
    lea .LN_83_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03bf:
    lea .LN_84_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03c4:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03c9:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03ca:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03cb:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03cc:
    lea .LS_85_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03d1:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03d6:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03d7:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_10__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03dd:
    lea .LN_86_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03e2:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03e7:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03e8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03e9:
    mov -64(%rbp), %rdi
    lea .LN_87_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03ee:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03ef:
    mov -72(%rbp), %rdi
    lea .LN_88_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03f4:
    lea .LN_89_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03f9:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_03fe:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0403:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0404:
    mov -48(%rbp), %rdi
    lea .LN_90_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0409:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_05bc
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_040e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_040f:
    mov -48(%rbp), %rdi
    lea .LN_91_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0414:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0415:
    lea .LS_92_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_041a:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_041f:
    mov $10, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0421:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0426:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0427:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0428:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0429:
    lea .LS_93_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_042e:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0433:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0434:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_11__ref_ref(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_043a:
    lea .LN_94_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_043f:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0444:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0445:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0446:
    mov -80(%rbp), %rdi
    lea .LN_95_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_044b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_044c:
    mov -88(%rbp), %rdi
    lea .LN_96_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0451:
    lea .LN_97_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0456:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_045b:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_045c:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_045d:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_045e:
    lea .LS_98_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0463:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0468:
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_046d:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_046e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_046f:
    mov -72(%rbp), %rdi
    lea .LN_99_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0474:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0475:
    mov -80(%rbp), %rdi
    lea .LN_100_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_047a:
    lea .LN_101_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_047f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0484:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0485:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0486:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0487:
    lea .LS_102_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_048c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0491:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0496:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0497:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0498:
    mov -64(%rbp), %rdi
    lea .LN_103_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_049d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_049e:
    mov -72(%rbp), %rdi
    lea .LN_104_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04a3:
    lea .LN_105_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04a8:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04ad:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04ae:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04af:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04b0:
    lea .LS_106_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04b5:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04ba:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04bf:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04c0:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04c1:
    mov -64(%rbp), %rdi
    lea .LN_107_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04c6:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04c7:
    mov -72(%rbp), %rdi
    lea .LN_108_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04cc:
    lea .LN_109_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04d1:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04d6:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04d7:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04d8:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04d9:
    lea .LS_110_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04de:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04e3:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04e8:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04e9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04ea:
    mov -64(%rbp), %rdi
    lea .LN_111_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04ef:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04f0:
    mov -72(%rbp), %rdi
    lea .LN_112_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04f5:
    lea .LN_113_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04fa:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_04ff:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0500:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0501:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0506:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0507:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0508:
    mov -64(%rbp), %rdi
    lea .LN_114_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_050d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_050e:
    mov -72(%rbp), %rdi
    lea .LN_115_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0513:
    lea .LN_116_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0518:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_051d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_051e:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_051f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0520:
    lea .LS_117_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0525:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_052a:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_052f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0530:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0531:
    mov -64(%rbp), %rdi
    lea .LN_118_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0536:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0537:
    mov -72(%rbp), %rdi
    lea .LN_119_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_053c:
    lea .LN_120_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0541:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0546:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0547:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0548:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0549:
    lea .LS_121_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_054e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0553:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0558:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0559:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_055a:
    mov -64(%rbp), %rdi
    lea .LN_122_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_055f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0560:
    mov -72(%rbp), %rdi
    lea .LN_123_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0565:
    lea .LN_124_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_056a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_056f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0570:
    mov $8, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0571:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0576:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0577:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0578:
    mov -64(%rbp), %rdi
    lea .LN_125_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_057d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_057e:
    mov -72(%rbp), %rdi
    lea .LN_126_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0583:
    lea .LN_127_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0588:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_058d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_058e:
    mov $9, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0590:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0591:
    lea .LS_128_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0596:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_059b:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05a0:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05a1:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05a2:
    mov -64(%rbp), %rdi
    lea .LN_129_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05a7:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05a8:
    mov -72(%rbp), %rdi
    lea .LN_130_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05ad:
    lea .LN_131_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05b2:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05b7:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05bc:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05bd:
    mov -48(%rbp), %rdi
    lea .LN_132_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05c2:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_083b
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05c7:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05c8:
    mov -48(%rbp), %rdi
    lea .LN_133_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05cd:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05ce:
    lea .LS_134_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05d3:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05d8:
    mov $15, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05da:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05df:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05e0:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05e1:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05e2:
    lea .LS_135_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $36, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05e7:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05ec:
    mov -80(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05f1:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05f2:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05f3:
    mov -80(%rbp), %rdi
    lea .LN_136_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05f8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05f9:
    mov -88(%rbp), %rdi
    lea .LN_137_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_05fe:
    lea .LN_138_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0603:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0608:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0609:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_060a:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_060b:
    lea .LS_139_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $38, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0610:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0615:
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_061a:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_061b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_061c:
    mov -72(%rbp), %rdi
    lea .LN_140_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0621:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0622:
    mov -80(%rbp), %rdi
    lea .LN_141_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0627:
    lea .LN_142_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_062c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0631:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0632:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0633:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0634:
    lea .LS_143_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $33, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0639:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_063e:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0643:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0644:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0645:
    mov -64(%rbp), %rdi
    lea .LN_144_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_064a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_064b:
    mov -72(%rbp), %rdi
    lea .LN_145_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0650:
    lea .LN_146_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0655:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_065a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_065b:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_065c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_065d:
    lea .LS_147_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0662:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0667:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_066c:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_066d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_066e:
    mov -64(%rbp), %rdi
    lea .LN_148_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0673:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0674:
    mov -72(%rbp), %rdi
    lea .LN_149_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0679:
    lea .LN_150_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_067e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0683:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0684:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0685:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0686:
    lea .LS_151_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_068b:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0690:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0695:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0696:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0697:
    mov -64(%rbp), %rdi
    lea .LN_152_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_069c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_069d:
    mov -72(%rbp), %rdi
    lea .LN_153_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06a2:
    lea .LN_154_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06a7:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06ac:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06ad:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06ae:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06af:
    lea .LS_155_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06b4:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06b9:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06be:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06bf:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06c0:
    mov -64(%rbp), %rdi
    lea .LN_156_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06c5:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06c6:
    mov -72(%rbp), %rdi
    lea .LN_157_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06cb:
    lea .LN_158_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06d0:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06d5:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06d6:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06d7:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06d8:
    lea .LS_159_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06dd:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06e2:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06e7:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06e8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06e9:
    mov -64(%rbp), %rdi
    lea .LN_160_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06ee:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06ef:
    mov -72(%rbp), %rdi
    lea .LN_161_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06f4:
    lea .LN_162_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06f9:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06fe:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_06ff:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0700:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0701:
    lea .LS_163_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0706:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_070b:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0710:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0711:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0712:
    mov -64(%rbp), %rdi
    lea .LN_164_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0717:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0718:
    mov -72(%rbp), %rdi
    lea .LN_165_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_071d:
    lea .LN_166_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0722:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0727:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0728:
    mov $8, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0729:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_072e:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_072f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0730:
    mov -64(%rbp), %rdi
    lea .LN_167_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0735:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0736:
    mov -72(%rbp), %rdi
    lea .LN_168_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_073b:
    lea .LN_169_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0740:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0745:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0746:
    mov $9, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0748:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0749:
    lea .LS_170_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_074e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0753:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0758:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0759:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_075a:
    mov -64(%rbp), %rdi
    lea .LN_171_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_075f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0760:
    mov -72(%rbp), %rdi
    lea .LN_172_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0765:
    lea .LN_173_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_076a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_076f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0770:
    mov $10, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0772:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0773:
    lea .LS_174_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0778:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_077d:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0782:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0783:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0784:
    mov -64(%rbp), %rdi
    lea .LN_175_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0789:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_078a:
    mov -72(%rbp), %rdi
    lea .LN_176_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_078f:
    lea .LN_177_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0794:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0799:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_079a:
    mov $11, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_079c:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07a1:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07a2:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07a3:
    mov -64(%rbp), %rdi
    lea .LN_178_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07a8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07a9:
    mov -72(%rbp), %rdi
    lea .LN_179_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07ae:
    lea .LN_180_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07b3:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07b8:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07b9:
    mov $12, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07bb:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07bc:
    lea .LS_181_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07c1:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07c6:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07cb:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07cc:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07cd:
    mov -64(%rbp), %rdi
    lea .LN_182_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07d2:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07d3:
    mov -72(%rbp), %rdi
    lea .LN_183_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07d8:
    lea .LN_184_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07dd:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07e2:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07e3:
    mov $13, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07e5:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07e6:
    lea .LS_185_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07eb:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07f0:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07f5:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07f6:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07f7:
    mov -64(%rbp), %rdi
    lea .LN_186_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07fc:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_07fd:
    mov -72(%rbp), %rdi
    lea .LN_187_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0802:
    lea .LN_188_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0807:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_080c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_080d:
    mov $14, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_080f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0810:
    lea .LS_189_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0815:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_081a:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_081f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0820:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0821:
    mov -64(%rbp), %rdi
    lea .LN_190_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0826:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0827:
    mov -72(%rbp), %rdi
    lea .LN_191_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_082c:
    lea .LN_192_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0831:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0836:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_083b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_083c:
    mov -48(%rbp), %rdi
    lea .LN_193_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0841:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b82
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0846:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0847:
    mov -48(%rbp), %rdi
    lea .LN_194_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_084c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_084d:
    lea .LS_195_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0852:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0857:
    mov $20, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0859:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_085e:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_085f:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0860:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0861:
    lea .LS_196_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0866:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_086b:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_086c:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_12__ref_ref(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0872:
    lea .LN_197_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0877:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_087c:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_087d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_087e:
    mov -80(%rbp), %rdi
    lea .LN_198_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0883:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0884:
    mov -88(%rbp), %rdi
    lea .LN_199_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0889:
    lea .LN_200_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_088e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0893:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0894:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0895:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0896:
    lea .LS_201_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_089b:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08a0:
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08a5:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08a6:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08a7:
    mov -72(%rbp), %rdi
    lea .LN_202_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08ac:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08ad:
    mov -80(%rbp), %rdi
    lea .LN_203_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08b2:
    lea .LN_204_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08b7:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08bc:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08bd:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08be:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08bf:
    lea .LS_205_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08c4:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08c9:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08ce:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08cf:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08d0:
    mov -64(%rbp), %rdi
    lea .LN_206_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08d5:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08d6:
    mov -72(%rbp), %rdi
    lea .LN_207_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08db:
    lea .LN_208_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08e0:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08e5:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08e6:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08e7:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08ec:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08ed:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08ee:
    mov -64(%rbp), %rdi
    lea .LN_209_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08f3:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08f4:
    mov -72(%rbp), %rdi
    lea .LN_210_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08f9:
    lea .LN_211_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_08fe:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0903:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0904:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0905:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0906:
    lea .LS_212_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_090b:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0910:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0915:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0916:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0917:
    mov -64(%rbp), %rdi
    lea .LN_213_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_091c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_091d:
    mov -72(%rbp), %rdi
    lea .LN_214_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0922:
    lea .LN_215_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0927:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_092c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_092d:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_092e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_092f:
    lea .LS_216_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0934:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0939:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_093e:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_093f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0940:
    mov -64(%rbp), %rdi
    lea .LN_217_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0945:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0946:
    mov -72(%rbp), %rdi
    lea .LN_218_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_094b:
    lea .LN_219_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0950:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0955:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0956:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0957:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0958:
    lea .LS_220_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_095d:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0962:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0967:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0968:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0969:
    mov -64(%rbp), %rdi
    lea .LN_221_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_096e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_096f:
    mov -72(%rbp), %rdi
    lea .LN_222_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0974:
    lea .LN_223_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0979:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_097e:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_097f:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0980:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0981:
    lea .LS_224_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0986:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_098b:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0990:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0991:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0992:
    mov -64(%rbp), %rdi
    lea .LN_225_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0997:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0998:
    mov -72(%rbp), %rdi
    lea .LN_226_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_099d:
    lea .LN_227_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09a2:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09a7:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09a8:
    mov $8, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09a9:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09aa:
    lea .LS_228_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09af:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09b4:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09b9:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09ba:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09bb:
    mov -64(%rbp), %rdi
    lea .LN_229_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09c0:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09c1:
    mov -72(%rbp), %rdi
    lea .LN_230_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09c6:
    lea .LN_231_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09cb:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09d0:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09d1:
    mov $9, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09d3:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09d4:
    lea .LS_232_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09d9:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09de:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09e3:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09e4:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09e5:
    mov -64(%rbp), %rdi
    lea .LN_233_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09ea:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09eb:
    mov -72(%rbp), %rdi
    lea .LN_234_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09f0:
    lea .LN_235_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09f5:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09fa:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09fb:
    mov $10, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09fd:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_09fe:
    lea .LS_236_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a03:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a08:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a0d:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a0e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a0f:
    mov -64(%rbp), %rdi
    lea .LN_237_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a14:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a15:
    mov -72(%rbp), %rdi
    lea .LN_238_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a1a:
    lea .LN_239_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a1f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a24:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a25:
    mov $11, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a27:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a2c:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a2d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a2e:
    mov -64(%rbp), %rdi
    lea .LN_240_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a33:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a34:
    mov -72(%rbp), %rdi
    lea .LN_241_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a39:
    lea .LN_242_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a3e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a43:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a44:
    mov $12, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a46:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a47:
    lea .LS_243_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $34, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a4c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a51:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a56:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a57:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a58:
    mov -64(%rbp), %rdi
    lea .LN_244_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a5d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a5e:
    mov -72(%rbp), %rdi
    lea .LN_245_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a63:
    lea .LN_246_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a68:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a6d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a6e:
    mov $13, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a70:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a75:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a76:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a77:
    mov -64(%rbp), %rdi
    lea .LN_247_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a7c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a7d:
    mov -72(%rbp), %rdi
    lea .LN_248_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a82:
    lea .LN_249_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a87:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a8c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a8d:
    mov $14, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a8f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a90:
    lea .LS_250_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a95:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a9a:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0a9f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0aa0:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0aa1:
    mov -64(%rbp), %rdi
    lea .LN_251_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0aa6:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0aa7:
    mov -72(%rbp), %rdi
    lea .LN_252_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0aac:
    lea .LN_253_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ab1:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ab6:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ab7:
    mov $15, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ab9:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0aba:
    lea .LS_254_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0abf:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ac4:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ac9:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0aca:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0acb:
    mov -64(%rbp), %rdi
    lea .LN_255_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ad0:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ad1:
    mov -72(%rbp), %rdi
    lea .LN_256_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ad6:
    lea .LN_257_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0adb:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ae0:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ae1:
    mov $16, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ae3:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ae4:
    lea .LS_258_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ae9:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0aee:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0af3:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0af4:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0af5:
    mov -64(%rbp), %rdi
    lea .LN_259_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0afa:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0afb:
    mov -72(%rbp), %rdi
    lea .LN_260_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b00:
    lea .LN_261_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b05:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b0a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b0b:
    mov $17, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b0d:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b12:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b13:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b14:
    mov -64(%rbp), %rdi
    lea .LN_262_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b19:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b1a:
    mov -72(%rbp), %rdi
    lea .LN_263_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b1f:
    lea .LN_264_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b24:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b29:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b2a:
    mov $18, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b2c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b2d:
    lea .LS_265_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b32:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b37:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b3c:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b3d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b3e:
    mov -64(%rbp), %rdi
    lea .LN_266_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b43:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b44:
    mov -72(%rbp), %rdi
    lea .LN_267_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b49:
    lea .LN_268_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b4e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b53:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b54:
    mov $19, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b56:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b57:
    lea .LS_269_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b5c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b61:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b66:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b67:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b68:
    mov -64(%rbp), %rdi
    lea .LN_270_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b6d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b6e:
    mov -72(%rbp), %rdi
    lea .LN_271_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b73:
    lea .LN_272_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b78:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b7d:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b82:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b83:
    mov -48(%rbp), %rdi
    lea .LN_273_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b88:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e9e
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b8d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b8e:
    mov -48(%rbp), %rdi
    lea .LN_274_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b93:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b94:
    lea .LS_275_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b99:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0b9e:
    mov $18, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ba0:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ba5:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ba6:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ba7:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ba8:
    lea .LS_276_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bad:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bb2:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bb3:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_13__ref_ref(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bb9:
    lea .LN_277_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bbe:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bc3:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bc4:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bc5:
    mov -80(%rbp), %rdi
    lea .LN_278_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bca:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bcb:
    mov -88(%rbp), %rdi
    lea .LN_279_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bd0:
    lea .LN_280_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bd5:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bda:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bdb:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bdc:
    lea .LS_281_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0be1:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0be2:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_14__ref_ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0be8:
    lea .LN_282_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bed:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bf2:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bf3:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bf4:
    mov -72(%rbp), %rdi
    lea .LN_283_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bf9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bfa:
    mov -80(%rbp), %rdi
    lea .LN_284_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0bff:
    lea .LN_285_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c04:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c09:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c0a:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c0b:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c0c:
    lea .LS_286_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c11:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c16:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c17:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_15__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c1d:
    lea .LN_287_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c22:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c27:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c28:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c29:
    mov -64(%rbp), %rdi
    lea .LN_288_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c2e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c2f:
    mov -72(%rbp), %rdi
    lea .LN_289_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c34:
    lea .LN_290_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c39:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c3e:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c3f:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c40:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c41:
    lea .LS_291_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c46:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c4b:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c50:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c51:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c52:
    mov -64(%rbp), %rdi
    lea .LN_292_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c57:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c58:
    mov -72(%rbp), %rdi
    lea .LN_293_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c5d:
    lea .LN_294_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c62:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c67:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c68:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c69:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c6a:
    lea .LS_295_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c6f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c74:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c79:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c7a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c7b:
    mov -64(%rbp), %rdi
    lea .LN_296_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c80:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c81:
    mov -72(%rbp), %rdi
    lea .LN_297_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c86:
    lea .LN_298_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c8b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c90:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c91:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c92:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c93:
    lea .LS_299_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c98:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0c9d:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ca2:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ca3:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ca4:
    mov -64(%rbp), %rdi
    lea .LN_300_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ca9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0caa:
    mov -72(%rbp), %rdi
    lea .LN_301_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0caf:
    lea .LN_302_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cb4:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cb9:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cba:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cbb:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cbc:
    lea .LS_303_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cc1:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cc6:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ccb:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ccc:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ccd:
    mov -64(%rbp), %rdi
    lea .LN_304_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cd2:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cd3:
    mov -72(%rbp), %rdi
    lea .LN_305_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cd8:
    lea .LN_306_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cdd:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ce2:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ce3:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ce4:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ce9:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cea:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ceb:
    mov -64(%rbp), %rdi
    lea .LN_307_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cf0:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cf1:
    mov -72(%rbp), %rdi
    lea .LN_308_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cf6:
    lea .LN_309_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0cfb:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d00:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d01:
    mov $8, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d02:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d03:
    lea .LS_310_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d08:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d0d:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d0e:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_16__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d14:
    lea .LN_311_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d19:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d1e:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d1f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d20:
    mov -64(%rbp), %rdi
    lea .LN_312_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d25:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d26:
    mov -72(%rbp), %rdi
    lea .LN_313_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d2b:
    lea .LN_314_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d30:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d35:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d36:
    mov $9, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d38:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d39:
    lea .LS_315_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d3e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d43:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d48:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d49:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d4a:
    mov -64(%rbp), %rdi
    lea .LN_316_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d4f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d50:
    mov -72(%rbp), %rdi
    lea .LN_317_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d55:
    lea .LN_318_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d5a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d5f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d60:
    mov $10, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d62:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d63:
    lea .LS_319_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d68:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d6d:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d72:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d73:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d74:
    mov -64(%rbp), %rdi
    lea .LN_320_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d79:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d7a:
    mov -72(%rbp), %rdi
    lea .LN_321_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d7f:
    lea .LN_322_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d84:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d89:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d8a:
    mov $11, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d8c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d8d:
    lea .LS_323_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d92:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d97:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d9c:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d9d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0d9e:
    mov -64(%rbp), %rdi
    lea .LN_324_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0da3:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0da4:
    mov -72(%rbp), %rdi
    lea .LN_325_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0da9:
    lea .LN_326_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dae:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0db3:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0db4:
    mov $12, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0db6:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dbb:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dbc:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dbd:
    mov -64(%rbp), %rdi
    lea .LN_327_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dc2:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dc3:
    mov -72(%rbp), %rdi
    lea .LN_328_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dc8:
    lea .LN_329_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dcd:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dd2:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dd3:
    mov $13, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dd5:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dd6:
    lea .LS_330_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $33, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ddb:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0de0:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0de5:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0de6:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0de7:
    mov -64(%rbp), %rdi
    lea .LN_331_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dec:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ded:
    mov -72(%rbp), %rdi
    lea .LN_332_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0df2:
    lea .LN_333_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0df7:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dfc:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dfd:
    mov $14, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0dff:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e00:
    lea .LS_334_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e05:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e0a:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e0f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e10:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e11:
    mov -64(%rbp), %rdi
    lea .LN_335_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e16:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e17:
    mov -72(%rbp), %rdi
    lea .LN_336_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e1c:
    lea .LN_337_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e21:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e26:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e27:
    mov $15, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e29:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e2a:
    lea .LS_338_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e2f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e34:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e39:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e3a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e3b:
    mov -64(%rbp), %rdi
    lea .LN_339_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e40:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e41:
    mov -72(%rbp), %rdi
    lea .LN_340_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e46:
    lea .LN_341_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e4b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e50:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e51:
    mov $16, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e53:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e58:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e59:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e5a:
    mov -64(%rbp), %rdi
    lea .LN_342_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e5f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e60:
    mov -72(%rbp), %rdi
    lea .LN_343_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e65:
    lea .LN_344_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e6a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e6f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e70:
    mov $17, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e72:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e73:
    lea .LS_345_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e78:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e7d:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e82:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e83:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e84:
    mov -64(%rbp), %rdi
    lea .LN_346_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e89:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e8a:
    mov -72(%rbp), %rdi
    lea .LN_347_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e8f:
    lea .LN_348_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e94:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e99:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e9e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0e9f:
    mov -48(%rbp), %rdi
    lea .LN_349_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ea4:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_1003
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ea9:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0eaa:
    mov -48(%rbp), %rdi
    lea .LN_350_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0eaf:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0eb0:
    lea .LS_351_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0eb5:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0eba:
    mov $8, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ebb:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ec0:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ec1:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ec2:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ec3:
    lea .LS_352_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ec8:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ecd:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ece:
    mov -88(%rbp), %rdi
    lea .LN_353_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ed3:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref_2
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ed8:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ed9:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0eda:
    mov -80(%rbp), %rdi
    lea .LN_354_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0edf:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ee0:
    mov -88(%rbp), %rdi
    lea .LN_355_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ee5:
    lea .LN_356_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0eea:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0eef:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ef0:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ef1:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ef6:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ef7:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ef8:
    mov -72(%rbp), %rdi
    lea .LN_357_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0efd:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0efe:
    mov -80(%rbp), %rdi
    lea .LN_358_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f03:
    lea .LN_359_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f08:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f0d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f0e:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f0f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f10:
    lea .LS_360_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f15:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f1a:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f1f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f20:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f21:
    mov -64(%rbp), %rdi
    lea .LN_361_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f26:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f27:
    mov -72(%rbp), %rdi
    lea .LN_362_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f2c:
    lea .LN_363_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f31:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f36:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f37:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f38:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f3d:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f3e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f3f:
    mov -64(%rbp), %rdi
    lea .LN_364_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f44:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f45:
    mov -72(%rbp), %rdi
    lea .LN_365_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f4a:
    lea .LN_366_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f4f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f54:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f55:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f56:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f57:
    lea .LS_367_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f5c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f61:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f66:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f67:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f68:
    mov -64(%rbp), %rdi
    lea .LN_368_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f6d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f6e:
    mov -72(%rbp), %rdi
    lea .LN_369_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f73:
    lea .LN_370_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f78:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f7d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f7e:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f7f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f80:
    lea .LS_371_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f85:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f8a:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f8f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f90:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f91:
    mov -64(%rbp), %rdi
    lea .LN_372_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f96:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f97:
    mov -72(%rbp), %rdi
    lea .LN_373_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0f9c:
    lea .LN_374_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fa1:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fa6:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fa7:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fa8:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fad:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fae:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0faf:
    mov -64(%rbp), %rdi
    lea .LN_375_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fb4:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fb5:
    mov -72(%rbp), %rdi
    lea .LN_376_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fba:
    lea .LN_377_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fbf:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fc4:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fc5:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fc6:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fc7:
    lea .LS_378_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fcc:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fd1:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fd2:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_17__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fd8:
    lea .LN_379_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fdd:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fe2:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fe3:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fe4:
    mov -64(%rbp), %rdi
    lea .LN_380_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fe9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fea:
    mov -72(%rbp), %rdi
    lea .LN_381_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0fef:
    lea .LN_382_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ff4:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ff9:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_0ffe:
    jmp .Lm_Skymu_Native_Windows_MenuBarController_Build_void_10ed
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1003:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1004:
    mov -48(%rbp), %rdi
    lea .LN_383_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1009:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_MenuBarController_Build_void_10ed
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_100e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_100f:
    mov -48(%rbp), %rdi
    lea .LN_384_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1015:
    lea .LS_385_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_101a:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_101f:
    mov $5, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1020:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1025:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1026:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1027:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1028:
    lea .LS_386_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_102d:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1032:
    mov -80(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1037:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1038:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1039:
    mov -80(%rbp), %rdi
    lea .LN_387_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_103e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_103f:
    mov -88(%rbp), %rdi
    lea .LN_388_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1044:
    lea .LN_389_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1049:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_104e:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_104f:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1050:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1055:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1056:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1057:
    mov -72(%rbp), %rdi
    lea .LN_390_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_105c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_105d:
    mov -80(%rbp), %rdi
    lea .LN_391_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1062:
    lea .LN_392_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1067:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_106c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_106d:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_106e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_106f:
    lea .LS_393_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1074:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1079:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_107a:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_18__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1080:
    lea .LN_394_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1085:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_108a:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_108b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_108c:
    mov -64(%rbp), %rdi
    lea .LN_395_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1091:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1092:
    mov -72(%rbp), %rdi
    lea .LN_396_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1097:
    lea .LN_397_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_109c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10a1:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10a2:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10a3:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10a8:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10a9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10aa:
    mov -64(%rbp), %rdi
    lea .LN_398_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10af:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10b0:
    mov -72(%rbp), %rdi
    lea .LN_399_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10b5:
    lea .LN_400_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10ba:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10bf:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10c0:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10c1:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10c2:
    lea .LS_401_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10c7:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10cc:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10d1:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10d2:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10d3:
    mov -64(%rbp), %rdi
    lea .LN_402_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10d8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10d9:
    mov -72(%rbp), %rdi
    lea .LN_403_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10de:
    lea .LN_404_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10e3:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10e8:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10ed:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10ee:
    mov -48(%rbp), %rdi
    lea .LN_405_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10f3:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Build_void_1295
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10f8:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10f9:
    mov -48(%rbp), %rdi
    lea .LN_406_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10fe:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_10ff:
    lea .LS_407_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1104:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1109:
    mov $9, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_110b:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1110:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1111:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1112:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1113:
    lea .LS_408_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1118:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_111d:
    mov -80(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1122:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1123:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1124:
    mov -80(%rbp), %rdi
    lea .LN_409_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1129:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_112a:
    mov -88(%rbp), %rdi
    lea .LN_410_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_112f:
    lea .LN_411_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1134:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1139:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_113a:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_113b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_113c:
    lea .LS_412_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1141:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1146:
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_114b:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_114c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_114d:
    mov -72(%rbp), %rdi
    lea .LN_413_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1152:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1153:
    mov -80(%rbp), %rdi
    lea .LN_414_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1158:
    lea .LN_415_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_115d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1162:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1163:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1164:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1169:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_116a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_116b:
    mov -64(%rbp), %rdi
    lea .LN_416_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1170:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1171:
    mov -72(%rbp), %rdi
    lea .LN_417_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1176:
    lea .LN_418_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_117b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1180:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1181:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1182:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1183:
    lea .LS_419_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1188:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_118d:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1192:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1193:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1194:
    mov -64(%rbp), %rdi
    lea .LN_420_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1199:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_119a:
    mov -72(%rbp), %rdi
    lea .LN_421_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_119f:
    lea .LN_422_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11a4:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11a9:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11aa:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11ab:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11ac:
    lea .LS_423_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11b1:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11b6:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11b7:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_19__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11bd:
    lea .LN_424_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11c2:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11c7:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11c8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11c9:
    mov -64(%rbp), %rdi
    lea .LN_425_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11ce:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11cf:
    mov -72(%rbp), %rdi
    lea .LN_426_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11d4:
    lea .LN_427_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11d9:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11de:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11df:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11e0:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11e1:
    lea .LS_428_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11e6:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11eb:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11f0:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11f1:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11f2:
    mov -64(%rbp), %rdi
    lea .LN_429_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11f7:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11f8:
    mov -72(%rbp), %rdi
    lea .LN_430_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_11fd:
    lea .LN_431_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1202:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1207:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1208:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1209:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_120e:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_120f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1210:
    mov -64(%rbp), %rdi
    lea .LN_432_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1215:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1216:
    mov -72(%rbp), %rdi
    lea .LN_433_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_121b:
    lea .LN_434_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1220:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1225:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1226:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1227:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1228:
    lea .LS_435_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_122d:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1232:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1233:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_20__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1239:
    lea .LN_436_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_123e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1243:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1244:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1245:
    mov -64(%rbp), %rdi
    lea .LN_437_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_124a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_124b:
    mov -72(%rbp), %rdi
    lea .LN_438_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1250:
    lea .LN_439_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1255:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_125a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_125b:
    mov $8, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_125c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_125d:
    lea .LS_440_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1262:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1267:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1268:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_21__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_126e:
    lea .LN_441_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1273:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1278:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1279:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_127a:
    mov -64(%rbp), %rdi
    lea .LN_442_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_127f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1280:
    mov -72(%rbp), %rdi
    lea .LN_443_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1285:
    lea .LN_444_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_128a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_128f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1294:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1295:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1296:
    mov -48(%rbp), %rdi
    lea .LN_445_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_129b:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_MenuBarController_Build_void_13c0
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12a0:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12a1:
    mov -48(%rbp), %rdi
    lea .LN_446_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12a6:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12a7:
    lea .LS_447_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12ac:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12b1:
    mov $6, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12b2:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12b7:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12b8:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12b9:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12ba:
    lea .LS_448_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12bf:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12c4:
    mov -80(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12c9:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12ca:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12cb:
    mov -80(%rbp), %rdi
    lea .LN_449_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12d0:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12d1:
    mov -88(%rbp), %rdi
    lea .LN_450_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12d6:
    lea .LN_451_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12db:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12e0:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12e1:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12e2:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12e7:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12e8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12e9:
    mov -72(%rbp), %rdi
    lea .LN_452_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12ee:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12ef:
    mov -80(%rbp), %rdi
    lea .LN_453_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12f4:
    lea .LN_454_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12f9:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12fe:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_12ff:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1300:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1301:
    lea .LS_455_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1306:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_130b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_130c:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_22__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1312:
    lea .LN_456_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1317:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_131c:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_131d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_131e:
    mov -64(%rbp), %rdi
    lea .LN_457_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1323:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1324:
    mov -72(%rbp), %rdi
    lea .LN_458_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1329:
    lea .LN_459_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_132e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1333:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1334:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1335:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_133a:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_133b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_133c:
    mov -64(%rbp), %rdi
    lea .LN_460_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1341:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1342:
    mov -72(%rbp), %rdi
    lea .LN_461_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1347:
    lea .LN_462_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_134c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1351:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1352:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1353:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1354:
    lea .LS_463_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1359:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_135e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_135f:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_23__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1365:
    lea .LN_464_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_136a:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_136f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1370:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1371:
    mov -64(%rbp), %rdi
    lea .LN_465_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1376:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1377:
    mov -72(%rbp), %rdi
    lea .LN_466_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_137c:
    lea .LN_467_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1381:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1386:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1387:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1388:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1389:
    lea .LS_468_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_138e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1393:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_1394:
    lea m_Skymu_Native_Windows_MenuBarController_Build_b_11_24__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_139a:
    lea .LN_469_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_139f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13a4:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13a5:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13a6:
    mov -64(%rbp), %rdi
    lea .LN_470_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13ab:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13ac:
    mov -72(%rbp), %rdi
    lea .LN_471_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13b1:
    lea .LN_472_m_Skymu_Native_Windows_MenuBarController_Build_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_object_ctor__gen_gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13b6:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13bb:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeMenuBar_Create__ref_arr
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_13c0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build__void, .-m_Skymu_Native_Windows_MenuBarController_Build__void

.globl m_Skymu_Native_Windows_MenuBarController_add_ActionRequested__ref
.type m_Skymu_Native_Windows_MenuBarController_add_ActionRequested__ref, @function
m_Skymu_Native_Windows_MenuBarController_add_ActionRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0010:
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler_1_valuetype_Skymu_Native_Windows_MenuBarController_Action__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0007
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_add_ActionRequested__ref, .-m_Skymu_Native_Windows_MenuBarController_add_ActionRequested__ref

.globl m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested__ref
.type m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested__ref, @function
m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0010:
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_EventHandler_1_valuetype_Skymu_Native_Windows_MenuBarController_Action__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0007
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested__ref, .-m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested__ref

.globl m_Skymu_Native_Windows_MenuBarController_Raise__v
.type m_Skymu_Native_Windows_MenuBarController_Raise__v, @function
m_Skymu_Native_Windows_MenuBarController_Raise__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_Raise_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_0007:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_MenuBarController_Raise_v_000b
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_0009:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_000b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_000c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_000d:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_Action_Invoke__ref_gen
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Raise_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Raise__v, .-m_Skymu_Native_Windows_MenuBarController_Raise__v

.globl m_Skymu_Native_Windows_MenuBarController_OnStatus__v
.type m_Skymu_Native_Windows_MenuBarController_OnStatus__v, @function
m_Skymu_Native_Windows_MenuBarController_OnStatus__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_OnStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_MenuBarController_OnStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_0016:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_MenuBarController_OnStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_001e:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Native_Windows_MenuBarController_OnStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_0023:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_0025:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Native_Windows_MenuBarController_OnStatus_d_17__gen
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnStatus_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnStatus__v, .-m_Skymu_Native_Windows_MenuBarController_OnStatus__v

.globl m_Skymu_Native_Windows_MenuBarController_OnSignOut__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnSignOut__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnSignOut__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnSignOut_ref_ref_0000:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_OnSignOut_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnSignOut_ref_ref_0005:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnSignOut_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_InitiateSignOut__b
.Lm_Skymu_Native_Windows_MenuBarController_OnSignOut_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnSignOut_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnSignOut__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnSignOut__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnSwitchUser__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnSwitchUser__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnSwitchUser__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnSwitchUser_ref_ref_0000:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_OnSwitchUser_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnSwitchUser_ref_ref_0005:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnSwitchUser_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_InitiateSignOut__b
.Lm_Skymu_Native_Windows_MenuBarController_OnSwitchUser_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnSwitchUser_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnSwitchUser__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnSwitchUser__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnClose__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnClose__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnClose__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnClose_ref_ref_0000:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnClose_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_Close__b
.Lm_Skymu_Native_Windows_MenuBarController_OnClose_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnClose_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnClose__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnClose__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnAbout__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnAbout__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnAbout__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnAbout_ref_ref_0000:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_OnAbout_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_About_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnAbout_ref_ref_0005:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Native_Windows_MenuBarController_OnAbout_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnAbout_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnAbout__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnAbout__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy_ref_ref_0000:
    lea .LS_0_m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy_ref_ref(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy_ref_ref_0005:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnOptions__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnOptions__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnOptions__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnOptions_ref_ref_0000:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_OnOptions_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_Options_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnOptions_ref_ref_0005:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Native_Windows_MenuBarController_OnOptions_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnOptions_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnOptions__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnOptions__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnCheckUpdates_ref_ref_0000:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnCheckUpdates_ref_ref_0001:
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_Pages_Updater_ctor__b
    mov %r12, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnCheckUpdates_ref_ref_0006:
    mov -40(%rbp), %rax
.Lm_Skymu_Native_Windows_MenuBarController_OnCheckUpdates_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnCheckUpdates_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnHome__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnHome__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnHome__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnHome_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnHome_ref_ref_0001:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnHome_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_Raise__v
.Lm_Skymu_Native_Windows_MenuBarController_OnHome_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnHome_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnHome__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnHome__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnContacts__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnContacts__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnContacts__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnContacts_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnContacts_ref_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnContacts_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_Raise__v
.Lm_Skymu_Native_Windows_MenuBarController_OnContacts_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnContacts_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnContacts__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnContacts__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnServers__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnServers__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnServers__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnServers_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnServers_ref_ref_0001:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnServers_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_Raise__v
.Lm_Skymu_Native_Windows_MenuBarController_OnServers_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnServers_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnServers__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnServers__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnRecent__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnRecent__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnRecent__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnRecent_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnRecent_ref_ref_0001:
    mov $3, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnRecent_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_Raise__v
.Lm_Skymu_Native_Windows_MenuBarController_OnRecent_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnRecent_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnRecent__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnRecent__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnCall__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnCall__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnCall__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnCall_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnCall_ref_ref_0001:
    mov $4, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnCall_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_Raise__v
.Lm_Skymu_Native_Windows_MenuBarController_OnCall_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnCall_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnCall__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnCall__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_OnAddContact__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_OnAddContact__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_OnAddContact__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnAddContact_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnAddContact_ref_ref_0001:
    mov $5, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_OnAddContact_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_Raise__v
.Lm_Skymu_Native_Windows_MenuBarController_OnAddContact_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_OnAddContact_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_OnAddContact__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_OnAddContact__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_DisableExtras__void
.type m_Skymu_Native_Windows_MenuBarController_DisableExtras__void, @function
m_Skymu_Native_Windows_MenuBarController_DisableExtras__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_DisableExtras_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0006:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0007:
    mov -32(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_000c:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_000d:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_000f:
    lea .LS_1_m_Skymu_Native_Windows_MenuBarController_DisableExtras_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0014:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0019:
    mov -48(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_001e:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0023:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeSubMenu_RefreshItems__arr
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0028:
    jmp .Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0031
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_0031:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_DisableExtras_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_DisableExtras__void, .-m_Skymu_Native_Windows_MenuBarController_DisableExtras__void

.globl m_Skymu_Native_Windows_MenuBarController_RedoExtras__arr
.type m_Skymu_Native_Windows_MenuBarController_RedoExtras__arr, @function
m_Skymu_Native_Windows_MenuBarController_RedoExtras__arr:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_MenuBarController_RedoExtras_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0007:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0008:
    mov -48(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_000d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_000e:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_000f:
    call m_Skymu_Native_Windows_MenuBarController_SEP__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0014:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0019:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_001a:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_001b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_001c:
    lea .LS_1_m_Skymu_Native_Windows_MenuBarController_RedoExtras_arr(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0021:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_L__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0026:
    mov -56(%rbp), %rdi
    call m_Skymu_Native_Windows_MenuBarController_MI__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_002b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0030:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_Linq_Enumerable_Concat_valuetype_System_Runtime_System_ValueTuple_2_string_class_System_Runtime_System_EventHandler__gen_gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_0035:
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_ToArray_valuetype_System_Runtime_System_ValueTuple_2_string_class_System_Runtime_System_EventHandler__gen
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_003a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_NativeSubMenu_RefreshItems__arr
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_003f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_RedoExtras_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_RedoExtras__arr, .-m_Skymu_Native_Windows_MenuBarController_RedoExtras__arr

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_0__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_0__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_0_ref_ref_0001:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_0_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnStatus__v
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_0_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_0__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_0__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_1__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_1__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_1_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_1_ref_ref_0001:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_1_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnStatus__v
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_1_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_1__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_1__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_2__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_2__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_2__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_2_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_2_ref_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_2_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnStatus__v
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_2_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_2_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_2__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_2__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_3__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_3__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_3__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_3_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_3_ref_ref_0001:
    mov $6, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_3_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnStatus__v
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_3_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_3_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_3__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_3__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_4__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_4__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_4__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_4_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_4_ref_ref_0001:
    mov $8, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_4_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnStatus__v
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_4_ref_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_4_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_4__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_4__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_6__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_6__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_6__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_6_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_6_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_6_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_6_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnSignOut__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_6_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_6_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_6__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_6__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_7__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_7__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_7__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_7_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_7_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_7_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_7_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnSwitchUser__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_7_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_7_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_7__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_7__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_8__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_8__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_8__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_8_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_8_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_8_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_8_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnClose__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_8_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_8_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_8__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_8__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_10__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_10__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_10__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_10_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_10_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_10_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_10_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnClose__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_10_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_10_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_10__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_10__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_11__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_11__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_11__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_11_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_11_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_11_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_11_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnAddContact__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_11_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_11_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_11__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_11__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_12__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_12__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_12__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_12_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_12_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_12_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_12_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnCall__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_12_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_12_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_12__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_12__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_13__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_13__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_13__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_13_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_13_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_13_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_13_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnContacts__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_13_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_13_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_13__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_13__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_14__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_14__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_14__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_14_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_14_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_14_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_14_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnServers__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_14_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_14_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_14__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_14__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_15__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_15__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_15__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_15_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_15_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_15_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_15_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnRecent__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_15_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_15_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_15__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_15__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_16__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_16__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_16__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_16_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_16_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_16_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_16_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnHome__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_16_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_16_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_16__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_16__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_17__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_17__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_17__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_17_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_17_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_17_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_17_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnOptions__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_17_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_17_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_17__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_17__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_18__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_18__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_18__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_18_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_18_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_18_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_18_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnOptions__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_18_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_18_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_18__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_18__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_19__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_19__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_19__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_19_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_19_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_19_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_19_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_19_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_19_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_19__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_19__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_20__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_20__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_20__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_20_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_20_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_20_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_20_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnAbout__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_20_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_20_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_20__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_20__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_21__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_21__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_21__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_21_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_21_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_21_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_21_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_21_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_21_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_21__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_21__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_22__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_22__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_22__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_22_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_22_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_22_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_22_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_22_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_22_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_22__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_22__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_23__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_23__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_23__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_23_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_23_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_23_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_23_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnAbout__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_23_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_23_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_23__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_23__ref_ref

.globl m_Skymu_Native_Windows_MenuBarController_Build_b_11_24__ref_ref
.type m_Skymu_Native_Windows_MenuBarController_Build_b_11_24__ref_ref, @function
m_Skymu_Native_Windows_MenuBarController_Build_b_11_24__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_24_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_24_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_24_ref_ref_0002:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_24_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy__ref_ref
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_24_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_MenuBarController_Build_b_11_24_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_MenuBarController_Build_b_11_24__ref_ref, .-m_Skymu_Native_Windows_MenuBarController_Build_b_11_24__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Native_Windows_MenuBarController_c_cctor_void:
    .asciz "Skymu.Native.Windows.MenuBarController/'<>c'"

.LN_1_m_Skymu_Native_Windows_MenuBarController_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "Plugin"

.LN_2_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "status"

.LN_3_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Native_Windows_MenuBarController_OnStatus_d_17_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref:
    .asciz "Skymu.Native.Windows.NativeMenuBar"

.LN_1_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref:
    .asciz "_menuBar"

.LN_2_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref:
    .asciz "_menuBar"

.LN_3_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref:
    .asciz "Skymu.Native.Windows.NativeSubMenu"

.LN_4_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref:
    .asciz "_extrasMenu"

.LN_5_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref:
    .asciz "login_menu"

.LN_6_m_Skymu_Native_Windows_MenuBarController_ctor_ref_ref:
    .asciz "login_menu"

.LS_0_m_Skymu_Native_Windows_MenuBarController_ICN_i4:
    .short 112, 97, 99, 107, 58, 47, 47, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 58, 44, 44, 44, 47, 84, 104, 101, 109, 101, 115, 47

.LS_1_m_Skymu_Native_Windows_MenuBarController_ICN_i4:
    .short 47, 65, 115, 115, 101, 116, 115, 47, 85, 110, 105, 118, 101, 114, 115, 97, 108, 47, 73, 99, 111, 110, 47, 115, 107, 121, 112, 101, 45, 115, 116, 97, 116, 117, 115, 46, 112, 110, 103

.LN_0_m_Skymu_Native_Windows_MenuBarController_MI_ref_ref:
    .asciz "System.EventHandler>"

.LN_0_m_Skymu_Native_Windows_MenuBarController_MI_ref_ref_2:
    .asciz "Skymu.Native.Windows.NativeSubMenu>"

.LN_0_m_Skymu_Native_Windows_MenuBarController_MI_ref_ref_gen:
    .asciz "int>>"

.LN_0_m_Skymu_Native_Windows_MenuBarController_MI_ref:
    .asciz "System.EventHandler>"

.LS_0_m_Skymu_Native_Windows_MenuBarController_SEP_void:
    .short 36

.LN_1_m_Skymu_Native_Windows_MenuBarController_SEP_void:
    .asciz "System.EventHandler>"

.LN_0_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_1_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_2_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69

.LS_3_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 79, 78, 76, 73, 78, 69, 83, 84, 65, 84, 85, 83

.LN_4_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LN_5_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Skymu.Native.Windows.NativeSubMenu"

.LS_6_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 79, 78, 76, 73, 78, 69, 83, 84, 65, 84, 85, 83

.LS_7_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 79, 78, 76, 73, 78, 69

.LN_8_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_9_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "int>"

.LS_10_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 65, 87, 65, 89

.LN_11_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_12_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "int>"

.LS_13_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 68, 78, 68

.LN_14_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_15_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "int>"

.LS_16_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 73, 78, 86, 73, 83, 73, 66, 76, 69

.LN_17_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_18_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "int>"

.LS_19_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 79, 70, 70, 76, 73, 78, 69

.LN_20_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_21_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "int>"

.LS_22_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 36

.LN_23_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "int>>"

.LS_24_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 83, 84, 65, 84, 85, 83, 77, 69, 78, 85, 95, 67, 65, 80, 84, 73, 79, 78, 95, 67, 70, 95, 79, 80, 84, 73, 79, 78, 83, 50

.LN_25_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "int>"

.LN_26_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_27_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_28_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_29_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_30_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_31_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_32_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 80, 82, 73, 86, 65, 67, 89

.LN_33_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_34_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_35_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_36_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 65, 67, 67, 79, 85, 78, 84

.LN_37_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_38_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_39_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_40_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 66, 85, 89, 67, 82, 69, 68, 73, 84

.LN_41_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_42_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_43_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_44_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_45_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_46_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_47_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 65, 99, 99, 111, 117, 110, 116, 32, 109, 97, 110, 97, 103, 101, 114

.LN_48_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "<>9__11_5"

.LN_49_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "<>9"

.LN_50_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_51_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "<>9__11_5"

.LN_52_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_53_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_54_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_55_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 67, 72, 65, 78, 71, 69, 80, 65, 83, 83, 87, 79, 82, 68

.LN_56_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_57_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_58_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_59_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 83, 73, 71, 78, 95, 79, 85, 84

.LN_60_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_61_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_62_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_63_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_64_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 83, 87, 73, 84, 67, 72, 95, 85, 83, 69, 82

.LN_65_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_66_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_67_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_68_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_69_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 67, 76, 79, 83, 69

.LN_70_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_71_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_72_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_73_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_74_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_75_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_76_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69

.LS_77_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 65, 99, 99, 111, 117, 110, 116, 32, 109, 97, 110, 97, 103, 101, 114

.LN_78_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "<>9__11_9"

.LN_79_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "<>9"

.LN_80_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_81_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "<>9__11_9"

.LN_82_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_83_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_84_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_85_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 75, 89, 80, 69, 95, 67, 76, 79, 83, 69

.LN_86_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_87_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_88_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_89_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_90_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_91_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_92_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 84, 65, 67, 84, 83

.LS_93_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 84, 65, 67, 84, 83, 95, 65, 68, 68, 95, 67, 79, 78, 84, 65, 67, 84

.LN_94_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_95_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_96_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_97_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_98_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 84, 65, 67, 84, 83, 95, 78, 69, 87, 95, 67, 79, 78, 84, 65, 67, 84

.LN_99_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_100_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_101_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_102_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 84, 65, 67, 84, 83, 95, 83, 69, 65, 82, 67, 72

.LN_103_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_104_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_105_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_106_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 84, 65, 67, 84, 83, 95, 73, 77, 80, 79, 82, 84

.LN_107_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_108_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_109_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_110_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 84, 65, 67, 84, 83, 95, 78, 69, 87, 95, 71, 82, 79, 85, 80

.LN_111_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_112_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_113_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_114_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_115_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_116_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_117_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 84, 65, 67, 84, 83, 95, 71, 82, 79, 85, 80, 83

.LN_118_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_119_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_120_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_121_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 84, 65, 67, 84, 83, 95, 83, 72, 79, 87, 95, 79, 85, 84, 76, 79, 79, 75

.LN_122_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_123_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_124_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_125_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_126_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_127_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_128_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 66, 85, 68, 68, 89, 77, 69, 78, 85, 95, 82, 69, 77, 79, 86, 69

.LN_129_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_130_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_131_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_132_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_133_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_134_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78

.LS_135_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 80, 82, 79, 70, 73, 76, 69, 95, 80, 65, 78, 69, 76

.LN_136_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_137_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_138_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_139_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 65, 68, 68, 95, 84, 79, 95, 67, 79, 78, 84, 65, 67, 84, 83

.LN_140_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_141_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_142_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_143_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 65, 68, 68, 95, 80, 69, 79, 80, 76, 69

.LN_144_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_145_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_146_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_147_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 82, 69, 78, 65, 77, 69

.LN_148_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_149_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_150_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_151_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 76, 69, 65, 86, 69

.LN_152_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_153_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_154_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_155_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 66, 76, 79, 67, 75

.LN_156_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_157_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_158_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_159_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 85, 78, 66, 76, 79, 67, 75

.LN_160_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_161_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_162_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_163_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 77, 69, 78, 85, 95, 78, 79, 84, 73, 70, 73, 67, 65, 84, 73, 79, 78, 83

.LN_164_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_165_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_166_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_167_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_168_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_169_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_170_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 83, 69, 65, 82, 67, 72

.LN_171_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_172_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_173_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_174_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 79, 76, 68, 95, 77, 69, 83, 83, 65, 71, 69, 83

.LN_175_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_176_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_177_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_178_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_179_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_180_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_181_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 77, 65, 82, 75, 95, 85, 78, 82, 69, 65, 68

.LN_182_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_183_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_184_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_185_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 77, 65, 82, 75, 95, 82, 69, 65, 68

.LN_186_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_187_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_188_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_189_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 95, 72, 73, 68, 69

.LN_190_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_191_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_192_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_193_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_194_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_195_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76

.LS_196_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76

.LN_197_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_198_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_199_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_200_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_201_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 83, 84, 65, 82, 84, 95, 86, 73, 68, 69, 79

.LN_202_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_203_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_204_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_205_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 65, 78, 83, 87, 69, 82

.LN_206_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_207_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_208_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_209_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_210_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_211_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_212_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 73, 71, 78, 79, 82, 69

.LN_213_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_214_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_215_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_216_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 77, 85, 84, 69

.LN_217_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_218_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_219_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_220_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 85, 78, 77, 85, 84, 69

.LN_221_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_222_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_223_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_224_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 72, 79, 76, 68

.LN_225_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_226_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_227_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_228_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 82, 69, 83, 85, 77, 69

.LN_229_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_230_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_231_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_232_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 84, 82, 65, 78, 83, 70, 69, 82

.LN_233_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_234_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_235_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_236_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 72, 65, 78, 71, 95, 85, 80

.LN_237_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_238_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_239_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_240_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_241_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_242_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_243_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 67, 65, 76, 76, 95, 65, 95, 80, 72, 79, 78, 69, 95, 78, 85, 77, 66, 69, 82

.LN_244_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_245_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_246_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_247_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_248_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_249_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_250_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 65, 85, 68, 73, 79

.LN_251_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_252_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_253_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_254_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 86, 73, 68, 69, 79, 95, 83, 69, 84, 84, 73, 78, 71, 83

.LN_255_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_256_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_257_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_258_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 86, 73, 68, 69, 79, 95, 83, 78, 65, 80, 83, 72, 79, 84

.LN_259_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_260_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_261_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_262_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_263_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_264_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_265_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 67, 65, 76, 76, 95, 81, 85, 65, 76, 73, 84, 89

.LN_266_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_267_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_268_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_269_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 67, 65, 76, 76, 95, 84, 79, 79, 76, 66, 65, 82, 95, 84, 69, 67, 72, 78, 73, 67, 65, 76, 95, 73, 78, 70, 79

.LN_270_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_271_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_272_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_273_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_274_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_275_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87

.LS_276_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 67, 79, 78, 84, 65, 67, 84, 83

.LN_277_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_278_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_279_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_280_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_281_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 83, 101, 114, 118, 101, 114, 115

.LN_282_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_283_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_284_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_285_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_286_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 67, 79, 78, 86, 69, 82, 83, 65, 84, 73, 79, 78, 83

.LN_287_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_288_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_289_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_290_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_291_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 86, 79, 73, 67, 69, 77, 65, 73, 76, 83

.LN_292_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_293_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_294_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_295_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 70, 73, 76, 69, 83, 83, 69, 78, 84

.LN_296_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_297_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_298_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_299_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 83, 77, 83, 77, 69, 83, 83, 65, 71, 69, 83

.LN_300_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_301_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_302_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_303_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 73, 78, 83, 84, 65, 78, 84, 95, 77, 69, 83, 83, 65, 71, 69, 83

.LN_304_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_305_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_306_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_307_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_308_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_309_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_310_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 72, 79, 77, 69

.LN_311_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_312_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_313_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_314_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_315_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 80, 82, 79, 70, 73, 76, 69

.LN_316_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_317_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_318_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_319_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 67, 65, 76, 76, 95, 80, 72, 79, 78, 69, 83

.LN_320_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_321_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_322_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_323_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 83, 78, 65, 80, 83, 72, 79, 84, 83, 95, 71, 65, 76, 76, 69, 82, 89

.LN_324_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_325_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_326_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_327_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_328_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_329_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_330_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 83, 73, 78, 71, 76, 69, 95, 87, 73, 78, 68, 79, 87, 95, 77, 79, 68, 69

.LN_331_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_332_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_333_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_334_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 77, 85, 76, 84, 73, 95, 87, 73, 78, 68, 79, 87, 95, 77, 79, 68, 69

.LN_335_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_336_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_337_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_338_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 86, 73, 69, 87, 95, 70, 85, 76, 76, 83, 67, 82, 69, 69, 78

.LN_339_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_340_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_341_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_342_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_343_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_344_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_345_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 83, 72, 79, 87, 95, 72, 73, 68, 68, 69, 78, 95, 67, 79, 78, 86

.LN_346_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_347_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_348_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_349_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_350_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_351_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83

.LS_352_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83, 95, 69, 88, 84, 82, 65, 83

.LN_353_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_extrasMenu"

.LN_354_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_355_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_356_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_357_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_358_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_359_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_360_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83, 95, 76, 65, 78, 71, 85, 65, 71, 69

.LN_361_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_362_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_363_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_364_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_365_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_366_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_367_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83, 95, 65, 67, 67, 69, 83, 83, 73, 66, 73, 76, 73, 84, 89

.LN_368_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_369_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_370_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_371_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83, 95, 83, 72, 65, 82, 69

.LN_372_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_373_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_374_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_375_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_376_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_377_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_378_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83, 95, 79, 80, 84, 73, 79, 78, 83

.LN_379_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_380_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_381_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_382_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_383_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_384_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_385_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83

.LS_386_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 76, 79, 71, 73, 78, 95, 67, 72, 65, 78, 71, 69, 95, 76, 65, 78, 71, 85, 65, 71, 69

.LN_387_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_388_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_389_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_390_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_391_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_392_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_393_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 76, 79, 71, 73, 78, 95, 67, 79, 78, 78, 69, 67, 84, 73, 79, 78, 95, 79, 80, 84, 73, 79, 78, 83

.LN_394_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_395_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_396_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_397_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_398_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_399_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_400_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_401_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 84, 79, 79, 76, 83, 95, 65, 67, 67, 69, 83, 83, 73, 66, 73, 76, 73, 84, 89

.LN_402_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_403_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_404_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_405_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_406_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_407_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80

.LS_408_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 72, 69, 76, 80

.LN_409_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_410_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_411_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_412_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 72, 69, 65, 82, 84, 66, 69, 65, 84

.LN_413_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_414_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_415_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_416_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_417_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_418_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_419_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 81, 85, 65, 76, 73, 84, 89

.LN_420_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_421_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_422_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_423_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 85, 80, 68, 65, 84, 69, 83

.LN_424_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_425_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_426_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_427_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_428_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 70, 69, 69, 68, 66, 65, 67, 75

.LN_429_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_430_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_431_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_432_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_433_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_434_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_435_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 65, 66, 79, 85, 84

.LN_436_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_437_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_438_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_439_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_440_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 80, 82, 73, 86, 65, 67, 89

.LN_441_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_442_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_443_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_444_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_445_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "login_menu"

.LN_446_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "_menuBar"

.LS_447_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80

.LS_448_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 72, 69, 76, 80

.LN_449_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_450_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_451_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_452_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_453_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_454_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_455_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 85, 80, 68, 65, 84, 69, 83

.LN_456_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_457_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_458_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_459_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_460_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_461_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_462_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_463_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 65, 66, 79, 85, 84

.LN_464_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_465_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_466_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_467_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LS_468_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .short 115, 77, 65, 73, 78, 77, 69, 78, 85, 95, 72, 69, 76, 80, 95, 80, 82, 73, 86, 65, 67, 89

.LN_469_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "System.EventHandler"

.LN_470_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item1"

.LN_471_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "Item2"

.LN_472_m_Skymu_Native_Windows_MenuBarController_Build_void:
    .asciz "object>"

.LN_0_m_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref:
    .asciz "ActionRequested"

.LN_1_m_Skymu_Native_Windows_MenuBarController_add_ActionRequested_ref:
    .asciz "ActionRequested"

.LN_0_m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref:
    .asciz "ActionRequested"

.LN_1_m_Skymu_Native_Windows_MenuBarController_remove_ActionRequested_ref:
    .asciz "ActionRequested"

.LN_0_m_Skymu_Native_Windows_MenuBarController_Raise_v:
    .asciz "ActionRequested"

.LN_0_m_Skymu_Native_Windows_MenuBarController_OnStatus_v:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Native_Windows_MenuBarController_OnStatus_v:
    .asciz "status"

.LN_2_m_Skymu_Native_Windows_MenuBarController_OnStatus_v:
    .asciz "<>1__state"

.LN_3_m_Skymu_Native_Windows_MenuBarController_OnStatus_v:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Native_Windows_MenuBarController_OnSignOut_ref_ref:
    .asciz "ActiveViewModel"

.LN_0_m_Skymu_Native_Windows_MenuBarController_OnSwitchUser_ref_ref:
    .asciz "ActiveViewModel"

.LN_0_m_Skymu_Native_Windows_MenuBarController_OnAbout_ref_ref:
    .asciz "Skymu.Forms.About"

.LS_0_m_Skymu_Native_Windows_MenuBarController_OnPrivacyPolicy_ref_ref:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 108, 101, 103, 97, 108, 47, 112, 114, 105, 118, 97, 99, 121

.LN_0_m_Skymu_Native_Windows_MenuBarController_OnOptions_ref_ref:
    .asciz "Skymu.Forms.Options"

.LN_0_m_Skymu_Native_Windows_MenuBarController_OnCheckUpdates_ref_ref:
    .asciz "Skymu.Forms.Pages.Updater"

.LN_0_m_Skymu_Native_Windows_MenuBarController_DisableExtras_void:
    .asciz "_extrasMenu"

.LS_1_m_Skymu_Native_Windows_MenuBarController_DisableExtras_void:
    .short 115, 77, 69, 78, 85, 95, 69, 88, 84, 82, 65, 83, 95, 71, 69, 84, 95, 65, 80, 80, 83, 95, 67, 65, 80, 84, 73, 79, 78

.LN_0_m_Skymu_Native_Windows_MenuBarController_RedoExtras_arr:
    .asciz "_extrasMenu"

.LS_1_m_Skymu_Native_Windows_MenuBarController_RedoExtras_arr:
    .short 115, 77, 69, 78, 85, 95, 69, 88, 84, 82, 65, 83, 95, 71, 69, 84, 95, 65, 80, 80, 83, 95, 67, 65, 80, 84, 73, 79, 78

    .section .note.GNU-stack,"",@progbits
