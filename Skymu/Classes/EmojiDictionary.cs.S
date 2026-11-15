# Classes/EmojiDictionary.cs
    .text

.globl m_Skymu_Emoticons_EmojiDictionary_cctor__void
.type m_Skymu_Emoticons_EmojiDictionary_cctor__void, @function
m_Skymu_Emoticons_EmojiDictionary_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0000:
    lea .LN_0_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0006:
    lea .LS_1_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_000b:
    lea .LS_2_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0010:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0015:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0016:
    lea .LS_3_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_001b:
    lea .LS_4_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0020:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0025:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0026:
    lea .LS_5_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_002b:
    lea .LS_6_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0030:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0035:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0036:
    lea .LS_7_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_003b:
    lea .LS_8_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0040:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0045:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0046:
    lea .LS_9_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_004b:
    lea .LS_10_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0050:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0056:
    lea .LS_11_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_005b:
    lea .LS_12_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0060:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0066:
    lea .LS_13_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_006b:
    lea .LS_14_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0070:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0075:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0076:
    lea .LS_15_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_007b:
    lea .LS_16_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0080:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0085:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0086:
    lea .LS_17_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_008b:
    lea .LS_18_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0090:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0095:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0096:
    lea .LS_19_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_009b:
    lea .LS_20_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00a6:
    lea .LS_21_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00ab:
    lea .LS_22_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00b6:
    lea .LS_23_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00bb:
    lea .LS_24_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00c6:
    lea .LS_25_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00cb:
    lea .LS_26_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00d6:
    lea .LS_27_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00db:
    lea .LS_28_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00e6:
    lea .LS_29_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00eb:
    lea .LS_30_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00f6:
    lea .LS_31_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_00fb:
    lea .LS_32_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0100:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0105:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0106:
    lea .LS_33_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_010b:
    lea .LS_34_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0110:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0115:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0116:
    lea .LS_35_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_011b:
    lea .LS_36_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0120:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0125:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0126:
    lea .LS_37_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_012b:
    lea .LS_38_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0130:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0135:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0136:
    lea .LS_39_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_013b:
    lea .LS_40_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0140:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0145:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0146:
    lea .LS_41_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_014b:
    lea .LS_42_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0150:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0155:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0156:
    lea .LS_43_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_015b:
    lea .LS_44_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0160:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0165:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0166:
    lea .LS_45_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_016b:
    lea .LS_46_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0170:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0175:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0176:
    lea .LS_47_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_017b:
    lea .LS_48_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0180:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0185:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0186:
    lea .LS_49_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_018b:
    lea .LS_50_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0190:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0195:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0196:
    lea .LS_51_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_019b:
    lea .LS_52_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01a6:
    lea .LS_53_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01ab:
    lea .LS_54_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01b6:
    lea .LS_55_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01bb:
    lea .LS_56_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01c6:
    lea .LS_57_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01cb:
    lea .LS_58_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01d6:
    lea .LS_59_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01db:
    lea .LS_60_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01e6:
    lea .LS_61_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01eb:
    lea .LS_62_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01f6:
    lea .LS_63_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_01fb:
    lea .LS_64_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0200:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0205:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0206:
    lea .LS_65_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_020b:
    lea .LS_66_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0210:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0215:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0216:
    lea .LS_67_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_021b:
    lea .LS_68_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0220:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0225:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0226:
    lea .LS_69_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_022b:
    lea .LS_70_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0230:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0235:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0236:
    lea .LS_71_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_023b:
    lea .LS_72_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0240:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0245:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0246:
    lea .LS_73_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_024b:
    lea .LS_74_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0250:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0255:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0256:
    lea .LS_75_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_025b:
    lea .LS_76_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0260:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0265:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0266:
    lea .LS_77_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_026b:
    lea .LS_78_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0270:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0275:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0276:
    lea .LS_79_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_027b:
    lea .LS_80_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0280:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0285:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0286:
    lea .LS_81_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_028b:
    lea .LS_82_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0290:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0295:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0296:
    lea .LS_83_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_029b:
    lea .LS_84_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02a6:
    lea .LS_85_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02ab:
    lea .LS_86_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02b6:
    lea .LS_87_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02bb:
    lea .LS_88_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02c6:
    lea .LS_89_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02cb:
    lea .LS_90_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02d6:
    lea .LS_91_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02db:
    lea .LS_92_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02e6:
    lea .LS_93_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02eb:
    lea .LS_94_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02f6:
    lea .LS_95_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_02fb:
    lea .LS_96_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0300:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0305:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0306:
    lea .LS_97_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_030b:
    lea .LS_98_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0310:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0315:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0316:
    lea .LS_99_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_031b:
    lea .LS_100_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0320:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0325:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0326:
    lea .LS_101_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_032b:
    lea .LS_102_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0330:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0335:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0336:
    lea .LS_103_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_033b:
    lea .LS_104_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0340:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0345:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0346:
    lea .LS_105_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_034b:
    lea .LS_106_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0350:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0355:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0356:
    lea .LS_107_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_035b:
    lea .LS_108_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0360:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0365:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0366:
    lea .LS_109_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_036b:
    lea .LS_110_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0370:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0375:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0376:
    lea .LS_111_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_037b:
    lea .LS_112_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0380:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0385:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0386:
    lea .LS_113_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_038b:
    lea .LS_114_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0390:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0395:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0396:
    lea .LS_115_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_039b:
    lea .LS_116_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03a6:
    lea .LS_117_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03ab:
    lea .LS_118_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03b6:
    lea .LS_119_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03bb:
    lea .LS_120_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03c6:
    lea .LS_121_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03cb:
    lea .LS_122_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03d6:
    lea .LS_123_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03db:
    lea .LS_124_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03e6:
    lea .LS_125_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03eb:
    lea .LS_126_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03f6:
    lea .LS_127_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_03fb:
    lea .LS_128_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0400:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0405:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0406:
    lea .LS_129_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_040b:
    lea .LS_130_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0410:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0415:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0416:
    lea .LS_131_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_041b:
    lea .LS_132_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0420:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0425:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0426:
    lea .LS_133_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_042b:
    lea .LS_134_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0430:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0435:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0436:
    lea .LS_135_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_043b:
    lea .LS_136_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0440:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0445:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0446:
    lea .LS_137_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_044b:
    lea .LS_138_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0450:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0455:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0456:
    lea .LS_139_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_045b:
    lea .LS_140_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0460:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0465:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0466:
    lea .LS_141_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_046b:
    lea .LS_142_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0470:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0475:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0476:
    lea .LS_143_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_047b:
    lea .LS_144_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0480:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0485:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0486:
    lea .LS_145_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_048b:
    lea .LS_146_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0490:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0495:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0496:
    lea .LS_147_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_049b:
    lea .LS_148_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04a6:
    lea .LS_149_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04ab:
    lea .LS_150_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04b6:
    lea .LS_151_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04bb:
    lea .LS_152_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04c6:
    lea .LS_153_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04cb:
    lea .LS_154_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04d6:
    lea .LS_155_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04db:
    lea .LS_156_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04e6:
    lea .LS_157_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04eb:
    lea .LS_158_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04f6:
    lea .LS_159_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_04fb:
    lea .LS_160_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0500:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0505:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0506:
    lea .LS_161_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_050b:
    lea .LS_162_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0510:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0515:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0516:
    lea .LS_163_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_051b:
    lea .LS_164_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0520:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0525:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0526:
    lea .LS_165_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_052b:
    lea .LS_166_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0530:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0535:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0536:
    lea .LS_167_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_053b:
    lea .LS_168_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0540:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0545:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0546:
    lea .LS_169_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_054b:
    lea .LS_170_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0550:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0555:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0556:
    lea .LS_171_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_055b:
    lea .LS_172_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0560:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0565:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0566:
    lea .LS_173_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_056b:
    lea .LS_174_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0570:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0575:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0576:
    lea .LS_175_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_057b:
    lea .LS_176_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0580:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0585:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0586:
    lea .LS_177_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_058b:
    lea .LS_178_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0590:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0595:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0596:
    lea .LS_179_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_059b:
    lea .LS_180_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05a6:
    lea .LS_181_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05ab:
    lea .LS_182_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05b6:
    lea .LS_183_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05bb:
    lea .LS_184_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05c6:
    lea .LS_185_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05cb:
    lea .LS_186_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05d6:
    lea .LS_187_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05db:
    lea .LS_188_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05e6:
    lea .LS_189_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05eb:
    lea .LS_190_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05f6:
    lea .LS_191_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_05fb:
    lea .LS_192_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0600:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0605:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0606:
    lea .LS_193_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_060b:
    lea .LS_194_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0610:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0615:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0616:
    lea .LS_195_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_061b:
    lea .LS_196_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0620:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0625:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0626:
    lea .LS_197_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_062b:
    lea .LS_198_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0630:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0635:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0636:
    lea .LS_199_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_063b:
    lea .LS_200_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0640:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0645:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0646:
    lea .LS_201_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_064b:
    lea .LS_202_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0650:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0655:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0656:
    lea .LS_203_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_065b:
    lea .LS_204_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0660:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0665:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0666:
    lea .LS_205_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_066b:
    lea .LS_206_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0670:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0675:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0676:
    lea .LS_207_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_067b:
    lea .LS_208_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0680:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0685:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0686:
    lea .LS_209_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_068b:
    lea .LS_210_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0690:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0695:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0696:
    lea .LS_211_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_069b:
    lea .LS_212_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06a6:
    lea .LS_213_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06ab:
    lea .LS_214_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06b6:
    lea .LS_215_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06bb:
    lea .LS_216_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06c6:
    lea .LS_217_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06cb:
    lea .LS_218_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06d6:
    lea .LS_219_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06db:
    lea .LS_220_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06e6:
    lea .LS_221_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06eb:
    lea .LS_222_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06f6:
    lea .LS_223_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_06fb:
    lea .LS_224_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0700:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0705:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0706:
    lea .LS_225_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_070b:
    lea .LS_226_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0710:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0715:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0716:
    lea .LS_227_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_071b:
    lea .LS_228_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0720:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0725:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0726:
    lea .LS_229_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_072b:
    lea .LS_230_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0730:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0735:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0736:
    lea .LS_231_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_073b:
    lea .LS_232_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0740:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0745:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0746:
    lea .LS_233_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_074b:
    lea .LS_234_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0750:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0755:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0756:
    lea .LS_235_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_075b:
    lea .LS_236_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0760:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0765:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0766:
    lea .LS_237_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_076b:
    lea .LS_238_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0770:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0775:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0776:
    lea .LS_239_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_077b:
    lea .LS_240_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0780:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0785:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0786:
    lea .LS_241_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_078b:
    lea .LS_242_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0790:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0795:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0796:
    lea .LS_243_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_079b:
    lea .LS_244_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07a6:
    lea .LS_245_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07ab:
    lea .LS_246_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07b6:
    lea .LS_247_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07bb:
    lea .LS_248_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07c6:
    lea .LS_249_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07cb:
    lea .LS_250_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07d6:
    lea .LS_251_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07db:
    lea .LS_252_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07e6:
    lea .LS_253_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07eb:
    lea .LS_254_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07f6:
    lea .LS_255_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_07fb:
    lea .LS_256_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0800:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0805:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0806:
    lea .LS_257_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_080b:
    lea .LS_258_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0810:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0815:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0816:
    lea .LS_259_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_081b:
    lea .LS_260_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0820:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0825:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0826:
    lea .LS_261_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_082b:
    lea .LS_262_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0830:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0835:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0836:
    lea .LS_263_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_083b:
    lea .LS_264_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0840:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0845:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0846:
    lea .LS_265_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_084b:
    lea .LS_266_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0850:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0855:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0856:
    lea .LS_267_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_085b:
    lea .LS_268_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0860:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0865:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0866:
    lea .LS_269_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_086b:
    lea .LS_270_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0870:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0875:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0876:
    lea .LS_271_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_087b:
    lea .LS_272_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0880:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0885:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0886:
    lea .LS_273_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_088b:
    lea .LS_274_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0890:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0895:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0896:
    lea .LS_275_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_089b:
    lea .LS_276_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08a6:
    lea .LS_277_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08ab:
    lea .LS_278_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08b6:
    lea .LS_279_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08bb:
    lea .LS_280_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08c6:
    lea .LS_281_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08cb:
    lea .LS_282_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08d6:
    lea .LS_283_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08db:
    lea .LS_284_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08e6:
    lea .LS_285_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08eb:
    lea .LS_286_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08f6:
    lea .LS_287_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_08fb:
    lea .LS_288_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0900:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0905:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0906:
    lea .LS_289_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_090b:
    lea .LS_290_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0910:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0915:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0916:
    lea .LS_291_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_091b:
    lea .LS_292_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0920:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0925:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0926:
    lea .LS_293_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_092b:
    lea .LS_294_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0930:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0935:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0936:
    lea .LS_295_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_093b:
    lea .LS_296_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0940:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0945:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0946:
    lea .LS_297_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_094b:
    lea .LS_298_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0950:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0955:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0956:
    lea .LS_299_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_095b:
    lea .LS_300_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0960:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0965:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0966:
    lea .LS_301_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_096b:
    lea .LS_302_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0970:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0975:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0976:
    lea .LS_303_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_097b:
    lea .LS_304_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0980:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0985:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0986:
    lea .LS_305_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_098b:
    lea .LS_306_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0990:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0995:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0996:
    lea .LS_307_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_099b:
    lea .LS_308_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09a0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09a5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09a6:
    lea .LS_309_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09ab:
    lea .LS_310_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09b0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09b6:
    lea .LS_311_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09bb:
    lea .LS_312_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09c0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09c5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09c6:
    lea .LS_313_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09cb:
    lea .LS_314_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09d0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09d5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09d6:
    lea .LS_315_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09db:
    lea .LS_316_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09e0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09e5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09e6:
    lea .LS_317_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09eb:
    lea .LS_318_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09f0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09f5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09f6:
    lea .LS_319_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_09fb:
    lea .LS_320_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a00:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a05:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a06:
    lea .LS_321_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a0b:
    lea .LS_322_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a10:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a15:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a16:
    lea .LS_323_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a1b:
    lea .LS_324_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a20:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a25:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a26:
    lea .LS_325_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a2b:
    lea .LS_326_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a30:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a35:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a36:
    lea .LS_327_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a3b:
    lea .LS_328_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a40:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a45:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a46:
    lea .LS_329_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a4b:
    lea .LS_330_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a50:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a55:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a56:
    lea .LS_331_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a5b:
    lea .LS_332_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a60:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a65:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a66:
    lea .LS_333_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a6b:
    lea .LS_334_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a70:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a75:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a76:
    lea .LS_335_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a7b:
    lea .LS_336_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a80:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a85:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a86:
    lea .LS_337_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a8b:
    lea .LS_338_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a90:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a95:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a96:
    lea .LS_339_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0a9b:
    lea .LS_340_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0aa0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0aa5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0aa6:
    lea .LS_341_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0aab:
    lea .LS_342_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ab0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ab5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ab6:
    lea .LS_343_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0abb:
    lea .LS_344_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ac0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ac5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ac6:
    lea .LS_345_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0acb:
    lea .LS_346_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ad0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ad5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ad6:
    lea .LS_347_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0adb:
    lea .LS_348_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ae0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ae5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ae6:
    lea .LS_349_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0aeb:
    lea .LS_350_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0af0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0af5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0af6:
    lea .LS_351_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0afb:
    lea .LS_352_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b00:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b05:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b06:
    lea .LS_353_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b0b:
    lea .LS_354_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b10:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b15:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b16:
    lea .LS_355_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b1b:
    lea .LS_356_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b20:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b25:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b26:
    lea .LS_357_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b2b:
    lea .LS_358_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b30:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b35:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b36:
    lea .LS_359_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b3b:
    lea .LS_360_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b40:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b45:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b46:
    lea .LS_361_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b4b:
    lea .LS_362_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b50:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b55:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b56:
    lea .LS_363_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b5b:
    lea .LS_364_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b60:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b65:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b66:
    lea .LS_365_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b6b:
    lea .LS_366_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b70:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b75:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b76:
    lea .LS_367_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b7b:
    lea .LS_368_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b80:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b85:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b86:
    lea .LS_369_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b8b:
    lea .LS_370_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b90:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b95:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b96:
    lea .LS_371_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0b9b:
    lea .LS_372_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ba0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ba5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ba6:
    lea .LS_373_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bab:
    lea .LS_374_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bb0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bb5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bb6:
    lea .LS_375_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bbb:
    lea .LS_376_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bc0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bc5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bc6:
    lea .LS_377_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bcb:
    lea .LS_378_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bd0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bd5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bd6:
    lea .LS_379_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bdb:
    lea .LS_380_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0be0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0be5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0be6:
    lea .LS_381_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0beb:
    lea .LS_382_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bf0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bf5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bf6:
    lea .LS_383_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0bfb:
    lea .LS_384_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c00:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c05:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c06:
    lea .LS_385_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c0b:
    lea .LS_386_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c10:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c15:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c16:
    lea .LS_387_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c1b:
    lea .LS_388_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c20:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c25:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c26:
    lea .LS_389_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c2b:
    lea .LS_390_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c30:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c35:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c36:
    lea .LS_391_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c3b:
    lea .LS_392_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c40:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c45:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c46:
    lea .LS_393_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c4b:
    lea .LS_394_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c50:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c55:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c56:
    lea .LS_395_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c5b:
    lea .LS_396_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c60:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c65:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c66:
    lea .LS_397_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c6b:
    lea .LS_398_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c70:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c75:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c76:
    lea .LS_399_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c7b:
    lea .LS_400_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c80:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c85:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c86:
    lea .LS_401_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c8b:
    lea .LS_402_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c90:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c95:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c96:
    lea .LS_403_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0c9b:
    lea .LS_404_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ca0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ca5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ca6:
    lea .LS_405_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cab:
    lea .LS_406_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cb0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cb5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cb6:
    lea .LS_407_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cbb:
    lea .LS_408_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cc0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cc5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cc6:
    lea .LS_409_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ccb:
    lea .LS_410_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cd0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cd5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cd6:
    lea .LS_411_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cdb:
    lea .LS_412_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ce0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ce5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ce6:
    lea .LS_413_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ceb:
    lea .LS_414_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cf0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cf5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cf6:
    lea .LS_415_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0cfb:
    lea .LS_416_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d00:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d05:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d06:
    lea .LS_417_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d0b:
    lea .LS_418_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d10:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d15:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d16:
    lea .LS_419_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d1b:
    lea .LS_420_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d20:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d25:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d26:
    lea .LS_421_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d2b:
    lea .LS_422_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d30:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d35:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d36:
    lea .LS_423_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d3b:
    lea .LS_424_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d40:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d45:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d46:
    lea .LS_425_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d4b:
    lea .LS_426_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d50:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d55:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d56:
    lea .LS_427_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d5b:
    lea .LS_428_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d60:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d65:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d66:
    lea .LS_429_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d6b:
    lea .LS_430_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d70:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d75:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d76:
    lea .LS_431_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d7b:
    lea .LS_432_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d80:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d85:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d86:
    lea .LS_433_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d8b:
    lea .LS_434_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d90:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d95:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d96:
    lea .LS_435_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0d9b:
    lea .LS_436_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0da0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0da5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0da6:
    lea .LS_437_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dab:
    lea .LS_438_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0db0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0db5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0db6:
    lea .LS_439_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dbb:
    lea .LS_440_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dc0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dc5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dc6:
    lea .LS_441_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dcb:
    lea .LS_442_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dd0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dd5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dd6:
    lea .LS_443_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ddb:
    lea .LS_444_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0de0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0de5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0de6:
    lea .LS_445_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0deb:
    lea .LS_446_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0df0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0df5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0df6:
    lea .LS_447_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0dfb:
    lea .LS_448_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e00:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e05:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e06:
    lea .LS_449_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e0b:
    lea .LS_450_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e10:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e15:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e16:
    lea .LS_451_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e1b:
    lea .LS_452_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e20:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e25:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e26:
    lea .LS_453_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e2b:
    lea .LS_454_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e30:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e35:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e36:
    lea .LS_455_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e3b:
    lea .LS_456_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e40:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e45:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e46:
    lea .LS_457_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e4b:
    lea .LS_458_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e50:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e55:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e56:
    lea .LS_459_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e5b:
    lea .LS_460_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e60:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e65:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e66:
    lea .LS_461_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e6b:
    lea .LS_462_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e70:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e75:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e76:
    lea .LS_463_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e7b:
    lea .LS_464_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e80:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e85:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e86:
    lea .LS_465_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e8b:
    lea .LS_466_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e90:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e95:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e96:
    lea .LS_467_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0e9b:
    lea .LS_468_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ea0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ea5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ea6:
    lea .LS_469_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0eab:
    lea .LS_470_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0eb0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0eb5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0eb6:
    lea .LS_471_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ebb:
    lea .LS_472_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ec0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ec5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ec6:
    lea .LS_473_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ecb:
    lea .LS_474_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ed0:
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
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0ed5:
    lea .LN_475_m_Skymu_Emoticons_EmojiDictionary_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_0eda:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Emoticons_EmojiDictionary_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Emoticons_EmojiDictionary_cctor__void, .-m_Skymu_Emoticons_EmojiDictionary_cctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .asciz "string>"

.LS_1_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 48

.LS_2_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 109, 105, 108, 101

.LS_3_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 51

.LS_4_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 109, 105, 108, 101

.LS_5_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 52

.LS_6_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 97, 112, 112, 121

.LS_7_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 49

.LS_8_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 97, 112, 112, 121

.LS_9_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 54

.LS_10_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 97, 117, 103, 104

.LS_11_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 53

.LS_12_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 104, 101, 119

.LS_13_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 66

.LS_14_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 109, 109

.LS_15_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 68

.LS_16_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 101, 97, 114, 116, 101, 121, 101, 115

.LS_17_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 69

.LS_18_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 111, 111, 108

.LS_19_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 70

.LS_20_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 109, 105, 114, 107

.LS_21_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 56

.LS_22_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 107, 105, 115, 115

.LS_23_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 55

.LS_24_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 107, 105, 115, 115

.LS_25_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 57

.LS_26_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 107, 105, 115, 115

.LS_27_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 65

.LS_28_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 107, 105, 115, 115

.LS_29_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 57

.LS_30_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 105, 110, 107

.LS_31_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 50

.LS_32_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 114, 111, 102, 108

.LS_33_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 50, 51

.LS_34_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 114, 111, 102, 108

.LS_35_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 50, 57

.LS_36_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 116, 97, 114, 101, 121, 101, 115

.LS_37_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 55, 48

.LS_38_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 105, 110, 108, 111, 118, 101

.LS_39_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 51, 51

.LS_40_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 108, 117, 115, 104

.LS_41_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 66

.LS_42_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 111, 110, 103, 117, 101, 111, 117, 116

.LS_43_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 67

.LS_44_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 111, 110, 103, 117, 101, 111, 117, 116

.LS_45_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 68

.LS_46_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 111, 110, 103, 117, 101, 111, 117, 116

.LS_47_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 51

.LS_48_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 110, 101, 114, 100, 121

.LS_49_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 52

.LS_50_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 104, 105, 110, 107

.LS_51_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 55

.LS_52_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 117, 103

.LS_53_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 52, 52

.LS_54_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 97, 114, 99, 97, 115, 116, 105, 99

.LS_55_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 54, 51, 57

.LS_56_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 97, 100

.LS_57_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 50, 54

.LS_58_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 97, 100

.LS_59_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 48

.LS_60_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 117, 108, 108

.LS_61_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 49

.LS_62_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 117, 110, 97, 109, 117, 115, 101, 100

.LS_63_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 50

.LS_64_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 101, 110, 118, 121

.LS_65_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 51, 54

.LS_66_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 112, 101, 101, 99, 104, 108, 101, 115, 115

.LS_67_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 52

.LS_68_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 101, 109, 111

.LS_69_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 69

.LS_70_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 97, 100, 110, 101, 115, 115

.LS_71_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 70

.LS_72_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 114, 114, 121

.LS_73_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 50, 49

.LS_74_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 101, 97, 100, 98, 97, 110, 103

.LS_75_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 50, 48

.LS_76_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 97, 110, 103, 114, 121

.LS_77_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 50, 68

.LS_78_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 114, 121

.LS_79_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 50, 50

.LS_80_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 114, 121

.LS_81_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 50, 54

.LS_82_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 97, 99, 101, 112, 97, 108, 109

.LS_83_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 50, 56

.LS_84_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 101, 97, 114

.LS_85_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 50, 69

.LS_86_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 117, 114, 112, 114, 105, 115, 101, 100

.LS_87_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 51, 49

.LS_88_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 104, 111, 99, 107

.LS_89_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 50, 65

.LS_90_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 105, 114, 101, 100

.LS_91_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 51, 52

.LS_92_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 108, 101, 101, 112, 121

.LS_93_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 50

.LS_94_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 105, 108, 108

.LS_95_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 50, 50

.LS_96_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 117, 107, 101

.LS_97_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 50, 69

.LS_98_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 117, 107, 101

.LS_99_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 55, 49

.LS_100_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 121, 97, 119, 110

.LS_101_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 55, 52

.LS_102_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 114, 117, 110, 107

.LS_103_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 55

.LS_104_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 97, 110, 103, 101, 108

.LS_105_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 50, 53

.LS_106_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 97, 110, 103, 101, 114

.LS_107_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 48, 56

.LS_108_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 101, 118, 105, 108

.LS_109_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 49, 51

.LS_110_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 119, 101, 97, 116

.LS_111_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 48

.LS_112_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 105, 112, 115, 115, 101, 97, 108, 101, 100

.LS_113_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 50, 67

.LS_114_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 119, 101, 97, 114

.LS_115_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 50, 68

.LS_116_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 105, 103, 103, 108, 101

.LS_117_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 55, 54

.LS_118_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 104, 105, 118, 101, 114, 105, 110, 103

.LS_119_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 55, 48, 65

.LS_120_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 108, 97, 115, 115, 99, 101, 105, 108, 105, 110, 103

.LS_121_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 55, 48, 66

.LS_122_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 116, 111, 112

.LS_123_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 55, 48, 67

.LS_124_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 118, 105, 99, 116, 111, 114, 121

.LS_125_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 50

.LS_126_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 105, 115, 116, 101, 110, 105, 110, 103

.LS_127_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 65

.LS_128_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 105, 115, 116, 98, 117, 109, 112

.LS_129_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 66

.LS_130_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 105

.LS_131_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 67

.LS_132_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 111, 107

.LS_133_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 69

.LS_134_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 110, 111

.LS_135_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 68

.LS_136_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 121, 101, 115

.LS_137_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 55, 52, 67

.LS_138_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 110, 111

.LS_139_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 55, 48, 53

.LS_140_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 121, 101, 115

.LS_141_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 70

.LS_142_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 108, 97, 112

.LS_143_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 57

.LS_144_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 111, 107, 101

.LS_145_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 57, 53

.LS_146_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 105, 110, 103, 101, 114

.LS_147_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 52, 67

.LS_148_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 97, 110, 100, 115, 105, 110, 97, 105, 114

.LS_149_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 52, 70

.LS_150_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 114, 97, 121, 105, 110, 103

.LS_151_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 56

.LS_152_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 101, 97, 100, 98, 97, 110, 103

.LS_153_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 65

.LS_154_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 97, 108, 107, 116, 111, 116, 104, 101, 104, 97, 110, 100

.LS_155_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 68

.LS_156_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 97, 110, 100, 115, 104, 97, 107, 101

.LS_157_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 49, 69

.LS_158_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 105, 110, 103, 101, 114, 115, 99, 114, 111, 115, 115, 101, 100

.LS_159_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 65, 65

.LS_160_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 117, 115, 99, 108, 101

.LS_161_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 65, 70, 54

.LS_162_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 101, 97, 114, 116, 104, 97, 110, 100, 115

.LS_163_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 56

.LS_164_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 97, 110

.LS_165_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57

.LS_166_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110

.LS_167_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 55, 53

.LS_168_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 114, 97, 110

.LS_169_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 56, 51

.LS_170_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 97, 110, 99, 101

.LS_171_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 55, 65

.LS_172_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 105, 115, 99, 111, 100, 97, 110, 99, 101, 114

.LS_173_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 52, 55

.LS_174_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 111, 119

.LS_175_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 51, 48

.LS_176_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 112, 114, 101, 103, 110, 97, 110, 116

.LS_177_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 51, 49

.LS_178_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 114, 101, 97, 115, 116, 102, 101, 101, 100, 105, 110, 103

.LS_179_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 51, 51

.LS_180_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 101, 108, 102, 105, 101

.LS_181_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 51, 55, 45, 50, 48, 48, 68, 45, 50, 54, 52, 48

.LS_182_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 115, 104, 114, 117, 103

.LS_183_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 51, 55, 45, 50, 48, 48, 68, 45, 50, 54, 52, 50

.LS_184_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 97, 110, 115, 104, 114, 117, 103

.LS_185_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 55, 55

.LS_186_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 110, 105, 110, 106, 97

.LS_187_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 66, 56

.LS_188_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 101, 114, 111

.LS_189_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 68, 56

.LS_190_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 121, 111, 103, 97

.LS_191_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 51, 51, 69

.LS_192_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 102, 97, 114, 109, 101, 114

.LS_193_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 51, 55, 51

.LS_194_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 99, 104, 101, 102

.LS_195_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 51, 57, 51

.LS_196_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 103, 114, 97, 100, 117, 97, 116, 101

.LS_197_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 51, 65, 56

.LS_198_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 97, 114, 116, 105, 115, 116

.LS_199_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 51, 69, 66

.LS_200_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 116, 101, 97, 99, 104, 101, 114

.LS_201_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 52, 55, 54

.LS_202_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 104, 111, 108, 100, 105, 110, 103, 98, 97, 98, 121

.LS_203_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 52, 66, 66

.LS_204_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 100, 101, 118, 101, 108, 111, 112, 101, 114

.LS_205_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 53, 50, 55

.LS_206_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 109, 101, 99, 104, 97, 110, 105, 99

.LS_207_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 53, 50, 67

.LS_208_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 115, 99, 105, 101, 110, 116, 105, 115, 116

.LS_209_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 54, 56, 48

.LS_210_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 97, 115, 116, 114, 111, 110, 97, 117, 116

.LS_211_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 49, 70, 54, 57, 50

.LS_212_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 102, 105, 114, 101, 102, 105, 103, 104, 116, 101, 114

.LS_213_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 50, 54, 57, 53

.LS_214_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 104, 101, 97, 108, 116, 104, 119, 111, 114, 107, 101, 114

.LS_215_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 50, 54, 57, 54

.LS_216_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 106, 117, 100, 103, 101

.LS_217_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 57, 45, 50, 48, 48, 68, 45, 50, 55, 48, 56

.LS_218_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 112, 105, 108, 111, 116

.LS_219_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 69, 45, 50, 48, 48, 68, 45, 50, 54, 52, 48

.LS_220_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 112, 111, 108, 105, 99, 101, 111, 102, 102, 105, 99, 101, 114

.LS_221_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 51, 65

.LS_222_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 102, 101, 110, 99, 101, 114

.LS_223_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 66, 52, 45, 50, 48, 48, 68, 45, 50, 54, 52, 48

.LS_224_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 114, 105, 100, 105, 110, 103, 98, 105, 107, 101

.LS_225_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 67, 48

.LS_226_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 98, 97, 116, 104

.LS_227_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 52, 52

.LS_228_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 105, 112, 115

.LS_229_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 54, 65

.LS_230_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 97, 109, 105, 108, 121

.LS_231_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 56, 52

.LS_232_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 97, 107, 101, 117, 112

.LS_233_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 56, 66

.LS_234_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 98, 108, 111, 119, 107, 105, 115, 115

.LS_235_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 48, 70

.LS_236_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 104, 101, 101, 112

.LS_237_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 49, 49

.LS_238_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 97, 109, 98

.LS_239_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 49, 56

.LS_240_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 97, 110, 101, 115, 104

.LS_241_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 51, 48

.LS_242_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 117, 110, 110, 121

.LS_243_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 51, 49

.LS_244_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 116

.LS_245_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 51, 52

.LS_246_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 111, 110, 107, 101, 121

.LS_247_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 51, 53

.LS_248_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 111, 110, 107, 101, 121

.LS_249_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 51, 54

.LS_250_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 111, 103

.LS_251_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 51, 55

.LS_252_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 105, 103, 103, 121, 98, 97, 110, 107

.LS_253_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 51, 65

.LS_254_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 101, 114, 101, 119, 111, 108, 102

.LS_255_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 51, 66, 45, 50, 48, 48, 68, 45, 50, 55, 52, 52

.LS_256_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 111, 108, 97, 114, 98, 101, 97, 114

.LS_257_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 56, 52

.LS_258_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 117, 110, 105, 99, 111, 114, 110

.LS_259_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 56, 65

.LS_260_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 111, 120, 104, 117, 103

.LS_261_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 56, 67

.LS_262_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 114, 101, 105, 110, 100, 101, 101, 114

.LS_263_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 57, 52

.LS_264_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 101, 100, 103, 101, 104, 111, 103

.LS_265_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 65, 53

.LS_266_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 108, 111, 116, 104

.LS_267_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 50, 55

.LS_268_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 101, 110, 103, 117, 105, 110

.LS_269_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 56, 51

.LS_270_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 117, 114, 107, 101, 121

.LS_271_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 56, 55

.LS_272_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 97, 116, 99, 114, 121

.LS_273_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 48, 67

.LS_274_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 110, 97, 105, 108

.LS_275_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 49, 66

.LS_276_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 117, 103

.LS_277_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 50, 49

.LS_278_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 116, 105, 110, 103, 114, 97, 121

.LS_279_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 55, 66

.LS_280_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 104, 111, 115, 116

.LS_281_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 68, 66

.LS_282_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 118, 97, 109, 112, 105, 114, 101

.LS_283_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 68, 66, 45, 50, 48, 48, 68, 45, 50, 54, 52, 50

.LS_284_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 114, 97, 99, 117, 108, 97

.LS_285_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 68, 57, 45, 50, 48, 48, 68, 45, 50, 54, 52, 48

.LS_286_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 105, 116, 99, 104

.LS_287_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 68, 70

.LS_288_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 122, 111, 109, 98, 105, 101

.LS_289_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 51, 48

.LS_290_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 97, 99, 111, 114, 110

.LS_291_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 51, 53

.LS_292_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 99, 116, 117, 115, 108, 111, 118, 101

.LS_293_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 53, 48

.LS_294_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 114, 101, 97, 116, 112, 101, 97, 114

.LS_295_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 53, 53

.LS_296_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 105, 122, 122, 97

.LS_297_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 53, 55

.LS_298_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 97, 110, 100, 111, 111, 114, 105, 99, 104, 105, 99, 107, 101, 110

.LS_299_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 54, 67

.LS_300_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 97, 100, 100, 117

.LS_301_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 56, 50

.LS_302_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 107, 101

.LS_303_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 56, 51

.LS_304_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 117, 109, 112, 107, 105, 110

.LS_305_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 53, 49

.LS_306_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 97, 118, 111, 99, 97, 100, 111, 108, 111, 118, 101

.LS_307_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 53, 65

.LS_308_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 104, 105, 99, 107, 115, 101, 103, 103

.LS_309_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 54, 55

.LS_310_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 105, 101

.LS_311_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 67, 48

.LS_312_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 104, 101, 101, 115, 101

.LS_313_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 67, 49

.LS_314_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 117, 112, 99, 97, 107, 101

.LS_315_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 54, 49, 53

.LS_316_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 111, 102, 102, 101, 101

.LS_317_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 55, 53

.LS_318_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 104, 97, 105

.LS_319_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 55, 57

.LS_320_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 114, 105, 110, 107

.LS_321_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 55, 65

.LS_322_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 101, 101, 114

.LS_323_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 55, 67

.LS_324_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 111, 116, 116, 108, 101, 102, 101, 101, 100, 105, 110, 103

.LS_325_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 55, 69

.LS_326_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 104, 97, 109, 112, 97, 103, 110, 101

.LS_327_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 52, 50

.LS_328_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 104, 101, 101, 114, 115

.LS_329_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 55, 48, 56

.LS_330_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 108, 97, 110, 101

.LS_331_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 56, 48

.LS_332_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 97, 117, 110, 99, 104

.LS_333_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 57, 51

.LS_334_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 111, 108, 105, 99, 101, 99, 97, 114

.LS_335_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 57, 53

.LS_336_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 97, 120, 105

.LS_337_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 57, 55

.LS_338_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 114

.LS_339_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 66, 50

.LS_340_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 105, 107, 101

.LS_341_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 49, 57

.LS_342_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 111, 111, 110, 105, 110, 103

.LS_343_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 68, 68

.LS_344_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 105, 115, 108, 97, 110, 100

.LS_345_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 69, 48

.LS_346_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 111, 118, 105, 110, 103, 104, 111, 109, 101

.LS_347_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 52, 67

.LS_348_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 101, 105, 100

.LS_349_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 52, 69

.LS_350_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 97, 110, 117, 107, 107, 97, 104

.LS_351_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 70, 67

.LS_352_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 97, 114, 105, 115, 108, 111, 118, 101

.LS_353_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 66, 68

.LS_354_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 111, 110, 116, 104, 101, 108, 111, 111

.LS_355_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 54, 66, 68

.LS_356_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 119, 111, 109, 97, 110, 102, 111, 111, 116, 98, 97, 108, 108

.LS_357_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 54, 70, 56

.LS_358_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 107, 97, 116, 101

.LS_359_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 67, 48

.LS_360_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 108, 97, 109, 100, 117, 110, 107

.LS_361_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 67, 51

.LS_362_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 114, 117, 110, 110, 105, 110, 103

.LS_363_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 67, 56

.LS_364_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 97, 109, 101, 114, 105, 99, 97, 110, 102, 111, 111, 116, 98, 97, 108, 108

.LS_365_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 65, 52

.LS_366_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 114, 111, 112, 116, 104, 101, 109, 105, 99

.LS_367_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 65, 55

.LS_368_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 101, 97, 100, 112, 104, 111, 110, 101, 115

.LS_369_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 65, 67

.LS_370_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 111, 118, 105, 101

.LS_371_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 65, 69

.LS_372_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 97, 109, 101, 115

.LS_373_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 66, 53

.LS_374_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 117, 115, 105, 99

.LS_375_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 70, 65

.LS_376_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 118, 98, 105, 110, 103, 101

.LS_377_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 65, 70

.LS_378_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 97, 114, 103, 101, 116

.LS_379_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 67, 54

.LS_380_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 114, 111, 112, 104, 121

.LS_381_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 52, 55

.LS_382_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 111, 108, 100, 109, 101, 100, 97, 108

.LS_383_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 52, 56

.LS_384_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 105, 108, 118, 101, 114, 109, 101, 100, 97, 108

.LS_385_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 52, 57

.LS_386_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 114, 111, 110, 122, 101, 109, 101, 100, 97, 108

.LS_387_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 66, 66

.LS_388_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 111, 109, 112, 117, 116, 101, 114

.LS_389_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 70, 49

.LS_390_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 104, 111, 110, 101

.LS_391_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 70, 55

.LS_392_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 109, 101, 114, 97

.LS_393_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 66, 53

.LS_394_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 115, 104

.LS_395_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 66, 48

.LS_396_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 115, 104

.LS_397_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 66, 50

.LS_398_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 115, 104

.LS_399_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 65, 57, 57

.LS_400_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 97, 115, 104

.LS_401_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 65, 49

.LS_402_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 105, 100, 101, 97

.LS_403_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 65, 50

.LS_404_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 97, 110, 103, 101, 114

.LS_405_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 65, 51

.LS_406_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 111, 109, 98

.LS_407_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 65, 67

.LS_408_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 97, 108, 107

.LS_409_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 65, 68

.LS_410_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 114, 101, 97, 109

.LS_411_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 69, 51

.LS_412_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 104, 101, 101, 114, 108, 101, 97, 100, 101, 114

.LS_413_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 69, 55

.LS_414_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 109, 97, 105, 108

.LS_415_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 56, 67

.LS_416_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 111, 118, 101, 108, 101, 116, 116, 101, 114

.LS_417_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 51, 70, 48

.LS_418_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 116, 105, 109, 101

.LS_419_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 54, 48, 50

.LS_420_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 117, 109, 98, 114, 101, 108, 108, 97

.LS_421_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 52, 48

.LS_422_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 111, 111, 100, 108, 117, 99, 107

.LS_423_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 56, 49

.LS_424_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 103, 105, 102, 116

.LS_425_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 56, 57

.LS_426_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 97, 114, 116, 121

.LS_427_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 49, 49

.LS_428_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 107, 101, 121

.LS_429_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 49, 52

.LS_430_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 101, 108, 108

.LS_431_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 54, 67, 68

.LS_432_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 104, 111, 112, 112, 105, 110, 103

.LS_433_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 65, 55, 52

.LS_434_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 99, 104, 97, 112, 112, 97, 108

.LS_435_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 65, 57, 52

.LS_436_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 100, 105, 121, 97

.LS_437_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 57, 70, 70

.LS_438_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 110, 97, 122, 97, 114

.LS_439_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 68, 65

.LS_440_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 101, 97, 114, 110

.LS_441_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 55, 54, 52

.LS_442_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 104, 101, 97, 114, 116

.LS_443_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 56, 68

.LS_444_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 114, 105, 110, 103

.LS_445_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 57, 52

.LS_446_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 98, 114, 111, 107, 101, 110, 104, 101, 97, 114, 116

.LS_447_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 57, 68

.LS_448_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 108, 111, 118, 101, 103, 105, 102, 116

.LS_449_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 56, 48

.LS_450_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 107, 117, 108, 108

.LS_451_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 52, 65, 57

.LS_452_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 112, 111, 111, 112

.LS_453_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 53, 51, 52

.LS_454_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 114, 101, 100

.LS_455_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 54, 48, 48

.LS_456_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 117, 110

.LS_457_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 55, 52, 52

.LS_458_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 110, 111, 119, 102, 108, 97, 107, 101

.LS_459_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 50, 66, 53, 48

.LS_460_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 116, 97, 114

.LS_461_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 48, 56

.LS_462_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 114, 97, 105, 110, 98, 111, 119

.LS_463_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 50, 55

.LS_464_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 114, 97, 105, 110

.LS_465_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 51, 56

.LS_466_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 108, 111, 119, 101, 114

.LS_467_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 56, 54

.LS_468_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 102, 105, 114, 101, 119, 111, 114, 107, 115

.LS_469_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 56, 55

.LS_470_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 112, 97, 114, 107, 108, 101, 114

.LS_471_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 56, 52

.LS_472_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 120, 109, 97, 115, 116, 114, 101, 101

.LS_473_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 49, 70, 51, 56, 53

.LS_474_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .short 115, 97, 110, 116, 97

.LN_475_m_Skymu_Emoticons_EmojiDictionary_cctor_void:
    .asciz "Map"

    .section .note.GNU-stack,"",@progbits
