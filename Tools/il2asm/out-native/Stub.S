    .text

.globl m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine__ref
.type m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine__ref, @function
m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine__ref, .-m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine__ref
.globl m_Stub_Core_c_DisplayClass30_0_ctor__void
.type m_Stub_Core_c_DisplayClass30_0_ctor__void, @function
m_Stub_Core_c_DisplayClass30_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Stub_Core_c_DisplayClass30_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_c_DisplayClass30_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_c_DisplayClass30_0_ctor__void, .-m_Stub_Core_c_DisplayClass30_0_ctor__void
.globl m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0__void
.type m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0__void, @function
m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d__gen
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0__void, .-m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0__void
.globl m_Stub_Core_c_DisplayClass71_0_ctor__void
.type m_Stub_Core_c_DisplayClass71_0_ctor__void, @function
m_Stub_Core_c_DisplayClass71_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Stub_Core_c_DisplayClass71_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_c_DisplayClass71_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_c_DisplayClass71_0_ctor__void, .-m_Stub_Core_c_DisplayClass71_0_ctor__void
.globl m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0__ref
.type m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0__ref, @function
m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_000c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_ConnectionStatus__v
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0012:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0018:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_001d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_Status__ref
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0__ref, .-m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0__ref
.globl m_Stub_Core_AnswerCall_d_52_MoveNext__void
.type m_Stub_Core_AnswerCall_d_52_MoveNext__void, @function
m_Stub_Core_AnswerCall_d_52_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_004e
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0013:
    mov -72(%rbp), %rdi
    lea .LN_2_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0018:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0019:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_001a:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Stub_Core_StartCall__ref_b_b
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_001f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0024:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0025:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0027:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_get_IsCompleted__void
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_002c:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_006a
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_002e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_002f:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0030:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0031:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0032:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0038:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0039:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_003f:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0044:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0046:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0047:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_Yggdrasil_Yggdrasil_Models_ActiveCall_valuetype_Stub_Core_AnswerCall_d_52__gen_gen
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_004c:
    jmp .Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_00a1
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_004f:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0054:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0056:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_005b:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0062:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0063:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0064:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0065:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_8_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_006a:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_006c:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0071:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0072:
    jmp .Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_008d
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_008e:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0090:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_9_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0095:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_0096:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Stub_Core_AnswerCall_d_52_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_009b:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_009c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_SetResult__gen
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_00a1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_AnswerCall_d_52_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_AnswerCall_d_52_MoveNext__void, .-m_Stub_Core_AnswerCall_d_52_MoveNext__void
.globl m_Stub_Core_AnswerCall_d_52_SetStateMachine__ref
.type m_Stub_Core_AnswerCall_d_52_SetStateMachine__ref, @function
m_Stub_Core_AnswerCall_d_52_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_AnswerCall_d_52_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Stub_Core_AnswerCall_d_52_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_AnswerCall_d_52_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_AnswerCall_d_52_SetStateMachine__ref, .-m_Stub_Core_AnswerCall_d_52_SetStateMachine__ref
.globl m_Stub_Core_StartCall_d_50_MoveNext__void
.type m_Stub_Core_StartCall_d_50_MoveNext__void, @function
m_Stub_Core_StartCall_d_50_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Stub_Core_StartCall_d_50_MoveNext_void_00e8
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0014:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0015:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_001a:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_001b:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_StartCall_d_50_MoveNext_void_0020
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_001d:
    mov -72(%rbp), %rax
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_001e:
    jmp .Lm_Stub_Core_StartCall_d_50_MoveNext_void_0025
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0020:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Dispose__void
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0025:
    call m_System_Reflection_Assembly_GetExecutingAssembly__void
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_002a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Reflection_Assembly_get_Location__void
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_002f:
    mov -80(%rbp), %rdi
    call m_System_IO_Path_GetDirectoryName__ref
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0034:
    lea .LS_3_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0039:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_003e:
    mov -80(%rbp), %rdi
    call m_System_IO_File_OpenRead__ref
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0043:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0045:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0046:
    lea .LN_4_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_NLayer_NAudioSupport_ManagedMpegStream_ctor__ref
    mov %r12, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_004b:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_5_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0050:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0051:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0052:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Stub_Core_WaveDispenser__void
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0057:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_6_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_005c:
    mov $48000, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0061:
    mov $16, %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0063:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0064:
    lea .LN_7_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_NAudio_Wave_WaveFormat_ctor__i4_i4_i4
    mov %r12, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0069:
    lea .LN_8_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_NAudio_Wave_SilenceProvider_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_006e:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0070:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0071:
    mov -80(%rbp), %rdi
    lea .LN_9_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0076:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0078:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Init__ref
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_007d:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_007e:
    mov -80(%rbp), %rdi
    lea .LN_10_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0083:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Play__void
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0088:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0089:
    lea .LN_11_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Threading_Tasks_TaskCompletionSource_1_bool_ctor__void
    mov %r12, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_008e:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_12_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0093:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0094:
    lea m_Stub_Core_StartCall_b_50_0__ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_009a:
    lea .LN_13_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_ParameterizedThreadStart_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_009f:
    lea .LN_14_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Thread_ctor__ref
    mov %r12, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00a4:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Thread_Start__void
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00a9:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00aa:
    mov -80(%rbp), %rdi
    lea .LN_15_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00af:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_TaskCompletionSource_1_bool_get_Task__void
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00b4:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00b9:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00bb:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00bd:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00c2:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_StartCall_d_50_MoveNext_void_0105
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00c4:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00c5:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00c6:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00c7:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00c8:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_16_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00cd:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00ce:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00d0:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_17_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00d5:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00d6:
    mov -80(%rbp), %rdi
    lea .LN_18_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00db:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00dd:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00de:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Stub_Core_StartCall_d_50__gen_gen
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00e3:
    jmp .Lm_Stub_Core_StartCall_d_50_MoveNext_void_01aa
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00e8:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00e9:
    mov -80(%rbp), %rdi
    lea .LN_19_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00ee:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00f0:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00f1:
    mov -80(%rbp), %rdi
    lea .LN_20_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00f6:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00fc:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00fd:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00fe:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_00ff:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0100:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_21_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0105:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0107:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_010c:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_StartCall_d_50_MoveNext_void_0112
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_010e:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_010f:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0110:
    jmp .Lm_Stub_Core_StartCall_d_50_MoveNext_void_018f
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0112:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0113:
    mov -80(%rbp), %rdi
    lea .LN_22_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0118:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Stop__void
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_011d:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_011e:
    mov -80(%rbp), %rdi
    lea .LN_23_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0123:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Dispose__void
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0128:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0129:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_012a:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Stub_Core_WaveDispenser__void
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_012f:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_24_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0134:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0135:
    mov -80(%rbp), %rdi
    lea .LN_25_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_013a:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_013b:
    mov -88(%rbp), %rdi
    lea .LN_26_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0140:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Init__ref
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0145:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0146:
    mov -80(%rbp), %rdi
    lea .LN_27_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_014b:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Play__void
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0150:
    lea .LS_28_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0155:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0156:
    mov -88(%rbp), %rdi
    lea .LN_29_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_015b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_015c:
    mov -96(%rbp), %rdi
    lea .LN_30_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0161:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0162:
    mov -104(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -104(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0167:
    lea .LN_31_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %r8
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ActiveCall_ctor__ref_ref_b_arr
    mov %r12, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_016c:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_016d:
    jmp .Lm_Stub_Core_StartCall_d_50_MoveNext_void_018f
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_018f:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0190:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0192:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_32_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0197:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0198:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_0199:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_33_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_019e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_019f:
    mov -80(%rbp), %rdi
    lea .LN_34_m_Stub_Core_StartCall_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_01a4:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_01a5:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_SetResult__gen
    mov %rax, -80(%rbp)
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_01aa:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_StartCall_d_50_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_StartCall_d_50_MoveNext__void, .-m_Stub_Core_StartCall_d_50_MoveNext__void
.globl m_Stub_Core_StartCall_d_50_SetStateMachine__ref
.type m_Stub_Core_StartCall_d_50_SetStateMachine__ref, @function
m_Stub_Core_StartCall_d_50_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_StartCall_d_50_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StartCall_d_50_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_StartCall_d_50_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StartCall_d_50_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_StartCall_d_50_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StartCall_d_50_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_StartCall_d_50_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_StartCall_d_50_SetStateMachine__ref, .-m_Stub_Core_StartCall_d_50_SetStateMachine__ref
.globl m_Stub_Core_add_DialogTube__ref
.type m_Stub_Core_add_DialogTube__ref, @function
m_Stub_Core_add_DialogTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_add_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0010:
.Lm_Stub_Core_add_DialogTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_add_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_DialogBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_DialogTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_add_DialogTube_ref_0007
.Lm_Stub_Core_add_DialogTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_add_DialogTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_add_DialogTube__ref, .-m_Stub_Core_add_DialogTube__ref
.globl m_Stub_Core_remove_DialogTube__ref
.type m_Stub_Core_remove_DialogTube__ref, @function
m_Stub_Core_remove_DialogTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_remove_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0010:
.Lm_Stub_Core_remove_DialogTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_remove_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_DialogBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_DialogTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_remove_DialogTube_ref_0007
.Lm_Stub_Core_remove_DialogTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_remove_DialogTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_remove_DialogTube__ref, .-m_Stub_Core_remove_DialogTube__ref
.globl m_Stub_Core_add_MessageTube__ref
.type m_Stub_Core_add_MessageTube__ref, @function
m_Stub_Core_add_MessageTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_add_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0010:
.Lm_Stub_Core_add_MessageTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_add_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_MessageBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_MessageTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_add_MessageTube_ref_0007
.Lm_Stub_Core_add_MessageTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_add_MessageTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_add_MessageTube__ref, .-m_Stub_Core_add_MessageTube__ref
.globl m_Stub_Core_remove_MessageTube__ref
.type m_Stub_Core_remove_MessageTube__ref, @function
m_Stub_Core_remove_MessageTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_remove_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0010:
.Lm_Stub_Core_remove_MessageTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_remove_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_MessageBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_MessageTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_remove_MessageTube_ref_0007
.Lm_Stub_Core_remove_MessageTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_remove_MessageTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_remove_MessageTube__ref, .-m_Stub_Core_remove_MessageTube__ref
.globl m_Stub_Core_add_ListTube__ref
.type m_Stub_Core_add_ListTube__ref, @function
m_Stub_Core_add_ListTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_add_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_ListTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_ListTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0010:
.Lm_Stub_Core_add_ListTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_add_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_ListTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_ListTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_add_ListTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_ListBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_ListTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_add_ListTube_ref_0007
.Lm_Stub_Core_add_ListTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_add_ListTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_add_ListTube__ref, .-m_Stub_Core_add_ListTube__ref
.globl m_Stub_Core_remove_ListTube__ref
.type m_Stub_Core_remove_ListTube__ref, @function
m_Stub_Core_remove_ListTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_remove_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0010:
.Lm_Stub_Core_remove_ListTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_remove_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_ListBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_ListTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_remove_ListTube_ref_0007
.Lm_Stub_Core_remove_ListTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_remove_ListTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_remove_ListTube__ref, .-m_Stub_Core_remove_ListTube__ref
.globl m_Stub_Core_get_Name__void
.type m_Stub_Core_get_Name__void, @function
m_Stub_Core_get_Name__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_Name_void_0000:
    lea .LS_0_m_Stub_Core_get_Name_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_Name_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_Name_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_Name__void, .-m_Stub_Core_get_Name__void
.globl m_Stub_Core_get_InternalName__void
.type m_Stub_Core_get_InternalName__void, @function
m_Stub_Core_get_InternalName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_InternalName_void_0000:
    lea .LS_0_m_Stub_Core_get_InternalName_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_InternalName_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_InternalName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_InternalName__void, .-m_Stub_Core_get_InternalName__void
.globl m_Stub_Core_get_SupportsServers__void
.type m_Stub_Core_get_SupportsServers__void, @function
m_Stub_Core_get_SupportsServers__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_SupportsServers_void_0000:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_SupportsServers_void_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_SupportsServers_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_SupportsServers__void, .-m_Stub_Core_get_SupportsServers__void
.globl m_Stub_Core_get_AuthenticationTypes__void
.type m_Stub_Core_get_AuthenticationTypes__void, @function
m_Stub_Core_get_AuthenticationTypes__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_0000:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_0001:
    mov -24(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_0007:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_0008:
    mov $4, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_0009:
    lea .LS_0_m_Stub_Core_get_AuthenticationTypes_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_000e:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_000f:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_0010:
    lea .LN_1_m_Stub_Core_get_AuthenticationTypes_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %r8
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref
    mov %r12, -40(%rbp)
.Lm_Stub_Core_get_AuthenticationTypes_void_0015:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Stub_Core_get_AuthenticationTypes_void_0016:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_AuthenticationTypes_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_AuthenticationTypes__void, .-m_Stub_Core_get_AuthenticationTypes__void
.globl m_Stub_Core_get_TypingUsersList__void
.type m_Stub_Core_get_TypingUsersList__void, @function
m_Stub_Core_get_TypingUsersList__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_TypingUsersList_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_TypingUsersList_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Stub_Core_get_TypingUsersList_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_TypingUsersList_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_TypingUsersList_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_TypingUsersList__void, .-m_Stub_Core_get_TypingUsersList__void
.globl m_Stub_Core_set_TypingUsersList__ref
.type m_Stub_Core_set_TypingUsersList__ref, @function
m_Stub_Core_set_TypingUsersList__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_set_TypingUsersList_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_set_TypingUsersList_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_set_TypingUsersList_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_set_TypingUsersList_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_set_TypingUsersList_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_set_TypingUsersList_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_set_TypingUsersList__ref, .-m_Stub_Core_set_TypingUsersList__ref
.globl m_Stub_Core_Dispose__void
.type m_Stub_Core_Dispose__void, @function
m_Stub_Core_Dispose__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_Dispose_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_Dispose_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Stub_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_Dispose_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_Dispose_void_0007:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_Dispose_void_000c
.Lm_Stub_Core_Dispose_void_0009:
    mov -16(%rbp), %rax
.Lm_Stub_Core_Dispose_void_000a:
    jmp .Lm_Stub_Core_Dispose_void_0011
.Lm_Stub_Core_Dispose_void_000c:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Stop__void
.Lm_Stub_Core_Dispose_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_Dispose_void_0012:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Stub_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_Dispose_void_0017:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_Dispose_void_0018:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_Dispose_void_001d
.Lm_Stub_Core_Dispose_void_001a:
    mov -16(%rbp), %rax
.Lm_Stub_Core_Dispose_void_001b:
    jmp .Lm_Stub_Core_Dispose_void_0022
.Lm_Stub_Core_Dispose_void_001d:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Dispose__void
.Lm_Stub_Core_Dispose_void_0022:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_Dispose_void_0023:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_Dispose_void_0024:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_2_m_Stub_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_Dispose_void_0029:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_Dispose_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_Dispose__void, .-m_Stub_Core_Dispose__void
.globl m_Stub_Core_Authenticate__ref
.type m_Stub_Core_Authenticate__ref, @function
m_Stub_Core_Authenticate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_Authenticate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_Authenticate_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_Authenticate_ref_0002:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -40(%rbp)
.Lm_Stub_Core_Authenticate_ref_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_Authenticate_ref_000c:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_Authenticate_ref_000d:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_Authenticate_ref_0012:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_Authenticate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_Authenticate__ref, .-m_Stub_Core_Authenticate__ref
.globl m_Stub_Core_AuthenticateTwoFA__ref
.type m_Stub_Core_AuthenticateTwoFA__ref, @function
m_Stub_Core_AuthenticateTwoFA__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_AuthenticateTwoFA_ref_0000:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_AuthenticateTwoFA_ref_0001:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_AuthenticateTwoFA_ref_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_AuthenticateTwoFA_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_AuthenticateTwoFA__ref, .-m_Stub_Core_AuthenticateTwoFA__ref
.globl m_Stub_Core_StoreCredential__void
.type m_Stub_Core_StoreCredential__void, @function
m_Stub_Core_StoreCredential__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_StoreCredential_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_StoreCredential_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Stub_Core_StoreCredential_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_StoreCredential_void_0006:
    lea .LS_1_m_Stub_Core_StoreCredential_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StoreCredential_void_000b:
    mov $4, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_StoreCredential_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_StoreCredential_void_000d:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Stub_Core_get_InternalName__void
    mov %rax, -48(%rbp)
.Lm_Stub_Core_StoreCredential_void_0012:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StoreCredential_void_0013:
    lea .LN_2_m_Stub_Core_StoreCredential_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %r9
    mov -48(%rbp), %r8
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_SavedCredential_ctor__ref_ref_v_ref_b
    mov %r12, -24(%rbp)
.Lm_Stub_Core_StoreCredential_void_0018:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_Yggdrasil_Yggdrasil_Models_SavedCredential__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_StoreCredential_void_001d:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_StoreCredential_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_StoreCredential__void, .-m_Stub_Core_StoreCredential__void
.globl m_Stub_Core_GetQRCode__void
.type m_Stub_Core_GetQRCode__void, @function
m_Stub_Core_GetQRCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_GetQRCode_void_0000:
    lea .LN_0_m_Stub_Core_GetQRCode_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetQRCode_void_0005:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_string__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetQRCode_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_GetQRCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_GetQRCode__void, .-m_Stub_Core_GetQRCode__void
.globl m_Stub_Core_EditMessage__ref_ref_ref
.type m_Stub_Core_EditMessage__ref_ref_ref, @function
m_Stub_Core_EditMessage__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Stub_Core_EditMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_0007:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_EditMessage_ref_ref_ref_000c
.Lm_Stub_Core_EditMessage_ref_ref_ref_0009:
    mov -40(%rbp), %rax
.Lm_Stub_Core_EditMessage_ref_ref_ref_000a:
    jmp .Lm_Stub_Core_EditMessage_ref_ref_ref_001d
.Lm_Stub_Core_EditMessage_ref_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_000d:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_000e:
    lea .LS_1_m_Stub_Core_EditMessage_ref_ref_ref(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_0013:
    lea .LN_2_m_Stub_Core_EditMessage_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -56(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_0018:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -40(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_001d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_001e:
    mov -48(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_EditMessage_ref_ref_ref_0023:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_EditMessage_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_EditMessage__ref_ref_ref, .-m_Stub_Core_EditMessage__ref_ref_ref
.globl m_Stub_Core_DeleteMessage__ref_ref
.type m_Stub_Core_DeleteMessage__ref_ref, @function
m_Stub_Core_DeleteMessage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Stub_Core_DeleteMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_DeleteMessage_ref_ref_000c
.Lm_Stub_Core_DeleteMessage_ref_ref_0009:
    mov -32(%rbp), %rax
.Lm_Stub_Core_DeleteMessage_ref_ref_000a:
    jmp .Lm_Stub_Core_DeleteMessage_ref_ref_001d
.Lm_Stub_Core_DeleteMessage_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_000d:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_000e:
    lea .LS_1_m_Stub_Core_DeleteMessage_ref_ref(%rip), %rdi
    mov $36, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_0013:
    lea .LN_2_m_Stub_Core_DeleteMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -48(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_0018:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -32(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_001d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_001e:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_DeleteMessage_ref_ref_0023:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_DeleteMessage_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_DeleteMessage__ref_ref, .-m_Stub_Core_DeleteMessage__ref_ref
.globl m_Stub_Core_GetUserInfo__void
.type m_Stub_Core_GetUserInfo__void, @function
m_Stub_Core_GetUserInfo__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0001:
    call m_System_Threading_SynchronizationContext_get_Current__void
    mov %rax, -32(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Stub_Core_GetUserInfo_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_GetUserInfo_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetUserInfo_void_000c:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Stub_Core_GetUserInfo_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0011:
    lea .LS_2_m_Stub_Core_GetUserInfo_void(%rip), %rdi
    mov $50, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0016:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_Status__ref
.Lm_Stub_Core_GetUserInfo_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetUserInfo_void_001c:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Stub_Core_GetUserInfo_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0021:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0022:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_ConnectionStatus__v
.Lm_Stub_Core_GetUserInfo_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0028:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Stub_Core_GetUserInfo_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetUserInfo_void_002d:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_Yggdrasil_Yggdrasil_Models_User__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_GetUserInfo_void_0032:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_GetUserInfo_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_GetUserInfo__void, .-m_Stub_Core_GetUserInfo__void
.globl m_Stub_Core_get_ClickableConfigurations__void
.type m_Stub_Core_get_ClickableConfigurations__void, @function
m_Stub_Core_get_ClickableConfigurations__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0000:
    mov $4, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0001:
    mov -24(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0007:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0008:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0009:
    lea .LS_0_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_000e:
    lea .LS_1_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0013:
    lea .LN_2_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref
    mov %r12, -40(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0018:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Stub_Core_get_ClickableConfigurations_void_0019:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_001a:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_001b:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_001c:
    lea .LS_3_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0021:
    lea .LS_4_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0026:
    lea .LN_5_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref
    mov %r12, -40(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_002b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Stub_Core_get_ClickableConfigurations_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_002d:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_002e:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_002f:
    lea .LS_6_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0034:
    lea .LS_7_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0039:
    lea .LN_8_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref
    mov %r12, -40(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_003e:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Stub_Core_get_ClickableConfigurations_void_003f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0040:
    mov $3, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0041:
    mov $3, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0042:
    lea .LS_9_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0047:
    lea .LS_10_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_004c:
    lea .LN_11_m_Stub_Core_get_ClickableConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref
    mov %r12, -40(%rbp)
.Lm_Stub_Core_get_ClickableConfigurations_void_0051:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Stub_Core_get_ClickableConfigurations_void_0052:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_ClickableConfigurations_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_ClickableConfigurations__void, .-m_Stub_Core_get_ClickableConfigurations__void
.globl m_Stub_Core_SetMood__ref
.type m_Stub_Core_SetMood__ref, @function
m_Stub_Core_SetMood__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_SetMood_ref_0000:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_SetMood_ref_0001:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_SetMood_ref_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_SetMood_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_SetMood__ref, .-m_Stub_Core_SetMood__ref
.globl m_Stub_Core_SetConnectionStatus__v
.type m_Stub_Core_SetConnectionStatus__v, @function
m_Stub_Core_SetConnectionStatus__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_SetConnectionStatus_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_SetConnectionStatus_v_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_SetConnectionStatus_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_SetConnectionStatus_v_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_ConnectionStatus__v
.Lm_Stub_Core_SetConnectionStatus_v_000c:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_SetConnectionStatus_v_000d:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_SetConnectionStatus_v_0012:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_SetConnectionStatus_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_SetConnectionStatus__v, .-m_Stub_Core_SetConnectionStatus__v
.globl m_Stub_Core_get_TypingTimeout__void
.type m_Stub_Core_get_TypingTimeout__void, @function
m_Stub_Core_get_TypingTimeout__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_TypingTimeout_void_0000:
    mov $5000, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_TypingTimeout_void_0005:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_TypingTimeout_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_TypingTimeout__void, .-m_Stub_Core_get_TypingTimeout__void
.globl m_Stub_Core_get_TypingRepeat__void
.type m_Stub_Core_get_TypingRepeat__void, @function
m_Stub_Core_get_TypingRepeat__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_TypingRepeat_void_0000:
    mov $9000, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_TypingRepeat_void_0005:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_TypingRepeat_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_TypingRepeat__void, .-m_Stub_Core_get_TypingRepeat__void
.globl m_Stub_Core_SetTyping__ref_b
.type m_Stub_Core_SetTyping__ref_b, @function
m_Stub_Core_SetTyping__ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Stub_Core_SetTyping_ref_b_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_SetTyping_ref_b_0001:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_SetTyping_ref_b_0006:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_SetTyping_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_SetTyping__ref_b, .-m_Stub_Core_SetTyping__ref_b
.globl m_Stub_Core_WaveDispenser__void
.type m_Stub_Core_WaveDispenser__void, @function
m_Stub_Core_WaveDispenser__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_WaveDispenser_void_0000:
    lea .LN_0_m_Stub_Core_WaveDispenser_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_NAudio_Wave_WaveOutEvent_ctor__void
    mov %r12, -24(%rbp)
.Lm_Stub_Core_WaveDispenser_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_WaveDispenser_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_WaveDispenser__void, .-m_Stub_Core_WaveDispenser__void
.globl m_Stub_Core_StartCall__ref_b_b
.type m_Stub_Core_StartCall__ref_b_b, @function
m_Stub_Core_StartCall__ref_b_b:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0000:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0002:
    call m_Yggdrasil_Models_ActiveCall_Create__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0007:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_StartCall_ref_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_ref_b_b_000c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Stub_Core_StartCall_ref_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_ref_b_b_0014:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0016:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0017:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Stub_Core_StartCall_ref_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_ref_b_b_001c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Stub_Core_StartCall_ref_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_ref_b_b_0024:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0026:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0027:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Stub_Core_StartCall_ref_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_StartCall_ref_b_b_002c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_002e:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Stub_Core_StartCall_ref_b_b(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0033:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0035:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_Start_valuetype_Stub_Core_StartCall_d_50__gen
    mov %rax, -56(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_003a:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_003c:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Stub_Core_StartCall_ref_b_b(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0041:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_get_Task__void
    mov %rax, -64(%rbp)
.Lm_Stub_Core_StartCall_ref_b_b_0046:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_StartCall_ref_b_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_StartCall__ref_b_b, .-m_Stub_Core_StartCall__ref_b_b
.globl m_Stub_Core_EndCall__ref
.type m_Stub_Core_EndCall__ref, @function
m_Stub_Core_EndCall__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_EndCall_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_EndCall_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_EndCall_ref_0007:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_EndCall_ref_000c
.Lm_Stub_Core_EndCall_ref_0009:
    mov -24(%rbp), %rax
.Lm_Stub_Core_EndCall_ref_000a:
    jmp .Lm_Stub_Core_EndCall_ref_0013
.Lm_Stub_Core_EndCall_ref_000c:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_000d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_TaskCompletionSource_1_bool_TrySetResult__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_EndCall_ref_0012:
    mov -32(%rbp), %rax
.Lm_Stub_Core_EndCall_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_0014:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Stub_Core_EndCall_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_0019:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_EndCall_ref_001a:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_EndCall_ref_001f
.Lm_Stub_Core_EndCall_ref_001c:
    mov -24(%rbp), %rax
.Lm_Stub_Core_EndCall_ref_001d:
    jmp .Lm_Stub_Core_EndCall_ref_0024
.Lm_Stub_Core_EndCall_ref_001f:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Stop__void
.Lm_Stub_Core_EndCall_ref_0024:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_0025:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Stub_Core_EndCall_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_002a:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_EndCall_ref_002b:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_EndCall_ref_0030
.Lm_Stub_Core_EndCall_ref_002d:
    mov -24(%rbp), %rax
.Lm_Stub_Core_EndCall_ref_002e:
    jmp .Lm_Stub_Core_EndCall_ref_0035
.Lm_Stub_Core_EndCall_ref_0030:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_NAudio_Wave_WaveOutEvent_Dispose__void
.Lm_Stub_Core_EndCall_ref_0035:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_0036:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_EndCall_ref_0037:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_3_m_Stub_Core_EndCall_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_EndCall_ref_003c:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_003d:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_EndCall_ref_0042:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_EndCall_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_EndCall__ref, .-m_Stub_Core_EndCall__ref
.globl m_Stub_Core_AnswerCall__ref
.type m_Stub_Core_AnswerCall__ref, @function
m_Stub_Core_AnswerCall__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0002:
    call m_Yggdrasil_Models_ActiveCall_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Stub_Core_AnswerCall_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_AnswerCall_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Stub_Core_AnswerCall_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_AnswerCall_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Stub_Core_AnswerCall_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_AnswerCall_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Stub_Core_AnswerCall_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Stub_Core_AnswerCall_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Stub_Core_AnswerCall_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_Start_valuetype_Stub_Core_AnswerCall_d_52__gen
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Stub_Core_AnswerCall_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Stub_Core_AnswerCall_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_AnswerCall_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_AnswerCall__ref, .-m_Stub_Core_AnswerCall__ref
.globl m_Stub_Core_DeclineCall__ref
.type m_Stub_Core_DeclineCall__ref, @function
m_Stub_Core_DeclineCall__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_DeclineCall_ref_0000:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_DeclineCall_ref_0001:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_DeclineCall_ref_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_DeclineCall_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_DeclineCall__ref, .-m_Stub_Core_DeclineCall__ref
.globl m_Stub_Core_SetMuted__ref_b
.type m_Stub_Core_SetMuted__ref_b, @function
m_Stub_Core_SetMuted__ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Stub_Core_SetMuted_ref_b_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_SetMuted_ref_b_0001:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_SetMuted_ref_b_0006:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_SetMuted_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_SetMuted__ref_b, .-m_Stub_Core_SetMuted__ref_b
.globl m_Stub_Core_SetVideoEnabled__ref_b
.type m_Stub_Core_SetVideoEnabled__ref_b, @function
m_Stub_Core_SetVideoEnabled__ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Stub_Core_SetVideoEnabled_ref_b_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_SetVideoEnabled_ref_b_0001:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_SetVideoEnabled_ref_b_0006:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_SetVideoEnabled_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_SetVideoEnabled__ref_b, .-m_Stub_Core_SetVideoEnabled__ref_b
.globl m_Stub_Core_add_IncomingCallTube__ref
.type m_Stub_Core_add_IncomingCallTube__ref, @function
m_Stub_Core_add_IncomingCallTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_add_IncomingCallTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0010:
.Lm_Stub_Core_add_IncomingCallTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_add_IncomingCallTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_CallBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_IncomingCallTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_add_IncomingCallTube_ref_0007
.Lm_Stub_Core_add_IncomingCallTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_add_IncomingCallTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_add_IncomingCallTube__ref, .-m_Stub_Core_add_IncomingCallTube__ref
.globl m_Stub_Core_remove_IncomingCallTube__ref
.type m_Stub_Core_remove_IncomingCallTube__ref, @function
m_Stub_Core_remove_IncomingCallTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_remove_IncomingCallTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0010:
.Lm_Stub_Core_remove_IncomingCallTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_remove_IncomingCallTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_CallBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_IncomingCallTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_remove_IncomingCallTube_ref_0007
.Lm_Stub_Core_remove_IncomingCallTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_remove_IncomingCallTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_remove_IncomingCallTube__ref, .-m_Stub_Core_remove_IncomingCallTube__ref
.globl m_Stub_Core_add_CallStateChangedTube__ref
.type m_Stub_Core_add_CallStateChangedTube__ref, @function
m_Stub_Core_add_CallStateChangedTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_add_CallStateChangedTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0010:
.Lm_Stub_Core_add_CallStateChangedTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_add_CallStateChangedTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_CallBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_add_CallStateChangedTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_add_CallStateChangedTube_ref_0007
.Lm_Stub_Core_add_CallStateChangedTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_add_CallStateChangedTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_add_CallStateChangedTube__ref, .-m_Stub_Core_add_CallStateChangedTube__ref
.globl m_Stub_Core_remove_CallStateChangedTube__ref
.type m_Stub_Core_remove_CallStateChangedTube__ref, @function
m_Stub_Core_remove_CallStateChangedTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_remove_CallStateChangedTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0010:
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Stub_Core_remove_CallStateChangedTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_CallBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Stub_Core_remove_CallStateChangedTube_ref_0007
.Lm_Stub_Core_remove_CallStateChangedTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_remove_CallStateChangedTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_remove_CallStateChangedTube__ref, .-m_Stub_Core_remove_CallStateChangedTube__ref
.globl m_Stub_Core_get_SupportsVideoCalls__void
.type m_Stub_Core_get_SupportsVideoCalls__void, @function
m_Stub_Core_get_SupportsVideoCalls__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_SupportsVideoCalls_void_0000:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_SupportsVideoCalls_void_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_SupportsVideoCalls_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_SupportsVideoCalls__void, .-m_Stub_Core_get_SupportsVideoCalls__void
.globl m_Stub_Core_AddContact__ref_ref
.type m_Stub_Core_AddContact__ref_ref, @function
m_Stub_Core_AddContact__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0001:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0006:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0007:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0008:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Stub_Core_AddContact_ref_ref_003a
.Lm_Stub_Core_AddContact_ref_ref_000a:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_000b:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Stub_Core_AddContact_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0010:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0011:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_AddContact_ref_ref_0016
.Lm_Stub_Core_AddContact_ref_ref_0013:
    mov -64(%rbp), %rax
.Lm_Stub_Core_AddContact_ref_ref_0014:
    jmp .Lm_Stub_Core_AddContact_ref_ref_0066
.Lm_Stub_Core_AddContact_ref_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0017:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0018:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0019:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_001a:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_001b:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -104(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0020:
    lea -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0022:
    mov -112(%rbp), %rax
    movq $0, (%rax)
.Lm_Stub_Core_AddContact_ref_ref_0028:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0029:
    lea .LN_1_m_Stub_Core_AddContact_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %r8
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_DirectMessage_ctor__ref_i4_ref_gen
    mov %r12, -88(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_002e:
    lea .LN_2_m_Stub_Core_AddContact_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor__v_ref
    mov %r12, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0033:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListBottle_Invoke__ref_gen
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0038:
    jmp .Lm_Stub_Core_AddContact_ref_ref_0066
.Lm_Stub_Core_AddContact_ref_ref_003a:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_003b:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0040:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0041:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0042:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Stub_Core_AddContact_ref_ref_005f
.Lm_Stub_Core_AddContact_ref_ref_0044:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0045:
    mov -80(%rbp), %rdi
    lea .LN_3_m_Stub_Core_AddContact_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_004a:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_004b:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_AddContact_ref_ref_0050
.Lm_Stub_Core_AddContact_ref_ref_004d:
    mov -72(%rbp), %rax
.Lm_Stub_Core_AddContact_ref_ref_004e:
    jmp .Lm_Stub_Core_AddContact_ref_ref_0066
.Lm_Stub_Core_AddContact_ref_ref_0050:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0051:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0052:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0053:
    lea .LN_4_m_Stub_Core_AddContact_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor__v_ref
    mov %r12, -88(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0058:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListBottle_Invoke__ref_gen
    mov %rax, -72(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_005d:
    jmp .Lm_Stub_Core_AddContact_ref_ref_0066
.Lm_Stub_Core_AddContact_ref_ref_005f:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0060:
    mov -80(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0065:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_AddContact_ref_ref_0066:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_0067:
    mov -64(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_AddContact_ref_ref_006c:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_AddContact_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_AddContact__ref_ref, .-m_Stub_Core_AddContact__ref_ref
.globl m_Stub_Core_UpdatePresence__ref
.type m_Stub_Core_UpdatePresence__ref, @function
m_Stub_Core_UpdatePresence__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Stub_Core_UpdatePresence_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0007:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0009:
    jmp .Lm_Stub_Core_UpdatePresence_ref_001a
.Lm_Stub_Core_UpdatePresence_ref_000b:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_000c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_000d:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_000e:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_000f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0010:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0011:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Stub_Core_RandomizeUser__ref
.Lm_Stub_Core_UpdatePresence_ref_0016:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0017:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0018:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_0019:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_001a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_001b:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_001c:
    mov -64(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_001d:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Stub_Core_UpdatePresence_ref_001e:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Stub_Core_UpdatePresence_ref_000b
.Lm_Stub_Core_UpdatePresence_ref_0020:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_UpdatePresence_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_UpdatePresence__ref, .-m_Stub_Core_UpdatePresence__ref
.globl m_Stub_Core_get_ExtraConfigurations__void
.type m_Stub_Core_get_ExtraConfigurations__void, @function
m_Stub_Core_get_ExtraConfigurations__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_0000:
    lea .LN_0_m_Stub_Core_get_ExtraConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_ExtraConfiguration_ctor__void
    mov %r12, -24(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_0005:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_0006:
    lea .LS_1_m_Stub_Core_get_ExtraConfigurations_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_000c:
    lea m_Stub_Core_get_ExtraConfigurations_b_73_0__void(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_0012:
    lea .LN_2_m_Stub_Core_get_ExtraConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_0017:
    lea .LS_3_m_Stub_Core_get_ExtraConfigurations_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_001c:
    lea .LN_4_m_Stub_Core_get_ExtraConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ExtraConfiguration_ctor__ref_ref_ref
    mov %r12, -32(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_0021:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ExtraConfiguration_Add__gen
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_void_0026:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_ExtraConfigurations_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_ExtraConfigurations__void, .-m_Stub_Core_get_ExtraConfigurations__void
.globl m_Stub_Core_StartCall_b_50_0__ref
.type m_Stub_Core_StartCall_b_50_0__ref, @function
m_Stub_Core_StartCall_b_50_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Stub_Core_StartCall_b_50_0_ref_0000:
    mov $3200, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StartCall_b_50_0_ref_0005:
    mov -32(%rbp), %rdi
    call m_System_Threading_Thread_Sleep__i4
.Lm_Stub_Core_StartCall_b_50_0_ref_000a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StartCall_b_50_0_ref_000b:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Stub_Core_StartCall_b_50_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StartCall_b_50_0_ref_0010:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Stub_Core_StartCall_b_50_0_ref_0011:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_StartCall_b_50_0_ref_0015
.Lm_Stub_Core_StartCall_b_50_0_ref_0013:
    mov -24(%rbp), %rax
.Lm_Stub_Core_StartCall_b_50_0_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_StartCall_b_50_0_ref_0015:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_StartCall_b_50_0_ref_0016:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_TaskCompletionSource_1_bool_TrySetResult__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_StartCall_b_50_0_ref_001b:
    mov -32(%rbp), %rax
.Lm_Stub_Core_StartCall_b_50_0_ref_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_StartCall_b_50_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_StartCall_b_50_0__ref, .-m_Stub_Core_StartCall_b_50_0__ref
.globl m_Stub_Core_get_ExtraConfigurations_b_73_0__void
.type m_Stub_Core_get_ExtraConfigurations_b_73_0__void, @function
m_Stub_Core_get_ExtraConfigurations_b_73_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Stub_Core_get_ExtraConfigurations_b_73_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_0007:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_000b
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_0009:
    mov -16(%rbp), %rax
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_000c:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_000d:
    lea .LS_1_m_Stub_Core_get_ExtraConfigurations_b_73_0_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_0012:
    lea .LN_2_m_Stub_Core_get_ExtraConfigurations_b_73_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -32(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_0017:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -16(%rbp)
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Stub_Core_get_ExtraConfigurations_b_73_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Stub_Core_get_ExtraConfigurations_b_73_0__void, .-m_Stub_Core_get_ExtraConfigurations_b_73_0__void
    .globl m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_MoveNext__void
    .type m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_MoveNext__void, @function
m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_MoveNext__void, .-m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_MoveNext__void
    .globl m_Stub_Core_Authenticate__v_ref_ref
    .type m_Stub_Core_Authenticate__v_ref_ref, @function
m_Stub_Core_Authenticate__v_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_Authenticate_v_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_Authenticate__v_ref_ref, .-m_Stub_Core_Authenticate__v_ref_ref
    .globl m_Stub_Core_SendMessage__ref_ref_ref_ref_b
    .type m_Stub_Core_SendMessage__ref_ref_ref_ref_b, @function
m_Stub_Core_SendMessage__ref_ref_ref_ref_b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_SendMessage_ref_ref_ref_ref_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_SendMessage__ref_ref_ref_ref_b, .-m_Stub_Core_SendMessage__ref_ref_ref_ref_b
    .globl m_Stub_Core_FetchMessages__ref_v_i4_ref
    .type m_Stub_Core_FetchMessages__ref_v_i4_ref, @function
m_Stub_Core_FetchMessages__ref_v_i4_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_FetchMessages_ref_v_i4_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_FetchMessages__ref_v_i4_ref, .-m_Stub_Core_FetchMessages__ref_v_i4_ref
    .globl m_Stub_Core_FetchServers__void
    .type m_Stub_Core_FetchServers__void, @function
m_Stub_Core_FetchServers__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_FetchServers_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_FetchServers__void, .-m_Stub_Core_FetchServers__void
    .globl m_Stub_Core_FetchContacts__void
    .type m_Stub_Core_FetchContacts__void, @function
m_Stub_Core_FetchContacts__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_FetchContacts_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_FetchContacts__void, .-m_Stub_Core_FetchContacts__void
    .globl m_Stub_Core_FetchConversations__void
    .type m_Stub_Core_FetchConversations__void, @function
m_Stub_Core_FetchConversations__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_FetchConversations_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_FetchConversations__void, .-m_Stub_Core_FetchConversations__void
    .globl m_Stub_Core_FindNewContact__ref
    .type m_Stub_Core_FindNewContact__ref, @function
m_Stub_Core_FindNewContact__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_FindNewContact_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_FindNewContact__ref, .-m_Stub_Core_FindNewContact__ref
    .globl m_Stub_Core_RandomizeUser__ref
    .type m_Stub_Core_RandomizeUser__ref, @function
m_Stub_Core_RandomizeUser__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_RandomizeUser_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_RandomizeUser__ref, .-m_Stub_Core_RandomizeUser__ref
    .globl m_Stub_Core_ctor__void
    .type m_Stub_Core_ctor__void, @function
m_Stub_Core_ctor__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Stub_Core_ctor_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Stub_Core_ctor__void, .-m_Stub_Core_ctor__void
.Lnullmsg:
    .asciz "null receiver"
.Ltype_NAudio_Wave_SilenceProvider:
    .asciz "NAudio.Wave.SilenceProvider"
.Ltype_NAudio_Wave_WaveFormat:
    .asciz "NAudio.Wave.WaveFormat"
.Ltype_NAudio_Wave_WaveOutEvent:
    .asciz "NAudio.Wave.WaveOutEvent"
.Ltype_NLayer_NAudioSupport_ManagedMpegStream:
    .asciz "NLayer.NAudioSupport.ManagedMpegStream"
.Ltype_Stub_Core:
    .asciz "Stub.Core"
.Ltype_Stub_Core_AnswerCall_d_52:
    .asciz "Stub.Core/<AnswerCall>d__52"
.Ltype_Stub_Core_StartCall_d_50:
    .asciz "Stub.Core/<StartCall>d__50"
.Ltype_Stub_Core_c_DisplayClass30_0:
    .asciz "Stub.Core/'<>c__DisplayClass30_0'"
.Ltype_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d:
    .asciz "Stub.Core/<>c__DisplayClass30_0/<<SendMessage>b__0>d"
.Ltype_Stub_Core_c_DisplayClass71_0:
    .asciz "Stub.Core/'<>c__DisplayClass71_0'"
.Ltype_System_Action:
    .asciz "System.Action"
.Ltype_System_DateTime:
    .asciz "System.DateTime"
.Ltype_System_Random:
    .asciz "System.Random"
.Ltype_System_Threading_ParameterizedThreadStart:
    .asciz "System.Threading.ParameterizedThreadStart"
.Ltype_System_Threading_SendOrPostCallback:
    .asciz "System.Threading.SendOrPostCallback"
.Ltype_System_Threading_Tasks_Task:
    .asciz "System.Threading.Tasks.Task>"
.Ltype_System_Threading_Tasks_TaskCompletionSource_1_bool:
    .asciz "System.Threading.Tasks.TaskCompletionSource`1<bool>"
.Ltype_System_Threading_Thread:
    .asciz "System.Threading.Thread"
.Ltype_System_Threading_Timer:
    .asciz "System.Threading.Timer"
.Ltype_System_Threading_TimerCallback:
    .asciz "System.Threading.TimerCallback"
.Ltype_Yggdrasil_Bottles_CallBottle:
    .asciz "Yggdrasil.Bottles.CallBottle"
.Ltype_Yggdrasil_Bottles_DialogBottle:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.Ltype_Yggdrasil_Bottles_ListItemUpdatedBottle:
    .asciz "Yggdrasil.Bottles.ListItemUpdatedBottle"
.Ltype_Yggdrasil_Bottles_MessageRecievedBottle:
    .asciz "Yggdrasil.Bottles.MessageRecievedBottle"
.Ltype_Yggdrasil_Models_ActionMessage:
    .asciz "Yggdrasil.Models.ActionMessage"
.Ltype_Yggdrasil_Models_ActiveCall:
    .asciz "Yggdrasil.Models.ActiveCall"
.Ltype_Yggdrasil_Models_AuthTypeInfo:
    .asciz "Yggdrasil.Models.AuthTypeInfo"
.Ltype_Yggdrasil_Models_ClickableConfiguration:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.Ltype_Yggdrasil_Models_Conversation:
    .asciz "Yggdrasil.Models.Conversation>"
.Ltype_Yggdrasil_Models_ConversationItem:
    .asciz "Yggdrasil.Models.ConversationItem>"
.Ltype_Yggdrasil_Models_DirectMessage:
    .asciz "Yggdrasil.Models.DirectMessage"
.Ltype_Yggdrasil_Models_ExtraConfiguration:
    .asciz "Yggdrasil.Models.ExtraConfiguration"
.Ltype_Yggdrasil_Models_Group:
    .asciz "Yggdrasil.Models.Group"
.Ltype_Yggdrasil_Models_Message:
    .asciz "Yggdrasil.Models.Message"
.Ltype_Yggdrasil_Models_SavedCredential:
    .asciz "Yggdrasil.Models.SavedCredential"
.Ltype_Yggdrasil_Models_Server:
    .asciz "Yggdrasil.Models.Server"
.Ltype_Yggdrasil_Models_ServerChannel:
    .asciz "Yggdrasil.Models.ServerChannel"
.Ltype_Yggdrasil_Models_User:
    .asciz "Yggdrasil.Models.User"
    .section .rodata
.LSTUB_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_MoveNext_void:
    .asciz "Stub.Core/<>c__DisplayClass30_0/<<SendMessage>b__0>d::MoveNext  [constructor with 7 arguments (limit 5)]"
.LN_0_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void:
    .asciz "<>t__builder"
.LN_1_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void:
    .asciz "<>4__this"
.LN_2_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void:
    .asciz "<>1__state"
.LN_3_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void:
    .asciz "<>t__builder"
.LN_4_m_Stub_Core_c_DisplayClass30_0_SendMessage_b_0_void:
    .asciz "<>t__builder"
.LN_0_m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref:
    .asciz "user"
.LN_1_m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref:
    .asciz "newStatus"
.LN_2_m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref:
    .asciz "user"
.LN_3_m_Stub_Core_c_DisplayClass71_0_RandomizeUser_b_0_ref:
    .asciz "newText"
.LN_0_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "conversation"
.LN_3_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>1__state"
.LN_4_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>u__1"
.LN_5_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>t__builder"
.LN_6_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>u__1"
.LN_7_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>u__1"
.LN_8_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>1__state"
.LN_9_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>1__state"
.LN_10_m_Stub_Core_AnswerCall_d_52_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Stub_Core_AnswerCall_d_52_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LS_3_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .short 87, 101, 98, 105, 87, 97, 98, 111, 46, 109, 112, 51
.LN_4_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "NLayer.NAudioSupport.ManagedMpegStream"
.LN_5_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<reader>5__2"
.LN_6_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LN_7_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "NAudio.Wave.WaveFormat"
.LN_8_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "NAudio.Wave.SilenceProvider"
.LN_9_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LN_10_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LN_11_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "System.Threading.Tasks.TaskCompletionSource`1<bool>"
.LN_12_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_waiter"
.LN_13_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "System.Threading.ParameterizedThreadStart"
.LN_14_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "System.Threading.Thread"
.LN_15_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_waiter"
.LN_16_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_17_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_18_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>t__builder"
.LN_19_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_20_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_21_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_22_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LN_23_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LN_24_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LN_25_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LN_26_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<reader>5__2"
.LN_27_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "_out"
.LS_28_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .short 83, 84, 85, 66, 67, 65, 76, 76
.LN_29_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "conversation"
.LN_30_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "is_video_call"
.LN_31_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "Yggdrasil.Models.ActiveCall"
.LN_32_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_33_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<reader>5__2"
.LN_34_m_Stub_Core_StartCall_d_50_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Stub_Core_StartCall_d_50_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Stub_Core_add_DialogTube_ref:
    .asciz "DialogTube"
.LN_1_m_Stub_Core_add_DialogTube_ref:
    .asciz "DialogTube"
.LN_0_m_Stub_Core_remove_DialogTube_ref:
    .asciz "DialogTube"
.LN_1_m_Stub_Core_remove_DialogTube_ref:
    .asciz "DialogTube"
.LN_0_m_Stub_Core_add_MessageTube_ref:
    .asciz "MessageTube"
.LN_1_m_Stub_Core_add_MessageTube_ref:
    .asciz "MessageTube"
.LN_0_m_Stub_Core_remove_MessageTube_ref:
    .asciz "MessageTube"
.LN_1_m_Stub_Core_remove_MessageTube_ref:
    .asciz "MessageTube"
.LN_0_m_Stub_Core_add_ListTube_ref:
    .asciz "ListTube"
.LN_1_m_Stub_Core_add_ListTube_ref:
    .asciz "ListTube"
.LN_0_m_Stub_Core_remove_ListTube_ref:
    .asciz "ListTube"
.LN_1_m_Stub_Core_remove_ListTube_ref:
    .asciz "ListTube"
.LS_0_m_Stub_Core_get_Name_void:
    .short 83, 116, 117, 98, 32, 112, 108, 117, 103, 105, 110
.LS_0_m_Stub_Core_get_InternalName_void:
    .short 115, 116, 117, 98
.LS_0_m_Stub_Core_get_AuthenticationTypes_void:
    .short 70, 97, 110, 99, 121, 32, 97, 32, 115, 116, 117, 98, 32, 117, 115, 101, 114, 110, 97, 109, 101, 63
.LN_1_m_Stub_Core_get_AuthenticationTypes_void:
    .asciz "Yggdrasil.Models.AuthTypeInfo"
.LN_0_m_Stub_Core_get_TypingUsersList_void:
    .asciz "<TypingUsersList>k__BackingField"
.LN_0_m_Stub_Core_set_TypingUsersList_ref:
    .asciz "<TypingUsersList>k__BackingField"
.LN_0_m_Stub_Core_Dispose_void:
    .asciz "_out"
.LN_1_m_Stub_Core_Dispose_void:
    .asciz "_out"
.LN_2_m_Stub_Core_Dispose_void:
    .asciz "_out"
.LSTUB_m_Stub_Core_Authenticate_v_ref_ref:
    .asciz "Stub.Core::Authenticate  [constructor with 6 arguments (limit 5)]"
.LN_0_m_Stub_Core_Authenticate_ref:
    .asciz "Me"
.LN_0_m_Stub_Core_StoreCredential_void:
    .asciz "Me"
.LS_1_m_Stub_Core_StoreCredential_void:
    .short 115, 116, 117, 98
.LN_2_m_Stub_Core_StoreCredential_void:
    .asciz "Yggdrasil.Models.SavedCredential"
.LN_0_m_Stub_Core_GetQRCode_void:
    .asciz "Empty"
.LSTUB_m_Stub_Core_SendMessage_ref_ref_ref_ref_b:
    .asciz "Stub.Core::SendMessage  [inconsistent stack depth at IL_009c: 0 vs 1]"
.LN_0_m_Stub_Core_EditMessage_ref_ref_ref:
    .asciz "DialogTube"
.LS_1_m_Stub_Core_EditMessage_ref_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 32, 101, 100, 105, 116, 105, 110, 103, 32, 105, 115, 32, 110, 111, 116, 32, 105, 109, 112, 108, 101, 109, 101, 110, 116, 101, 100, 46
.LN_2_m_Stub_Core_EditMessage_ref_ref_ref:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_0_m_Stub_Core_DeleteMessage_ref_ref:
    .asciz "DialogTube"
.LS_1_m_Stub_Core_DeleteMessage_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 32, 100, 101, 108, 101, 116, 105, 111, 110, 32, 105, 115, 32, 110, 111, 116, 32, 105, 109, 112, 108, 101, 109, 101, 110, 116, 101, 100, 46
.LN_2_m_Stub_Core_DeleteMessage_ref_ref:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LSTUB_m_Stub_Core_FetchMessages_ref_v_i4_ref:
    .asciz "Stub.Core::FetchMessages  [constructor with 6 arguments (limit 5)]"
.LSTUB_m_Stub_Core_FetchServers_void:
    .asciz "Stub.Core::FetchServers  [stack underflow at IL_0056 (newobj): depth 10 < pops 11]"
.LN_0_m_Stub_Core_GetUserInfo_void:
    .asciz "_uiContext"
.LN_1_m_Stub_Core_GetUserInfo_void:
    .asciz "Me"
.LS_2_m_Stub_Core_GetUserInfo_void:
    .short 78, 101, 101, 100, 32, 97, 110, 32, 65, 116, 116, 111, 114, 110, 101, 121, 63, 32, 66, 101, 116, 116, 101, 114, 32, 67, 97, 108, 108, 32, 83, 97, 117, 108, 33, 32, 40, 53, 48, 53, 41, 32, 53, 48, 51, 45, 52, 52, 53, 53
.LN_3_m_Stub_Core_GetUserInfo_void:
    .asciz "Me"
.LN_4_m_Stub_Core_GetUserInfo_void:
    .asciz "Me"
.LSTUB_m_Stub_Core_FetchContacts_void:
    .asciz "Stub.Core::FetchContacts  [constructor with 6 arguments (limit 5)]"
.LSTUB_m_Stub_Core_FetchConversations_void:
    .asciz "Stub.Core::FetchConversations  [inconsistent stack depth at IL_00ee: 0 vs 5]"
.LS_0_m_Stub_Core_get_ClickableConfigurations_void:
    .short 60, 64, 33
.LS_1_m_Stub_Core_get_ClickableConfigurations_void:
    .short 62
.LN_2_m_Stub_Core_get_ClickableConfigurations_void:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.LS_3_m_Stub_Core_get_ClickableConfigurations_void:
    .short 60, 64
.LS_4_m_Stub_Core_get_ClickableConfigurations_void:
    .short 62
.LN_5_m_Stub_Core_get_ClickableConfigurations_void:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.LS_6_m_Stub_Core_get_ClickableConfigurations_void:
    .short 60, 64, 38
.LS_7_m_Stub_Core_get_ClickableConfigurations_void:
    .short 62
.LN_8_m_Stub_Core_get_ClickableConfigurations_void:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.LS_9_m_Stub_Core_get_ClickableConfigurations_void:
    .short 60, 35
.LS_10_m_Stub_Core_get_ClickableConfigurations_void:
    .short 62
.LN_11_m_Stub_Core_get_ClickableConfigurations_void:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.LN_0_m_Stub_Core_SetConnectionStatus_v:
    .asciz "Me"
.LN_0_m_Stub_Core_WaveDispenser_void:
    .asciz "NAudio.Wave.WaveOutEvent"
.LN_0_m_Stub_Core_StartCall_ref_b_b:
    .asciz "<>t__builder"
.LN_1_m_Stub_Core_StartCall_ref_b_b:
    .asciz "<>4__this"
.LN_2_m_Stub_Core_StartCall_ref_b_b:
    .asciz "conversation"
.LN_3_m_Stub_Core_StartCall_ref_b_b:
    .asciz "is_video_call"
.LN_4_m_Stub_Core_StartCall_ref_b_b:
    .asciz "<>1__state"
.LN_5_m_Stub_Core_StartCall_ref_b_b:
    .asciz "<>t__builder"
.LN_6_m_Stub_Core_StartCall_ref_b_b:
    .asciz "<>t__builder"
.LN_0_m_Stub_Core_EndCall_ref:
    .asciz "_waiter"
.LN_1_m_Stub_Core_EndCall_ref:
    .asciz "_out"
.LN_2_m_Stub_Core_EndCall_ref:
    .asciz "_out"
.LN_3_m_Stub_Core_EndCall_ref:
    .asciz "_out"
.LN_0_m_Stub_Core_AnswerCall_ref:
    .asciz "<>t__builder"
.LN_1_m_Stub_Core_AnswerCall_ref:
    .asciz "<>4__this"
.LN_2_m_Stub_Core_AnswerCall_ref:
    .asciz "conversation"
.LN_3_m_Stub_Core_AnswerCall_ref:
    .asciz "<>1__state"
.LN_4_m_Stub_Core_AnswerCall_ref:
    .asciz "<>t__builder"
.LN_5_m_Stub_Core_AnswerCall_ref:
    .asciz "<>t__builder"
.LN_0_m_Stub_Core_add_IncomingCallTube_ref:
    .asciz "IncomingCallTube"
.LN_1_m_Stub_Core_add_IncomingCallTube_ref:
    .asciz "IncomingCallTube"
.LN_0_m_Stub_Core_remove_IncomingCallTube_ref:
    .asciz "IncomingCallTube"
.LN_1_m_Stub_Core_remove_IncomingCallTube_ref:
    .asciz "IncomingCallTube"
.LN_0_m_Stub_Core_add_CallStateChangedTube_ref:
    .asciz "CallStateChangedTube"
.LN_1_m_Stub_Core_add_CallStateChangedTube_ref:
    .asciz "CallStateChangedTube"
.LN_0_m_Stub_Core_remove_CallStateChangedTube_ref:
    .asciz "CallStateChangedTube"
.LN_1_m_Stub_Core_remove_CallStateChangedTube_ref:
    .asciz "CallStateChangedTube"
.LSTUB_m_Stub_Core_FindNewContact_ref:
    .asciz "Stub.Core::FindNewContact  [stack underflow at IL_0055 (dup): depth 0 < pops 1]"
.LN_0_m_Stub_Core_AddContact_ref_ref:
    .asciz "ListTube"
.LN_1_m_Stub_Core_AddContact_ref_ref:
    .asciz "Yggdrasil.Models.DirectMessage"
.LN_2_m_Stub_Core_AddContact_ref_ref:
    .asciz "Yggdrasil.Bottles.ListItemUpdatedBottle"
.LN_3_m_Stub_Core_AddContact_ref_ref:
    .asciz "ListTube"
.LN_4_m_Stub_Core_AddContact_ref_ref:
    .asciz "Yggdrasil.Bottles.ListItemUpdatedBottle"
.LN_0_m_Stub_Core_UpdatePresence_ref:
    .asciz "users"
.LSTUB_m_Stub_Core_RandomizeUser_ref:
    .asciz "Stub.Core::RandomizeUser  [ldtoken (metadata token)]"
.LN_0_m_Stub_Core_get_ExtraConfigurations_void:
    .asciz "Yggdrasil.Models.ExtraConfiguration>"
.LS_1_m_Stub_Core_get_ExtraConfigurations_void:
    .short 72, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100
.LN_2_m_Stub_Core_get_ExtraConfigurations_void:
    .asciz "System.Action"
.LS_3_m_Stub_Core_get_ExtraConfigurations_void:
    .short 83, 104, 111, 119, 32, 72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33
.LN_4_m_Stub_Core_get_ExtraConfigurations_void:
    .asciz "Yggdrasil.Models.ExtraConfiguration"
.LSTUB_m_Stub_Core_ctor_void:
    .asciz "Stub.Core::.ctor  [stack underflow at IL_004f (dup): depth 0 < pops 1]"
.LN_0_m_Stub_Core_StartCall_b_50_0_ref:
    .asciz "_waiter"
.LN_0_m_Stub_Core_get_ExtraConfigurations_b_73_0_void:
    .asciz "DialogTube"
.LS_1_m_Stub_Core_get_ExtraConfigurations_b_73_0_void:
    .short 72, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 33
.LN_2_m_Stub_Core_get_ExtraConfigurations_b_73_0_void:
    .asciz "Yggdrasil.Bottles.DialogBottle"

    .section .note.GNU-stack,"",@progbits