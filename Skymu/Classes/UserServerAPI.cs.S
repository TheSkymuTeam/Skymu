# Classes/UserServerAPI.cs
    .text

.globl m_Skymu_WebServices_UserServerAPI_c_cctor__void
.type m_Skymu_WebServices_UserServerAPI_c_cctor__void, @function
m_Skymu_WebServices_UserServerAPI_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_c_cctor_void_0000:
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_WebServices_UserServerAPI_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_c_cctor_void_0005:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_c_cctor__void, .-m_Skymu_WebServices_UserServerAPI_c_cctor__void

.globl m_Skymu_WebServices_UserServerAPI_c_ctor__void
.type m_Skymu_WebServices_UserServerAPI_c_ctor__void, @function
m_Skymu_WebServices_UserServerAPI_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_WebServices_UserServerAPI_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_c_ctor__void, .-m_Skymu_WebServices_UserServerAPI_c_ctor__void

.globl m_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0__void
.type m_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0__void, @function
m_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0_void_0000:
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0_void_0005:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_get_Token__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0_void_000a:
    mov -24(%rbp), %rdi
    call m_Skymu_WebServices_UserServerAPI_PollCountLoop__v
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0_void_000f:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0__void, .-m_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0__void

.globl m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext__void
.type m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext__void, @function
m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0001:
    mov -96(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0006:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0008:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_004f
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_000b:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_000c:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_007a
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_000e:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0013:
    lea .LS_2_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0018:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetAsync__ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_001d:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0022:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0023:
    lea -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0025:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_002a:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_006b
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_002d:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_002e:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_002f:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0030:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0035:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0037:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_003d:
    mov -96(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0042:
    lea -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0045:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Net_Http_System_Net_Http_HttpResponseMessage_valuetype_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13__gen_gen
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_004a:
    jmp .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_01b0
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_004f:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0050:
    mov -96(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0055:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0056:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0057:
    mov -96(%rbp), %rdi
    lea .LN_7_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_005c:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0062:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0063:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0064:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0065:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0066:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_006b:
    lea -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_006d:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0072:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0073:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0074:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0075:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_007a:
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_007b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_007c:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_007d:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00cf
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_007f:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0080:
    mov -96(%rbp), %rdi
    lea .LN_10_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0085:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_EnsureSuccessStatusCode__void
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_008a:
    mov -96(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_008b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_008c:
    mov -96(%rbp), %rdi
    lea .LN_11_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0091:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0096:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_009b:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00a0:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00a2:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00a4:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00a9:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ec
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ab:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ac:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ad:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ae:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00af:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_12_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00b4:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00b5:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00b7:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_13_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00bc:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00bd:
    mov -96(%rbp), %rdi
    lea .LN_14_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00c2:
    lea -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00c4:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00c5:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13__gen_gen
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ca:
    jmp .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_01b0
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00cf:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00d0:
    mov -96(%rbp), %rdi
    lea .LN_15_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00d5:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00d7:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00d8:
    mov -96(%rbp), %rdi
    lea .LN_16_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00dd:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00e3:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00e4:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00e5:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00e6:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00e7:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_17_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ec:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ee:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00f3:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00f5:
    mov -104(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00fb:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00fd:
    lea -72(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_00ff:
    mov -112(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0105:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0107:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_Text_Json_Nodes_JsonNode_Parse__ref_gen_v
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_010c:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_010d:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_010e:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0113
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0110:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0111:
    jmp .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_012a
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0113:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0114:
    lea .LS_18_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0119:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Nodes_JsonNode_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_011e:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_011f:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0125
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0121:
    mov -88(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0122:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0123:
    jmp .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_012a
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0125:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_012a:
    lea .LS_19_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_012f:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0134:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0161
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0136:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0137:
    lea .LS_20_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_013c:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Nodes_JsonNode_get_Item__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0141:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0142:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0148
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0144:
    mov -88(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0145:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0146:
    jmp .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_014d
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0148:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Nodes_JsonNode_GetValue_int32__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_014d:
    mov -96(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_014f:
    lea .LN_21_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0154:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0155:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_015a
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0157:
    mov -88(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0158:
    jmp .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0161
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_015a:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_015c:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_int32_Invoke__gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0161:
    jmp .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_017b
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_017b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_017c:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_017d:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_22_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_0182:
    jmp .Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_019d
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_019d:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_019e:
    mov $-2, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_01a0:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_23_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_01a5:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_01a6:
    mov -104(%rbp), %rdi
    lea .LN_24_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_01ab:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_01b0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext__void, .-m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext__void

.globl m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine__ref
.type m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine__ref, @function
m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine__ref, .-m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine__ref

.globl m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext__void
.type m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext__void, @function
m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0008:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_004b
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_000a:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_000f:
    lea .LS_2_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0014:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetStringAsync__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0019:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_001e:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_001f:
    lea -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0021:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0026:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0067
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0028:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0029:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_002a:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_002b:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_002c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0032:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0033:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0038:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0039:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_003e:
    lea -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0041:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Skymu_WebServices_UserServerAPI_GenerateUID_d_7__gen_gen
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0046:
    jmp .Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00d5
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_004b:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_004c:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0051:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0052:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0053:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0058:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_005f:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0060:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0061:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0062:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0067:
    lea -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0069:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_006e:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0070:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0076:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0077:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0079:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_007f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0080:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Text_Json_Nodes_JsonNode_Parse__ref_gen_v
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0085:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0086:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_008c
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0088:
    mov -56(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0089:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_008a:
    jmp .Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00a2
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_008c:
    lea .LS_9_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0091:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Nodes_JsonNode_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0096:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0097:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_009d
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_0099:
    mov -56(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_009a:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_009b:
    jmp .Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00a2
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_009d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00a2:
    lea .LN_10_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -64(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00a7:
    jmp .Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00c2
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00c2:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00c3:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00c5:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00ca:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00cb:
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00d0:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_00d5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext__void, .-m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext__void

.globl m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine__ref
.type m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine__ref, @function
m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine__ref, .-m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine__ref

.globl m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext__void
.type m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext__void, @function
m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0008:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0009:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0032
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_000b:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0010:
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_f_AnonymousType2_1_string_ctor__gen
    mov %r12, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0015:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0016:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Serialize_class_f_AnonymousType2_1_string__gen_ref
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_001b:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_001d:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_001e:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0023:
    lea .LS_3_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0028:
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_002d:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0032:
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0034:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0083
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0036:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0037:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0038:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00af
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_003a:
    lea .LN_6_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_003f:
    lea .LS_7_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0045:
    mov -96(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_004a:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_PostAsync__ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_004f:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0054:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0056:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0058:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_005d:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00a0
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_005f:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0060:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0061:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0062:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0063:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0068:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0069:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_006b:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_10_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0070:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0071:
    mov -80(%rbp), %rdi
    lea .LN_11_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0076:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0078:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0079:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Net_Http_System_Net_Http_HttpResponseMessage_valuetype_Skymu_WebServices_UserServerAPI_PingServer_d_10__gen_gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_007e:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0190
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0083:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0084:
    mov -80(%rbp), %rdi
    lea .LN_12_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0089:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_008b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_008c:
    mov -80(%rbp), %rdi
    lea .LN_13_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0091:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0097:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0098:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0099:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_009a:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_009b:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_14_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00a0:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00a2:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00a7:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00a8:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00a9:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00aa:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_15_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00af:
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00b0:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00b1:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00b2:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00f8
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00b4:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00b5:
    mov -80(%rbp), %rdi
    lea .LN_16_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00ba:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00bf:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00c4:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00c9:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00cb:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00cd:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00d2:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0115
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00d4:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00d5:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00d6:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00d7:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00d8:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_17_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00dd:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00de:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00e0:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_18_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00e5:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00e6:
    mov -80(%rbp), %rdi
    lea .LN_19_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00eb:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00ed:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00ee:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Skymu_WebServices_UserServerAPI_PingServer_d_10__gen_gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00f3:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0190
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00f8:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00f9:
    mov -80(%rbp), %rdi
    lea .LN_20_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_00fe:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0100:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0101:
    mov -80(%rbp), %rdi
    lea .LN_21_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0106:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_010c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_010d:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_010e:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_010f:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0110:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_22_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0115:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0117:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_011c:
    mov -80(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_011d:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0137
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0137:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0138:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0139:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_23_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_013e:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0158
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0158:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0159:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_015a:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_24_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_015f:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0160:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0161:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_017c
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_017c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_017d:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_017f:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_25_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0184:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0185:
    mov -80(%rbp), %rdi
    lea .LN_26_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_018a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_018b:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_0190:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext__void, .-m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext__void

.globl m_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine__ref
.type m_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine__ref, @function
m_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine__ref, .-m_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine__ref

.globl m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext__void
.type m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext__void, @function
m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0006:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0008:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    ja .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00dd
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_000e:
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_000f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0010:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_005b
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0012:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0013:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0014:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00b2
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0019:
    mov $5000, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_001f:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0024:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Delay__i4_v
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0029:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_002e:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_002f:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0031:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0036:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0077
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0038:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0039:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_003a:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_003b:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_003c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0041:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0042:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0043:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0048:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0049:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_004e:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0051:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12__gen_gen
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0056:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0119
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_005b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_005c:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0061:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0062:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0063:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0068:
    mov -48(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_006e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_006f:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0070:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0071:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0072:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_7_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0077:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0079:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_007e:
    call m_Skymu_WebServices_UserServerAPI_FetchUserCount__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0083:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0088:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0089:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_008b:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0090:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00ce
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0092:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0093:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0094:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0095:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0096:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_009b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_009c:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_009d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00a2:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00a3:
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00a8:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00aa:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00ab:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12__gen_gen
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00b0:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0119
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00b2:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00b3:
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00b8:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00b9:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00ba:
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00bf:
    mov -48(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00c5:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00c6:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00c7:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00c8:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00c9:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_13_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00ce:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00d0:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00d5:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00dd
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00dd:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00de:
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00e3:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationToken_get_IsCancellationRequested__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00e8:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_000e
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_00ed:
    jmp .Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0106
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0106:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0107:
    mov $-2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0109:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_010e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_010f:
    mov -48(%rbp), %rdi
    lea .LN_16_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0114:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_0119:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext__void, .-m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext__void

.globl m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine__ref
.type m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine__ref, @function
m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine__ref, .-m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine__ref

.globl m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine__ref
.type m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine__ref, @function
m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine__ref, .-m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine__ref

.globl m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext__void
.type m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext__void, @function
m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0006:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0008:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0057
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_000a:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_000f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_get_IsCancellationRequested__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0014:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0020
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0016:
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Threading_CancellationTokenSource_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_001b:
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -48(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0020:
    call m_Skymu_WebServices_UserServerAPI_FetchUserCount__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0025:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_002a:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_002d:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0032:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0073
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0034:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0035:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0036:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0037:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0038:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_003d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_003e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_003f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0045:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_004a:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_004c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_004d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_WebServices_UserServerAPI_StartPolling_d_11__gen_gen
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0052:
    jmp .Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00e2
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0057:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0058:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_005d:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_005f:
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0064:
    mov -48(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_006a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_006b:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_006c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_006d:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_006e:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0073:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0075:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_007a:
    lea .LN_10_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_007f:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_008d
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0081:
    lea .LN_11_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0086:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_008b:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00b6
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_008d:
    lea .LN_12_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0092:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0093:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00ac
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0095:
    mov -40(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_0096:
    lea .LN_13_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_009b:
    lea m_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00a1:
    lea .LN_14_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00a6:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00a7:
    lea .LN_15_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -48(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00ac:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00b1:
    lea .LN_16_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov -48(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00b6:
    jmp .Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00cf
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00cf:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00d0:
    mov $-2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00d2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00d7:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00d8:
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00dd:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_00e2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext__void, .-m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext__void

.globl m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine__ref
.type m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine__ref, @function
m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine__ref, .-m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine__ref

.globl m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext__void
.type m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext__void, @function
m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0006:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0008:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0042
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_000a:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_000b:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_000c:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_000d:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_000e:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_WebServices_UserServerAPI_SetUserStatus__b_ref_ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0013:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0018:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0019:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_001b:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0020:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_005e
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0022:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0023:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0024:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0025:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0026:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_002c:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_002d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0032:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0033:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0038:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_003a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_003b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_WebServices_UserServerAPI_StopPolling_d_14__gen_gen
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0040:
    jmp .Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_009c
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0042:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0043:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0048:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_004a:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_004f:
    mov -48(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0056:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0057:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0058:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0059:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_005e:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0060:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0065:
    mov -48(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0066:
    lea .LN_7_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_006b:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_Cancel__void
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0070:
    jmp .Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0089
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0089:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_008a:
    mov $-2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_008c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0091:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0092:
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_0097:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_009c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext__void, .-m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext__void

.globl m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine__ref
.type m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine__ref, @function
m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine__ref, .-m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine__ref

.globl m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated__ref
.type m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated__ref, @function
m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0000:
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0007:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_000a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_000f:
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0014:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0015:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref(%rip), %rdi
    call shim_global_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_001a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_001b:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_001c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_int32__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0021:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0022:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0024:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0006
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_0026:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated__ref, .-m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated__ref

.globl m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated__ref
.type m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated__ref, @function
m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0000:
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0007:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_000a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_000f:
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0014:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0015:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref(%rip), %rdi
    call shim_global_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_001a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_001b:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_001c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_int32__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0021:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0022:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0024:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0006
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_0026:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated__ref, .-m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated__ref

.globl m_Skymu_WebServices_UserServerAPI_GenerateUID__void
.type m_Skymu_WebServices_UserServerAPI_GenerateUID__void, @function
m_Skymu_WebServices_UserServerAPI_GenerateUID__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_0000:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_0007:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_GenerateUID_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_000c:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_000e:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_GenerateUID_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_0014:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_0016:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_GenerateUID_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_001b:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_WebServices_UserServerAPI_GenerateUID_d_7__gen
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_0022:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_0024:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_GenerateUID_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_0029:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_002e:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_GenerateUID_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_GenerateUID__void, .-m_Skymu_WebServices_UserServerAPI_GenerateUID__void

.globl m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString__i4
.type m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString__i4, @function
m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString__i4:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0000:
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Random_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0005:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0006:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Text_StringBuilder_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_000b:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_000c:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_000d:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_000e:
    jmp .Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0024
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0010:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0011:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0012:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0013:
    mov $10, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0015:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Random_Next__i4_i4
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_001a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_StringBuilder_Append__i4
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_001f:
    mov -48(%rbp), %rax
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0020:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0021:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0022:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0023:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0024:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0025:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0026:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0010
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0028:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_0029:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_002e:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString__i4, .-m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString__i4

.globl m_Skymu_WebServices_UserServerAPI_SetUserStatus__b_ref_ref_ref
.type m_Skymu_WebServices_UserServerAPI_SetUserStatus__b_ref_ref_ref, @function
m_Skymu_WebServices_UserServerAPI_SetUserStatus__b_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0000:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0007:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_000c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_000e:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0014:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0017:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_001c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0024:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0026:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0027:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_002c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_002e:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_002f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0034:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0036:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_003b:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_003d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9__gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0042:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0044:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_0049:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -64(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_004e:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_SetUserStatus__b_ref_ref_ref, .-m_Skymu_WebServices_UserServerAPI_SetUserStatus__b_ref_ref_ref

.globl m_Skymu_WebServices_UserServerAPI_PingServer__void
.type m_Skymu_WebServices_UserServerAPI_PingServer__void, @function
m_Skymu_WebServices_UserServerAPI_PingServer__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_0000:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_0007:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_PingServer_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_000c:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_000e:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_PingServer_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_0014:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_0016:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_PingServer_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_001b:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Skymu_WebServices_UserServerAPI_PingServer_d_10__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_0022:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_0024:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_PingServer_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_0029:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_002e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_PingServer_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_PingServer__void, .-m_Skymu_WebServices_UserServerAPI_PingServer__void

.globl m_Skymu_WebServices_UserServerAPI_StartPolling__void
.type m_Skymu_WebServices_UserServerAPI_StartPolling__void, @function
m_Skymu_WebServices_UserServerAPI_StartPolling__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_0000:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_0007:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_StartPolling_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_000c:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_000e:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_StartPolling_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_0014:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_0016:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_StartPolling_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_001b:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_WebServices_UserServerAPI_StartPolling_d_11__gen
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_0022:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_0024:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_StartPolling_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_0029:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_002e:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_StartPolling_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_StartPolling__void, .-m_Skymu_WebServices_UserServerAPI_StartPolling__void

.globl m_Skymu_WebServices_UserServerAPI_PollCountLoop__v
.type m_Skymu_WebServices_UserServerAPI_PollCountLoop__v, @function
m_Skymu_WebServices_UserServerAPI_PollCountLoop__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_000e:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12__gen
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_PollCountLoop_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_PollCountLoop__v, .-m_Skymu_WebServices_UserServerAPI_PollCountLoop__v

.globl m_Skymu_WebServices_UserServerAPI_FetchUserCount__void
.type m_Skymu_WebServices_UserServerAPI_FetchUserCount__void, @function
m_Skymu_WebServices_UserServerAPI_FetchUserCount__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_0000:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_0007:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_FetchUserCount_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_000c:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_000e:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_FetchUserCount_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_0014:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_0016:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_FetchUserCount_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_001b:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13__gen
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_0022:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_0024:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_FetchUserCount_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_0029:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_002e:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_FetchUserCount_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_FetchUserCount__void, .-m_Skymu_WebServices_UserServerAPI_FetchUserCount__void

.globl m_Skymu_WebServices_UserServerAPI_StopPolling__void
.type m_Skymu_WebServices_UserServerAPI_StopPolling__void, @function
m_Skymu_WebServices_UserServerAPI_StopPolling__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_0000:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_0007:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_StopPolling_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_000c:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_000e:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_StopPolling_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_0014:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_0016:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_WebServices_UserServerAPI_StopPolling_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_001b:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_WebServices_UserServerAPI_StopPolling_d_14__gen
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_0022:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_0024:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_StopPolling_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_0029:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_002e:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_StopPolling_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_StopPolling__void, .-m_Skymu_WebServices_UserServerAPI_StopPolling__void

.globl m_Skymu_WebServices_UserServerAPI_cctor__void
.type m_Skymu_WebServices_UserServerAPI_cctor__void, @function
m_Skymu_WebServices_UserServerAPI_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0000:
    mov $10, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0002:
    lea .LN_0_m_Skymu_WebServices_UserServerAPI_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_OmegaAOL_Bifrost_Http_BifrostEngine_ctor__i4
    mov %r12, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0007:
    lea .LN_1_m_Skymu_WebServices_UserServerAPI_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_HttpClient_ctor__ref
    mov %r12, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_000d:
    lea .LS_2_m_Skymu_WebServices_UserServerAPI_cctor_void(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0012:
    lea .LN_3_m_Skymu_WebServices_UserServerAPI_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref
    mov %r12, -24(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0017:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_set_BaseAddress__ref
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_001c:
    lea .LN_4_m_Skymu_WebServices_UserServerAPI_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -8(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0021:
    xor %eax, %eax
    mov %rax, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0022:
    lea .LN_5_m_Skymu_WebServices_UserServerAPI_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0027:
    lea .LN_6_m_Skymu_WebServices_UserServerAPI_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Threading_CancellationTokenSource_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_002c:
    lea .LN_7_m_Skymu_WebServices_UserServerAPI_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_0031:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_WebServices_UserServerAPI_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_WebServices_UserServerAPI_cctor__void, .-m_Skymu_WebServices_UserServerAPI_cctor__void

    .globl m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_MoveNext__void
    .type m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_MoveNext__void, @function
m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_MoveNext__void, .-m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_MoveNext__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_WebServices_UserServerAPI_c_cctor_void:
    .asciz "Skymu.WebServices.UserServerAPI/'<>c'"

.LN_1_m_Skymu_WebServices_UserServerAPI_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_WebServices_UserServerAPI_c_StartPolling_b_11_0_void:
    .asciz "cts"

.LN_0_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "client"

.LS_2_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .short 99, 111, 117, 110, 116

.LN_3_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<response>5__2"

.LN_10_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<response>5__2"

.LN_11_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<response>5__2"

.LN_12_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_13_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>u__2"

.LN_14_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>t__builder"

.LN_15_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>u__2"

.LN_16_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>u__2"

.LN_17_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>1__state"

.LS_18_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .short 116, 121, 112, 101

.LS_19_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .short 117, 115, 101, 114, 95, 99, 111, 117, 110, 116

.LS_20_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .short 99, 111, 117, 110, 116

.LN_21_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "UserCountUpdated"

.LN_22_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<response>5__2"

.LN_23_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>1__state"

.LN_24_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_FetchUserCount_d_13_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "client"

.LS_2_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .short 116, 111, 107, 101, 110

.LN_3_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>1__state"

.LS_9_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .short 116, 111, 107, 101, 110

.LN_10_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "ApiTkn"

.LN_11_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_GenerateUID_d_7_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "ApiTkn"

.LN_2_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "'<>f__AnonymousType2`1'<string>"

.LS_3_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110

.LN_4_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "System.Net.Http.StringContent"

.LN_5_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<content>5__2"

.LN_6_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "client"

.LS_7_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .short 112, 105, 110, 103

.LN_8_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<content>5__2"

.LN_9_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_11_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_12_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_14_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_15_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<response>5__3"

.LN_16_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<response>5__3"

.LN_17_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_18_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>u__2"

.LN_19_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_20_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>u__2"

.LN_21_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>u__2"

.LN_22_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_23_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<response>5__3"

.LN_24_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<content>5__2"

.LN_25_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_26_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_PingServer_d_10_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "token"

.LN_2_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>u__1"

.LN_4_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>t__builder"

.LN_5_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>1__state"

.LN_8_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>t__builder"

.LN_11_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "token"

.LN_15_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>1__state"

.LN_16_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_PollCountLoop_d_12_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "cts"

.LN_2_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "System.Threading.CancellationTokenSource"

.LN_3_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "cts"

.LN_4_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>1__state"

.LN_5_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>t__builder"

.LN_7_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "pollingTask"

.LN_11_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "pollingTask"

.LN_12_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>9__11_0"

.LN_13_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>9"

.LN_14_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "System.Threading.Tasks.Task>"

.LN_15_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>9__11_0"

.LN_16_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "pollingTask"

.LN_17_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>1__state"

.LN_18_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_StartPolling_d_11_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>u__1"

.LN_3_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>u__1"

.LN_6_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>1__state"

.LN_7_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "cts"

.LN_8_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_StopPolling_d_14_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref:
    .asciz "UserCountUpdated"

.LN_1_m_Skymu_WebServices_UserServerAPI_add_UserCountUpdated_ref:
    .asciz "UserCountUpdated"

.LN_0_m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref:
    .asciz "UserCountUpdated"

.LN_1_m_Skymu_WebServices_UserServerAPI_remove_UserCountUpdated_ref:
    .asciz "UserCountUpdated"

.LN_0_m_Skymu_WebServices_UserServerAPI_GenerateUID_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_UserServerAPI_GenerateUID_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_WebServices_UserServerAPI_GenerateUID_void:
    .asciz "<>t__builder"

.LN_3_m_Skymu_WebServices_UserServerAPI_GenerateUID_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4:
    .asciz "System.Random"

.LN_1_m_Skymu_WebServices_UserServerAPI_GenerateRandomNumberString_i4:
    .asciz "System.Text.StringBuilder"

.LN_0_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref:
    .asciz "online"

.LN_2_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref:
    .asciz "dn"

.LN_3_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref:
    .asciz "user"

.LN_4_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref:
    .asciz "id"

.LN_5_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref:
    .asciz "<>1__state"

.LN_6_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref:
    .asciz "<>t__builder"

.LN_7_m_Skymu_WebServices_UserServerAPI_SetUserStatus_b_ref_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_PingServer_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_UserServerAPI_PingServer_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_WebServices_UserServerAPI_PingServer_void:
    .asciz "<>t__builder"

.LN_3_m_Skymu_WebServices_UserServerAPI_PingServer_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_StartPolling_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_UserServerAPI_StartPolling_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_WebServices_UserServerAPI_StartPolling_void:
    .asciz "<>t__builder"

.LN_3_m_Skymu_WebServices_UserServerAPI_StartPolling_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v:
    .asciz "token"

.LN_2_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v:
    .asciz "<>1__state"

.LN_3_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v:
    .asciz "<>t__builder"

.LN_4_m_Skymu_WebServices_UserServerAPI_PollCountLoop_v:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_FetchUserCount_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_UserServerAPI_FetchUserCount_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_WebServices_UserServerAPI_FetchUserCount_void:
    .asciz "<>t__builder"

.LN_3_m_Skymu_WebServices_UserServerAPI_FetchUserCount_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_StopPolling_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_WebServices_UserServerAPI_StopPolling_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_WebServices_UserServerAPI_StopPolling_void:
    .asciz "<>t__builder"

.LN_3_m_Skymu_WebServices_UserServerAPI_StopPolling_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_WebServices_UserServerAPI_cctor_void:
    .asciz "OmegaAOL.Bifrost.Http.BifrostEngine"

.LN_1_m_Skymu_WebServices_UserServerAPI_cctor_void:
    .asciz "System.Net.Http.HttpClient"

.LS_2_m_Skymu_WebServices_UserServerAPI_cctor_void:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 117, 115, 101, 114, 118, 101, 114, 47

.LN_3_m_Skymu_WebServices_UserServerAPI_cctor_void:
    .asciz "System.Uri"

.LN_4_m_Skymu_WebServices_UserServerAPI_cctor_void:
    .asciz "client"

.LN_5_m_Skymu_WebServices_UserServerAPI_cctor_void:
    .asciz "ApiTkn"

.LN_6_m_Skymu_WebServices_UserServerAPI_cctor_void:
    .asciz "System.Threading.CancellationTokenSource"

.LN_7_m_Skymu_WebServices_UserServerAPI_cctor_void:
    .asciz "cts"

.LSTUB_m_Skymu_WebServices_UserServerAPI_SetUserStatus_d_9_MoveNext_void:
    .asciz "Skymu.WebServices.UserServerAPI/<SetUserStatus>d__9::MoveNext  [constructor with 8 arguments (limit 5)]"

    .section .note.GNU-stack,"",@progbits
