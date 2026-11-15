# Classes/Package.cs
    .text

.globl m_Skymu_Packaging_Package_Install_d_0_MoveNext__void
.type m_Skymu_Packaging_Package_Install_d_0_MoveNext__void, @function
m_Skymu_Packaging_Package_Install_d_0_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0001:
    mov -96(%rbp), %rdi
    lea .LN_0_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0006:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0008:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0009:
    mov -104(%rbp), %rax
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_000a:
    mov -96(%rbp), %rax
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_000b:
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_000c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_000d:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0067
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_000f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0010:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0011:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0012:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0013:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0092
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0015:
    lea .LN_1_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_001a:
    lea .LS_2_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0020:
    mov -112(%rbp), %rdi
    lea .LN_3_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0025:
    lea .LS_4_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_002a:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_002f:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0030:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetAsync__ref_v
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0035:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_003a:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_003b:
    lea -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_003d:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0042:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0083
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0045:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0046:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0047:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0048:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_5_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_004e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_004f:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_6_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0055:
    mov -96(%rbp), %rdi
    lea .LN_7_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_005a:
    lea -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_005d:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Net_Http_System_Net_Http_HttpResponseMessage_valuetype_Skymu_Packaging_Package_Install_d_0__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0062:
    jmp .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_024c
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0067:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0068:
    mov -96(%rbp), %rdi
    lea .LN_8_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_006d:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_006e:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_006f:
    mov -96(%rbp), %rdi
    lea .LN_9_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0074:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_007a:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_007b:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_007c:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_007d:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_007e:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_10_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0083:
    lea -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0085:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_008a:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_008b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_008c:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_008d:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_11_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0092:
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0093:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0094:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0095:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00eb
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0097:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0098:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0099:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0119
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_009b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_009c:
    mov -96(%rbp), %rdi
    lea .LN_12_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00a1:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_EnsureSuccessStatusCode__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00a6:
    mov -96(%rbp), %rax
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00a7:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00a8:
    mov -96(%rbp), %rdi
    lea .LN_13_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00ad:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00b2:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStreamAsync__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00b7:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00bc:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00be:
    lea -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00c0:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_get_IsCompleted__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00c5:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0108
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00c7:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00c8:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00c9:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00ca:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00cb:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_14_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00d0:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00d1:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00d3:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_15_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00d8:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00d9:
    mov -96(%rbp), %rdi
    lea .LN_16_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00de:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00e0:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00e1:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_System_Runtime_System_IO_Stream_valuetype_Skymu_Packaging_Package_Install_d_0__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00e6:
    jmp .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_024c
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00eb:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00ec:
    mov -96(%rbp), %rdi
    lea .LN_17_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00f1:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00f3:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00f4:
    mov -96(%rbp), %rdi
    lea .LN_18_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00f9:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_00ff:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0100:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0101:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0102:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0103:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_19_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0108:
    lea -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_010a:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_GetResult__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_010f:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0111:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0112:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0114:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_20_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0119:
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_011a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_011b:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_011c:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0129
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_011e:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_011f:
    lea .LN_21_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_IO_MemoryStream_ctor__void
    mov %r12, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0124:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_22_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0129:
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_012a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_012b:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_012c:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0173
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_012e:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_012f:
    mov -96(%rbp), %rdi
    lea .LN_23_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0134:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0135:
    mov -104(%rbp), %rdi
    lea .LN_24_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_013a:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_CopyToAsync__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_013f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0144:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0146:
    lea -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0148:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_014d:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0190
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_014f:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0150:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0151:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0152:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0153:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_25_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0158:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0159:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_015b:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_26_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0160:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0161:
    mov -96(%rbp), %rdi
    lea .LN_27_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0166:
    lea -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0168:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0169:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_Packaging_Package_Install_d_0__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_016e:
    jmp .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_024c
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0173:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0174:
    mov -96(%rbp), %rdi
    lea .LN_28_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0179:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_017b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_017c:
    mov -96(%rbp), %rdi
    lea .LN_29_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0181:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0187:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0188:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0189:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_018a:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_018b:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_30_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0190:
    lea -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0192:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0197:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0198:
    mov -96(%rbp), %rdi
    lea .LN_31_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_019d:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_019e:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_019f:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_set_Position__i8
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01a4:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01a5:
    mov -104(%rbp), %rdi
    lea .LN_32_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01aa:
    lea .LN_33_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_Compression_ZipArchive_ctor__ref
    mov %r12, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01af:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01b1:
    mov -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01b3:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01b4:
    mov -112(%rbp), %rdi
    lea .LN_34_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01b9:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_IO_Compression_ZipFileExtensions_ExtractToDirectory__ref_ref
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01be:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01bf:
    mov -104(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_01c0:
    jmp .Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0238
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0238:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0239:
    mov $-2, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_023b:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_35_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0240:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0241:
    mov -104(%rbp), %rdi
    lea .LN_36_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0246:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_0247:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_024c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Packaging_Package_Install_d_0_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Packaging_Package_Install_d_0_MoveNext__void, .-m_Skymu_Packaging_Package_Install_d_0_MoveNext__void

.globl m_Skymu_Packaging_Package_Install_d_0_SetStateMachine__ref
.type m_Skymu_Packaging_Package_Install_d_0_SetStateMachine__ref, @function
m_Skymu_Packaging_Package_Install_d_0_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Packaging_Package_Install_d_0_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_d_0_SetStateMachine_ref_0007:
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
.Lm_Skymu_Packaging_Package_Install_d_0_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Packaging_Package_Install_d_0_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Packaging_Package_Install_d_0_SetStateMachine__ref, .-m_Skymu_Packaging_Package_Install_d_0_SetStateMachine__ref

.globl m_Skymu_Packaging_Package_Install__ref_ref
.type m_Skymu_Packaging_Package_Install__ref_ref, @function
m_Skymu_Packaging_Package_Install__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Packaging_Package_Install_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_ref_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Packaging_Package_Install_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Packaging_Package_Install_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_ref_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Packaging_Package_Install_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Packaging_Package_Install_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Skymu_Packaging_Package_Install_d_0__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Packaging_Package_Install_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Packaging_Package_Install_ref_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Packaging_Package_Install_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Packaging_Package_Install__ref_ref, .-m_Skymu_Packaging_Package_Install__ref_ref

.globl m_Skymu_Packaging_Package_ctor__void
.type m_Skymu_Packaging_Package_ctor__void, @function
m_Skymu_Packaging_Package_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Packaging_Package_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Packaging_Package_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Packaging_Package_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Packaging_Package_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Packaging_Package_ctor__void, .-m_Skymu_Packaging_Package_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "SkymuHttpClient"

.LS_2_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 112, 97, 99, 107, 97, 103, 101, 115, 47

.LN_3_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "package_name"

.LS_4_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .short 46, 122, 105, 112

.LN_5_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_6_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>t__builder"

.LN_8_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<response>5__2"

.LN_12_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<response>5__2"

.LN_13_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<response>5__2"

.LN_14_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_15_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__2"

.LN_16_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>t__builder"

.LN_17_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__2"

.LN_18_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__2"

.LN_19_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_20_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<downloadStream>5__3"

.LN_21_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "System.IO.MemoryStream"

.LN_22_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<memoryStream>5__4"

.LN_23_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<downloadStream>5__3"

.LN_24_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<memoryStream>5__4"

.LN_25_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_26_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__3"

.LN_27_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>t__builder"

.LN_28_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__3"

.LN_29_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>u__3"

.LN_30_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_31_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<memoryStream>5__4"

.LN_32_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<memoryStream>5__4"

.LN_33_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "System.IO.Compression.ZipArchive"

.LN_34_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "extract_path"

.LN_35_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_36_m_Skymu_Packaging_Package_Install_d_0_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Packaging_Package_Install_d_0_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Packaging_Package_Install_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Packaging_Package_Install_ref_ref:
    .asciz "package_name"

.LN_2_m_Skymu_Packaging_Package_Install_ref_ref:
    .asciz "extract_path"

.LN_3_m_Skymu_Packaging_Package_Install_ref_ref:
    .asciz "<>1__state"

.LN_4_m_Skymu_Packaging_Package_Install_ref_ref:
    .asciz "<>t__builder"

.LN_5_m_Skymu_Packaging_Package_Install_ref_ref:
    .asciz "<>t__builder"

    .section .note.GNU-stack,"",@progbits
