# Forms/Pages/AddContact.xaml.cs
    .text

.globl m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext__void
.type m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext__void, @function
m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0058
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0012:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0017:
    mov -80(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_001c:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_001d:
    mov -88(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0022:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_IListManagement_FindNewContact__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0027:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_002c:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_002e:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0030:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_IsCompleted__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0035:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0075
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0038:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0039:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_003a:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_003b:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0041:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0043:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0048:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0049:
    mov -80(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_004e:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0051:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_Yggdrasil_Yggdrasil_Models_Metadata_valuetype_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d__gen_gen
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0056:
    jmp .Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00b9
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0059:
    mov -80(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_005e:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0061:
    mov -80(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0066:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_006d:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_006e:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_006f:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0070:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0075:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0077:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_007c:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_007d:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_007e:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_007f:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0080:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0082:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0087:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_0089:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_008a:
    jmp .Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00a5
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00a5:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00a6:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00a8:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00ad:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00ae:
    mov -80(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00b3:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00b4:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_SetResult__gen
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_00b9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext__void, .-m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext__void

.globl m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine__ref
.type m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine__ref, @function
m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine__ref, .-m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine__ref

.globl m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor__void
.type m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor__void, @function
m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor__void, .-m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor__void

.globl m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0__void
.type m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0__void, @function
m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0002:
    call m_Yggdrasil_Models_Metadata_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Start_valuetype_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d__gen
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_002c:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0__void, .-m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0__void

.globl m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext__void
.type m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext__void, @function
m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_001a
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0011:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0012:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0013:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0014:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0015:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_001a:
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_001b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_001c:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_006c
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_001e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_001f:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0024:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0025:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_get_FoundData__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_002a:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_002b:
    mov -80(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0030:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0035:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_IListManagement_AddContact__ref_ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_003a:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_003f:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0040:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0042:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0047:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0088
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_004a:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_004b:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_004c:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_004d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0052:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0053:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0054:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_005a:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_005f:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0062:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_Forms_Pages_AddContact_IAddFriend_d_26__gen_gen
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0067:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0100
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_006d:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0072:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0073:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0074:
    mov -64(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0079:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_007f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0080:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0081:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0082:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0083:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0088:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_008a:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_008f:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0090:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_009c
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_009c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_009d:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00a9
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_009f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00a0:
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00a5:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00a9
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00a7:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00ed
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00a9:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00aa:
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00af:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00b0:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedIndex__i4
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00b5:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00b6:
    mov -64(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00bb:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00bc:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled__b
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00c1:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00c2:
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00c7:
    mov -64(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00cc:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00cd:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00d2:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00ed
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00ed:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00ee:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00f0:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00f5:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00f6:
    mov -64(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_00fb:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_0100:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext__void, .-m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext__void

.globl m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine__ref
.type m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine__ref, @function
m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine__ref, .-m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine__ref

.globl m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext__void
.type m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext__void, @function
m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0081
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0012:
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_ctor__void
    mov %r12, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0017:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_001d:
    mov -80(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0022:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0023:
    mov -88(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0028:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_002d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_002e:
    mov -80(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0033:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0034:
    mov -88(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0039:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_003e:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_003f:
    mov -80(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0044:
    mov $2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0045:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_004a:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_004b:
    mov -80(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0050:
    call m_System_Array_Empty_class_Yggdrasil_Yggdrasil_Models_Metadata__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0055:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_005a:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_005b:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_005c:
    mov -88(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0061:
    lea m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0__void(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0067:
    lea .LN_14_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Metadata_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_006c:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_006d:
    mov -96(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0072:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_get_Token__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0077:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run_class_Yggdrasil_Yggdrasil_Models_Metadata__gen_v
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_007c:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0081:
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0082:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0083:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00bd
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0085:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0086:
    mov -80(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_008b:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0090:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0091:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0093:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0098:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00d9
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_009a:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_009b:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_009c:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_009d:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_009e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00a3:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00a4:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00a5:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00aa:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00ab:
    mov -80(%rbp), %rdi
    lea .LN_20_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00b0:
    lea -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00b2:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00b3:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Forms_Pages_AddContact_IFindFriend_d_22__gen_gen
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00b8:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01f1
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00bd:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00be:
    mov -80(%rbp), %rdi
    lea .LN_21_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00c3:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00c4:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00c5:
    mov -80(%rbp), %rdi
    lea .LN_22_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00ca:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00d0:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00d1:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00d2:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00d3:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00d4:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_23_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00d9:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00db:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_00e0:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0105
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0105:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0106:
    mov -80(%rbp), %rdi
    lea .LN_24_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_010b:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_Dispose__void
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0110:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0111:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_StopSearch__void
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0116:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0117:
    mov -80(%rbp), %rdi
    lea .LN_25_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_011c:
    mov -80(%rbp), %rdi
    lea .LN_26_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0121:
    mov -80(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0122:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0161
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0124:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0125:
    mov -88(%rbp), %rdi
    lea .LN_27_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_012a:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_012b:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0130:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0131:
    mov -88(%rbp), %rdi
    lea .LN_28_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0136:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_013b:
    lea .LS_29_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0140:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0145:
    lea .LS_30_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_014a:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_014b:
    mov -112(%rbp), %rdi
    lea .LN_31_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0150:
    mov -112(%rbp), %rdi
    lea .LN_32_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0155:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_015a:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_015f:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01d7
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0161:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0162:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_get_FoundList__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0167:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Clear__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_016c:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_016d:
    mov -96(%rbp), %rdi
    lea .LN_33_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0172:
    mov -96(%rbp), %rdi
    lea .LN_34_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0177:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0178:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0179:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_017b:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0196
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_017d:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_017e:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0180:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0181:
    mov -112(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0183:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0184:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_get_FoundList__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0189:
    mov -64(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_018b:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Add__gen
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0190:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0192:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0193:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0194:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0196:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0198:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_0199:
    mov -104(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_019a:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_019b:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_017d
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_019d:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_019e:
    mov -112(%rbp), %rdi
    lea .LN_35_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01a3:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01a4:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01a9:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01aa:
    mov -112(%rbp), %rdi
    lea .LN_36_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01af:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01b0:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01b5:
    jmp .Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01d7
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01d7:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01d8:
    mov $-2, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01da:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_37_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01df:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01e0:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01e1:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_38_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01e6:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01e7:
    mov -88(%rbp), %rdi
    lea .LN_39_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01ec:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_01f1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext__void, .-m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext__void

.globl m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine__ref
.type m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine__ref, @function
m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine__ref, .-m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine__ref

.globl m_Skymu_Forms_Pages_AddContact_get_FoundData__void
.type m_Skymu_Forms_Pages_AddContact_get_FoundData__void, @function
m_Skymu_Forms_Pages_AddContact_get_FoundData__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundData_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundData_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_get_FoundData_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundData_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_get_FoundData_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_get_FoundData__void, .-m_Skymu_Forms_Pages_AddContact_get_FoundData__void

.globl m_Skymu_Forms_Pages_AddContact_set_FoundData__ref
.type m_Skymu_Forms_Pages_AddContact_set_FoundData__ref, @function
m_Skymu_Forms_Pages_AddContact_set_FoundData__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundData_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundData_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundData_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_set_FoundData_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundData_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_set_FoundData_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_set_FoundData__ref, .-m_Skymu_Forms_Pages_AddContact_set_FoundData__ref

.globl m_Skymu_Forms_Pages_AddContact_get_FoundUser__void
.type m_Skymu_Forms_Pages_AddContact_get_FoundUser__void, @function
m_Skymu_Forms_Pages_AddContact_get_FoundUser__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundUser_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundUser_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_get_FoundUser_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundUser_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_get_FoundUser_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_get_FoundUser__void, .-m_Skymu_Forms_Pages_AddContact_get_FoundUser__void

.globl m_Skymu_Forms_Pages_AddContact_set_FoundUser__ref
.type m_Skymu_Forms_Pages_AddContact_set_FoundUser__ref, @function
m_Skymu_Forms_Pages_AddContact_set_FoundUser__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundUser_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundUser_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundUser_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_set_FoundUser_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundUser_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_set_FoundUser_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_set_FoundUser__ref, .-m_Skymu_Forms_Pages_AddContact_set_FoundUser__ref

.globl m_Skymu_Forms_Pages_AddContact_get_FoundList__void
.type m_Skymu_Forms_Pages_AddContact_get_FoundList__void, @function
m_Skymu_Forms_Pages_AddContact_get_FoundList__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundList_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundList_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_get_FoundList_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_get_FoundList_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_get_FoundList_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_get_FoundList__void, .-m_Skymu_Forms_Pages_AddContact_get_FoundList__void

.globl m_Skymu_Forms_Pages_AddContact_set_FoundList__ref
.type m_Skymu_Forms_Pages_AddContact_set_FoundList__ref, @function
m_Skymu_Forms_Pages_AddContact_set_FoundList__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundList_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundList_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundList_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_set_FoundList_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_set_FoundList_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_set_FoundList_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_set_FoundList__ref, .-m_Skymu_Forms_Pages_AddContact_set_FoundList__ref

.globl m_Skymu_Forms_Pages_AddContact_Close__void
.type m_Skymu_Forms_Pages_AddContact_Close__void, @function
m_Skymu_Forms_Pages_AddContact_Close__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_Close_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_Close_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_Close_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_Close_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Pages_AddContact_Close_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_Close_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_Close__void, .-m_Skymu_Forms_Pages_AddContact_Close__void

.globl m_Skymu_Forms_Pages_AddContact_ShowWindow__void
.type m_Skymu_Forms_Pages_AddContact_ShowWindow__void, @function
m_Skymu_Forms_Pages_AddContact_ShowWindow__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0001:
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0012:
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_WindowBase_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0017:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0018:
    movsd .LD_3_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0021:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_MinWidth__f8
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0026:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0027:
    movsd .LD_4_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0030:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_MinHeight__f8
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0035:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0036:
    movsd .LD_5_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_003f:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Width__f8
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0045:
    movsd .LD_6_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_004e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Height__f8
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0053:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0054:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0055:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_ResizeMode__v
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_005a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_005b:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_005c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_SizeToContent__v
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0062:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0067:
    lea .LS_7_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_006c:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0071:
    lea .LS_8_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0076:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_007b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0080:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_Title__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0085:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0086:
    mov $5, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0087:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_HeaderIcon__v
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_008c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_008d:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0092:
    lea .LS_9_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0097:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_009c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_HeaderText__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00a1:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00a2:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00a7:
    lea .LS_10_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00ac:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00b1:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00b6:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00b7:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00bc:
    lea .LS_11_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00c1:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00c6:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonRightText__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00cb:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00cc:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00d1:
    lea .LS_12_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00d6:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00db:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00e0:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00e1:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00e2:
    lea m_Skymu_Forms_Pages_AddContact_NextStep__void(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00e8:
    lea .LN_13_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00ed:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00f2:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00f3:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00f4:
    lea m_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0__void(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00fa:
    lea .LN_14_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_00ff:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonRightAction__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0104:
    mov -16(%rbp), %rdx
    mov -8(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0109:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_010a:
    mov -24(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_010f:
    mov -24(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0114:
    movsd .LD_18_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_011d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_MinWidth__f8
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0122:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0123:
    mov -24(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0128:
    mov -24(%rbp), %rdi
    lea .LN_20_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_012d:
    movsd .LD_21_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0136:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_MinWidth__f8
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_013b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_013c:
    mov -24(%rbp), %rdi
    lea .LN_22_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0141:
    mov -24(%rbp), %rdi
    lea .LN_23_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0146:
    movsd .LD_24_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_014f:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_MinWidth__f8
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0154:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0155:
    mov -24(%rbp), %rdi
    lea .LN_25_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_015a:
    mov -24(%rbp), %rdi
    lea .LN_26_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_015f:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0160:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0165:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0166:
    mov -24(%rbp), %rdi
    lea .LN_27_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_016b:
    lea .LS_28_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0170:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_set_Text__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0175:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0176:
    mov -24(%rbp), %rdi
    lea .LN_29_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_017b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_017c:
    lea m_Skymu_Forms_Pages_AddContact_OnTextInput__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0182:
    lea .LN_30_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_TextChangedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0187:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_TextBoxBase_add_TextChanged__ref
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_018c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_018d:
    mov -24(%rbp), %rdi
    lea .LN_31_m_Skymu_Forms_Pages_AddContact_ShowWindow_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0192:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_0197:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_ShowWindow__void, .-m_Skymu_Forms_Pages_AddContact_ShowWindow__void

.globl m_Skymu_Forms_Pages_AddContact_StopSearch__void
.type m_Skymu_Forms_Pages_AddContact_StopSearch__void, @function
m_Skymu_Forms_Pages_AddContact_StopSearch__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_StopSearch_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0006:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0007:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_TextBoxBase_set_IsReadOnly__b
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_000d:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_StopSearch_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0012:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0017:
    lea .LS_2_m_Skymu_Forms_Pages_AddContact_StopSearch_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_001c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0021:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0026:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0027:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_StopSearch_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_002c:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_002d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Tag__ref
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0032:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0033:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_StopSearch_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0038:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0039:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_003f:
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_AddContact_StopSearch_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0044:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0045:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_004a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_004b:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Pages_AddContact_StopSearch_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0050:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0051:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ProgressBar_set_IsIndeterminate__b
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_0056:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_StopSearch_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_StopSearch__void, .-m_Skymu_Forms_Pages_AddContact_StopSearch__void

.globl m_Skymu_Forms_Pages_AddContact_FindFriend__ref_ref
.type m_Skymu_Forms_Pages_AddContact_FindFriend__ref_ref, @function
m_Skymu_Forms_Pages_AddContact_FindFriend__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0006:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_000d:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0012:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Tag__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0017:
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_001c:
    lea .LS_2_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0021:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0026:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_003a
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0028:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0029:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_002e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_Cancel__void
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0033:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0034:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_StopSearch__void
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_003a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_003b:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0040:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0041:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_TextBoxBase_set_IsReadOnly__b
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0046:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0047:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_004c:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0051:
    lea .LS_6_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0056:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_005b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0060:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0061:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0066:
    lea .LS_8_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_006b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Tag__ref
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0070:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0071:
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0076:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0077:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_007c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_007d:
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0082:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0083:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0088:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0089:
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_008e:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_008f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0094:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_0095:
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_009a:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_009b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ProgressBar_set_IsIndeterminate__b
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00a0:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00a1:
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00a6:
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00ab:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00ac:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00b1:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00b2:
    lea .LN_15_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Threading_CancellationTokenSource_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00b7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00bc:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00bd:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00be:
    mov -56(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00c3:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00c8:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_IFindFriend__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00cd:
    mov -48(%rbp), %rax
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_00ce:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_FindFriend__ref_ref, .-m_Skymu_Forms_Pages_AddContact_FindFriend__ref_ref

.globl m_Skymu_Forms_Pages_AddContact_IFindFriend__ref
.type m_Skymu_Forms_Pages_AddContact_IFindFriend__ref, @function
m_Skymu_Forms_Pages_AddContact_IFindFriend__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Forms_Pages_AddContact_IFindFriend_d_22__gen
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0034:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_003e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_IFindFriend_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_IFindFriend__ref, .-m_Skymu_Forms_Pages_AddContact_IFindFriend__ref

.globl m_Skymu_Forms_Pages_AddContact_UserListView_Selected__ref_ref
.type m_Skymu_Forms_Pages_AddContact_UserListView_Selected__ref_ref, @function
m_Skymu_Forms_Pages_AddContact_UserListView_Selected__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_0006:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_000b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_000c:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_SelectionChangedEventArgs_get_AddedItems__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_0011:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_ICollection_get_Count__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_0016:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_0017:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    setl %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_0019:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_001a:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_001c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_0021:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_UserListView_Selected__ref_ref, .-m_Skymu_Forms_Pages_AddContact_UserListView_Selected__ref_ref

.globl m_Skymu_Forms_Pages_AddContact_NextStep__void
.type m_Skymu_Forms_Pages_AddContact_NextStep__void, @function
m_Skymu_Forms_Pages_AddContact_NextStep__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0007:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_get_SelectedItem__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_000c:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0011:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_set_FoundData__ref
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0017:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_get_FoundData__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_001c:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0021:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0022:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0023:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_NextStep_void_002c
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0025:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0026:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0027:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_set_FoundUser__ref
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_002d:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0032:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0033:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedIndex__i4
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0038:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0039:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_003e:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0043:
    lea .LS_3_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0048:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_004d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0052:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0053:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0058:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0059:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled__b
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_005f:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0065:
    lea m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_006b:
    lea .LN_6_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0070:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction__ref
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0075:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0076:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_007b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_007c:
    lea m_Skymu_Forms_Pages_AddContact_AddFriend__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0082:
    lea .LN_8_m_Skymu_Forms_Pages_AddContact_NextStep_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_0087:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_008c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_NextStep_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_NextStep__void, .-m_Skymu_Forms_Pages_AddContact_NextStep__void

.globl m_Skymu_Forms_Pages_AddContact_AddFriend__void
.type m_Skymu_Forms_Pages_AddContact_AddFriend__void, @function
m_Skymu_Forms_Pages_AddContact_AddFriend__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_AddFriend_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_AddFriend_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_AddContact_IAddFriend__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_AddFriend_void_0006:
    mov -24(%rbp), %rax
.Lm_Skymu_Forms_Pages_AddContact_AddFriend_void_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_AddFriend_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_AddFriend__void, .-m_Skymu_Forms_Pages_AddContact_AddFriend__void

.globl m_Skymu_Forms_Pages_AddContact_IAddFriend__void
.type m_Skymu_Forms_Pages_AddContact_IAddFriend__void, @function
m_Skymu_Forms_Pages_AddContact_IAddFriend__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_IAddFriend_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_IAddFriend_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_IAddFriend_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_IAddFriend_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Forms_Pages_AddContact_IAddFriend_d_26__gen
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_IAddFriend_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_IAddFriend_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_IAddFriend__void, .-m_Skymu_Forms_Pages_AddContact_IAddFriend__void

.globl m_Skymu_Forms_Pages_AddContact_OnTextInput__ref_ref
.type m_Skymu_Forms_Pages_AddContact_OnTextInput__ref_ref, @function
m_Skymu_Forms_Pages_AddContact_OnTextInput__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_000c:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBox_get_Text__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_0011:
    mov -48(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_0016:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_0017:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_0019:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsEnabled__b
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_001e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_OnTextInput__ref_ref, .-m_Skymu_Forms_Pages_AddContact_OnTextInput__ref_ref

.globl m_Skymu_Forms_Pages_AddContact_InitializeComponent__void
.type m_Skymu_Forms_Pages_AddContact_InitializeComponent__void, @function
m_Skymu_Forms_Pages_AddContact_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0009
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_Pages_AddContact_InitializeComponent_void(%rip), %rdi
    mov $44, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_InitializeComponent__void, .-m_Skymu_Forms_Pages_AddContact_InitializeComponent__void

.globl m_Skymu_Forms_Pages_AddContact_CreateDelegate__ref_ref
.type m_Skymu_Forms_Pages_AddContact_CreateDelegate__ref_ref, @function
m_Skymu_Forms_Pages_AddContact_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_CreateDelegate__ref_ref, .-m_Skymu_Forms_Pages_AddContact_CreateDelegate__ref_ref

.globl m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0049
    cmp $1, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0056
    cmp $2, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0063
    cmp $3, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0070
    cmp $4, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0094
    cmp $5, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a1
    cmp $6, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ae
    cmp $7, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bb
    cmp $8, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c8
    cmp $9, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ec
    cmp $10, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f9
    cmp $11, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0106
    cmp $12, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0113
    cmp $13, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0120
    cmp $14, %eax
    je .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012d
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0044:
    jmp .Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013a
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0049:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004b:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0050:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0055:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0056:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0057:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0058:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0062:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0063:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0064:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0065:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0070:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0071:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0072:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0077:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007d:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0082:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0083:
    lea m_Skymu_Forms_Pages_AddContact_FindFriend__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0089:
    lea .LN_5_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0093:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0094:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0095:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0096:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a3:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ad:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ae:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00af:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b0:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ba:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bb:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bc:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bd:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ca:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cf:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d4:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d5:
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00da:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00db:
    lea m_Skymu_Forms_Pages_AddContact_UserListView_Selected__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e1:
    lea .LN_12_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_SelectionChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e6:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_add_SelectionChanged__ref
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00eb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ec:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ed:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ee:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fa:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fb:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0100:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0105:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0106:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0107:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0108:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0112:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0113:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0114:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0115:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0120:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0121:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0122:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0127:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012f:
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0134:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0139:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013b:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0141:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0__void
.type m_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0__void, @function
m_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0__void, .-m_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0__void

.globl m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0__void
.type m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0__void, @function
m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0006:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0007:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_set_SelectedIndex__i4
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_000d:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0012:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0013:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled__b
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0019:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_001f:
    lea m_Skymu_Forms_Pages_AddContact_NextStep__void(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_0025:
    lea .LN_3_m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_002a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_002f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0__void, .-m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0__void

    .globl m_Skymu_Forms_Pages_AddContact_ctor__void
    .type m_Skymu_Forms_Pages_AddContact_ctor__void, @function
m_Skymu_Forms_Pages_AddContact_ctor__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_Pages_AddContact_ctor_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_Pages_AddContact_ctor__void, .-m_Skymu_Forms_Pages_AddContact_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>4__this"

.LN_3_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "lmg"

.LN_4_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "query"

.LN_5_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_6_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_8_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "result"

.LN_12_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_13_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_Forms_Pages_AddContact_c_DisplayClass22_0_IFindFriend_b_0_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<exed>5__2"

.LN_3_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "lmg"

.LN_4_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "ContactMessage"

.LN_5_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>1__state"

.LN_6_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>t__builder"

.LN_8_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<exed>5__2"

.LN_12_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "MainTabControl"

.LN_13_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "window"

.LN_14_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "window"

.LN_15_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "ButtonLeft"

.LN_16_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_IAddFriend_d_26_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "Skymu.Forms.Pages.AddContact/'<>c__DisplayClass22_0'"

.LN_3_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_4_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_5_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>4__this"

.LN_6_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>4__this"

.LN_7_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_8_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "query"

.LN_9_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "query"

.LN_10_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "SelectContactHint"

.LN_11_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_12_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "result"

.LN_13_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_14_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "Yggdrasil.Models.Metadata[]>>"

.LN_15_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "cts"

.LN_16_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "findTask"

.LN_17_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "findTask"

.LN_18_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>1__state"

.LN_19_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>u__1"

.LN_20_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>t__builder"

.LN_21_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>u__1"

.LN_22_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>u__1"

.LN_23_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>1__state"

.LN_24_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "findTask"

.LN_25_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_26_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "result"

.LN_27_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "ErrorField"

.LN_28_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "ErrorText"

.LS_29_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .short 115, 70, 95, 65, 68, 68, 70, 82, 73, 69, 78, 68, 95, 76, 65, 66, 69, 76, 52

.LS_30_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .short 37, 115

.LN_31_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_32_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "query"

.LN_33_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_34_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "result"

.LN_35_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "SelectContactHint"

.LN_36_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "UserListView"

.LN_37_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>1__state"

.LN_38_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>8__1"

.LN_39_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_IFindFriend_d_22_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_get_FoundData_void:
    .asciz "<FoundData>k__BackingField"

.LN_0_m_Skymu_Forms_Pages_AddContact_set_FoundData_ref:
    .asciz "<FoundData>k__BackingField"

.LN_0_m_Skymu_Forms_Pages_AddContact_get_FoundUser_void:
    .asciz "<FoundUser>k__BackingField"

.LN_0_m_Skymu_Forms_Pages_AddContact_set_FoundUser_ref:
    .asciz "<FoundUser>k__BackingField"

.LN_0_m_Skymu_Forms_Pages_AddContact_get_FoundList_void:
    .asciz "<FoundList>k__BackingField"

.LN_0_m_Skymu_Forms_Pages_AddContact_set_FoundList_ref:
    .asciz "<FoundList>k__BackingField"

.LN_0_m_Skymu_Forms_Pages_AddContact_Close_void:
    .asciz "window"

.LN_0_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "Plugin"

.LN_1_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "lmg"

.LN_2_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "Skymu.Forms.WindowBase"

.LD_3_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .double 653

.LD_4_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .double 515

.LD_5_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .double 653

.LD_6_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .double 549

.LS_7_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .short 8482, 32, 45, 32

.LS_8_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .short 115, 65, 68, 68, 65, 68, 68, 65, 70, 82, 73, 69, 78, 68, 95, 83, 67, 82, 49, 95, 67, 65, 80, 84, 73, 79, 78

.LS_9_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .short 115, 65, 68, 68, 65, 68, 68, 65, 70, 82, 73, 69, 78, 68, 95, 83, 67, 82, 49, 95, 72, 69, 65, 68, 69, 82

.LS_10_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 65, 68, 68, 67, 79, 78, 84, 65, 67, 84

.LS_11_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 67, 76, 79, 83, 69

.LS_12_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 66, 65, 67, 75

.LN_13_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "System.Action"

.LN_14_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "System.Action"

.LN_15_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "window"

.LN_16_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "window"

.LN_17_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "ButtonLeft"

.LD_18_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .double 100

.LN_19_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "window"

.LN_20_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "ButtonEdgeLeft"

.LD_21_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .double 98

.LN_22_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "window"

.LN_23_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "ButtonRight"

.LD_24_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .double 98

.LN_25_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "window"

.LN_26_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "ButtonLeft"

.LN_27_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "UserDetailsInput"

.LS_28_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .short 0

.LN_29_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "UserDetailsInput"

.LN_30_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "System.Windows.Controls.TextChangedEventHandler"

.LN_31_m_Skymu_Forms_Pages_AddContact_ShowWindow_void:
    .asciz "window"

.LN_0_m_Skymu_Forms_Pages_AddContact_StopSearch_void:
    .asciz "UserDetailsInput"

.LN_1_m_Skymu_Forms_Pages_AddContact_StopSearch_void:
    .asciz "UserFindBtn"

.LS_2_m_Skymu_Forms_Pages_AddContact_StopSearch_void:
    .short 115, 70, 95, 65, 68, 68, 70, 82, 73, 69, 78, 68, 95, 70, 73, 78, 68, 95, 66, 84, 78

.LN_3_m_Skymu_Forms_Pages_AddContact_StopSearch_void:
    .asciz "UserFindBtn"

.LN_4_m_Skymu_Forms_Pages_AddContact_StopSearch_void:
    .asciz "BottomField"

.LN_5_m_Skymu_Forms_Pages_AddContact_StopSearch_void:
    .asciz "FindPBar"

.LN_6_m_Skymu_Forms_Pages_AddContact_StopSearch_void:
    .asciz "FindPBar"

.LN_0_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "ErrorField"

.LN_1_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "UserFindBtn"

.LS_2_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .short 83, 84, 79, 80, 83, 69, 65, 82, 67, 72

.LN_3_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "cts"

.LN_4_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "UserDetailsInput"

.LN_5_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "UserFindBtn"

.LS_6_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .short 115, 70, 95, 65, 68, 68, 70, 82, 73, 69, 78, 68, 95, 83, 84, 79, 80, 95, 66, 84, 78

.LN_7_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "UserFindBtn"

.LS_8_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .short 83, 84, 79, 80, 83, 69, 65, 82, 67, 72

.LN_9_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "BottomField"

.LN_10_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "UserListView"

.LN_11_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "FindPBar"

.LN_12_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "FindPBar"

.LN_13_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "window"

.LN_14_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "ButtonLeft"

.LN_15_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "System.Threading.CancellationTokenSource"

.LN_16_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "cts"

.LN_17_m_Skymu_Forms_Pages_AddContact_FindFriend_ref_ref:
    .asciz "UserDetailsInput"

.LN_0_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref:
    .asciz "query"

.LN_3_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref:
    .asciz "<>t__builder"

.LN_5_m_Skymu_Forms_Pages_AddContact_IFindFriend_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref:
    .asciz "window"

.LN_1_m_Skymu_Forms_Pages_AddContact_UserListView_Selected_ref_ref:
    .asciz "ButtonLeft"

.LN_0_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .asciz "UserListView"

.LN_1_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .asciz "MainTabControl"

.LN_2_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .asciz "window"

.LS_3_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 83, 69, 78, 68

.LN_4_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .asciz "window"

.LN_5_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .asciz "window"

.LN_6_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .asciz "System.Action"

.LN_7_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .asciz "window"

.LN_8_m_Skymu_Forms_Pages_AddContact_NextStep_void:
    .asciz "System.Action"

.LN_0_m_Skymu_Forms_Pages_AddContact_IAddFriend_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_Pages_AddContact_IAddFriend_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_AddContact_IAddFriend_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Forms_Pages_AddContact_IAddFriend_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_Forms_Pages_AddContact_IAddFriend_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref:
    .asciz "UserFindBtn"

.LN_1_m_Skymu_Forms_Pages_AddContact_OnTextInput_ref_ref:
    .asciz "UserDetailsInput"

.LN_0_m_Skymu_Forms_Pages_AddContact_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_Pages_AddContact_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_Pages_AddContact_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 112, 97, 103, 101, 115, 47, 97, 100, 100, 99, 111, 110, 116, 97, 99, 116, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_Pages_AddContact_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MainTabControl"

.LN_1_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TopCaption"

.LN_2_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UserDetailsInput"

.LN_3_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UserFindBtn"

.LN_4_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UserFindBtn"

.LN_5_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_6_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FindPBar"

.LN_7_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SelectContactHint"

.LN_8_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ErrorField"

.LN_9_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ErrorText"

.LN_10_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UserListView"

.LN_11_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UserListView"

.LN_12_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.SelectionChangedEventHandler"

.LN_13_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BottomField"

.LN_14_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContactMessage"

.LN_15_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FoundContactDetails"

.LN_16_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CPAProfilePic"

.LN_17_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TimeRow"

.LN_18_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusRow"

.LN_19_m_Skymu_Forms_Pages_AddContact_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Forms_Pages_AddContact_ShowWindow_b_19_0_void:
    .asciz "window"

.LN_0_m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void:
    .asciz "MainTabControl"

.LN_1_m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void:
    .asciz "window"

.LN_2_m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void:
    .asciz "window"

.LN_3_m_Skymu_Forms_Pages_AddContact_NextStep_b_24_0_void:
    .asciz "System.Action"

.LSTUB_m_Skymu_Forms_Pages_AddContact_ctor_void:
    .asciz "Skymu.Forms.Pages.AddContact::.ctor  [constructor with 6 arguments (limit 5)]"

    .section .note.GNU-stack,"",@progbits
