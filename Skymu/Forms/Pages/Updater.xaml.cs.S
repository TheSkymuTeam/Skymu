# Forms/Pages/Updater.xaml.cs
    .text

.globl m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor__void
.type m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor__void, @function
m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor__void, .-m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor__void

.globl m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0__void
.type m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0__void, @function
m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_0006:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_000c:
    jmp .Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_0049
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_004a:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_004f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_0054:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_0059:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0__void, .-m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0__void

.globl m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext__void
.type m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext__void, @function
m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $256, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0001:
    mov -208(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0006:
    mov -208(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0008:
    mov $1, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0009:
    mov -216(%rbp), %rax
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_000a:
    mov -208(%rbp), %rax
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_000b:
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_000c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_000d:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0054
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_000f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0010:
    mov $1, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0011:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_007f
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0013:
    lea .LN_1_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0018:
    lea .LS_2_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $63, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_001d:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetAsync__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0022:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0027:
    mov -208(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0028:
    lea -48(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_002a:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_002f:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0070
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0032:
    mov $0, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0033:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0034:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0035:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_003a:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_003b:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_003c:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0041:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0042:
    mov -208(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0047:
    lea -48(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_004a:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_updateInfo_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Net_Http_System_Net_Http_HttpResponseMessage_valuetype_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10__gen_gen
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_004f:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0367
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0055:
    mov -208(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_005a:
    mov -208(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_005b:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_005c:
    mov -208(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0061:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0067:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0068:
    mov $-1, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0069:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_006a:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_006b:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0070:
    lea -48(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0072:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0077:
    mov -208(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0078:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0079:
    mov -40(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_007a:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_007f:
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0080:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0081:
    mov $1, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0082:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00e2
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0084:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0085:
    mov -208(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_008a:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_008f:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_009e
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0091:
    lea -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0093:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0099:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0353
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_009e:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_009f:
    mov -208(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00a4:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00a9:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00ae:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00b3:
    mov -208(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00b5:
    lea -56(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00b7:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00bc:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00ff
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00be:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00bf:
    mov $1, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00c0:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00c1:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00c2:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00c7:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00c8:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00ca:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00cf:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00d0:
    mov -208(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00d5:
    lea -56(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00d7:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00d8:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_updateInfo_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10__gen_gen
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00dd:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0367
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00e2:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00e3:
    mov -208(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00e8:
    mov -208(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00ea:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00eb:
    mov -208(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00f0:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00f6:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00f7:
    mov $-1, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00f8:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00f9:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00fa:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_00ff:
    lea -56(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0101:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0106:
    lea -72(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0108:
    mov -216(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_010e:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0110:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    call m_System_Text_Json_JsonDocument_Parse__ref_v
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0115:
    mov -208(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0117:
    mov -64(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0119:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_011e:
    mov -208(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0120:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0122:
    lea .LS_18_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0127:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_012c:
    mov -208(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_012e:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0130:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0135:
    mov -208(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0137:
    mov -80(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0139:
    mov -208(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_013e:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0149
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0140:
    mov -80(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0142:
    mov -208(%rbp), %rdi
    call m_Skymu_Versioning_VersionTools_Validate__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0147:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0156
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0149:
    lea -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_014b:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0151:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0353
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0156:
    mov -64(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0158:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_015d:
    mov -208(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_015f:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0161:
    lea .LS_19_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0166:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_016b:
    mov -208(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_016d:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_016f:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0174:
    mov -208(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0175:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_017d
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0177:
    mov -200(%rbp), %rax
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0178:
    lea .LN_20_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_017d:
    mov -208(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_017f:
    mov -88(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0181:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Length__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0186:
    mov $2, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0187:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01b7
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0189:
    mov -88(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_018b:
    lea .LS_21_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0190:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_IndexOf__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0195:
    mov -208(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0197:
    mov -80(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0199:
    mov -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_019b:
    mov $0, %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_019c:
    mov -136(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_019e:
    mov -232(%rbp), %rdx
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4_i4
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01a3:
    mov -88(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01a5:
    mov -136(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01a7:
    mov $1, %rax
    mov %rax, -240(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01a8:
    mov -240(%rbp), %rcx
    mov -232(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -232(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01a9:
    mov -232(%rbp), %rsi
    mov -224(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01ae:
    lea .LN_22_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -224(%rbp), %rcx
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Versioning_BuildInfo_ctor__ref_ref_ref
    mov %r12, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01b3:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01b5:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01ca
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01b7:
    mov -80(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01b9:
    lea .LS_23_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01be:
    lea .LS_24_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01c3:
    lea .LN_25_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -224(%rbp), %rcx
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Versioning_BuildInfo_ctor__ref_ref_ref
    mov %r12, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01c8:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01ca:
    mov -96(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01cc:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_IsBeta__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01d1:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01e7
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01d3:
    call m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01d8:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01e7
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01da:
    lea -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01dc:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01e2:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0353
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01e7:
    mov -96(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01e9:
    lea .LN_26_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01ee:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_IsNewerThan__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01f3:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0202
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01f5:
    lea -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01f7:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_01fd:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0353
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0202:
    mov -64(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0204:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0209:
    mov -208(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_020b:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_020d:
    lea .LS_27_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0212:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0217:
    mov -208(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0219:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_021b:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0220:
    mov -208(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0221:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0229
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0223:
    mov -200(%rbp), %rax
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0224:
    lea .LN_28_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0229:
    mov -208(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_022b:
    mov -64(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_022d:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0232:
    mov -208(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0234:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0236:
    lea .LS_29_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_023b:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0240:
    mov -208(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0242:
    lea .LN_30_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_Generic_List_1_string_ctor__void
    mov %r12, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0247:
    mov -208(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0249:
    lea -112(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_024b:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_EnumerateArray__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0250:
    mov -208(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0252:
    lea -152(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0254:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0259:
    mov -208(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_025b:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0291
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_025d:
    lea -144(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_025f:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_get_Current__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0264:
    mov -208(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0266:
    lea -160(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0268:
    lea .LS_31_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_026d:
    lea -168(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_026f:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0274:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0291
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0276:
    lea -168(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0278:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_027d:
    mov -208(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_027f:
    mov -176(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0281:
    mov -208(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0286:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0291
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0288:
    mov -120(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_028a:
    mov -176(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_028c:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_Add__gen
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0291:
    lea -144(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0293:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0298:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_025d
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_029a:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02ae
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02ae:
    lea -184(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02b0:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02b6:
    lea -184(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02b8:
    mov $1, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02b9:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_32_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02be:
    lea -184(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02c0:
    mov -120(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02c2:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_ToArray__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02c7:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_33_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02cc:
    lea -184(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02ce:
    mov -96(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02d0:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_34_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02d5:
    lea -184(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02d7:
    mov -104(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02d9:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_35_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02de:
    mov -184(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02e0:
    lea .LN_36_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -208(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_Pages_Updater_updateInfo_ctor__gen
    mov %r12, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02e5:
    mov -208(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_02e6:
    jmp .Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0353
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0353:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0354:
    mov $-2, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0356:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_37_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_035b:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_035c:
    mov -208(%rbp), %rdi
    lea .LN_38_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0361:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0362:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_updateInfo_SetResult__gen
    mov %rax, -208(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_0367:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext__void, .-m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext__void

.globl m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine__ref
.type m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine__ref, @function
m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_updateInfo_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine__ref, .-m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine__ref

.globl m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine__ref
.type m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine__ref, @function
m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine__ref, .-m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine__ref

.globl m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine__ref
.type m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine__ref, @function
m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine__ref, .-m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine__ref

.globl m_Skymu_Forms_Pages_Updater_ctor__ref
.type m_Skymu_Forms_Pages_Updater_ctor__ref, @function
m_Skymu_Forms_Pages_Updater_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_0001:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_0006:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_000c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_ctor__void
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_0012:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_InitializeComponent__void
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_0018:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_0019:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_001a:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_UpdateHandler__b_ref
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_001f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_ctor__ref, .-m_Skymu_Forms_Pages_Updater_ctor__ref

.globl m_Skymu_Forms_Pages_Updater_UpdateHandler__b_ref
.type m_Skymu_Forms_Pages_Updater_UpdateHandler__b_ref, @function
m_Skymu_Forms_Pages_Updater_UpdateHandler__b_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0016:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Forms_Pages_Updater_UpdateHandler_d_6__gen
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_003a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateHandler__b_ref, .-m_Skymu_Forms_Pages_Updater_UpdateHandler__b_ref

.globl m_Skymu_Forms_Pages_Updater_UpdateError__ref
.type m_Skymu_Forms_Pages_Updater_UpdateError__ref, @function
m_Skymu_Forms_Pages_Updater_UpdateError__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0006:
    mov $17, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0008:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_HeaderIcon__v
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_000e:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0013:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0018:
    lea .LS_2_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_001d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0022:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_HeaderText__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0027:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0028:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_002d:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0032:
    lea .LS_4_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0037:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_003c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0041:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0042:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0047:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_004c:
    lea .LS_6_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0051:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0056:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonRightText__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_005b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_005c:
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0061:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0062:
    lea m_Skymu_Forms_Pages_Updater_UpdateError_b_7_0__void(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0068:
    lea .LN_8_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_006d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0072:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0073:
    mov -32(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0078:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_007d:
    lea .LS_10_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0082:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0087:
    lea .LS_11_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_008c:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_008d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0092:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0097:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_0098:
    mov -32(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_Pages_Updater_UpdateError_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_009d:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_009e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_00a3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateError_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateError__ref, .-m_Skymu_Forms_Pages_Updater_UpdateError__ref

.globl m_Skymu_Forms_Pages_Updater_UpdateComplete__ref
.type m_Skymu_Forms_Pages_Updater_UpdateComplete__ref, @function
m_Skymu_Forms_Pages_Updater_UpdateComplete__ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0000:
    lea .LN_0_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_000d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0015:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_001a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Visibility__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_001f:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0020:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_002d
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0022:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0023:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0028:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_002d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0033:
    lea .LS_6_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0038:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_HeaderText__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_003d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_003e:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0043:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0048:
    lea .LS_8_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_004d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0052:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0057:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0058:
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_005d:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0062:
    lea .LS_10_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0067:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_006c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonRightText__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0071:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0072:
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0077:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0078:
    lea m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_007e:
    lea .LN_12_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0083:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0088:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0089:
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_008e:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0093:
    lea .LS_14_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0098:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_0099:
    mov -72(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_009e:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_009f:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00a0:
    mov $100, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00a2:
    mov -88(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_box
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00a7:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00a8:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00a9:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00aa:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00ab:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00ac:
    lea .LN_16_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_TimeSpan_ctor__i8
    mov %r12, -88(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00b1:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00b2:
    lea -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00b4:
    lea .LS_17_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00b9:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_TimeSpan_ToString__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00be:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00bf:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00c0:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00c1:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00c2:
    mov -80(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00c7:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00c8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_Format__ref_arr
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00cd:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00d2:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00d3:
    mov -48(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00d8:
    lea .LS_20_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rdi
    mov $54, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00dd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00e2:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00e3:
    mov -48(%rbp), %rdi
    lea .LN_21_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00e8:
    movsd .LD_22_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00f1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_RangeBase_set_Value__f8
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_00f6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateComplete_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateComplete__ref, .-m_Skymu_Forms_Pages_Updater_UpdateComplete__ref

.globl m_Skymu_Forms_Pages_Updater_InitiateUpdate__void
.type m_Skymu_Forms_Pages_Updater_InitiateUpdate__void, @function
m_Skymu_Forms_Pages_Updater_InitiateUpdate__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_0002:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_InitiateUpdate_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_InitiateUpdate_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_Updater_InitiateUpdate_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_Updater_InitiateUpdate_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_valuetype_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9__gen
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_InitiateUpdate__void, .-m_Skymu_Forms_Pages_Updater_InitiateUpdate__void

.globl m_Skymu_Forms_Pages_Updater_GetUpdateInfo__void
.type m_Skymu_Forms_Pages_Updater_GetUpdateInfo__void, @function
m_Skymu_Forms_Pages_Updater_GetUpdateInfo__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_0000:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_0002:
    call m_Skymu_Forms_Pages_Updater_updateInfo_Create__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_0007:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_000c:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_000e:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_0014:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_0016:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_001b:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_updateInfo_Start_valuetype_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10__gen
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_0022:
    lea -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_0024:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_0029:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_updateInfo_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_002e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_GetUpdateInfo_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_GetUpdateInfo__void, .-m_Skymu_Forms_Pages_Updater_GetUpdateInfo__void

.globl m_Skymu_Forms_Pages_Updater_SkipUpdate__ref
.type m_Skymu_Forms_Pages_Updater_SkipUpdate__ref, @function
m_Skymu_Forms_Pages_Updater_SkipUpdate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_SkipUpdate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_SkipUpdate_ref_0001:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_SkippedVersion__ref
.Lm_Skymu_Forms_Pages_Updater_SkipUpdate_ref_0006:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_Forms_Pages_Updater_SkipUpdate_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_SkipUpdate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_SkipUpdate__ref, .-m_Skymu_Forms_Pages_Updater_SkipUpdate__ref

.globl m_Skymu_Forms_Pages_Updater_InitializeComponent__void
.type m_Skymu_Forms_Pages_Updater_InitializeComponent__void, @function
m_Skymu_Forms_Pages_Updater_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0009
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_Pages_Updater_InitializeComponent_void(%rip), %rdi
    mov $41, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_Pages_Updater_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_InitializeComponent__void, .-m_Skymu_Forms_Pages_Updater_InitializeComponent__void

.globl m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001e
    cmp $1, %eax
    je .Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002b
    cmp $2, %eax
    je .Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0038
    cmp $3, %eax
    je .Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0045
    cmp $4, %eax
    je .Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0052
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001c:
    jmp .Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005f
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0020:
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0025:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002d:
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0032:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0038:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0039:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003a:
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0044:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0045:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0046:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0047:
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0051:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0052:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0053:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0054:
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0059:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0060:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0061:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0066:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0__void
.type m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0__void, @function
m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0__void, .-m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0__void

.globl m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1__void
.type m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1__void, @function
m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void_0001:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void_0002:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void_0003:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_UpdateHandler__b_ref
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1__void, .-m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1__void

.globl m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2__void
.type m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2__void, @function
m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_InitiateUpdate__void
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2__void, .-m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_2__void

.globl m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3__void
.type m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3__void, @function
m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_updateInfo_get_HasValue__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_000c:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0012
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_000e:
    mov -16(%rbp), %rax
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_000f:
    xor %eax, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0010:
    jmp .Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0022
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0012:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_updateInfo_GetValueOrDefault__void
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0017:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_001c:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_GetVersionString__b
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0022:
    mov -24(%rbp), %rdi
    call m_Skymu_Forms_Pages_Updater_SkipUpdate__ref
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0028:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_002d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3__void, .-m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3__void

.globl m_Skymu_Forms_Pages_Updater_UpdateError_b_7_0__void
.type m_Skymu_Forms_Pages_Updater_UpdateError_b_7_0__void, @function
m_Skymu_Forms_Pages_Updater_UpdateError_b_7_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_b_7_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_UpdateError_b_7_0_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Updater_InitiateUpdate__void
.Lm_Skymu_Forms_Pages_Updater_UpdateError_b_7_0_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_UpdateError_b_7_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_UpdateError_b_7_0__void, .-m_Skymu_Forms_Pages_Updater_UpdateError_b_7_0__void

.globl m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0__void
.type m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0__void, @function
m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Hide__void
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0__void, .-m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0__void

.globl m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1__ref_ref
.type m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1__ref_ref, @function
m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_000b
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_0009:
    mov -32(%rbp), %rax
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_000b:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_Cancel__void
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1__ref_ref, .-m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1__ref_ref

    .globl m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_MoveNext__void
    .type m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_MoveNext__void, @function
m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_MoveNext__void, .-m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_MoveNext__void

    .globl m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_MoveNext__void
    .type m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_MoveNext__void, @function
m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_MoveNext__void, .-m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_MoveNext__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void:
    .asciz "file_path"

.LN_1_m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_Updater_c_DisplayClass8_0_UpdateComplete_b_0_void:
    .asciz "window"

.LN_0_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "SkymuHttpClient"

.LS_2_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 97, 112, 105, 46, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 114, 101, 112, 111, 115, 47, 84, 104, 101, 83, 107, 121, 109, 117, 84, 101, 97, 109, 47, 83, 107, 121, 109, 117, 47, 114, 101, 108, 101, 97, 115, 101, 115, 47, 108, 97, 116, 101, 115, 116

.LN_3_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<response>5__2"

.LN_10_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<response>5__2"

.LN_11_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<response>5__2"

.LN_12_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_13_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>u__2"

.LN_14_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_15_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>u__2"

.LN_16_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>u__2"

.LN_17_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>1__state"

.LS_18_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 116, 97, 103, 95, 110, 97, 109, 101

.LS_19_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 110, 97, 109, 101

.LN_20_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "Empty"

.LS_21_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 32

.LN_22_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "Skymu.Versioning.BuildInfo"

.LS_23_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 40, 105, 110, 118, 97, 108, 105, 100

.LS_24_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 99, 111, 100, 101, 110, 97, 109, 101, 41

.LN_25_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "Skymu.Versioning.BuildInfo"

.LN_26_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "BUILD_INFO"

.LS_27_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 98, 111, 100, 121

.LN_28_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "Empty"

.LS_29_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 97, 115, 115, 101, 116, 115

.LN_30_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "System.Collections.Generic.List`1<string>"

.LS_31_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .short 98, 114, 111, 119, 115, 101, 114, 95, 100, 111, 119, 110, 108, 111, 97, 100, 95, 117, 114, 108

.LN_32_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "status"

.LN_33_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "urls"

.LN_34_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "info"

.LN_35_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "log"

.LN_36_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "Skymu.Forms.Pages.Updater/updateInfo>"

.LN_37_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_38_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_d_10_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_Updater_ctor_ref:
    .asciz "brand"

.LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref:
    .asciz "manual"

.LN_3_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref:
    .asciz "exwin"

.LN_4_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref:
    .asciz "<>1__state"

.LN_5_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .asciz "window"

.LN_1_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .asciz "window"

.LS_2_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .short 115, 70, 95, 85, 80, 71, 82, 65, 68, 69, 95, 70, 65, 73, 76, 69, 68, 95, 67, 65, 80, 84, 73, 79, 78

.LN_3_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .asciz "window"

.LS_4_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .short 115, 70, 95, 85, 80, 71, 82, 65, 68, 69, 95, 66, 84, 78, 95, 82, 69, 84, 82, 89

.LN_5_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .asciz "window"

.LS_6_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .short 115, 70, 95, 85, 80, 71, 82, 65, 68, 69, 95, 66, 84, 78, 95, 67, 65, 78, 67, 69, 76

.LN_7_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .asciz "window"

.LN_8_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .asciz "System.Action"

.LN_9_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .asciz "Description"

.LS_10_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .short 115, 70, 95, 85, 80, 71, 82, 65, 68, 69, 95, 70, 65, 73, 76, 69, 68, 95, 84, 69, 88, 84, 49

.LS_11_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .short 10, 10

.LN_12_m_Skymu_Forms_Pages_Updater_UpdateError_ref:
    .asciz "ProgressGrid"

.LN_0_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "Skymu.Forms.Pages.Updater/'<>c__DisplayClass8_0'"

.LN_1_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "file_path"

.LN_2_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "<>4__this"

.LN_3_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "window"

.LN_4_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "window"

.LN_5_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "window"

.LS_6_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .short 68, 111, 119, 110, 108, 111, 97, 100, 32, 99, 111, 109, 112, 108, 101, 116, 101

.LN_7_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "window"

.LS_8_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 79, 80, 69, 78, 70, 73, 76, 69

.LN_9_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "window"

.LS_10_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .short 115, 83, 75, 89, 65, 67, 67, 69, 83, 83, 95, 68, 76, 71, 95, 66, 84, 78, 95, 67, 76, 79, 83, 69

.LN_11_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "window"

.LN_12_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "System.Action"

.LN_13_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "UpdateStatusText"

.LS_14_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .short 115, 70, 95, 85, 80, 71, 82, 65, 68, 69, 95, 68, 79, 87, 78, 76, 79, 65, 68, 95, 80, 82, 79, 71, 82, 69, 83, 83

.LN_15_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "System.Int32"

.LN_16_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "System.TimeSpan"

.LS_17_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .short 104, 104, 92, 58, 109, 109, 92, 58, 115, 115

.LN_18_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "System.Int32"

.LN_19_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "Description"

.LS_20_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .short 84, 104, 101, 32, 105, 110, 115, 116, 97, 108, 108, 101, 114, 32, 104, 97, 115, 32, 98, 101, 101, 110, 32, 115, 97, 118, 101, 100, 32, 116, 111, 32, 121, 111, 117, 114, 32, 68, 111, 119, 110, 108, 111, 97, 100, 115, 32, 102, 111, 108, 100, 101, 114, 46

.LN_21_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .asciz "ProgBar"

.LD_22_m_Skymu_Forms_Pages_Updater_UpdateComplete_ref:
    .double 100

.LN_0_m_Skymu_Forms_Pages_Updater_InitiateUpdate_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_Pages_Updater_InitiateUpdate_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Forms_Pages_Updater_InitiateUpdate_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Forms_Pages_Updater_InitiateUpdate_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_void:
    .asciz "<>t__builder"

.LN_3_m_Skymu_Forms_Pages_Updater_GetUpdateInfo_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Forms_Pages_Updater_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_Pages_Updater_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_Pages_Updater_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 112, 97, 103, 101, 115, 47, 117, 112, 100, 97, 116, 101, 114, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_Pages_Updater_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Description"

.LN_1_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProgressGrid"

.LN_2_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UpdateStatusText"

.LN_3_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProgBar"

.LN_4_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FileSize"

.LN_5_m_Skymu_Forms_Pages_Updater_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_0_void:
    .asciz "window"

.LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_1_void:
    .asciz "window"

.LN_0_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void:
    .asciz "update_info"

.LN_1_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void:
    .asciz "info"

.LN_2_m_Skymu_Forms_Pages_Updater_UpdateHandler_b_6_3_void:
    .asciz "window"

.LN_0_m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_0_void:
    .asciz "window"

.LN_0_m_Skymu_Forms_Pages_Updater_InitiateUpdate_b_9_1_ref_ref:
    .asciz "_cts"

.LSTUB_m_Skymu_Forms_Pages_Updater_InitiateUpdate_d_9_MoveNext_void:
    .asciz "Skymu.Forms.Pages.Updater/<InitiateUpdate>d__9::MoveNext  [float conversion]"

.LSTUB_m_Skymu_Forms_Pages_Updater_UpdateHandler_d_6_MoveNext_void:
    .asciz "Skymu.Forms.Pages.Updater/<UpdateHandler>d__6::MoveNext  [constructor with 17 arguments (limit 5)]"

    .section .note.GNU-stack,"",@progbits
