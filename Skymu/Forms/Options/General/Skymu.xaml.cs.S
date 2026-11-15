# Forms/Options/General/Skymu.xaml.cs
    .text

.globl m_Skymu_Forms_OptionPages_General_Skymu_ctor__void
.type m_Skymu_Forms_OptionPages_General_Skymu_ctor__void, @function
m_Skymu_Forms_OptionPages_General_Skymu_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_ctor__void
.Lm_Skymu_Forms_OptionPages_General_Skymu_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_ctor_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent__void
.Lm_Skymu_Forms_OptionPages_General_Skymu_ctor_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_ctor_void_000d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings__void
.Lm_Skymu_Forms_OptionPages_General_Skymu_ctor_void_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_ctor__void, .-m_Skymu_Forms_OptionPages_General_Skymu_ctor__void

.globl m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings__void
.type m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings__void, @function
m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0006:
    call m_Skymu_Preferences_Settings_get_CertificateStore__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_000b:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_000c:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_000e:
    lea .LN_1_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_bool_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0013:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_set_IsChecked__gen
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0019:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_001e:
    call m_Skymu_Preferences_Settings_get_CertificateStore__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0023:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0024:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0026:
    lea .LN_3_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_bool_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_002b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_set_IsChecked__gen
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0031:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0036:
    call m_Skymu_Preferences_Settings_get_CertificateStore__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_003b:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_003c:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_003e:
    lea .LN_5_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_bool_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0043:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_set_IsChecked__gen
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0048:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0049:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_004e:
    call m_Skymu_Preferences_Settings_get_UseClearType__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0053:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0054:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0056:
    lea .LN_7_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_bool_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_005b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_set_IsChecked__gen
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0061:
    mov -24(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0066:
    call m_Skymu_Preferences_Settings_get_UseClearType__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_006b:
    lea .LN_9_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_bool_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0070:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_set_IsChecked__gen
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0075:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0076:
    mov -24(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_007b:
    call m_Skymu_Preferences_Settings_get_DynamicSidebarTabs__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0080:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0081:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0083:
    lea .LN_11_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_bool_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0088:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_set_IsChecked__gen
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_008e:
    mov -24(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0093:
    call m_Skymu_Preferences_Settings_get_DynamicSidebarTabs__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_0098:
    lea .LN_13_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_bool_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_009d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_set_IsChecked__gen
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_00a2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings__void, .-m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings__void

.globl m_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked_ref_ref_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_CertificateStore__v
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked_ref_ref_0000:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_CertificateStore__v
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked_ref_ref_0000:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_CertificateStore__v
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked_ref_ref_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_UseClearType__b
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked_ref_ref_0000:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_UseClearType__b
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked_ref_ref_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_DynamicSidebarTabs__b
.Lm_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked_ref_ref_0000:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_DynamicSidebarTabs__b
.Lm_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked_ref_ref_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_WindowChrome__v
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked_ref_ref_0006:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked_ref_ref_0007:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_FallbackFillColors__b
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked_ref_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_RadioSkype_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked_ref_ref_0000:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked_ref_ref_0001:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_WindowChrome__v
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked_ref_ref_0006:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked_ref_ref_0007:
    mov -40(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_FallbackFillColors__b
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked_ref_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_RadioClassic_Checked__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick__ref_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0000:
    lea .LN_0_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Microsoft_Win32_OpenFileDialog_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0005:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0006:
    lea .LS_1_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref(%rip), %rdi
    mov $50, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_FileDialog_set_Filter__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0010:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0011:
    lea .LS_2_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0016:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_FileDialog_set_Title__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_001b:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_001c:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_001d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_CommonDialog_ShowDialog__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0022:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0023:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0025:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_bool_GetValueOrDefault__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_002a:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0051
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_002c:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_002d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_FileDialog_get_FileName__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0032:
    mov -56(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_CertPath__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0037:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0038:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_003d:
    lea .LN_4_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0042:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_GetBindingExpression__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0047:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0048:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_004c
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_004a:
    mov -48(%rbp), %rax
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_004b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_004c:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_BindingExpressionBase_UpdateTarget__void
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_0051:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick__ref_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick__ref_ref

.globl m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent__void
.type m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent__void, @function
m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0009
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void(%rip), %rdi
    mov $49, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent__void, .-m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent__void

.globl m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0039
    cmp $1, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0046
    cmp $2, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0053
    cmp $3, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0077
    cmp $4, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009b
    cmp $5, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bf
    cmp $6, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e3
    cmp $7, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0107
    cmp $8, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012b
    cmp $9, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014f
    cmp $10, %eax
    je .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015c
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0034:
    jmp .Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0174
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0039:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003b:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0040:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0045:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0046:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0047:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0048:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0052:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0053:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0054:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0055:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0060:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0065:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0066:
    lea m_Skymu_Forms_OptionPages_General_Skymu_UseDefaultFontRenderingRadio_Checked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006c:
    lea .LN_4_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0071:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_add_Checked__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0076:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0077:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0078:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0079:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0083:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0084:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0089:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008a:
    lea m_Skymu_Forms_OptionPages_General_Skymu_UseClearTypeRadio_Checked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0090:
    lea .LN_7_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0095:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_add_Checked__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009d:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a7:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a8:
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ad:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ae:
    lea m_Skymu_Forms_OptionPages_General_Skymu_StaticSidebarTabsRadio_Checked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b4:
    lea .LN_10_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b9:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_add_Checked__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00be:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bf:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c1:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cb:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cc:
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d2:
    lea m_Skymu_Forms_OptionPages_General_Skymu_DynamicSidebarTabsRadio_Checked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d8:
    lea .LN_13_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_add_Checked__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e5:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ea:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ef:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f0:
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f6:
    lea m_Skymu_Forms_OptionPages_General_Skymu_UseEmbeddedCert_Checked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fc:
    lea .LN_16_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0101:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_add_Checked__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0106:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0107:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0108:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0109:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0113:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0114:
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0119:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011a:
    lea m_Skymu_Forms_OptionPages_General_Skymu_UseSystemCert_Checked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0120:
    lea .LN_19_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0125:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_add_Checked__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012d:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0132:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_20_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0137:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0138:
    mov -48(%rbp), %rdi
    lea .LN_21_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013e:
    lea m_Skymu_Forms_OptionPages_General_Skymu_UseCustomCert_Checked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0144:
    lea .LN_22_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0149:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ToggleButton_add_Checked__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0150:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0151:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0156:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_23_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015c:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015d:
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0162:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0163:
    lea m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0169:
    lea .LN_24_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0173:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0174:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0175:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0176:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_25_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "UseEmbeddedCert"

.LN_1_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "System.Nullable`1<bool>"

.LN_2_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "UseSystemCert"

.LN_3_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "System.Nullable`1<bool>"

.LN_4_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "UseCustomCert"

.LN_5_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "System.Nullable`1<bool>"

.LN_6_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "UseDefaultFontRenderingRadio"

.LN_7_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "System.Nullable`1<bool>"

.LN_8_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "UseClearTypeRadio"

.LN_9_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "System.Nullable`1<bool>"

.LN_10_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "StaticSidebarTabsRadio"

.LN_11_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "System.Nullable`1<bool>"

.LN_12_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "DynamicSidebarTabsRadio"

.LN_13_m_Skymu_Forms_OptionPages_General_Skymu_LoadVisualSettings_void:
    .asciz "System.Nullable`1<bool>"

.LN_0_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref:
    .asciz "Microsoft.Win32.OpenFileDialog"

.LS_1_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref:
    .short 80, 69, 77, 32, 99, 101, 114, 116, 105, 102, 105, 99, 97, 116, 101, 115, 32, 40, 42, 46, 112, 101, 109, 41, 124, 42, 46, 112, 101, 109, 124, 65, 108, 108, 32, 102, 105, 108, 101, 115, 32, 40, 42, 46, 42, 41, 124, 42, 46, 42

.LS_2_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref:
    .short 83, 101, 108, 101, 99, 116, 32, 99, 97, 99, 101, 114, 116, 46, 112, 101, 109

.LN_3_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref:
    .asciz "SC_CertPathBox"

.LN_4_m_Skymu_Forms_OptionPages_General_Skymu_CertBrowseButtonClick_ref_ref:
    .asciz "TextProperty"

.LN_0_m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 111, 112, 116, 105, 111, 110, 115, 47, 103, 101, 110, 101, 114, 97, 108, 47, 115, 107, 121, 109, 117, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_OptionPages_General_Skymu_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SC_BrandingNameBox"

.LN_1_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ComboSoundPack"

.LN_2_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseDefaultFontRenderingRadio"

.LN_3_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseDefaultFontRenderingRadio"

.LN_4_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_5_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseClearTypeRadio"

.LN_6_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseClearTypeRadio"

.LN_7_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_8_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StaticSidebarTabsRadio"

.LN_9_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StaticSidebarTabsRadio"

.LN_10_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_11_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "DynamicSidebarTabsRadio"

.LN_12_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "DynamicSidebarTabsRadio"

.LN_13_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_14_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseEmbeddedCert"

.LN_15_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseEmbeddedCert"

.LN_16_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_17_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseSystemCert"

.LN_18_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseSystemCert"

.LN_19_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_20_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseCustomCert"

.LN_21_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UseCustomCert"

.LN_22_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_23_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SC_CertPathBox"

.LN_24_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_25_m_Skymu_Forms_OptionPages_General_Skymu_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

    .section .note.GNU-stack,"",@progbits
