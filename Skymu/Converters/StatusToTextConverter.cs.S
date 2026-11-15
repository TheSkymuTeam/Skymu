# Converters/StatusToTextConverter.cs
    .text

.globl m_Skymu_Converters_StatusToTextConverter_Convert__ref_ref_ref_ref
.type m_Skymu_Converters_StatusToTextConverter_Convert__ref_ref_ref_ref, @function
m_Skymu_Converters_StatusToTextConverter_Convert__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0001:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0006:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0018
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0008:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_000d:
    lea .LS_0_m_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0012:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0017:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0018:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0019:
    mov -80(%rbp), %rdi
    call shim_unbox
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_001e:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_001f:
    lea .LN_1_m_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0024:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0025:
    lea -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0027:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_002c:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_003e
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_002e:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0033:
    lea .LS_2_m_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_0038:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_003d:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_003e:
    mov -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_003f:
    mov -80(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_StatusToTextConverter_Convert__ref_ref_ref_ref, .-m_Skymu_Converters_StatusToTextConverter_Convert__ref_ref_ref_ref

.globl m_Skymu_Converters_StatusToTextConverter_ConvertBack__ref_ref_ref_ref
.type m_Skymu_Converters_StatusToTextConverter_ConvertBack__ref_ref_ref_ref, @function
m_Skymu_Converters_StatusToTextConverter_ConvertBack__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_ConvertBack_ref_ref_ref_ref_0000:
    lea .LN_0_m_Skymu_Converters_StatusToTextConverter_ConvertBack_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_ConvertBack_ref_ref_ref_ref_0005:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StatusToTextConverter_ConvertBack_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_StatusToTextConverter_ConvertBack__ref_ref_ref_ref, .-m_Skymu_Converters_StatusToTextConverter_ConvertBack__ref_ref_ref_ref

.globl m_Skymu_Converters_StatusToTextConverter_ctor__void
.type m_Skymu_Converters_StatusToTextConverter_ctor__void, @function
m_Skymu_Converters_StatusToTextConverter_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Converters_StatusToTextConverter_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StatusToTextConverter_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_StatusToTextConverter_ctor__void, .-m_Skymu_Converters_StatusToTextConverter_ctor__void

.globl m_Skymu_Converters_StatusToTextConverter_cctor__void
.type m_Skymu_Converters_StatusToTextConverter_cctor__void, @function
m_Skymu_Converters_StatusToTextConverter_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0000:
    lea .LN_0_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0006:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0007:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_000c:
    lea .LS_1_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0016:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_001c:
    mov $3, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_001d:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0022:
    lea .LS_2_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0027:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_002c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0032:
    mov $2, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0033:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0038:
    lea .LS_3_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_003d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0042:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0047:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0048:
    mov $5, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0049:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_004e:
    lea .LS_4_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0053:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0058:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_005d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_005e:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_005f:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0064:
    lea .LS_5_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0069:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_006e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0073:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0074:
    mov $4, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0075:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_007a:
    lea .LS_6_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_007f:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0084:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0089:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_008a:
    mov $7, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_008b:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0090:
    lea .LS_7_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_0095:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_009a:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_009f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00a0:
    mov $8, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00a1:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00a6:
    lea .LS_8_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00ab:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00b0:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00b6:
    mov $9, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00b8:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00bd:
    lea .LS_9_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00c2:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00c7:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00cc:
    lea .LN_10_m_Skymu_Converters_StatusToTextConverter_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_00d1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Converters_StatusToTextConverter_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Converters_StatusToTextConverter_cctor__void, .-m_Skymu_Converters_StatusToTextConverter_cctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 79, 70, 70, 76, 73, 78, 69

.LN_1_m_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref:
    .asciz "StatusMap"

.LS_2_m_Skymu_Converters_StatusToTextConverter_Convert_ref_ref_ref_ref:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 85, 78, 75, 78, 79, 87, 78

.LN_0_m_Skymu_Converters_StatusToTextConverter_ConvertBack_ref_ref_ref_ref:
    .asciz "DoNothing"

.LN_0_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .asciz "string>"

.LS_1_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 79, 78, 76, 73, 78, 69

.LS_2_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 79, 78, 76, 73, 78, 69, 95, 77, 79, 66, 73, 76, 69

.LS_3_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 65, 87, 65, 89

.LS_4_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 65, 87, 65, 89, 95, 77, 79, 66, 73, 76, 69

.LS_5_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 68, 78, 68

.LS_6_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 68, 78, 68, 95, 77, 79, 66, 73, 76, 69

.LS_7_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 66, 76, 79, 67, 75, 69, 68

.LS_8_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 79, 70, 70, 76, 73, 78, 69

.LS_9_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 85, 78, 75, 78, 79, 87, 78

.LN_10_m_Skymu_Converters_StatusToTextConverter_cctor_void:
    .asciz "StatusMap"

    .section .note.GNU-stack,"",@progbits
