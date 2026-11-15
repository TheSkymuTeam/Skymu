# Classes/Windows/Runtime.cs
    .text

.globl m_Skymu_Native_Windows_Runtime_DetectOS__void
.type m_Skymu_Native_Windows_Runtime_DetectOS__void, @function
m_Skymu_Native_Windows_Runtime_DetectOS__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0000:
    call m_Skymu_Native_Windows_Runtime_GetWineVersion__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0005:
    mov -64(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0007:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_002f
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_000a:
    mov $46, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_000c:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_000d:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0012:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0013:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0014:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0016:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Int32_TryParse__ref_v
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_001b:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_002d
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_001d:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_001f:
    mov $11, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0021:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0025
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0023:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0024:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0025:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0027:
    mov $10, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0029:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_002d
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_002b:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_002c:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_002d:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_002e:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_002f:
    lea -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0031:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0037:
    lea -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0039:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_003a:
    mov -72(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_SizeOf_valuetype_Skymu_Native_Windows_Runtime_OSVERSIONINFOEX__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_003f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_Runtime_DetectOS_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0044:
    lea -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0046:
    mov -64(%rbp), %rdi
    call m_Skymu_Native_Windows_Runtime_RtlGetVersion__v
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_004b:
    mov -64(%rbp), %rax
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_004c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_004d:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_Runtime_DetectOS_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0052:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0053:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0054:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_Runtime_DetectOS_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0059:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_005a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_005b:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Native_Windows_Runtime_DetectOS_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0060:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0062:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0063:
    mov $10, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0065:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_006a
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0067:
    mov $13, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0069:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_006a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_006b:
    mov $10, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_006d:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_007e
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_006f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0071:
    mov $22000, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0076:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_007b
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0078:
    mov $12, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_007a:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_007b:
    mov $11, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_007d:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_007e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_007f:
    mov $6, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0080:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_009e
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0082:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0083:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0084:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0089
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0086:
    mov $10, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0088:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0089:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_008a:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_008b:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0090
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_008d:
    mov $9, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_008f:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0090:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0091:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0092:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0096
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0094:
    mov $8, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0095:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0096:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0097:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_009b
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_0099:
    mov $7, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_009a:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_009b:
    mov $14, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_009d:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_009e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_009f:
    mov $5, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a0:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b6
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a2:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a3:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a4:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a8
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a6:
    mov $6, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a7:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a8:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00a9:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00aa:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00ae
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00ac:
    mov $5, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00ad:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00ae:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00af:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b3
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b1:
    mov $4, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b2:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b3:
    mov $15, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b5:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b6:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b7:
    mov $4, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00b8:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00bd
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00ba:
    mov $16, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00bc:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00bd:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_00be:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectOS_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Runtime_DetectOS__void, .-m_Skymu_Native_Windows_Runtime_DetectOS__void

.globl m_Skymu_Native_Windows_Runtime_DetectNetVersion__void
.type m_Skymu_Native_Windows_Runtime_DetectNetVersion__void, @function
m_Skymu_Native_Windows_Runtime_DetectNetVersion__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0000:
    call m_System_Runtime_InteropServices_RuntimeInformation_get_FrameworkDescription__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0005:
    mov -40(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0007:
    lea .LS_0_m_Skymu_Native_Windows_Runtime_DetectNetVersion_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_000c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0011:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0030
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0013:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0014:
    mov $15, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0016:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_001b:
    mov $46, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_001d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_001e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0023:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0024:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0025:
    lea -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0027:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Int32_TryParse__ref_v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_002c:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0059
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_002e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_002f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0031:
    lea .LS_1_m_Skymu_Native_Windows_Runtime_DetectNetVersion_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0036:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_003b:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0059
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_003d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_003e:
    mov $5, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_003f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0044:
    mov $46, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0046:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0047:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_004c:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_004d:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_004e:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0050:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Int32_TryParse__ref_v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0055:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0059
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0057:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0058:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_0059:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_005a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_DetectNetVersion_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Runtime_DetectNetVersion__void, .-m_Skymu_Native_Windows_Runtime_DetectNetVersion__void

.globl m_Skymu_Native_Windows_Runtime_GetWineVersion__void
.type m_Skymu_Native_Windows_Runtime_GetWineVersion__void, @function
m_Skymu_Native_Windows_Runtime_GetWineVersion__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0000:
    lea .LS_0_m_Skymu_Native_Windows_Runtime_GetWineVersion_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0005:
    mov -40(%rbp), %rdi
    call m_Skymu_Native_Windows_Runtime_GetModuleHandle__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_000a:
    mov -40(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_000b:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_000c:
    lea .LN_1_m_Skymu_Native_Windows_Runtime_GetWineVersion_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0011:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_IntPtr_op_Equality__v_v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0016:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_001c
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0018:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0019:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_001a:
    jmp .Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_004c
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_001c:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_001d:
    lea .LS_2_m_Skymu_Native_Windows_Runtime_GetWineVersion_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0022:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Native_Windows_Runtime_GetProcAddress__v_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0027:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0028:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0029:
    lea .LN_3_m_Skymu_Native_Windows_Runtime_GetWineVersion_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_002e:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_IntPtr_op_Equality__v_v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0033:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0039
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0035:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0036:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0037:
    jmp .Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_004c
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0039:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_003a:
    mov -40(%rbp), %rdi
    call m_System_Runtime_InteropServices_Marshal_GetDelegateForFunctionPointer_class_Skymu_Native_Windows_Runtime_WineGetVersionDelegate__v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_003f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_Invoke__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0044:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_0045:
    jmp .Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_004c
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_004c:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_004d:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_GetWineVersion_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Runtime_GetWineVersion__void, .-m_Skymu_Native_Windows_Runtime_GetWineVersion__void

.globl m_Skymu_Native_Windows_Runtime_ctor__void
.type m_Skymu_Native_Windows_Runtime_ctor__void, @function
m_Skymu_Native_Windows_Runtime_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Runtime_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Runtime_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_Runtime_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Runtime_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Runtime_ctor__void, .-m_Skymu_Native_Windows_Runtime_ctor__void

    .globl m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_ctor__ref_v
    .type m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_ctor__ref_v, @function
m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_ctor__ref_v:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_ctor_ref_v(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_ctor__ref_v, .-m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_ctor__ref_v

    .globl m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_Invoke__void
    .type m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_Invoke__void, @function
m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_Invoke__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_Invoke_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_Invoke__void, .-m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_Invoke__void

    .globl m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_BeginInvoke__ref_ref
    .type m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_BeginInvoke__ref_ref, @function
m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_BeginInvoke__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_BeginInvoke_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_BeginInvoke__ref_ref, .-m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_BeginInvoke__ref_ref

    .globl m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_EndInvoke__ref
    .type m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_EndInvoke__ref, @function
m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_EndInvoke__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_EndInvoke_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_EndInvoke__ref, .-m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_EndInvoke__ref

    .globl m_Skymu_Native_Windows_Runtime_RtlGetVersion__v
    .type m_Skymu_Native_Windows_Runtime_RtlGetVersion__v, @function
m_Skymu_Native_Windows_Runtime_RtlGetVersion__v:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Runtime_RtlGetVersion_v(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Runtime_RtlGetVersion__v, .-m_Skymu_Native_Windows_Runtime_RtlGetVersion__v

    .globl m_Skymu_Native_Windows_Runtime_GetModuleHandle__ref
    .type m_Skymu_Native_Windows_Runtime_GetModuleHandle__ref, @function
m_Skymu_Native_Windows_Runtime_GetModuleHandle__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Runtime_GetModuleHandle_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Runtime_GetModuleHandle__ref, .-m_Skymu_Native_Windows_Runtime_GetModuleHandle__ref

    .globl m_Skymu_Native_Windows_Runtime_GetProcAddress__i8_ref
    .type m_Skymu_Native_Windows_Runtime_GetProcAddress__i8_ref, @function
m_Skymu_Native_Windows_Runtime_GetProcAddress__i8_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Runtime_GetProcAddress_i8_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Runtime_GetProcAddress__i8_ref, .-m_Skymu_Native_Windows_Runtime_GetProcAddress__i8_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Native_Windows_Runtime_DetectOS_void:
    .asciz "dwOSVersionInfoSize"

.LN_1_m_Skymu_Native_Windows_Runtime_DetectOS_void:
    .asciz "dwMajorVersion"

.LN_2_m_Skymu_Native_Windows_Runtime_DetectOS_void:
    .asciz "dwMinorVersion"

.LN_3_m_Skymu_Native_Windows_Runtime_DetectOS_void:
    .asciz "dwBuildNumber"

.LS_0_m_Skymu_Native_Windows_Runtime_DetectNetVersion_void:
    .short 46, 78, 69, 84, 32, 70, 114, 97, 109, 101, 119, 111, 114, 107

.LS_1_m_Skymu_Native_Windows_Runtime_DetectNetVersion_void:
    .short 46, 78, 69, 84

.LS_0_m_Skymu_Native_Windows_Runtime_GetWineVersion_void:
    .short 110, 116, 100, 108, 108, 46, 100, 108, 108

.LN_1_m_Skymu_Native_Windows_Runtime_GetWineVersion_void:
    .asciz "Zero"

.LS_2_m_Skymu_Native_Windows_Runtime_GetWineVersion_void:
    .short 119, 105, 110, 101, 95, 103, 101, 116, 95, 118, 101, 114, 115, 105, 111, 110

.LN_3_m_Skymu_Native_Windows_Runtime_GetWineVersion_void:
    .asciz "Zero"

.LSTUB_m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_ctor_ref_v:
    .asciz "Skymu.Native.Windows.Runtime/WineGetVersionDelegate::.ctor  [no IL body (abstract or extern)]"

.LSTUB_m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_Invoke_void:
    .asciz "Skymu.Native.Windows.Runtime/WineGetVersionDelegate::Invoke  [no IL body (abstract or extern)]"

.LSTUB_m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_BeginInvoke_ref_ref:
    .asciz "Skymu.Native.Windows.Runtime/WineGetVersionDelegate::BeginInvoke  [no IL body (abstract or extern)]"

.LSTUB_m_Skymu_Native_Windows_Runtime_WineGetVersionDelegate_EndInvoke_ref:
    .asciz "Skymu.Native.Windows.Runtime/WineGetVersionDelegate::EndInvoke  [no IL body (abstract or extern)]"

.LSTUB_m_Skymu_Native_Windows_Runtime_RtlGetVersion_v:
    .asciz "Skymu.Native.Windows.Runtime::RtlGetVersion  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Runtime_GetModuleHandle_ref:
    .asciz "Skymu.Native.Windows.Runtime::GetModuleHandle  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Runtime_GetProcAddress_i8_ref:
    .asciz "Skymu.Native.Windows.Runtime::GetProcAddress  [P/Invoke declaration (native import, no IL body)]"

    .section .note.GNU-stack,"",@progbits
