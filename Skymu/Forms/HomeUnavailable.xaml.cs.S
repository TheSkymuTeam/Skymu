# Forms/HomeUnavailable.xaml.cs
    .text

.globl m_Skymu_Forms_HomeUnavailable_ctor__void
.type m_Skymu_Forms_HomeUnavailable_ctor__void, @function
m_Skymu_Forms_HomeUnavailable_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_ctor__void
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_HomeUnavailable_InitializeComponent__void
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_000c:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0012:
    lea m_Skymu_Forms_HomeUnavailable_RefreshText__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0018:
    lea .LN_0_m_Skymu_Forms_HomeUnavailable_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_001d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_add_PropertyChanged__ref
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0022:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0023:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0024:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_0025:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_HomeUnavailable_RefreshText__ref_ref
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_HomeUnavailable_ctor__void, .-m_Skymu_Forms_HomeUnavailable_ctor__void

.globl m_Skymu_Forms_HomeUnavailable_RefreshText__ref_ref
.type m_Skymu_Forms_HomeUnavailable_RefreshText__ref_ref, @function
m_Skymu_Forms_HomeUnavailable_RefreshText__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0000:
    call m_Skymu_WebServices_Home_GetLanguage__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0005:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0006:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0008:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_get_HasValue__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_000d:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0010
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_000f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0010:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0012:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_get_Value__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0017:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0018:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0019:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_001e:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0020:
    lea .LS_1_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0025:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_002a:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_002b:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_002d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0032:
    lea .LS_2_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0037:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_003c:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0041:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0046:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0047:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_004c:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_004e:
    lea .LS_4_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0053:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0058:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0059:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_005b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0060:
    lea .LS_5_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0065:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_006a:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_006f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0074:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0075:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_007a:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_007c:
    lea .LS_7_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0081:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0086:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0087:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0089:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_008e:
    lea .LS_8_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0093:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_0098:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_009d:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00a2:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00a3:
    mov -64(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00a8:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00aa:
    lea .LS_10_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00af:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00b4:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00b5:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00b7:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00bc:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00c1:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00c2:
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00c7:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00c9:
    lea .LS_12_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00ce:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00d3:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00d4:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00d6:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00db:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_00e0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_HomeUnavailable_RefreshText__ref_ref, .-m_Skymu_Forms_HomeUnavailable_RefreshText__ref_ref

.globl m_Skymu_Forms_HomeUnavailable_InitializeComponent__void
.type m_Skymu_Forms_HomeUnavailable_InitializeComponent__void, @function
m_Skymu_Forms_HomeUnavailable_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_HomeUnavailable_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0009
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_HomeUnavailable_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_HomeUnavailable_InitializeComponent_void(%rip), %rdi
    mov $43, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_HomeUnavailable_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_HomeUnavailable_InitializeComponent__void, .-m_Skymu_Forms_HomeUnavailable_InitializeComponent__void

.globl m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001e
    cmp $1, %eax
    je .Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002b
    cmp $2, %eax
    je .Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0038
    cmp $3, %eax
    je .Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0045
    cmp $4, %eax
    je .Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0052
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001c:
    jmp .Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005f
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0020:
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0025:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002d:
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0032:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0038:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0039:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003a:
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0044:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0045:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0046:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0047:
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0051:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0052:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0053:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0054:
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0059:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0060:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0061:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0066:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_HomeUnavailable_ctor_void:
    .asciz "System.ComponentModel.PropertyChangedEventHandler"

.LN_0_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .asciz "NoHomeHead"

.LS_1_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .short 104, 101, 97, 100, 101, 114

.LS_2_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .short 83, 107, 121, 112, 101

.LN_3_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .asciz "NoHomeBody"

.LS_4_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .short 112, 49

.LS_5_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .short 83, 107, 121, 112, 101

.LN_6_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .asciz "NoHomeListHead"

.LS_7_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .short 112, 50

.LS_8_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .short 83, 107, 121, 112, 101

.LN_9_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .asciz "NoHomeList1"

.LS_10_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .short 108, 105, 115, 116, 49, 108, 105, 49

.LN_11_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .asciz "NoHomeList2"

.LS_12_m_Skymu_Forms_HomeUnavailable_RefreshText_ref_ref:
    .short 108, 105, 115, 116, 49, 108, 105, 50

.LN_0_m_Skymu_Forms_HomeUnavailable_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_HomeUnavailable_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_HomeUnavailable_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 104, 111, 109, 101, 117, 110, 97, 118, 97, 105, 108, 97, 98, 108, 101, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_HomeUnavailable_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "NoHomeHead"

.LN_1_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "NoHomeBody"

.LN_2_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "NoHomeListHead"

.LN_3_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "NoHomeList1"

.LN_4_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "NoHomeList2"

.LN_5_m_Skymu_Forms_HomeUnavailable_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

    .section .note.GNU-stack,"",@progbits
