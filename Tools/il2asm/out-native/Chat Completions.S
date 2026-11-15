    .text

.globl m_ChatCompletions_CCException_get_ErrorCode__void
.type m_ChatCompletions_CCException_get_ErrorCode__void, @function
m_ChatCompletions_CCException_get_ErrorCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_CCException_get_ErrorCode_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_CCException_get_ErrorCode_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_CCException_get_ErrorCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_CCException_get_ErrorCode_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_CCException_get_ErrorCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_CCException_get_ErrorCode__void, .-m_ChatCompletions_CCException_get_ErrorCode__void
.globl m_ChatCompletions_CCException_ctor__ref_ref
.type m_ChatCompletions_CCException_ctor__ref_ref, @function
m_ChatCompletions_CCException_ctor__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_ChatCompletions_CCException_ctor_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_CCException_ctor_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_CCException_ctor_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Exception_ctor__ref
.Lm_ChatCompletions_CCException_ctor_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_CCException_ctor_ref_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_CCException_ctor_ref_ref_0009:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_CCException_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_CCException_ctor_ref_ref_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_CCException_ctor_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_CCException_ctor__ref_ref, .-m_ChatCompletions_CCException_ctor__ref_ref
.globl m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext__void
.type m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext__void, @function
m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $224, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0001:
    mov -192(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0006:
    mov -192(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0008:
    mov -192(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_000d:
    mov -192(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_000f:
    mov $2, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0010:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0032
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0013:
    call m_System_Net_Http_HttpMethod_get_Get__void
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0018:
    mov -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0019:
    mov -208(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_001e:
    lea .LS_3_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0023:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0028:
    lea .LN_4_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_HttpRequestMessage_ctor__ref_ref
    mov %r12, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_002d:
    mov -200(%rbp), %rdx
    mov -192(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0032:
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0034:
    mov -192(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0094
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0036:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0037:
    mov $1, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0038:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0039:
    mov $1, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_003a:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rax
    cmp %ecx, %eax
    jbe .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00c0
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_003f:
    mov -32(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0040:
    mov -192(%rbp), %rdi
    lea .LN_6_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0045:
    mov -16(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0046:
    mov -200(%rbp), %rdi
    lea .LN_7_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_004b:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_004c:
    mov -208(%rbp), %rdi
    lea .LN_8_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0051:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpMessageInvoker_SendAsync__ref_v
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0056:
    mov $0, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0057:
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_005c:
    mov -192(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_005e:
    lea -64(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0060:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0065:
    mov -192(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0067:
    lea -56(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0069:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_006e:
    mov -192(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00b1
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0070:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0071:
    mov $0, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0072:
    mov -200(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0073:
    mov -200(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0074:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rdi
    lea .LN_9_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0079:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_007a:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_007c:
    mov -200(%rbp), %rdx
    mov -192(%rbp), %rdi
    lea .LN_10_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0081:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0082:
    mov -192(%rbp), %rdi
    lea .LN_11_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0087:
    lea -56(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0089:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_008a:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_ChatCompletions_Client_ListModelsAsync_d_3__gen_gen
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_008f:
    jmp .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02ef
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0094:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0095:
    mov -192(%rbp), %rdi
    lea .LN_12_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_009a:
    mov -192(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_009c:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_009d:
    mov -192(%rbp), %rdi
    lea .LN_13_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00a2:
    mov -192(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00a8:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00a9:
    mov $-1, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00aa:
    mov -200(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00ab:
    mov -200(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00ac:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rdi
    lea .LN_14_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00b1:
    lea -56(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00b3:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00b8:
    mov -192(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00b9:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00ba:
    mov -48(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00bb:
    mov -200(%rbp), %rdx
    mov -192(%rbp), %rdi
    lea .LN_15_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00c0:
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00c1:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00c2:
    mov $1, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00c3:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_012b
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00c5:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00c6:
    mov $2, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00c7:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01ad
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00cc:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00cd:
    mov -192(%rbp), %rdi
    lea .LN_16_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00d2:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00d7:
    mov -192(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_015f
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00dc:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00dd:
    mov -192(%rbp), %rdi
    lea .LN_17_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00e2:
    mov -16(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00e3:
    mov -200(%rbp), %rdi
    lea .LN_18_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00e8:
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    call m_ChatCompletions_Client_ThrowForErrorResponseAsync__ref_v
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00ed:
    mov $0, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00ee:
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00f3:
    mov -192(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00f5:
    lea -88(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00f7:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00fc:
    mov -192(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_00fe:
    lea -80(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0100:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0105:
    mov -192(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0148
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0107:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0108:
    mov $1, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0109:
    mov -200(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_010a:
    mov -200(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_010b:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rdi
    lea .LN_19_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0110:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0111:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0113:
    mov -200(%rbp), %rdx
    mov -192(%rbp), %rdi
    lea .LN_20_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0118:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0119:
    mov -192(%rbp), %rdi
    lea .LN_21_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_011e:
    lea -80(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0120:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0121:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_valuetype_ChatCompletions_Client_ListModelsAsync_d_3__gen_gen
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0126:
    jmp .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02ef
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_012b:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_012c:
    mov -192(%rbp), %rdi
    lea .LN_22_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0131:
    mov -192(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0133:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0134:
    mov -192(%rbp), %rdi
    lea .LN_23_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0139:
    mov -192(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_013f:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0140:
    mov $-1, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0141:
    mov -200(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0142:
    mov -200(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0143:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rdi
    lea .LN_24_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0148:
    lea -80(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_014a:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_GetResult__void
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_014f:
    lea .LS_25_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0154:
    lea .LS_26_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0159:
    lea .LN_27_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -200(%rbp), %rdx
    mov -192(%rbp), %rsi
    mov %r12, %rdi
    call m_ChatCompletions_CCException_ctor__ref_ref
    mov %r12, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_015e:
    mov -192(%rbp), %rdi
    call shim_throw
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_015f:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0160:
    mov -192(%rbp), %rdi
    lea .LN_28_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0165:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_016a:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_016f:
    mov $0, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0170:
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0175:
    mov -192(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0177:
    lea -104(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0179:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_017e:
    mov -192(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0180:
    lea -96(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0182:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0187:
    mov -192(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01ca
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0189:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_018a:
    mov $2, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_018b:
    mov -200(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_018c:
    mov -200(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_018d:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rdi
    lea .LN_29_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0192:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0193:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0195:
    mov -200(%rbp), %rdx
    mov -192(%rbp), %rdi
    lea .LN_30_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_019a:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_019b:
    mov -192(%rbp), %rdi
    lea .LN_31_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01a0:
    lea -96(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01a2:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01a3:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_valuetype_ChatCompletions_Client_ListModelsAsync_d_3__gen_gen
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01a8:
    jmp .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02ef
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01ad:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01ae:
    mov -192(%rbp), %rdi
    lea .LN_32_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01b3:
    mov -192(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01b5:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01b6:
    mov -192(%rbp), %rdi
    lea .LN_33_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01bb:
    mov -192(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01c1:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01c2:
    mov $-1, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01c3:
    mov -200(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01c4:
    mov -200(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01c5:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rdi
    lea .LN_34_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01ca:
    lea -96(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01cc:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01d1:
    lea .LN_35_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_Generic_List_1_string_ctor__void
    mov %r12, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01d6:
    mov -200(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01d8:
    lea -120(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01da:
    mov -200(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01e0:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01e2:
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    call m_System_Text_Json_JsonDocument_Parse__ref_v
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01e7:
    mov -192(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01e9:
    mov -112(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01eb:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01f0:
    mov -192(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01f2:
    lea -136(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01f4:
    lea .LS_36_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01f9:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_01fb:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0200:
    mov -192(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_027b
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0202:
    lea -128(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0204:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_get_ValueKind__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0209:
    mov $2, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_020a:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_027b
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_020c:
    lea -128(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_020e:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_EnumerateArray__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0213:
    mov -192(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0215:
    lea -152(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0217:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_021c:
    mov -192(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_021e:
    jmp .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_025e
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0220:
    lea -144(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0222:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_get_Current__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0227:
    mov -192(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0229:
    lea -160(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_022b:
    lea .LS_37_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0230:
    lea -168(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0232:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0237:
    mov -192(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_025e
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0239:
    lea -168(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_023b:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_get_ValueKind__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0240:
    mov $3, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0241:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_025e
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0243:
    lea -168(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0245:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_024a:
    mov -192(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_024c:
    mov -176(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_024e:
    mov -192(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0253:
    mov -192(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_025e
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0255:
    mov -72(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0257:
    mov -176(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0259:
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_Add__gen
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_025e:
    lea -144(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0260:
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0265:
    mov -192(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0220
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0267:
    jmp .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_027b
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_027b:
    jmp .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_028d
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_028d:
    mov -72(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_028f:
    mov -192(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_0290:
    jmp .Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02db
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02db:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02dc:
    mov $-2, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02de:
    mov -200(%rbp), %rdx
    mov -192(%rbp), %rdi
    lea .LN_38_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02e3:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02e4:
    mov -192(%rbp), %rdi
    lea .LN_39_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02e9:
    mov -40(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02ea:
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_SetResult__gen
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_02ef:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext__void, .-m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext__void
.globl m_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine__ref
.type m_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine__ref, @function
m_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine__ref, .-m_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine__ref
.globl m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext__void
.type m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext__void, @function
m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $208, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0001:
    mov -168(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0006:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0008:
    mov -168(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_000d:
    mov -168(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_000f:
    mov $2, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0010:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_004b
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0013:
    mov -168(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0019:
    mov -176(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_001e:
    mov $0, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0020:
    mov -192(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0025:
    mov -192(%rbp), %rcx
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    call m_ChatCompletions_Client_BuildRequestBody__ref_gen_b_gen
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_002a:
    mov -168(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_002c:
    call m_System_Net_Http_HttpMethod_get_Post__void
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0031:
    mov -32(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0032:
    mov -184(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0037:
    lea .LS_6_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_003c:
    mov -192(%rbp), %rsi
    mov -184(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0041:
    lea .LN_7_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_HttpRequestMessage_ctor__ref_ref
    mov %r12, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0046:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_8_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_004b:
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_004c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_004d:
    mov -168(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00c8
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_004f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0050:
    mov $1, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0051:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0052:
    mov $1, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0053:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    cmp %ecx, %eax
    jbe .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00f6
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0059:
    mov -168(%rbp), %rdi
    lea .LN_9_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_005e:
    mov -48(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_005f:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0064:
    lea .LS_10_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0069:
    lea .LN_11_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -192(%rbp), %rcx
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_006e:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpRequestMessage_set_Content__ref
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0073:
    mov -32(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0074:
    mov -168(%rbp), %rdi
    lea .LN_12_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0079:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_007a:
    mov -176(%rbp), %rdi
    lea .LN_13_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_007f:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0080:
    mov -184(%rbp), %rdi
    lea .LN_14_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0085:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpMessageInvoker_SendAsync__ref_v
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_008a:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_008b:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0090:
    mov -168(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0092:
    lea -72(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0094:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0099:
    mov -168(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_009b:
    lea -64(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_009d:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00a2:
    mov -168(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00e5
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00a4:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00a5:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00a6:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00a7:
    mov -176(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00a8:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_15_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00ad:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00ae:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00b0:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_16_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00b5:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00b6:
    mov -168(%rbp), %rdi
    lea .LN_17_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00bb:
    lea -64(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00bd:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00be:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_ChatCompletions_Client_SendNonStreamingAsync_d_5__gen_gen
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00c3:
    jmp .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02de
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00c8:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00c9:
    mov -168(%rbp), %rdi
    lea .LN_18_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00ce:
    mov -168(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00d0:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00d1:
    mov -168(%rbp), %rdi
    lea .LN_19_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00d6:
    mov -168(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00dc:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00dd:
    mov $-1, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00de:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00df:
    mov -176(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00e0:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_20_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00e5:
    lea -64(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00e7:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00ec:
    mov -168(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00ee:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00ef:
    mov -56(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00f1:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_21_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00f6:
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00f7:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00f8:
    mov $1, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00f9:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0161
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00fb:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00fc:
    mov $2, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_00fd:
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01e3
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0102:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0103:
    mov -168(%rbp), %rdi
    lea .LN_22_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0108:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_010d:
    mov -168(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0195
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0112:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0113:
    mov -168(%rbp), %rdi
    lea .LN_23_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0118:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0119:
    mov -176(%rbp), %rdi
    lea .LN_24_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_011e:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    call m_ChatCompletions_Client_ThrowForErrorResponseAsync__ref_v
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0123:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0124:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0129:
    mov -168(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_012b:
    lea -88(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_012d:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0132:
    mov -168(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0134:
    lea -80(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0136:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_013b:
    mov -168(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_017e
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_013d:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_013e:
    mov $1, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_013f:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0140:
    mov -176(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0141:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_25_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0146:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0147:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0149:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_26_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_014e:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_014f:
    mov -168(%rbp), %rdi
    lea .LN_27_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0154:
    lea -80(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0156:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0157:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_valuetype_ChatCompletions_Client_SendNonStreamingAsync_d_5__gen_gen
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_015c:
    jmp .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02de
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0161:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0162:
    mov -168(%rbp), %rdi
    lea .LN_28_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0167:
    mov -168(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0169:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_016a:
    mov -168(%rbp), %rdi
    lea .LN_29_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_016f:
    mov -168(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0175:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0176:
    mov $-1, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0177:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0178:
    mov -176(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0179:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_30_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_017e:
    lea -80(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0180:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_GetResult__void
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0185:
    lea .LS_31_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_018a:
    lea .LS_32_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_018f:
    lea .LN_33_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov %r12, %rdi
    call m_ChatCompletions_CCException_ctor__ref_ref
    mov %r12, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0194:
    mov -168(%rbp), %rdi
    call shim_throw
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0195:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0196:
    mov -168(%rbp), %rdi
    lea .LN_34_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_019b:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01a0:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01a5:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01a6:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01ab:
    mov -168(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01ad:
    lea -104(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01af:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01b4:
    mov -168(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01b6:
    lea -96(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01b8:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01bd:
    mov -168(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0200
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01bf:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01c0:
    mov $2, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01c1:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01c2:
    mov -176(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01c3:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_35_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01c8:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01c9:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01cb:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_36_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01d0:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01d1:
    mov -168(%rbp), %rdi
    lea .LN_37_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01d6:
    lea -96(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01d8:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01d9:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_valuetype_ChatCompletions_Client_SendNonStreamingAsync_d_5__gen_gen
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01de:
    jmp .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02de
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01e3:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01e4:
    mov -168(%rbp), %rdi
    lea .LN_38_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01e9:
    mov -168(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01eb:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01ec:
    mov -168(%rbp), %rdi
    lea .LN_39_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01f1:
    mov -168(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01f7:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01f8:
    mov $-1, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01f9:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01fa:
    mov -176(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_01fb:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_40_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0200:
    lea -96(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0202:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0207:
    lea -120(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0209:
    mov -176(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_020f:
    mov -120(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0211:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    call m_System_Text_Json_JsonDocument_Parse__ref_v
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0216:
    mov -168(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0218:
    mov -112(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_021a:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_021f:
    mov -168(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0221:
    lea -152(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0223:
    lea .LS_41_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0228:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_022d:
    mov -168(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_022f:
    lea -128(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0231:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0232:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_get_Item__i4
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0237:
    mov -168(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0239:
    lea -152(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_023b:
    lea .LS_42_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0240:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0245:
    mov -168(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0247:
    lea -136(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0249:
    lea .LS_43_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_024e:
    lea -144(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0250:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0255:
    mov -168(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_025e
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0257:
    lea .LN_44_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_025c:
    jmp .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_026e
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_025e:
    lea -144(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0260:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0265:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0266:
    mov -168(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_026e
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0268:
    mov -168(%rbp), %rax
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_0269:
    lea .LN_45_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_026e:
    mov -168(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_026f:
    jmp .Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02ca
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02ca:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02cb:
    mov $-2, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02cd:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_46_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02d2:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02d3:
    mov -168(%rbp), %rdi
    lea .LN_47_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02d8:
    mov -40(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02d9:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_SetResult__gen
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_02de:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext__void, .-m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext__void
.globl m_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine__ref
.type m_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine__ref, @function
m_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine__ref, .-m_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine__ref
.globl m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext__void
.type m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext__void, @function
m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $208, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0001:
    mov -176(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0006:
    mov -176(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0008:
    mov -176(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_000d:
    mov -176(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_000f:
    mov $3, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0010:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_004f
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0013:
    mov -176(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0019:
    mov -184(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_001e:
    mov $1, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_001f:
    lea -56(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0021:
    mov -200(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0027:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0029:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    call m_ChatCompletions_Client_BuildRequestBody__ref_gen_b_gen
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_002e:
    mov -176(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_002f:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0030:
    call m_System_Net_Http_HttpMethod_get_Post__void
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0035:
    mov -32(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0036:
    mov -192(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_003b:
    lea .LS_5_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0040:
    mov -200(%rbp), %rsi
    mov -192(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0045:
    lea .LN_6_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_HttpRequestMessage_ctor__ref_ref
    mov %r12, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_004a:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_7_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_004f:
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0050:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0051:
    mov -176(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00cd
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0053:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0054:
    mov $1, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0055:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0056:
    mov $2, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0057:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    cmp %ecx, %eax
    jbe .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00fb
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_005d:
    mov -176(%rbp), %rdi
    lea .LN_8_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0062:
    mov -48(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0063:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0068:
    lea .LS_9_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_006d:
    lea .LN_10_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0072:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpRequestMessage_set_Content__ref
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0077:
    mov -32(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0078:
    mov -176(%rbp), %rdi
    lea .LN_11_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_007d:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_007e:
    mov -184(%rbp), %rdi
    lea .LN_12_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0083:
    mov $1, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0084:
    mov -16(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0085:
    mov -200(%rbp), %rdi
    lea .LN_13_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -200(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_008a:
    mov -200(%rbp), %rcx
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_SendAsync__ref_v_v
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_008f:
    mov $0, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0090:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0095:
    mov -176(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0097:
    lea -80(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0099:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_009e:
    mov -176(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00a0:
    lea -72(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00a2:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00a7:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ea
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00a9:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00aa:
    mov $0, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ab:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ac:
    mov -184(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ad:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_14_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00b2:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00b3:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00b5:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_15_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ba:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00bb:
    mov -176(%rbp), %rdi
    lea .LN_16_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00c0:
    lea -72(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00c2:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00c3:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_ChatCompletions_Client_SendStreamingAsync_d_4__gen_gen
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00c8:
    jmp .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03ef
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00cd:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ce:
    mov -176(%rbp), %rdi
    lea .LN_17_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00d3:
    mov -176(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00d5:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00d6:
    mov -176(%rbp), %rdi
    lea .LN_18_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00db:
    mov -176(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00e1:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00e2:
    mov $-1, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00e3:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00e4:
    mov -184(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00e5:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_19_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ea:
    lea -72(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ec:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00f1:
    mov -176(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00f3:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00f4:
    mov -64(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00f6:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_20_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00fb:
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00fc:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00fd:
    mov $1, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00fe:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_00ff:
    mov -176(%rbp), %rax
    cmp $0, %eax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_016f
    cmp $1, %eax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01fc
    cmp $2, %eax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_022a
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0110:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0111:
    mov -176(%rbp), %rdi
    lea .LN_21_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0116:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_011b:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01a3
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0120:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0121:
    mov -176(%rbp), %rdi
    lea .LN_22_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0126:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0127:
    mov -184(%rbp), %rdi
    lea .LN_23_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_012c:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    call m_ChatCompletions_Client_ThrowForErrorResponseAsync__ref_v
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0131:
    mov $0, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0132:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0137:
    mov -176(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0139:
    lea -96(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_013b:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0140:
    mov -176(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0142:
    lea -88(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0144:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0149:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_018c
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_014b:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_014c:
    mov $1, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_014d:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_014e:
    mov -184(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_014f:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_24_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0154:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0155:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0157:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_25_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_015c:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_015d:
    mov -176(%rbp), %rdi
    lea .LN_26_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0162:
    lea -88(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0164:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0165:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_valuetype_ChatCompletions_Client_SendStreamingAsync_d_4__gen_gen
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_016a:
    jmp .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03ef
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_016f:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0170:
    mov -176(%rbp), %rdi
    lea .LN_27_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0175:
    mov -176(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0177:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0178:
    mov -176(%rbp), %rdi
    lea .LN_28_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_017d:
    mov -176(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0183:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0184:
    mov $-1, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0185:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0186:
    mov -184(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0187:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_29_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_018c:
    lea -88(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_018e:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_GetResult__void
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0193:
    lea .LS_30_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0198:
    lea .LS_31_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_019d:
    lea .LN_32_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov %r12, %rdi
    call m_ChatCompletions_CCException_ctor__ref_ref
    mov %r12, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01a2:
    mov -176(%rbp), %rdi
    call shim_throw
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01a3:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01a4:
    lea .LN_33_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Text_StringBuilder_ctor__void
    mov %r12, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01a9:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_34_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01ae:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01af:
    mov -176(%rbp), %rdi
    lea .LN_35_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01b4:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01b9:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStreamAsync__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01be:
    mov $0, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01bf:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01c4:
    mov -176(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01c6:
    lea -120(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01c8:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01cd:
    mov -176(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01cf:
    lea -112(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01d1:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_get_IsCompleted__void
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01d6:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0219
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01d8:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01d9:
    mov $2, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01da:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01db:
    mov -184(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01dc:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_36_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01e1:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01e2:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01e4:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_37_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01e9:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01ea:
    mov -176(%rbp), %rdi
    lea .LN_38_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01ef:
    lea -112(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01f1:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01f2:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_class_netstandard_System_IO_Stream_valuetype_ChatCompletions_Client_SendStreamingAsync_d_4__gen_gen
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01f7:
    jmp .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03ef
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01fc:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_01fd:
    mov -176(%rbp), %rdi
    lea .LN_39_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0202:
    mov -176(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0204:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0205:
    mov -176(%rbp), %rdi
    lea .LN_40_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_020a:
    mov -176(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0210:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0211:
    mov $-1, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0212:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0213:
    mov -184(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0214:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_41_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0219:
    lea -112(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_021b:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_GetResult__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0220:
    mov -176(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0222:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0223:
    mov -104(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0225:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_42_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_022a:
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_022b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_022c:
    mov $3, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_022d:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0245
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_022f:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0230:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0231:
    mov -184(%rbp), %rdi
    lea .LN_43_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0236:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_023b:
    lea .LN_44_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_StreamReader_ctor__ref_ref
    mov %r12, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0240:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_45_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0245:
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0246:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0247:
    mov $3, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0248:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0316
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_024d:
    jmp .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02cd
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_024f:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0250:
    mov -176(%rbp), %rdi
    lea .LN_46_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0255:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationToken_ThrowIfCancellationRequested__void
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_025a:
    mov -128(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_025c:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Length__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0261:
    mov -176(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02cd
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0263:
    mov -128(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0265:
    lea .LS_47_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_026a:
    mov $4, %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_026b:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref_v
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0270:
    mov -176(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02cd
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0272:
    mov -128(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0274:
    mov $5, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0275:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_027a:
    call m_System_Array_Empty_char__void
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_027f:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_TrimStart__arr
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0284:
    mov -176(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0286:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0288:
    lea .LS_48_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_028d:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0292:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0342
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0297:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0299:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Length__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_029e:
    mov -176(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02cd
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02a0:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02a2:
    mov -176(%rbp), %rdi
    call m_ChatCompletions_Client_TryExtractDeltaContent__ref
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02a7:
    mov -176(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02a9:
    mov -144(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02ab:
    mov -176(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02b0:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02cd
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02b2:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02b3:
    mov -176(%rbp), %rdi
    lea .LN_49_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02b8:
    mov -144(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02ba:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_StringBuilder_Append__ref
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02bf:
    mov -176(%rbp), %rax
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02c0:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02c1:
    mov -176(%rbp), %rdi
    lea .LN_50_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02c6:
    mov -144(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02c8:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_string_Invoke__gen
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02cd:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02ce:
    mov -176(%rbp), %rdi
    lea .LN_51_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02d3:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_TextReader_ReadLineAsync__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02d8:
    mov $0, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02d9:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02de:
    mov -176(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02e0:
    lea -160(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02e2:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02e7:
    mov -176(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02e9:
    lea -152(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02eb:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02f0:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0333
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02f2:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02f3:
    mov $3, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02f4:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02f5:
    mov -184(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02f6:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_52_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02fb:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02fc:
    mov -152(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_02fe:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_53_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0303:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0304:
    mov -176(%rbp), %rdi
    lea .LN_54_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0309:
    lea -152(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_030b:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_030c:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_valuetype_ChatCompletions_Client_SendStreamingAsync_d_4__gen_gen
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0311:
    jmp .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03ef
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0316:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0317:
    mov -176(%rbp), %rdi
    lea .LN_55_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_031c:
    mov -176(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_031e:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_031f:
    mov -176(%rbp), %rdi
    lea .LN_56_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0324:
    mov -176(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_032a:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_032b:
    mov $-1, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_032c:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_032d:
    mov -184(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_032e:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rdi
    lea .LN_57_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0333:
    lea -152(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0335:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_033a:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_033b:
    mov -176(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_033d:
    mov -168(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_024f
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0342:
    jmp .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_035c
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_035c:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_035d:
    xor %eax, %eax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_035e:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_58_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0363:
    jmp .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_037d
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_037d:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_037e:
    xor %eax, %eax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_037f:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_59_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0384:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0385:
    mov -176(%rbp), %rdi
    lea .LN_60_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_038a:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_038f:
    mov -176(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_0390:
    jmp .Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03db
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03db:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03dc:
    mov $-2, %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03de:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rdi
    lea .LN_61_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03e3:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03e4:
    mov -176(%rbp), %rdi
    lea .LN_62_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03e9:
    mov -40(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03ea:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_SetResult__gen
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_03ef:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext__void, .-m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext__void
.globl m_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine__ref
.type m_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine__ref, @function
m_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine__ref, .-m_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine__ref
.globl m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext__void
.type m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext__void, @function
m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $160, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0001:
    mov -128(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0006:
    mov -128(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0008:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0058
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_000a:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_000b:
    mov -128(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0010:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0015:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_001a:
    mov $0, %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_001b:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0020:
    mov -128(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0022:
    lea -64(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0024:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0029:
    mov -128(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_002b:
    lea -56(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_002d:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0032:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0075
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0034:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0035:
    mov $0, %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0036:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0037:
    mov -136(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0038:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_003d:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_003e:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0040:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0045:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0046:
    mov -128(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_004b:
    lea -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_004e:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_valuetype_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8__gen_gen
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0053:
    jmp .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0155
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0059:
    mov -128(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_005e:
    mov -128(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0061:
    mov -128(%rbp), %rdi
    lea .LN_6_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0066:
    mov -128(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_006d:
    mov $-1, %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_006e:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_006f:
    mov -136(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0070:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rdi
    lea .LN_7_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0075:
    lea -56(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0077:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_007c:
    mov -128(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_007d:
    lea .LS_8_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rdi
    mov $41, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0082:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0083:
    mov -136(%rbp), %rdi
    lea .LN_9_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0088:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_StatusCode__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_008d:
    mov -136(%rbp), %rdi
    lea .LN_10_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_box
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0092:
    mov -32(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0093:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_String_Format__ref_ref_ref
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0098:
    mov -128(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0099:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_009a:
    mov -128(%rbp), %rdi
    lea .LN_11_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_009f:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_StatusCode__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00a4:
    mov $429, %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00a9:
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00b2
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00ab:
    lea .LS_12_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00b0:
    jmp .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00b7
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00b2:
    lea .LS_13_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00b7:
    mov -128(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00b8:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00b9:
    lea -80(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00bb:
    mov -136(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00c1:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00c3:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    call m_System_Text_Json_JsonDocument_Parse__ref_v
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00c8:
    mov -128(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00ca:
    mov -72(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00cc:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00d1:
    mov -128(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00d3:
    lea -96(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00d5:
    lea .LS_14_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00da:
    lea -88(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00dc:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00e1:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_011d
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00e3:
    lea -88(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00e5:
    lea .LS_15_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00ea:
    lea -104(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00ec:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00f1:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0100
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00f3:
    lea -104(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00f5:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00fa:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00fb:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00ff
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00fd:
    mov -120(%rbp), %rax
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00fe:
    mov -40(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_00ff:
    mov -128(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0100:
    lea -88(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0102:
    lea .LS_16_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0107:
    lea -112(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0109:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_010e:
    mov -128(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_011d
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0110:
    lea -112(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0112:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0117:
    mov -128(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0118:
    mov -128(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_011c
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_011a:
    mov -120(%rbp), %rax
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_011b:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_011c:
    mov -128(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_011d:
    jmp .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_012f
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_012f:
    jmp .Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0134
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0134:
    mov -40(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0135:
    mov -48(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0136:
    lea .LN_17_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov %r12, %rdi
    call m_ChatCompletions_CCException_ctor__ref_ref
    mov %r12, -128(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_013b:
    mov -128(%rbp), %rdi
    call shim_throw
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_0155:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext__void, .-m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext__void
.globl m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine__ref
.type m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine__ref, @function
m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine__ref, .-m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine__ref
.globl m_ChatCompletions_Client_ctor__ref_ref
.type m_ChatCompletions_Client_ctor__ref_ref, @function
m_ChatCompletions_Client_ctor__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_ChatCompletions_Client_ctor_ref_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0007:
    mov -40(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_000c:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_ctor_ref_ref_001e
.Lm_ChatCompletions_Client_ctor_ref_ref_000e:
    lea .LS_0_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0013:
    lea .LS_1_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0018:
    lea .LN_2_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ArgumentException_ctor__ref_ref
    mov %r12, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_001d:
    mov -40(%rbp), %rdi
    call shim_throw
.Lm_ChatCompletions_Client_ctor_ref_ref_001e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_001f:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0020:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0021:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0026:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0027:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0028:
    mov $47, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_002a:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_ChatCompletions_Client_ctor_ref_ref_002b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_TrimEnd__arr
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0030:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ctor_ref_ref_0035:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0036:
    mov $10, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0038:
    lea .LN_4_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_OmegaAOL_Bifrost_Http_BifrostEngine_ctor__i4
    mov %r12, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_003d:
    lea .LN_5_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_HttpClient_ctor__ref
    mov %r12, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0042:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0043:
    lea .LN_6_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0048:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_set_Timeout__v
.Lm_ChatCompletions_Client_ctor_ref_ref_004d:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_7_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ctor_ref_ref_0052:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0053:
    mov -40(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0058:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_ctor_ref_ref_0075
.Lm_ChatCompletions_Client_ctor_ref_ref_005a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_005b:
    mov -40(%rbp), %rdi
    lea .LN_8_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0060:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_get_DefaultRequestHeaders__void
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0065:
    lea .LS_9_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_006a:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_006b:
    lea .LN_10_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_Headers_AuthenticationHeaderValue_ctor__ref_ref
    mov %r12, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0070:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_HttpRequestHeaders_set_Authorization__ref
.Lm_ChatCompletions_Client_ctor_ref_ref_0075:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0076:
    mov -40(%rbp), %rdi
    lea .LN_11_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_007b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_get_DefaultRequestHeaders__void
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0080:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_HttpRequestHeaders_get_UserAgent__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0085:
    lea .LS_12_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    mov $111, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_008a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_ProductInfoHeaderValue_ParseAdd__ref
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_008f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0090:
    mov -48(%rbp), %rdi
    lea .LN_13_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_0095:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_get_DefaultRequestHeaders__void
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_009a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_HttpRequestHeaders_get_Accept__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_009f:
    lea .LS_14_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_00a4:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_MediaTypeWithQualityHeaderValue_ParseAdd__ref
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_00a9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_00aa:
    mov -56(%rbp), %rdi
    lea .LN_15_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_00af:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_get_DefaultRequestHeaders__void
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_00b4:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_HttpRequestHeaders_get_AcceptLanguage__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_00b9:
    lea .LS_16_m_ChatCompletions_Client_ctor_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_00be:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_StringWithQualityHeaderValue_ParseAdd__ref
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_ctor_ref_ref_00c3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_ctor_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_ctor__ref_ref, .-m_ChatCompletions_Client_ctor__ref_ref
.globl m_ChatCompletions_Client_ListModelsAsync__ref
.type m_ChatCompletions_Client_ListModelsAsync__ref, @function
m_ChatCompletions_Client_ListModelsAsync__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0002:
    call m_System_Collections_Generic_List_1_string_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_ListModelsAsync_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Client_ListModelsAsync_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Client_ListModelsAsync_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Client_ListModelsAsync_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Client_ListModelsAsync_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_Start_valuetype_ChatCompletions_Client_ListModelsAsync_d_3__gen
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Client_ListModelsAsync_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_get_Task__void
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ListModelsAsync_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_ListModelsAsync_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_ListModelsAsync__ref, .-m_ChatCompletions_Client_ListModelsAsync__ref
.globl m_ChatCompletions_Client_SendStreamingAsync__ref_gen_gen_ref
.type m_ChatCompletions_Client_SendStreamingAsync__ref_gen_gen_ref, @function
m_ChatCompletions_Client_SendStreamingAsync__ref_gen_gen_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0000:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_Create__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0007:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_000c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_000f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0014:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0017:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_001c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_001f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0024:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0026:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0027:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_002c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_002e:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0030:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0035:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0037:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0038:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_6_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_003d:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_003f:
    mov -64(%rbp), %rdi
    lea .LN_7_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0044:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0046:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_Start_valuetype_ChatCompletions_Client_SendStreamingAsync_d_4__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_004b:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_004d:
    mov -72(%rbp), %rdi
    lea .LN_8_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0052:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_get_Task__void
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_0057:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_SendStreamingAsync__ref_gen_gen_ref, .-m_ChatCompletions_Client_SendStreamingAsync__ref_gen_gen_ref
.globl m_ChatCompletions_Client_SendNonStreamingAsync__ref_gen_ref_gen
.type m_ChatCompletions_Client_SendNonStreamingAsync__ref_gen_ref_gen, @function
m_ChatCompletions_Client_SendNonStreamingAsync__ref_gen_ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0000:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_Create__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0007:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_000c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_000f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0014:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0016:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0017:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_001c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_001f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0024:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0026:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0027:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_002c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_002e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0030:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0035:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0037:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0038:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_6_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_003d:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_003f:
    mov -64(%rbp), %rdi
    lea .LN_7_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0044:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0046:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_Start_valuetype_ChatCompletions_Client_SendNonStreamingAsync_d_5__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_004b:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_004d:
    mov -72(%rbp), %rdi
    lea .LN_8_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0052:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_get_Task__void
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_0057:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_SendNonStreamingAsync__ref_gen_ref_gen, .-m_ChatCompletions_Client_SendNonStreamingAsync__ref_gen_ref_gen
.globl m_ChatCompletions_Client_BuildRequestBody__ref_gen_v_gen
.type m_ChatCompletions_Client_BuildRequestBody__ref_gen_v_gen, @function
m_ChatCompletions_Client_BuildRequestBody__ref_gen_v_gen:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0000:
    lea .LN_0_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_IO_MemoryStream_ctor__void
    mov %r12, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0005:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0006:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0007:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0009:
    mov -104(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_000f:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0010:
    lea .LN_1_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Text_Json_Utf8JsonWriter_ctor__ref_v
    mov %r12, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0015:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0016:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0017:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteStartObject__void
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_001c:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_001d:
    lea .LS_2_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0022:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0023:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteString__ref_ref
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0028:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0029:
    lea .LS_3_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_002e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_002f:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteBoolean__ref_b
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0034:
    lea -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0036:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_int32_get_HasValue__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_003b:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_004f
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_003d:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_003e:
    lea .LS_4_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0043:
    lea -40(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0045:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_int32_get_Value__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_004a:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteNumber__ref_i4
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_004f:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0050:
    lea .LS_5_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0055:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteStartArray__ref
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_005a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_005b:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_GetEnumerator__void
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0060:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0061:
    jmp .Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_009b
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0063:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0064:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_get_Current__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0069:
    mov -96(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_006b:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_006c:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteStartObject__void
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0071:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0072:
    lea .LS_6_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0077:
    mov -80(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0079:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_get_Role__void
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_007e:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteString__ref_ref
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0083:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0084:
    lea .LS_7_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0089:
    mov -80(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_008b:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_get_Content__void
    mov %rax, -112(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0090:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteString__ref_ref
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0095:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0096:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteEndObject__void
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_009b:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_009c:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00a1:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_0063
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00a3:
    jmp .Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00af
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00af:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00b0:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteEndArray__void
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00b5:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00b6:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_Utf8JsonWriter_WriteEndObject__void
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00bb:
    jmp .Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00c7
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00c7:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00cc:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00cd:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_MemoryStream_ToArray__void
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00d2:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Encoding_GetString__arr
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00d7:
    mov -96(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00d9:
    jmp .Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00e5
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00e5:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_00e7:
    mov -96(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_BuildRequestBody__ref_gen_v_gen, .-m_ChatCompletions_Client_BuildRequestBody__ref_gen_v_gen
.globl m_ChatCompletions_Client_TryExtractDeltaContent__ref
.type m_ChatCompletions_Client_TryExtractDeltaContent__ref, @function
m_ChatCompletions_Client_TryExtractDeltaContent__ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0001:
    lea -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0003:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0009:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_000a:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_Text_Json_JsonDocument_Parse__ref_v
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_000f:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0010:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0011:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonDocument_get_RootElement__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0016:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0018:
    lea -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_001a:
    lea .LS_0_m_ChatCompletions_Client_TryExtractDeltaContent_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_001f:
    lea -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0021:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0026:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0031
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0028:
    lea -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_002a:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetArrayLength__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_002f:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0036
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0031:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0032:
    mov -88(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0034:
    jmp .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_008e
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0036:
    lea -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0038:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0039:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_get_Item__i4
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_003e:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_003f:
    lea -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0041:
    lea .LS_1_m_ChatCompletions_Client_TryExtractDeltaContent_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0046:
    lea -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0048:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_004d:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0054
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_004f:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0050:
    mov -88(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0052:
    jmp .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_008e
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0054:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0056:
    lea .LS_2_m_ChatCompletions_Client_TryExtractDeltaContent_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_005b:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_005d:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0062:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0079
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0064:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0066:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_get_ValueKind__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_006b:
    mov $3, %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_006c:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0079
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_006e:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0070:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0075:
    mov -88(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0077:
    jmp .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_008e
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0079:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_007a:
    mov -88(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_007c:
    jmp .Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_008e
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_008e:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_0090:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_TryExtractDeltaContent_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_TryExtractDeltaContent__ref, .-m_ChatCompletions_Client_TryExtractDeltaContent__ref
.globl m_ChatCompletions_Client_ThrowForErrorResponseAsync__ref_v
.type m_ChatCompletions_Client_ThrowForErrorResponseAsync__ref_v, @function
m_ChatCompletions_Client_ThrowForErrorResponseAsync__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0016:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_001e:
    mov -40(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0023:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0025:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8__gen
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_002a:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_002c:
    mov -40(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_0036:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_ThrowForErrorResponseAsync__ref_v, .-m_ChatCompletions_Client_ThrowForErrorResponseAsync__ref_v
.globl m_ChatCompletions_Client_Dispose__void
.type m_ChatCompletions_Client_Dispose__void, @function
m_ChatCompletions_Client_Dispose__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Client_Dispose_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_Dispose_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Client_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Client_Dispose_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpMessageInvoker_Dispose__void
.Lm_ChatCompletions_Client_Dispose_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Client_Dispose_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Client_Dispose__void, .-m_ChatCompletions_Client_Dispose__void
.globl m_ChatCompletions_Core_c_DisplayClass44_0_ctor__void
.type m_ChatCompletions_Core_c_DisplayClass44_0_ctor__void, @function
m_ChatCompletions_Core_c_DisplayClass44_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_c_DisplayClass44_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_c_DisplayClass44_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_ChatCompletions_Core_c_DisplayClass44_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_c_DisplayClass44_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_c_DisplayClass44_0_ctor__void, .-m_ChatCompletions_Core_c_DisplayClass44_0_ctor__void
.globl m_ChatCompletions_Core_Authenticate_d_33_SetStateMachine__ref
.type m_ChatCompletions_Core_Authenticate_d_33_SetStateMachine__ref, @function
m_ChatCompletions_Core_Authenticate_d_33_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_33_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_33_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_Authenticate_d_33_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_33_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_33_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_33_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_Authenticate_d_33_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_Authenticate_d_33_SetStateMachine__ref, .-m_ChatCompletions_Core_Authenticate_d_33_SetStateMachine__ref
.globl m_ChatCompletions_Core_Authenticate_d_34_MoveNext__void
.type m_ChatCompletions_Core_Authenticate_d_34_MoveNext__void, @function
m_ChatCompletions_Core_Authenticate_d_34_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0006:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0008:
    mov -72(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_000d:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_000f:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_006c
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0012:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0013:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0014:
    mov -88(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0019:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_001e:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0023:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0024:
    mov -96(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0029:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -96(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_002e:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_Core_Authenticate__v_ref_ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0033:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0034:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_ConfigureAwait__b
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0039:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_003b:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_003d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0042:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0043:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0045:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_IsCompleted__void
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_004a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0088
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_004c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_004d:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_004e:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_004f:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0050:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0056:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0057:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_005d:
    mov -72(%rbp), %rdi
    lea .LN_6_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0062:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0065:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult_valuetype_ChatCompletions_Core_Authenticate_d_34__gen_gen
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_006a:
    jmp .Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00bf
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_006d:
    mov -72(%rbp), %rdi
    lea .LN_7_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0072:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0073:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0074:
    mov -72(%rbp), %rdi
    lea .LN_8_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0079:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_007f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0080:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0081:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0082:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0083:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_9_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0088:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_008a:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetResult__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_008f:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_0090:
    jmp .Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00ab
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00ab:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00ac:
    mov $-2, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00ae:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_10_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00b3:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00b4:
    mov -72(%rbp), %rdi
    lea .LN_11_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00b9:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00ba:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetResult__gen
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_00bf:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_Authenticate_d_34_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_Authenticate_d_34_MoveNext__void, .-m_ChatCompletions_Core_Authenticate_d_34_MoveNext__void
.globl m_ChatCompletions_Core_Authenticate_d_34_SetStateMachine__ref
.type m_ChatCompletions_Core_Authenticate_d_34_SetStateMachine__ref, @function
m_ChatCompletions_Core_Authenticate_d_34_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_Authenticate_d_34_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Authenticate_d_34_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_Authenticate_d_34_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_Authenticate_d_34_SetStateMachine__ref, .-m_ChatCompletions_Core_Authenticate_d_34_SetStateMachine__ref
.globl m_ChatCompletions_Core_SendMessage_d_44_SetStateMachine__ref
.type m_ChatCompletions_Core_SendMessage_d_44_SetStateMachine__ref, @function
m_ChatCompletions_Core_SendMessage_d_44_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_SendMessage_d_44_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SendMessage_d_44_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_SendMessage_d_44_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SendMessage_d_44_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_SendMessage_d_44_SetStateMachine_ref_0007:
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
.Lm_ChatCompletions_Core_SendMessage_d_44_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_SendMessage_d_44_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_SendMessage_d_44_SetStateMachine__ref, .-m_ChatCompletions_Core_SendMessage_d_44_SetStateMachine__ref
.globl m_ChatCompletions_Core_add_DialogTube__ref
.type m_ChatCompletions_Core_add_DialogTube__ref, @function
m_ChatCompletions_Core_add_DialogTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_add_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0010:
.Lm_ChatCompletions_Core_add_DialogTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_add_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_DialogBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_add_DialogTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_ChatCompletions_Core_add_DialogTube_ref_0007
.Lm_ChatCompletions_Core_add_DialogTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_add_DialogTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_add_DialogTube__ref, .-m_ChatCompletions_Core_add_DialogTube__ref
.globl m_ChatCompletions_Core_remove_DialogTube__ref
.type m_ChatCompletions_Core_remove_DialogTube__ref, @function
m_ChatCompletions_Core_remove_DialogTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_remove_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0010:
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_remove_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_DialogBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_ChatCompletions_Core_remove_DialogTube_ref_0007
.Lm_ChatCompletions_Core_remove_DialogTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_remove_DialogTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_remove_DialogTube__ref, .-m_ChatCompletions_Core_remove_DialogTube__ref
.globl m_ChatCompletions_Core_add_MessageTube__ref
.type m_ChatCompletions_Core_add_MessageTube__ref, @function
m_ChatCompletions_Core_add_MessageTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_add_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0010:
.Lm_ChatCompletions_Core_add_MessageTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_add_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_MessageBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_add_MessageTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_ChatCompletions_Core_add_MessageTube_ref_0007
.Lm_ChatCompletions_Core_add_MessageTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_add_MessageTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_add_MessageTube__ref, .-m_ChatCompletions_Core_add_MessageTube__ref
.globl m_ChatCompletions_Core_remove_MessageTube__ref
.type m_ChatCompletions_Core_remove_MessageTube__ref, @function
m_ChatCompletions_Core_remove_MessageTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_remove_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0010:
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_remove_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_MessageBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_ChatCompletions_Core_remove_MessageTube_ref_0007
.Lm_ChatCompletions_Core_remove_MessageTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_remove_MessageTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_remove_MessageTube__ref, .-m_ChatCompletions_Core_remove_MessageTube__ref
.globl m_ChatCompletions_Core_add_ListTube__ref
.type m_ChatCompletions_Core_add_ListTube__ref, @function
m_ChatCompletions_Core_add_ListTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_add_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0010:
.Lm_ChatCompletions_Core_add_ListTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_add_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_ListBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_add_ListTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_ChatCompletions_Core_add_ListTube_ref_0007
.Lm_ChatCompletions_Core_add_ListTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_add_ListTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_add_ListTube__ref, .-m_ChatCompletions_Core_add_ListTube__ref
.globl m_ChatCompletions_Core_remove_ListTube__ref
.type m_ChatCompletions_Core_remove_ListTube__ref, @function
m_ChatCompletions_Core_remove_ListTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_remove_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0010:
.Lm_ChatCompletions_Core_remove_ListTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_remove_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_ListBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_remove_ListTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_ChatCompletions_Core_remove_ListTube_ref_0007
.Lm_ChatCompletions_Core_remove_ListTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_remove_ListTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_remove_ListTube__ref, .-m_ChatCompletions_Core_remove_ListTube__ref
.globl m_ChatCompletions_Core_get_Name__void
.type m_ChatCompletions_Core_get_Name__void, @function
m_ChatCompletions_Core_get_Name__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_get_Name_void_0000:
    lea .LS_0_m_ChatCompletions_Core_get_Name_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_Name_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_get_Name_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_get_Name__void, .-m_ChatCompletions_Core_get_Name__void
.globl m_ChatCompletions_Core_get_InternalName__void
.type m_ChatCompletions_Core_get_InternalName__void, @function
m_ChatCompletions_Core_get_InternalName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_get_InternalName_void_0000:
    lea .LS_0_m_ChatCompletions_Core_get_InternalName_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_InternalName_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_get_InternalName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_get_InternalName__void, .-m_ChatCompletions_Core_get_InternalName__void
.globl m_ChatCompletions_Core_get_SupportsServers__void
.type m_ChatCompletions_Core_get_SupportsServers__void, @function
m_ChatCompletions_Core_get_SupportsServers__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_get_SupportsServers_void_0000:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_SupportsServers_void_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_get_SupportsServers_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_get_SupportsServers__void, .-m_ChatCompletions_Core_get_SupportsServers__void
.globl m_ChatCompletions_Core_get_TypingTimeout__void
.type m_ChatCompletions_Core_get_TypingTimeout__void, @function
m_ChatCompletions_Core_get_TypingTimeout__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_get_TypingTimeout_void_0000:
    mov $8000, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_TypingTimeout_void_0005:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_get_TypingTimeout_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_get_TypingTimeout__void, .-m_ChatCompletions_Core_get_TypingTimeout__void
.globl m_ChatCompletions_Core_get_TypingRepeat__void
.type m_ChatCompletions_Core_get_TypingRepeat__void, @function
m_ChatCompletions_Core_get_TypingRepeat__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_get_TypingRepeat_void_0000:
    mov $5000, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_TypingRepeat_void_0005:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_get_TypingRepeat_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_get_TypingRepeat__void, .-m_ChatCompletions_Core_get_TypingRepeat__void
.globl m_ChatCompletions_Core_get_AuthenticationTypes__void
.type m_ChatCompletions_Core_get_AuthenticationTypes__void, @function
m_ChatCompletions_Core_get_AuthenticationTypes__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_0000:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_0001:
    mov -24(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_0007:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_0008:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_0009:
    lea .LS_0_m_ChatCompletions_Core_get_AuthenticationTypes_void(%rip), %rdi
    mov $39, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_000e:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_000f:
    lea .LS_1_m_ChatCompletions_Core_get_AuthenticationTypes_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_0014:
    lea .LN_2_m_ChatCompletions_Core_get_AuthenticationTypes_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %r8
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref
    mov %r12, -40(%rbp)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_0019:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_001a:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_get_AuthenticationTypes_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_get_AuthenticationTypes__void, .-m_ChatCompletions_Core_get_AuthenticationTypes__void
.globl m_ChatCompletions_Core_get_ClickableConfigurations__void
.type m_ChatCompletions_Core_get_ClickableConfigurations__void, @function
m_ChatCompletions_Core_get_ClickableConfigurations__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_get_ClickableConfigurations_void_0000:
    call m_System_Array_Empty_class_Yggdrasil_Yggdrasil_Models_ClickableConfiguration__void
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_ClickableConfigurations_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_get_ClickableConfigurations_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_get_ClickableConfigurations__void, .-m_ChatCompletions_Core_get_ClickableConfigurations__void
.globl m_ChatCompletions_Core_get_TypingUsersList__void
.type m_ChatCompletions_Core_get_TypingUsersList__void, @function
m_ChatCompletions_Core_get_TypingUsersList__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_get_TypingUsersList_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_TypingUsersList_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_get_TypingUsersList_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_get_TypingUsersList_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_get_TypingUsersList_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_get_TypingUsersList__void, .-m_ChatCompletions_Core_get_TypingUsersList__void
.globl m_ChatCompletions_Core_Authenticate__v_ref_ref
.type m_ChatCompletions_Core_Authenticate__v_ref_ref, @function
m_ChatCompletions_Core_Authenticate__v_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0000:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0002:
    call m_Yggdrasil_Enumerations_LoginResult_Create__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0007:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_000c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0014:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0016:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0017:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_001c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0024:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0026:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0027:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_002c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_002e:
    mov -56(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0033:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0035:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_Start_valuetype_ChatCompletions_Core_Authenticate_d_33__gen
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_003a:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_003c:
    mov -64(%rbp), %rdi
    lea .LN_6_m_ChatCompletions_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0041:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_Task__void
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_0046:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_Authenticate_v_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_Authenticate__v_ref_ref, .-m_ChatCompletions_Core_Authenticate__v_ref_ref
.globl m_ChatCompletions_Core_Authenticate__ref
.type m_ChatCompletions_Core_Authenticate__ref, @function
m_ChatCompletions_Core_Authenticate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0002:
    call m_Yggdrasil_Enumerations_LoginResult_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Authenticate_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_Start_valuetype_ChatCompletions_Core_Authenticate_d_34__gen
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_Task__void
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_Authenticate_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_Authenticate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_Authenticate__ref, .-m_ChatCompletions_Core_Authenticate__ref
.globl m_ChatCompletions_Core_AuthenticateTwoFA__ref
.type m_ChatCompletions_Core_AuthenticateTwoFA__ref, @function
m_ChatCompletions_Core_AuthenticateTwoFA__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_AuthenticateTwoFA_ref_0000:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_AuthenticateTwoFA_ref_0001:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_AuthenticateTwoFA_ref_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_AuthenticateTwoFA_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_AuthenticateTwoFA__ref, .-m_ChatCompletions_Core_AuthenticateTwoFA__ref
.globl m_ChatCompletions_Core_StoreCredential__void
.type m_ChatCompletions_Core_StoreCredential__void, @function
m_ChatCompletions_Core_StoreCredential__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_StoreCredential_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_0007:
    mov -32(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_StoreCredential_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_000c:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_000e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_Core_get_InternalName__void
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_0013:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_0014:
    lea .LN_2_m_ChatCompletions_Core_StoreCredential_void(%rip), %rdi
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
.Lm_ChatCompletions_Core_StoreCredential_void_0019:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_Yggdrasil_Yggdrasil_Models_SavedCredential__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_StoreCredential_void_001e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_StoreCredential_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_StoreCredential__void, .-m_ChatCompletions_Core_StoreCredential__void
.globl m_ChatCompletions_Core_GetQRCode__void
.type m_ChatCompletions_Core_GetQRCode__void, @function
m_ChatCompletions_Core_GetQRCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_GetQRCode_void_0000:
    lea .LN_0_m_ChatCompletions_Core_GetQRCode_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_GetQRCode_void_0005:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_string__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_GetQRCode_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_GetQRCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_GetQRCode__void, .-m_ChatCompletions_Core_GetQRCode__void
.globl m_ChatCompletions_Core_GetUserInfo__void
.type m_ChatCompletions_Core_GetUserInfo__void, @function
m_ChatCompletions_Core_GetUserInfo__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_GetUserInfo_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_GetUserInfo_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_GetUserInfo_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_GetUserInfo_void_0006:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_Yggdrasil_Yggdrasil_Models_User__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_GetUserInfo_void_000b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_GetUserInfo_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_GetUserInfo__void, .-m_ChatCompletions_Core_GetUserInfo__void
.globl m_ChatCompletions_Core_FetchContacts__void
.type m_ChatCompletions_Core_FetchContacts__void, @function
m_ChatCompletions_Core_FetchContacts__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_FetchContacts_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchContacts_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_Core_BuildModelDirectMessages__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchContacts_void_0006:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_DirectMessage__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchContacts_void_000b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_FetchContacts_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_FetchContacts__void, .-m_ChatCompletions_Core_FetchContacts__void
.globl m_ChatCompletions_Core_FetchConversations__void
.type m_ChatCompletions_Core_FetchConversations__void, @function
m_ChatCompletions_Core_FetchConversations__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_FetchConversations_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchConversations_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_Core_BuildModelDirectMessages__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchConversations_void_0006:
    mov -24(%rbp), %rdi
    call m_System_Linq_Enumerable_Cast_class_Yggdrasil_Yggdrasil_Models_Conversation__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchConversations_void_000b:
    mov -24(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_Conversation__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchConversations_void_0010:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Conversation__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchConversations_void_0015:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_FetchConversations_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_FetchConversations__void, .-m_ChatCompletions_Core_FetchConversations__void
.globl m_ChatCompletions_Core_FetchServers__void
.type m_ChatCompletions_Core_FetchServers__void, @function
m_ChatCompletions_Core_FetchServers__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_FetchServers_void_0000:
    lea .LN_0_m_ChatCompletions_Core_FetchServers_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Server_ctor__void
    mov %r12, -24(%rbp)
.Lm_ChatCompletions_Core_FetchServers_void_0005:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Server__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_FetchServers_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_FetchServers_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_FetchServers__void, .-m_ChatCompletions_Core_FetchServers__void
.globl m_ChatCompletions_Core_BuildModelDirectMessages__void
.type m_ChatCompletions_Core_BuildModelDirectMessages__void, @function
m_ChatCompletions_Core_BuildModelDirectMessages__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_BuildModelDirectMessages_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_0007:
    lea m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0__ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_000d:
    lea .LN_1_m_ChatCompletions_Core_BuildModelDirectMessages_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_DirectMessage_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_0012:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_Linq_Enumerable_Select_string_class_Yggdrasil_Yggdrasil_Models_DirectMessage__gen_gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_0017:
    mov -24(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_DirectMessage__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_001c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_BuildModelDirectMessages_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_BuildModelDirectMessages__void, .-m_ChatCompletions_Core_BuildModelDirectMessages__void
.globl m_ChatCompletions_Core_SendMessage__ref_ref_ref_ref_b
.type m_ChatCompletions_Core_SendMessage__ref_ref_ref_ref_b, @function
m_ChatCompletions_Core_SendMessage__ref_ref_ref_ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0000:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0007:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_000c:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_000f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0014:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0016:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0017:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_2_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_001c:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_001e:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_001f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0024:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0026:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0027:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_4_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_002c:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_002e:
    mov -72(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0033:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0035:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_ChatCompletions_Core_SendMessage_d_44__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_003a:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_003c:
    mov -80(%rbp), %rdi
    lea .LN_6_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0041:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -80(%rbp)
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_0046:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_SendMessage__ref_ref_ref_ref_b, .-m_ChatCompletions_Core_SendMessage__ref_ref_ref_ref_b
.globl m_ChatCompletions_Core_EditMessage__ref_ref_ref
.type m_ChatCompletions_Core_EditMessage__ref_ref_ref, @function
m_ChatCompletions_Core_EditMessage__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_EditMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_0007:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_000c
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_0009:
    mov -40(%rbp), %rax
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_000a:
    jmp .Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_001d
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_000d:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_000e:
    lea .LS_1_m_ChatCompletions_Core_EditMessage_ref_ref_ref(%rip), %rdi
    mov $33, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_0013:
    lea .LN_2_m_ChatCompletions_Core_EditMessage_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -56(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_0018:
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
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_001d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_001e:
    mov -48(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_0023:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_EditMessage_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_EditMessage__ref_ref_ref, .-m_ChatCompletions_Core_EditMessage__ref_ref_ref
.globl m_ChatCompletions_Core_DeleteMessage__ref_ref
.type m_ChatCompletions_Core_DeleteMessage__ref_ref, @function
m_ChatCompletions_Core_DeleteMessage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_DeleteMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Core_DeleteMessage_ref_ref_000c
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_0009:
    mov -32(%rbp), %rax
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_000a:
    jmp .Lm_ChatCompletions_Core_DeleteMessage_ref_ref_001d
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_000d:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_000e:
    lea .LS_1_m_ChatCompletions_Core_DeleteMessage_ref_ref(%rip), %rdi
    mov $34, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_0013:
    lea .LN_2_m_ChatCompletions_Core_DeleteMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -48(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_0018:
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
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_001d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_001e:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_0023:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_DeleteMessage_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_DeleteMessage__ref_ref, .-m_ChatCompletions_Core_DeleteMessage__ref_ref
.globl m_ChatCompletions_Core_SetConnectionStatus__v
.type m_ChatCompletions_Core_SetConnectionStatus__v, @function
m_ChatCompletions_Core_SetConnectionStatus__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_SetConnectionStatus_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetConnectionStatus_v_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetConnectionStatus_v_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Core_SetConnectionStatus_v_0014
.Lm_ChatCompletions_Core_SetConnectionStatus_v_0008:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetConnectionStatus_v_0009:
    mov -32(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetConnectionStatus_v_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_SetConnectionStatus_v_000f:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_ConnectionStatus__v
.Lm_ChatCompletions_Core_SetConnectionStatus_v_0014:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetConnectionStatus_v_0015:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetConnectionStatus_v_001a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_SetConnectionStatus_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_SetConnectionStatus__v, .-m_ChatCompletions_Core_SetConnectionStatus__v
.globl m_ChatCompletions_Core_SetMood__ref
.type m_ChatCompletions_Core_SetMood__ref, @function
m_ChatCompletions_Core_SetMood__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_SetMood_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetMood_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_SetMood_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetMood_ref_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_Core_SetMood_ref_0014
.Lm_ChatCompletions_Core_SetMood_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetMood_ref_0009:
    mov -32(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_SetMood_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetMood_ref_000e:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_SetMood_ref_000f:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_Status__ref
.Lm_ChatCompletions_Core_SetMood_ref_0014:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetMood_ref_0015:
    mov -32(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_SetMood_ref_001a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_SetMood_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_SetMood__ref, .-m_ChatCompletions_Core_SetMood__ref
.globl m_ChatCompletions_Core_SetTyping__ref_b
.type m_ChatCompletions_Core_SetTyping__ref_b, @function
m_ChatCompletions_Core_SetTyping__ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_ChatCompletions_Core_SetTyping_ref_b_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_SetTyping_ref_b_0001:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_SetTyping_ref_b_0006:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_SetTyping_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_SetTyping__ref_b, .-m_ChatCompletions_Core_SetTyping__ref_b
.globl m_ChatCompletions_Core_Dispose__void
.type m_ChatCompletions_Core_Dispose__void, @function
m_ChatCompletions_Core_Dispose__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_Dispose_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_Dispose_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_Dispose_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Dispose_void_0007:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_Core_Dispose_void_000c
.Lm_ChatCompletions_Core_Dispose_void_0009:
    mov -16(%rbp), %rax
.Lm_ChatCompletions_Core_Dispose_void_000a:
    jmp .Lm_ChatCompletions_Core_Dispose_void_0011
.Lm_ChatCompletions_Core_Dispose_void_000c:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_Client_Dispose__void
.Lm_ChatCompletions_Core_Dispose_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_Dispose_void_0012:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_Core_Dispose_void_0013:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_Dispose_void_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_Dispose_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_Dispose__void, .-m_ChatCompletions_Core_Dispose__void
.globl m_ChatCompletions_Core_ctor__void
.type m_ChatCompletions_Core_ctor__void, @function
m_ChatCompletions_Core_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_Core_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_ctor_void_0001:
    lea .LN_0_m_ChatCompletions_Core_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_User_ctor__void
    mov %r12, -32(%rbp)
.Lm_ChatCompletions_Core_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_Core_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_ctor_void_000c:
    lea .LN_2_m_ChatCompletions_Core_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_ChatCompletions_History_ctor__void
    mov %r12, -32(%rbp)
.Lm_ChatCompletions_Core_ctor_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_ChatCompletions_Core_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_ctor_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_ctor_void_0017:
    lea .LN_4_m_ChatCompletions_Core_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_User_ctor__void
    mov %r12, -32(%rbp)
.Lm_ChatCompletions_Core_ctor_void_001c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_ChatCompletions_Core_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_ctor_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_ctor_void_0022:
    lea .LN_6_m_ChatCompletions_Core_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_Generic_List_1_string_ctor__void
    mov %r12, -32(%rbp)
.Lm_ChatCompletions_Core_ctor_void_0027:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_7_m_ChatCompletions_Core_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_Core_ctor_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_Core_ctor_void_002d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_ChatCompletions_Core_ctor_void_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_ctor__void, .-m_ChatCompletions_Core_ctor__void
.globl m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0__ref
.type m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0__ref, @function
m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Item__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_000c:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_000d:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_000e:
    lea -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_0010:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_0017:
    lea .LN_1_m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %r8
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_DirectMessage_ctor__ref_i4_ref_gen
    mov %r12, -40(%rbp)
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_001c:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0__ref, .-m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0__ref
.globl m_ChatCompletions_ChatTurn_get_Role__void
.type m_ChatCompletions_ChatTurn_get_Role__void, @function
m_ChatCompletions_ChatTurn_get_Role__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_ChatTurn_get_Role_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_ChatTurn_get_Role_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_ChatTurn_get_Role_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_ChatTurn_get_Role_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_ChatTurn_get_Role_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_ChatTurn_get_Role__void, .-m_ChatCompletions_ChatTurn_get_Role__void
.globl m_ChatCompletions_ChatTurn_get_Content__void
.type m_ChatCompletions_ChatTurn_get_Content__void, @function
m_ChatCompletions_ChatTurn_get_Content__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_ChatTurn_get_Content_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_ChatTurn_get_Content_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_ChatTurn_get_Content_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_ChatTurn_get_Content_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_ChatTurn_get_Content_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_ChatTurn_get_Content__void, .-m_ChatCompletions_ChatTurn_get_Content__void
.globl m_ChatCompletions_ChatTurn_ctor__ref_ref
.type m_ChatCompletions_ChatTurn_ctor__ref_ref, @function
m_ChatCompletions_ChatTurn_ctor__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_ChatTurn_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_ChatTurn_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_ChatTurn_ctor_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_ChatTurn_ctor__ref_ref, .-m_ChatCompletions_ChatTurn_ctor__ref_ref
.globl m_ChatCompletions_History_c_cctor__void
.type m_ChatCompletions_History_c_cctor__void, @function
m_ChatCompletions_History_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_ChatCompletions_History_c_cctor_void_0000:
    lea .LN_0_m_ChatCompletions_History_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_ChatCompletions_History_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_ChatCompletions_History_c_cctor_void_0005:
    lea .LN_1_m_ChatCompletions_History_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_ChatCompletions_History_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_c_cctor__void, .-m_ChatCompletions_History_c_cctor__void
.globl m_ChatCompletions_History_c_ctor__void
.type m_ChatCompletions_History_c_ctor__void, @function
m_ChatCompletions_History_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_History_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_History_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_ChatCompletions_History_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_c_ctor__void, .-m_ChatCompletions_History_c_ctor__void
.globl m_ChatCompletions_History_c_GetList_b_6_0__ref
.type m_ChatCompletions_History_c_GetList_b_6_0__ref, @function
m_ChatCompletions_History_c_GetList_b_6_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_History_c_GetList_b_6_0_ref_0000:
    lea .LN_0_m_ChatCompletions_History_c_GetList_b_6_0_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_ChatCompletions_ChatTurn_ctor__void
    mov %r12, -32(%rbp)
.Lm_ChatCompletions_History_c_GetList_b_6_0_ref_0005:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_c_GetList_b_6_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_c_GetList_b_6_0__ref, .-m_ChatCompletions_History_c_GetList_b_6_0__ref
.globl m_ChatCompletions_History_AddUserMessage__ref_ref
.type m_ChatCompletions_History_AddUserMessage__ref_ref, @function
m_ChatCompletions_History_AddUserMessage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_History_GetList__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_0007:
    lea .LS_0_m_ChatCompletions_History_AddUserMessage_ref_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_000c:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_000d:
    lea .LN_1_m_ChatCompletions_History_AddUserMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_ChatCompletions_ChatTurn_ctor__ref_ref
    mov %r12, -48(%rbp)
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_0012:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_Add__gen
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_AddUserMessage_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_AddUserMessage__ref_ref, .-m_ChatCompletions_History_AddUserMessage__ref_ref
.globl m_ChatCompletions_History_AddAssistantMessage__ref_ref
.type m_ChatCompletions_History_AddAssistantMessage__ref_ref, @function
m_ChatCompletions_History_AddAssistantMessage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_History_GetList__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_0007:
    lea .LS_0_m_ChatCompletions_History_AddAssistantMessage_ref_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_000c:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_000d:
    lea .LN_1_m_ChatCompletions_History_AddAssistantMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_ChatCompletions_ChatTurn_ctor__ref_ref
    mov %r12, -48(%rbp)
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_0012:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_Add__gen
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_AddAssistantMessage_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_AddAssistantMessage__ref_ref, .-m_ChatCompletions_History_AddAssistantMessage__ref_ref
.globl m_ChatCompletions_History_RemoveLastAssistantMessage__ref
.type m_ChatCompletions_History_RemoveLastAssistantMessage__ref, @function
m_ChatCompletions_History_RemoveLastAssistantMessage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0002:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_History_GetList__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0007:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0009:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_get_Count__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_000e:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_000f:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0010:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0011:
    jmp .Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0037
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0013:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0014:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0015:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_get_Item__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_001a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_get_Role__void
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_001f:
    lea .LS_0_m_ChatCompletions_History_RemoveLastAssistantMessage_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0024:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0029:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0033
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_002b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_002c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_002d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_RemoveAt__i4
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0033:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0034:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0035:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0036:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0037:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0038:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0039:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jge .Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_0013
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_003b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_RemoveLastAssistantMessage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_RemoveLastAssistantMessage__ref, .-m_ChatCompletions_History_RemoveLastAssistantMessage__ref
.globl m_ChatCompletions_History_GetHistory__ref
.type m_ChatCompletions_History_GetHistory__ref, @function
m_ChatCompletions_History_GetHistory__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_History_GetHistory_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_History_GetHistory_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_GetHistory_ref_0002:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_History_GetList__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_History_GetHistory_ref_0007:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_GetHistory_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_GetHistory__ref, .-m_ChatCompletions_History_GetHistory__ref
.globl m_ChatCompletions_History_Clear__ref
.type m_ChatCompletions_History_Clear__ref, @function
m_ChatCompletions_History_Clear__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_History_Clear_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_Clear_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_History_Clear_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_Clear_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_Clear_ref_0007:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_Clear_ref_0009:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_TryRemove__gen_gen
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_Clear_ref_000e:
    mov -40(%rbp), %rax
.Lm_ChatCompletions_History_Clear_ref_000f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_Clear_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_Clear__ref, .-m_ChatCompletions_History_Clear__ref
.globl m_ChatCompletions_History_GetList__ref
.type m_ChatCompletions_History_GetList__ref, @function
m_ChatCompletions_History_GetList__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_ChatCompletions_History_GetList_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_History_GetList_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_ChatCompletions_History_GetList_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_ChatCompletions_History_GetList_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_GetList_ref_0007:
    lea .LN_1_m_ChatCompletions_History_GetList_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_GetList_ref_000c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_ChatCompletions_History_GetList_ref_000d:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_ChatCompletions_History_GetList_ref_0026
.Lm_ChatCompletions_History_GetList_ref_000f:
    mov -40(%rbp), %rax
.Lm_ChatCompletions_History_GetList_ref_0010:
    lea .LN_2_m_ChatCompletions_History_GetList_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_ChatCompletions_History_GetList_ref_0015:
    lea m_ChatCompletions_History_c_GetList_b_6_0__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_GetList_ref_001b:
    lea .LN_3_m_ChatCompletions_History_GetList_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_ChatCompletions_ChatTurn_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_ChatCompletions_History_GetList_ref_0020:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_ChatCompletions_History_GetList_ref_0021:
    lea .LN_4_m_ChatCompletions_History_GetList_ref(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_ChatCompletions_History_GetList_ref_0026:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_ChatCompletions_ChatTurn_GetOrAdd__gen_gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_History_GetList_ref_002b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_GetList_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_GetList__ref, .-m_ChatCompletions_History_GetList__ref
.globl m_ChatCompletions_History_ctor__void
.type m_ChatCompletions_History_ctor__void, @function
m_ChatCompletions_History_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_ChatCompletions_History_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_History_ctor_void_0001:
    lea .LN_0_m_ChatCompletions_History_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_ChatCompletions_ChatTurn_ctor__void
    mov %r12, -32(%rbp)
.Lm_ChatCompletions_History_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_ChatCompletions_History_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_ChatCompletions_History_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_ChatCompletions_History_ctor_void_000c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_ChatCompletions_History_ctor_void_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_ChatCompletions_History_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_ChatCompletions_History_ctor__void, .-m_ChatCompletions_History_ctor__void
    .globl m_ChatCompletions_Core_c_DisplayClass44_0_SendMessage_b_0__ref
    .type m_ChatCompletions_Core_c_DisplayClass44_0_SendMessage_b_0__ref, @function
m_ChatCompletions_Core_c_DisplayClass44_0_SendMessage_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_ChatCompletions_Core_c_DisplayClass44_0_SendMessage_b_0_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_ChatCompletions_Core_c_DisplayClass44_0_SendMessage_b_0__ref, .-m_ChatCompletions_Core_c_DisplayClass44_0_SendMessage_b_0__ref
    .globl m_ChatCompletions_Core_Authenticate_d_33_MoveNext__void
    .type m_ChatCompletions_Core_Authenticate_d_33_MoveNext__void, @function
m_ChatCompletions_Core_Authenticate_d_33_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_ChatCompletions_Core_Authenticate_d_33_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_ChatCompletions_Core_Authenticate_d_33_MoveNext__void, .-m_ChatCompletions_Core_Authenticate_d_33_MoveNext__void
    .globl m_ChatCompletions_Core_SendMessage_d_44_MoveNext__void
    .type m_ChatCompletions_Core_SendMessage_d_44_MoveNext__void, @function
m_ChatCompletions_Core_SendMessage_d_44_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_ChatCompletions_Core_SendMessage_d_44_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_ChatCompletions_Core_SendMessage_d_44_MoveNext__void, .-m_ChatCompletions_Core_SendMessage_d_44_MoveNext__void
    .globl m_ChatCompletions_Core_FetchMessages__ref_v_i4_ref
    .type m_ChatCompletions_Core_FetchMessages__ref_v_i4_ref, @function
m_ChatCompletions_Core_FetchMessages__ref_v_i4_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_ChatCompletions_Core_FetchMessages_ref_v_i4_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_ChatCompletions_Core_FetchMessages__ref_v_i4_ref, .-m_ChatCompletions_Core_FetchMessages__ref_v_i4_ref
.Lnullmsg:
    .asciz "null receiver"
.Ltype_ChatCompletions_CCException:
    .asciz "ChatCompletions.CCException"
.Ltype_ChatCompletions_ChatTurn:
    .asciz "ChatCompletions.ChatTurn"
.Ltype_ChatCompletions_Client:
    .asciz "ChatCompletions.Client"
.Ltype_ChatCompletions_Client_ListModelsAsync_d_3:
    .asciz "ChatCompletions.Client/<ListModelsAsync>d__3"
.Ltype_ChatCompletions_Client_SendNonStreamingAsync_d_5:
    .asciz "ChatCompletions.Client/<SendNonStreamingAsync>d__5"
.Ltype_ChatCompletions_Client_SendStreamingAsync_d_4:
    .asciz "ChatCompletions.Client/<SendStreamingAsync>d__4"
.Ltype_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8:
    .asciz "ChatCompletions.Client/<ThrowForErrorResponseAsync>d__8"
.Ltype_ChatCompletions_Core:
    .asciz "ChatCompletions.Core"
.Ltype_ChatCompletions_Core_Authenticate_d_33:
    .asciz "ChatCompletions.Core/<Authenticate>d__33"
.Ltype_ChatCompletions_Core_Authenticate_d_34:
    .asciz "ChatCompletions.Core/<Authenticate>d__34"
.Ltype_ChatCompletions_Core_SendMessage_d_44:
    .asciz "ChatCompletions.Core/<SendMessage>d__44"
.Ltype_ChatCompletions_Core_c_DisplayClass44_0:
    .asciz "ChatCompletions.Core/'<>c__DisplayClass44_0'"
.Ltype_ChatCompletions_History:
    .asciz "ChatCompletions.History"
.Ltype_ChatCompletions_History_c:
    .asciz "ChatCompletions.History/'<>c'"
.Ltype_OmegaAOL_Bifrost_Http_BifrostEngine:
    .asciz "OmegaAOL.Bifrost.Http.BifrostEngine"
.Ltype_System_Action_1_string:
    .asciz "System.Action`1<string>"
.Ltype_System_ArgumentException:
    .asciz "System.ArgumentException"
.Ltype_System_Collections_Generic_List_1_string:
    .asciz "System.Collections.Generic.List`1<string>"
.Ltype_System_IO_MemoryStream:
    .asciz "System.IO.MemoryStream"
.Ltype_System_IO_StreamReader:
    .asciz "System.IO.StreamReader"
.Ltype_System_Net_Http_Headers_AuthenticationHeaderValue:
    .asciz "System.Net.Http.Headers.AuthenticationHeaderValue"
.Ltype_System_Net_Http_HttpClient:
    .asciz "System.Net.Http.HttpClient"
.Ltype_System_Net_Http_HttpRequestMessage:
    .asciz "System.Net.Http.HttpRequestMessage"
.Ltype_System_Net_Http_StringContent:
    .asciz "System.Net.Http.StringContent"
.Ltype_System_Text_Json_Utf8JsonWriter:
    .asciz "System.Text.Json.Utf8JsonWriter"
.Ltype_System_Text_StringBuilder:
    .asciz "System.Text.StringBuilder"
.Ltype_Yggdrasil_Bottles_DialogBottle:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.Ltype_Yggdrasil_Bottles_MessageEditedBottle:
    .asciz "Yggdrasil.Bottles.MessageEditedBottle"
.Ltype_Yggdrasil_Bottles_MessageRecievedBottle:
    .asciz "Yggdrasil.Bottles.MessageRecievedBottle"
.Ltype_Yggdrasil_Models_AuthTypeInfo:
    .asciz "Yggdrasil.Models.AuthTypeInfo"
.Ltype_Yggdrasil_Models_ConversationItem:
    .asciz "Yggdrasil.Models.ConversationItem>"
.Ltype_Yggdrasil_Models_DirectMessage:
    .asciz "Yggdrasil.Models.DirectMessage"
.Ltype_Yggdrasil_Models_Message:
    .asciz "Yggdrasil.Models.Message"
.Ltype_Yggdrasil_Models_SavedCredential:
    .asciz "Yggdrasil.Models.SavedCredential"
.Ltype_Yggdrasil_Models_Server:
    .asciz "Yggdrasil.Models.Server>"
.Ltype_Yggdrasil_Models_User:
    .asciz "Yggdrasil.Models.User"
    .section .rodata
.LN_0_m_ChatCompletions_CCException_get_ErrorCode_void:
    .asciz "<ErrorCode>k__BackingField"
.LN_0_m_ChatCompletions_CCException_ctor_ref_ref:
    .asciz "<ErrorCode>k__BackingField"
.LN_0_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "_baseUrl"
.LS_3_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .short 47, 109, 111, 100, 101, 108, 115
.LN_4_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "System.Net.Http.HttpRequestMessage"
.LN_5_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<request>5__2"
.LN_6_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "_http"
.LN_7_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<request>5__2"
.LN_8_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "cancellationToken"
.LN_9_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>1__state"
.LN_10_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__1"
.LN_11_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>t__builder"
.LN_12_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__1"
.LN_13_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__1"
.LN_14_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>1__state"
.LN_15_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<response>5__3"
.LN_16_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<response>5__3"
.LN_17_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<response>5__3"
.LN_18_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "cancellationToken"
.LN_19_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>1__state"
.LN_20_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__2"
.LN_21_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>t__builder"
.LN_22_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__2"
.LN_23_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__2"
.LN_24_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>1__state"
.LS_25_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .short 82, 101, 113, 117, 101, 115, 116, 32, 102, 97, 105, 108, 101, 100, 46
.LS_26_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .short 85, 78, 75, 78, 79, 87, 78
.LN_27_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "ChatCompletions.CCException"
.LN_28_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<response>5__3"
.LN_29_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>1__state"
.LN_30_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__3"
.LN_31_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>t__builder"
.LN_32_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__3"
.LN_33_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>u__3"
.LN_34_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>1__state"
.LN_35_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "System.Collections.Generic.List`1<string>"
.LS_36_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .short 100, 97, 116, 97
.LS_37_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .short 105, 100
.LN_38_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>1__state"
.LN_39_m_ChatCompletions_Client_ListModelsAsync_d_3_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_ListModelsAsync_d_3_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "model"
.LN_3_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "history"
.LN_4_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "maxTokens"
.LN_5_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "_baseUrl"
.LS_6_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .short 47, 99, 104, 97, 116, 47, 99, 111, 109, 112, 108, 101, 116, 105, 111, 110, 115
.LN_7_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "System.Net.Http.HttpRequestMessage"
.LN_8_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<request>5__2"
.LN_9_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<request>5__2"
.LS_10_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_11_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "System.Net.Http.StringContent"
.LN_12_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "_http"
.LN_13_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<request>5__2"
.LN_14_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "cancellationToken"
.LN_15_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>1__state"
.LN_16_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__1"
.LN_17_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>t__builder"
.LN_18_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__1"
.LN_19_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__1"
.LN_20_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>1__state"
.LN_21_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<response>5__3"
.LN_22_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<response>5__3"
.LN_23_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<response>5__3"
.LN_24_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "cancellationToken"
.LN_25_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>1__state"
.LN_26_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__2"
.LN_27_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>t__builder"
.LN_28_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__2"
.LN_29_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__2"
.LN_30_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>1__state"
.LS_31_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .short 67, 104, 97, 116, 32, 67, 111, 109, 112, 108, 101, 116, 105, 111, 110, 115, 32, 114, 101, 113, 117, 101, 115, 116, 32, 102, 97, 105, 108, 101, 100, 46
.LS_32_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .short 85, 78, 75, 78, 79, 87, 78
.LN_33_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "ChatCompletions.CCException"
.LN_34_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<response>5__3"
.LN_35_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>1__state"
.LN_36_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__3"
.LN_37_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>t__builder"
.LN_38_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__3"
.LN_39_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>u__3"
.LN_40_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>1__state"
.LS_41_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .short 99, 104, 111, 105, 99, 101, 115
.LS_42_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .short 109, 101, 115, 115, 97, 103, 101
.LS_43_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .short 99, 111, 110, 116, 101, 110, 116
.LN_44_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "Empty"
.LN_45_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "Empty"
.LN_46_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>1__state"
.LN_47_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_SendNonStreamingAsync_d_5_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "model"
.LN_3_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "history"
.LN_4_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "_baseUrl"
.LS_5_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .short 47, 99, 104, 97, 116, 47, 99, 111, 109, 112, 108, 101, 116, 105, 111, 110, 115
.LN_6_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "System.Net.Http.HttpRequestMessage"
.LN_7_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<request>5__2"
.LN_8_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<request>5__2"
.LS_9_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_10_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "System.Net.Http.StringContent"
.LN_11_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "_http"
.LN_12_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<request>5__2"
.LN_13_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "cancellationToken"
.LN_14_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_15_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__1"
.LN_16_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>t__builder"
.LN_17_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__1"
.LN_18_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__1"
.LN_19_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_20_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<response>5__3"
.LN_21_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<response>5__3"
.LN_22_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<response>5__3"
.LN_23_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "cancellationToken"
.LN_24_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_25_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__2"
.LN_26_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>t__builder"
.LN_27_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__2"
.LN_28_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__2"
.LN_29_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LS_30_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .short 67, 104, 97, 116, 32, 67, 111, 109, 112, 108, 101, 116, 105, 111, 110, 115, 32, 114, 101, 113, 117, 101, 115, 116, 32, 102, 97, 105, 108, 101, 100, 46
.LS_31_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .short 85, 78, 75, 78, 79, 87, 78
.LN_32_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "ChatCompletions.CCException"
.LN_33_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "System.Text.StringBuilder"
.LN_34_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<fullText>5__4"
.LN_35_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<response>5__3"
.LN_36_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_37_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__3"
.LN_38_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>t__builder"
.LN_39_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__3"
.LN_40_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__3"
.LN_41_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_42_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<stream>5__5"
.LN_43_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<stream>5__5"
.LN_44_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "System.IO.StreamReader"
.LN_45_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<reader>5__6"
.LN_46_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "cancellationToken"
.LS_47_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .short 100, 97, 116, 97, 58
.LS_48_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .short 91, 68, 79, 78, 69, 93
.LN_49_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<fullText>5__4"
.LN_50_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "onDelta"
.LN_51_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<reader>5__6"
.LN_52_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_53_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__4"
.LN_54_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>t__builder"
.LN_55_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__4"
.LN_56_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>u__4"
.LN_57_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_58_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<reader>5__6"
.LN_59_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<stream>5__5"
.LN_60_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<fullText>5__4"
.LN_61_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>1__state"
.LN_62_m_ChatCompletions_Client_SendStreamingAsync_d_4_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_SendStreamingAsync_d_4_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "response"
.LN_2_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "<>1__state"
.LN_3_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "<>u__1"
.LN_4_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "<>t__builder"
.LN_5_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "<>u__1"
.LN_6_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "<>u__1"
.LN_7_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "<>1__state"
.LS_8_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .short 82, 101, 113, 117, 101, 115, 116, 32, 102, 97, 105, 108, 101, 100, 32, 119, 105, 116, 104, 32, 115, 116, 97, 116, 117, 115, 32, 123, 48, 125, 46, 32, 66, 111, 100, 121, 58, 32, 123, 49, 125
.LN_9_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "response"
.LN_10_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "System.Int32"
.LN_11_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "response"
.LS_12_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .short 85, 78, 75, 78, 79, 87, 78
.LS_13_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .short 82, 65, 84, 69, 95, 76, 73, 77, 73, 84, 69, 68
.LS_14_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .short 101, 114, 114, 111, 114
.LS_15_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .short 109, 101, 115, 115, 97, 103, 101
.LS_16_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .short 99, 111, 100, 101
.LN_17_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_MoveNext_void:
    .asciz "ChatCompletions.CCException"
.LN_0_m_ChatCompletions_Client_ThrowForErrorResponseAsync_d_8_SetStateMachine_ref:
    .asciz "<>t__builder"
.LS_0_m_ChatCompletions_Client_ctor_ref_ref:
    .short 66, 97, 115, 101, 32, 85, 82, 76, 32, 109, 117, 115, 116, 32, 110, 111, 116, 32, 98, 101, 32, 101, 109, 112, 116, 121, 46
.LS_1_m_ChatCompletions_Client_ctor_ref_ref:
    .short 98, 97, 115, 101, 85, 114, 108
.LN_2_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "System.ArgumentException"
.LN_3_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "_baseUrl"
.LN_4_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "OmegaAOL.Bifrost.Http.BifrostEngine"
.LN_5_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "System.Net.Http.HttpClient"
.LN_6_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "InfiniteTimeSpan"
.LN_7_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "_http"
.LN_8_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "_http"
.LS_9_m_ChatCompletions_Client_ctor_ref_ref:
    .short 66, 101, 97, 114, 101, 114
.LN_10_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "System.Net.Http.Headers.AuthenticationHeaderValue"
.LN_11_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "_http"
.LS_12_m_ChatCompletions_Client_ctor_ref_ref:
    .short 77, 111, 122, 105, 108, 108, 97, 47, 53, 46, 48, 32, 40, 87, 105, 110, 100, 111, 119, 115, 32, 78, 84, 32, 49, 48, 46, 48, 59, 32, 87, 105, 110, 54, 52, 59, 32, 120, 54, 52, 41, 32, 65, 112, 112, 108, 101, 87, 101, 98, 75, 105, 116, 47, 53, 51, 55, 46, 51, 54, 32, 40, 75, 72, 84, 77, 76, 44, 32, 108, 105, 107, 101, 32, 71, 101, 99, 107, 111, 41, 32, 67, 104, 114, 111, 109, 101, 47, 49, 50, 52, 46, 48, 46, 48, 46, 48, 32, 83, 97, 102, 97, 114, 105, 47, 53, 51, 55, 46, 51, 54
.LN_13_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "_http"
.LS_14_m_ChatCompletions_Client_ctor_ref_ref:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_15_m_ChatCompletions_Client_ctor_ref_ref:
    .asciz "_http"
.LS_16_m_ChatCompletions_Client_ctor_ref_ref:
    .short 101, 110, 45, 85, 83, 44, 101, 110, 59, 113, 61, 48, 46, 57
.LN_0_m_ChatCompletions_Client_ListModelsAsync_ref:
    .asciz "<>t__builder"
.LN_1_m_ChatCompletions_Client_ListModelsAsync_ref:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Client_ListModelsAsync_ref:
    .asciz "cancellationToken"
.LN_3_m_ChatCompletions_Client_ListModelsAsync_ref:
    .asciz "<>1__state"
.LN_4_m_ChatCompletions_Client_ListModelsAsync_ref:
    .asciz "<>t__builder"
.LN_5_m_ChatCompletions_Client_ListModelsAsync_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "<>t__builder"
.LN_1_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "model"
.LN_3_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "history"
.LN_4_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "onDelta"
.LN_5_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "cancellationToken"
.LN_6_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "<>1__state"
.LN_7_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "<>t__builder"
.LN_8_m_ChatCompletions_Client_SendStreamingAsync_ref_gen_gen_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "<>t__builder"
.LN_1_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "model"
.LN_3_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "history"
.LN_4_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "cancellationToken"
.LN_5_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "maxTokens"
.LN_6_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "<>1__state"
.LN_7_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "<>t__builder"
.LN_8_m_ChatCompletions_Client_SendNonStreamingAsync_ref_gen_ref_gen:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen:
    .asciz "System.IO.MemoryStream"
.LN_1_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen:
    .asciz "System.Text.Json.Utf8JsonWriter"
.LS_2_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen:
    .short 109, 111, 100, 101, 108
.LS_3_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen:
    .short 115, 116, 114, 101, 97, 109
.LS_4_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen:
    .short 109, 97, 120, 95, 116, 111, 107, 101, 110, 115
.LS_5_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen:
    .short 109, 101, 115, 115, 97, 103, 101, 115
.LS_6_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen:
    .short 114, 111, 108, 101
.LS_7_m_ChatCompletions_Client_BuildRequestBody_ref_gen_v_gen:
    .short 99, 111, 110, 116, 101, 110, 116
.LS_0_m_ChatCompletions_Client_TryExtractDeltaContent_ref:
    .short 99, 104, 111, 105, 99, 101, 115
.LS_1_m_ChatCompletions_Client_TryExtractDeltaContent_ref:
    .short 100, 101, 108, 116, 97
.LS_2_m_ChatCompletions_Client_TryExtractDeltaContent_ref:
    .short 99, 111, 110, 116, 101, 110, 116
.LN_0_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v:
    .asciz "<>t__builder"
.LN_1_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v:
    .asciz "response"
.LN_2_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v:
    .asciz "<>1__state"
.LN_3_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v:
    .asciz "<>t__builder"
.LN_4_m_ChatCompletions_Client_ThrowForErrorResponseAsync_ref_v:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Client_Dispose_void:
    .asciz "_http"
.LSTUB_m_ChatCompletions_Core_c_DisplayClass44_0_SendMessage_b_0_ref:
    .asciz "ChatCompletions.Core/<>c__DisplayClass44_0::'<SendMessage>b__0'  [stack underflow at IL_0023 (pop): depth 0 < pops 1]"
.LSTUB_m_ChatCompletions_Core_Authenticate_d_33_MoveNext_void:
    .asciz "ChatCompletions.Core/<Authenticate>d__33::MoveNext  [constructor with 6 arguments (limit 5)]"
.LN_0_m_ChatCompletions_Core_Authenticate_d_33_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "credential"
.LN_3_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "credential"
.LN_4_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>1__state"
.LN_5_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>u__1"
.LN_6_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>t__builder"
.LN_7_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>u__1"
.LN_8_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>u__1"
.LN_9_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>1__state"
.LN_10_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>1__state"
.LN_11_m_ChatCompletions_Core_Authenticate_d_34_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Core_Authenticate_d_34_SetStateMachine_ref:
    .asciz "<>t__builder"
.LSTUB_m_ChatCompletions_Core_SendMessage_d_44_MoveNext_void:
    .asciz "ChatCompletions.Core/<SendMessage>d__44::MoveNext  [constructor with 7 arguments (limit 5)]"
.LN_0_m_ChatCompletions_Core_SendMessage_d_44_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Core_add_DialogTube_ref:
    .asciz "DialogTube"
.LN_1_m_ChatCompletions_Core_add_DialogTube_ref:
    .asciz "DialogTube"
.LN_0_m_ChatCompletions_Core_remove_DialogTube_ref:
    .asciz "DialogTube"
.LN_1_m_ChatCompletions_Core_remove_DialogTube_ref:
    .asciz "DialogTube"
.LN_0_m_ChatCompletions_Core_add_MessageTube_ref:
    .asciz "MessageTube"
.LN_1_m_ChatCompletions_Core_add_MessageTube_ref:
    .asciz "MessageTube"
.LN_0_m_ChatCompletions_Core_remove_MessageTube_ref:
    .asciz "MessageTube"
.LN_1_m_ChatCompletions_Core_remove_MessageTube_ref:
    .asciz "MessageTube"
.LN_0_m_ChatCompletions_Core_add_ListTube_ref:
    .asciz "ListTube"
.LN_1_m_ChatCompletions_Core_add_ListTube_ref:
    .asciz "ListTube"
.LN_0_m_ChatCompletions_Core_remove_ListTube_ref:
    .asciz "ListTube"
.LN_1_m_ChatCompletions_Core_remove_ListTube_ref:
    .asciz "ListTube"
.LS_0_m_ChatCompletions_Core_get_Name_void:
    .short 67, 104, 97, 116, 32, 67, 111, 109, 112, 108, 101, 116, 105, 111, 110, 115
.LS_0_m_ChatCompletions_Core_get_InternalName_void:
    .short 99, 104, 97, 116, 45, 99, 111, 109, 112, 108, 101, 116, 105, 111, 110, 115
.LS_0_m_ChatCompletions_Core_get_AuthenticationTypes_void:
    .short 66, 97, 115, 101, 32, 85, 82, 76, 44, 32, 101, 46, 103, 46, 32, 104, 116, 116, 112, 115, 58, 47, 47, 97, 112, 105, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 118, 49
.LS_1_m_ChatCompletions_Core_get_AuthenticationTypes_void:
    .short 65, 80, 73, 32, 107, 101, 121
.LN_2_m_ChatCompletions_Core_get_AuthenticationTypes_void:
    .asciz "Yggdrasil.Models.AuthTypeInfo"
.LN_0_m_ChatCompletions_Core_get_TypingUsersList_void:
    .asciz "<TypingUsersList>k__BackingField"
.LN_0_m_ChatCompletions_Core_Authenticate_v_ref_ref:
    .asciz "<>t__builder"
.LN_1_m_ChatCompletions_Core_Authenticate_v_ref_ref:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Core_Authenticate_v_ref_ref:
    .asciz "username"
.LN_3_m_ChatCompletions_Core_Authenticate_v_ref_ref:
    .asciz "password"
.LN_4_m_ChatCompletions_Core_Authenticate_v_ref_ref:
    .asciz "<>1__state"
.LN_5_m_ChatCompletions_Core_Authenticate_v_ref_ref:
    .asciz "<>t__builder"
.LN_6_m_ChatCompletions_Core_Authenticate_v_ref_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Core_Authenticate_ref:
    .asciz "<>t__builder"
.LN_1_m_ChatCompletions_Core_Authenticate_ref:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Core_Authenticate_ref:
    .asciz "credential"
.LN_3_m_ChatCompletions_Core_Authenticate_ref:
    .asciz "<>1__state"
.LN_4_m_ChatCompletions_Core_Authenticate_ref:
    .asciz "<>t__builder"
.LN_5_m_ChatCompletions_Core_Authenticate_ref:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Core_StoreCredential_void:
    .asciz "_me"
.LN_1_m_ChatCompletions_Core_StoreCredential_void:
    .asciz "_apiKey"
.LN_2_m_ChatCompletions_Core_StoreCredential_void:
    .asciz "Yggdrasil.Models.SavedCredential"
.LN_0_m_ChatCompletions_Core_GetQRCode_void:
    .asciz "Empty"
.LN_0_m_ChatCompletions_Core_GetUserInfo_void:
    .asciz "_me"
.LN_0_m_ChatCompletions_Core_FetchServers_void:
    .asciz "Yggdrasil.Models.Server>"
.LN_0_m_ChatCompletions_Core_BuildModelDirectMessages_void:
    .asciz "_modelIds"
.LN_1_m_ChatCompletions_Core_BuildModelDirectMessages_void:
    .asciz "Yggdrasil.Models.DirectMessage>"
.LSTUB_m_ChatCompletions_Core_FetchMessages_ref_v_i4_ref:
    .asciz "ChatCompletions.Core::FetchMessages  [inconsistent stack depth at IL_00b9: 2 vs 4]"
.LN_0_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b:
    .asciz "<>t__builder"
.LN_1_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b:
    .asciz "<>4__this"
.LN_2_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b:
    .asciz "conversation"
.LN_3_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b:
    .asciz "text"
.LN_4_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b:
    .asciz "<>1__state"
.LN_5_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b:
    .asciz "<>t__builder"
.LN_6_m_ChatCompletions_Core_SendMessage_ref_ref_ref_ref_b:
    .asciz "<>t__builder"
.LN_0_m_ChatCompletions_Core_EditMessage_ref_ref_ref:
    .asciz "DialogTube"
.LS_1_m_ChatCompletions_Core_EditMessage_ref_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 32, 101, 100, 105, 116, 105, 110, 103, 32, 105, 115, 32, 110, 111, 116, 32, 115, 117, 112, 112, 111, 114, 116, 101, 100, 46
.LN_2_m_ChatCompletions_Core_EditMessage_ref_ref_ref:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_0_m_ChatCompletions_Core_DeleteMessage_ref_ref:
    .asciz "DialogTube"
.LS_1_m_ChatCompletions_Core_DeleteMessage_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 32, 100, 101, 108, 101, 116, 105, 110, 103, 32, 105, 115, 32, 110, 111, 116, 32, 115, 117, 112, 112, 111, 114, 116, 101, 100, 46
.LN_2_m_ChatCompletions_Core_DeleteMessage_ref_ref:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_0_m_ChatCompletions_Core_SetConnectionStatus_v:
    .asciz "_me"
.LN_1_m_ChatCompletions_Core_SetConnectionStatus_v:
    .asciz "_me"
.LN_0_m_ChatCompletions_Core_SetMood_ref:
    .asciz "_me"
.LN_1_m_ChatCompletions_Core_SetMood_ref:
    .asciz "_me"
.LN_0_m_ChatCompletions_Core_Dispose_void:
    .asciz "_client"
.LN_1_m_ChatCompletions_Core_Dispose_void:
    .asciz "_client"
.LN_0_m_ChatCompletions_Core_ctor_void:
    .asciz "Yggdrasil.Models.User>"
.LN_1_m_ChatCompletions_Core_ctor_void:
    .asciz "<TypingUsersList>k__BackingField"
.LN_2_m_ChatCompletions_Core_ctor_void:
    .asciz "ChatCompletions.History"
.LN_3_m_ChatCompletions_Core_ctor_void:
    .asciz "_history"
.LN_4_m_ChatCompletions_Core_ctor_void:
    .asciz "Yggdrasil.Models.User>"
.LN_5_m_ChatCompletions_Core_ctor_void:
    .asciz "_modelUsers"
.LN_6_m_ChatCompletions_Core_ctor_void:
    .asciz "System.Collections.Generic.List`1<string>"
.LN_7_m_ChatCompletions_Core_ctor_void:
    .asciz "_modelIds"
.LN_0_m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref:
    .asciz "_modelUsers"
.LN_1_m_ChatCompletions_Core_BuildModelDirectMessages_b_42_0_ref:
    .asciz "Yggdrasil.Models.DirectMessage"
.LN_0_m_ChatCompletions_ChatTurn_get_Role_void:
    .asciz "<Role>k__BackingField"
.LN_0_m_ChatCompletions_ChatTurn_get_Content_void:
    .asciz "<Content>k__BackingField"
.LN_0_m_ChatCompletions_ChatTurn_ctor_ref_ref:
    .asciz "<Role>k__BackingField"
.LN_1_m_ChatCompletions_ChatTurn_ctor_ref_ref:
    .asciz "<Content>k__BackingField"
.LN_0_m_ChatCompletions_History_c_cctor_void:
    .asciz "ChatCompletions.History/'<>c'"
.LN_1_m_ChatCompletions_History_c_cctor_void:
    .asciz "<>9"
.LN_0_m_ChatCompletions_History_c_GetList_b_6_0_ref:
    .asciz "ChatCompletions.ChatTurn>"
.LS_0_m_ChatCompletions_History_AddUserMessage_ref_ref:
    .short 117, 115, 101, 114
.LN_1_m_ChatCompletions_History_AddUserMessage_ref_ref:
    .asciz "ChatCompletions.ChatTurn"
.LS_0_m_ChatCompletions_History_AddAssistantMessage_ref_ref:
    .short 97, 115, 115, 105, 115, 116, 97, 110, 116
.LN_1_m_ChatCompletions_History_AddAssistantMessage_ref_ref:
    .asciz "ChatCompletions.ChatTurn"
.LS_0_m_ChatCompletions_History_RemoveLastAssistantMessage_ref:
    .short 97, 115, 115, 105, 115, 116, 97, 110, 116
.LN_0_m_ChatCompletions_History_Clear_ref:
    .asciz "_byConversation"
.LN_0_m_ChatCompletions_History_GetList_ref:
    .asciz "_byConversation"
.LN_1_m_ChatCompletions_History_GetList_ref:
    .asciz "<>9__6_0"
.LN_2_m_ChatCompletions_History_GetList_ref:
    .asciz "<>9"
.LN_3_m_ChatCompletions_History_GetList_ref:
    .asciz "ChatCompletions.ChatTurn>>"
.LN_4_m_ChatCompletions_History_GetList_ref:
    .asciz "<>9__6_0"
.LN_0_m_ChatCompletions_History_ctor_void:
    .asciz "ChatCompletions.ChatTurn>>"
.LN_1_m_ChatCompletions_History_ctor_void:
    .asciz "_byConversation"

    .section .note.GNU-stack,"",@progbits