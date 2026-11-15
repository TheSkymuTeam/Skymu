# Classes/FrameworkExtensions.cs
    .text

.globl m_Skymu_Rune_get_Value__void
.type m_Skymu_Rune_get_Value__void, @function
m_Skymu_Rune_get_Value__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Rune_get_Value_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Rune_get_Value_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Rune_get_Value_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Rune_get_Value_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Rune_get_Value_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Rune_get_Value__void, .-m_Skymu_Rune_get_Value__void

.globl m_Skymu_Rune_ctor__i4
.type m_Skymu_Rune_ctor__i4, @function
m_Skymu_Rune_ctor__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Rune_ctor_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Rune_ctor_i4_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Rune_ctor_i4_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Rune_ctor_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Rune_ctor_i4_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Rune_ctor_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Rune_ctor__i4, .-m_Skymu_Rune_ctor__i4

.globl m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor__i4
.type m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor__i4, @function
m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_000d:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_000e:
    call m_System_Environment_get_CurrentManagedThreadId__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_0013:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor__i4, .-m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor__i4

.globl m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_IDisposable_Dispose__void
.type m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_IDisposable_Dispose__void, @function
m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_IDisposable_Dispose__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_IDisposable_Dispose_void_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_IDisposable_Dispose_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_IDisposable_Dispose__void, .-m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_IDisposable_Dispose__void

.globl m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext__void
.type m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext__void, @function
m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0006:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0008:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0010
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_000b:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_000c:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0051
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_000e:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_000f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0011:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0012:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0018:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_001d:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0021
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_001f:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0020:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0022:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0023:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0028:
    jmp .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0090
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_002a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_002b:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0031:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0036:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Char_ConvertToUtf32__ref_i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_003b:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_003d:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_003e:
    lea .LN_6_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Rune_ctor__i4
    mov %r12, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0043:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0048:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0049:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_004a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_004f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0050:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0051:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0052:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0053:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0059:
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_005f:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0064:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Chars__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0069:
    mov -48(%rbp), %rdi
    call m_System_Char_IsHighSurrogate__c
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_006e:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0080
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0070:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0071:
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0076:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0077:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0078:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0079:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_007a:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_007b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0080:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0081:
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0086:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0087:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0088:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0089:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_008a:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_008b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0090:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0091:
    mov -48(%rbp), %rdi
    lea .LN_16_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0096:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_0097:
    mov -56(%rbp), %rdi
    lea .LN_17_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_009c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Length__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_00a1:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    jl .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_002a
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_00a3:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_00a4:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext__void, .-m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext__void

.globl m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current__void
.type m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current__void, @function
m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current__void, .-m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current__void

.globl m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset__void
.type m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset__void, @function
m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset_void_0000:
    lea .LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_NotSupportedException_ctor__void
    mov %r12, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset_void_0005:
    mov -24(%rbp), %rdi
    call shim_throw
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset__void, .-m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset__void

.globl m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current__void
.type m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current__void, @function
m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void_0006:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void(%rip), %rsi
    call shim_box
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current__void, .-m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current__void

.globl m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator__void
.type m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator__void, @function
m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0006:
    mov $-2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0008:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0022
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_000a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_000b:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0010:
    call m_System_Environment_get_CurrentManagedThreadId__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0015:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0022
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0018:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0019:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_001f:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0020:
    jmp .Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0029
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0022:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0023:
    lea .LN_3_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor__i4
    mov %r12, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0028:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0029:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_002a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_002b:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0030:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0035:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_0036:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator__void, .-m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator__void

.globl m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator__void
.type m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator__void, @function
m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator__void, .-m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerable_GetEnumerator__void

.globl m_Skymu_FrameworkExtensions_EnumerateRunes__ref
.type m_Skymu_FrameworkExtensions_EnumerateRunes__ref, @function
m_Skymu_FrameworkExtensions_EnumerateRunes__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_ref_0000:
    mov $-2, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_ref_0002:
    lea .LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor__i4
    mov %r12, -24(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_ref_0008:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_ref_0009:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_ref_000e:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_FrameworkExtensions_EnumerateRunes_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_FrameworkExtensions_EnumerateRunes__ref, .-m_Skymu_FrameworkExtensions_EnumerateRunes__ref

    .globl m_Skymu_FrameworkExtensions_ToDisplayString__ref
    .type m_Skymu_FrameworkExtensions_ToDisplayString__ref, @function
m_Skymu_FrameworkExtensions_ToDisplayString__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_FrameworkExtensions_ToDisplayString_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_FrameworkExtensions_ToDisplayString__ref, .-m_Skymu_FrameworkExtensions_ToDisplayString__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Rune_get_Value_void:
    .asciz "<Value>k__BackingField"

.LN_0_m_Skymu_Rune_ctor_i4:
    .asciz "<Value>k__BackingField"

.LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4:
    .asciz "<>1__state"

.LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_ctor_i4:
    .asciz "<>l__initialThreadId"

.LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_2_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "str"

.LN_3_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<i>5__2"

.LN_4_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "str"

.LN_5_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<i>5__2"

.LN_6_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "Skymu.Rune"

.LN_7_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<>2__current"

.LN_8_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "str"

.LN_11_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<i>5__2"

.LN_12_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<i>5__2"

.LN_13_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<i>5__2"

.LN_14_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<i>5__2"

.LN_15_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<i>5__2"

.LN_16_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "<i>5__2"

.LN_17_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_MoveNext_void:
    .asciz "str"

.LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerator_Skymu_Rune_get_Current_void:
    .asciz "<>2__current"

.LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_Reset_void:
    .asciz "System.NotSupportedException"

.LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void:
    .asciz "<>2__current"

.LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_IEnumerator_get_Current_void:
    .asciz "Skymu.Rune"

.LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void:
    .asciz "<>l__initialThreadId"

.LN_2_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void:
    .asciz "Skymu.FrameworkExtensions/'<EnumerateRunes>d__0'"

.LN_4_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void:
    .asciz "<>3__str"

.LN_5_m_Skymu_FrameworkExtensions_EnumerateRunes_d_0_System_Collections_Generic_IEnumerable_Skymu_Rune_GetEnumerator_void:
    .asciz "str"

.LN_0_m_Skymu_FrameworkExtensions_EnumerateRunes_ref:
    .asciz "Skymu.FrameworkExtensions/'<EnumerateRunes>d__0'"

.LN_1_m_Skymu_FrameworkExtensions_EnumerateRunes_ref:
    .asciz "<>3__str"

.LSTUB_m_Skymu_FrameworkExtensions_ToDisplayString_ref:
    .asciz "Skymu.FrameworkExtensions::ToDisplayString  [inconsistent stack depth at IL_003f: 0 vs 1]"

    .section .note.GNU-stack,"",@progbits
