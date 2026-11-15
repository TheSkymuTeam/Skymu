# Forms/WindowBase.xaml.cs
    .text

.globl m_Skymu_Forms_WindowBase_ctor__ref
.type m_Skymu_Forms_WindowBase_ctor__ref, @function
m_Skymu_Forms_WindowBase_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_ctor__void
.Lm_Skymu_Forms_WindowBase_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0007:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_InitializeComponent__void
.Lm_Skymu_Forms_WindowBase_ctor_ref_000c:
    lea .LN_0_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0011:
    lea .LS_1_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_001b:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_WindowBase_ctor_ref_002e
.Lm_Skymu_Forms_WindowBase_ctor_ref_001d:
    lea .LN_2_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0022:
    lea .LS_3_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0027:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_002c:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_WindowBase_ctor_ref_0076
.Lm_Skymu_Forms_WindowBase_ctor_ref_002e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_002f:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0034:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_003e:
    lea .LS_5_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0043:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0048:
.Lm_Skymu_Forms_WindowBase_ctor_ref_004d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Border_set_Background__ref
.Lm_Skymu_Forms_WindowBase_ctor_ref_0052:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0053:
    mov -40(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0058:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_005d:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0062:
    lea .LS_7_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0067:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_006c:
.Lm_Skymu_Forms_WindowBase_ctor_ref_0071:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Border_set_Background__ref
.Lm_Skymu_Forms_WindowBase_ctor_ref_0076:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0077:
    mov -32(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_WindowBase_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_007c:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_007d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Frame_Navigate__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_ctor_ref_0082:
    mov -32(%rbp), %rax
.Lm_Skymu_Forms_WindowBase_ctor_ref_0083:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_ctor__ref, .-m_Skymu_Forms_WindowBase_ctor__ref

.globl m_Skymu_Forms_WindowBase_get_HeaderText__void
.type m_Skymu_Forms_WindowBase_get_HeaderText__void, @function
m_Skymu_Forms_WindowBase_get_HeaderText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_HeaderText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderText_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_get_Text__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderText_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_HeaderText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_HeaderText__void, .-m_Skymu_Forms_WindowBase_get_HeaderText__void

.globl m_Skymu_Forms_WindowBase_set_HeaderText__ref
.type m_Skymu_Forms_WindowBase_set_HeaderText__ref, @function
m_Skymu_Forms_WindowBase_set_HeaderText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderText_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_HeaderText_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderText_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderText_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_WindowBase_set_HeaderText_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_HeaderText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_HeaderText__ref, .-m_Skymu_Forms_WindowBase_set_HeaderText__ref

.globl m_Skymu_Forms_WindowBase_get_HeaderIcon__void
.type m_Skymu_Forms_WindowBase_get_HeaderIcon__void, @function
m_Skymu_Forms_WindowBase_get_HeaderIcon__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_0000:
    call m_Skymu_Preferences_Settings_get_NikoIcons__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_0005:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_0013
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_0008:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_HeaderIcon_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_000d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_DefaultIndex__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_0012:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_0013:
    mov $30, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_0015:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_HeaderIcon_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_HeaderIcon__void, .-m_Skymu_Forms_WindowBase_get_HeaderIcon__void

.globl m_Skymu_Forms_WindowBase_set_HeaderIcon__v
.type m_Skymu_Forms_WindowBase_set_HeaderIcon__v, @function
m_Skymu_Forms_WindowBase_set_HeaderIcon__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_HeaderIcon_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_0006:
    call m_Skymu_Preferences_Settings_get_NikoIcons__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_000b:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_0010
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_000d:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_000e:
    jmp .Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_0012
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_0010:
    mov $30, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_0012:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_DefaultIndex__i4
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_HeaderIcon_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_HeaderIcon__v, .-m_Skymu_Forms_WindowBase_set_HeaderIcon__v

.globl m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText__void
.type m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText__void, @function
m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_get_Content__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText_void_000b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText__void, .-m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText__void

.globl m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText__ref
.type m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText__ref, @function
m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText__ref, .-m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText__ref

.globl m_Skymu_Forms_WindowBase_get_ButtonLeftText__void
.type m_Skymu_Forms_WindowBase_get_ButtonLeftText__void, @function
m_Skymu_Forms_WindowBase_get_ButtonLeftText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonLeftText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftText_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_get_Content__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftText_void_000b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftText_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonLeftText__void, .-m_Skymu_Forms_WindowBase_get_ButtonLeftText__void

.globl m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref
.type m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref, @function
m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftText_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonLeftText_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftText_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftText_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftText_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref, .-m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref

.globl m_Skymu_Forms_WindowBase_get_ButtonMiddleText__void
.type m_Skymu_Forms_WindowBase_get_ButtonMiddleText__void, @function
m_Skymu_Forms_WindowBase_get_ButtonMiddleText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonMiddleText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleText_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_get_Content__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleText_void_000b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleText_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonMiddleText__void, .-m_Skymu_Forms_WindowBase_get_ButtonMiddleText__void

.globl m_Skymu_Forms_WindowBase_set_ButtonMiddleText__ref
.type m_Skymu_Forms_WindowBase_set_ButtonMiddleText__ref, @function
m_Skymu_Forms_WindowBase_set_ButtonMiddleText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleText_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonMiddleText_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleText_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleText_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleText_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonMiddleText__ref, .-m_Skymu_Forms_WindowBase_set_ButtonMiddleText__ref

.globl m_Skymu_Forms_WindowBase_get_ButtonRightText__void
.type m_Skymu_Forms_WindowBase_get_ButtonRightText__void, @function
m_Skymu_Forms_WindowBase_get_ButtonRightText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonRightText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonRightText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonRightText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonRightText_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_get_Content__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonRightText_void_000b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonRightText_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonRightText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonRightText__void, .-m_Skymu_Forms_WindowBase_get_ButtonRightText__void

.globl m_Skymu_Forms_WindowBase_set_ButtonRightText__ref
.type m_Skymu_Forms_WindowBase_set_ButtonRightText__ref, @function
m_Skymu_Forms_WindowBase_set_ButtonRightText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonRightText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonRightText_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonRightText_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonRightText_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonRightText_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Forms_WindowBase_set_ButtonRightText_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonRightText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonRightText__ref, .-m_Skymu_Forms_WindowBase_set_ButtonRightText__ref

.globl m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction__void
.type m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction__void, @function
m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction__void, .-m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction__void

.globl m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction__ref
.type m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction__ref, @function
m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction__ref, .-m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction__ref

.globl m_Skymu_Forms_WindowBase_get_ButtonLeftAction__void
.type m_Skymu_Forms_WindowBase_get_ButtonLeftAction__void, @function
m_Skymu_Forms_WindowBase_get_ButtonLeftAction__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftAction_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftAction_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonLeftAction_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftAction_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonLeftAction_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonLeftAction__void, .-m_Skymu_Forms_WindowBase_get_ButtonLeftAction__void

.globl m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref
.type m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref, @function
m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftAction_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftAction_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftAction_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonLeftAction_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftAction_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonLeftAction_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref, .-m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref

.globl m_Skymu_Forms_WindowBase_get_ButtonMiddleAction__void
.type m_Skymu_Forms_WindowBase_get_ButtonMiddleAction__void, @function
m_Skymu_Forms_WindowBase_get_ButtonMiddleAction__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleAction_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleAction_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonMiddleAction_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleAction_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleAction_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonMiddleAction__void, .-m_Skymu_Forms_WindowBase_get_ButtonMiddleAction__void

.globl m_Skymu_Forms_WindowBase_set_ButtonMiddleAction__ref
.type m_Skymu_Forms_WindowBase_set_ButtonMiddleAction__ref, @function
m_Skymu_Forms_WindowBase_set_ButtonMiddleAction__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleAction_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleAction_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleAction_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonMiddleAction_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleAction_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleAction_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonMiddleAction__ref, .-m_Skymu_Forms_WindowBase_set_ButtonMiddleAction__ref

.globl m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled__void
.type m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled__void, @function
m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Visibility__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void_000b:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void_000c:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled__void, .-m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled__void

.globl m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled__v
.type m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled__v, @function
m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_000c
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_0009:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_000a:
    jmp .Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_000d
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_000c:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_000d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled__v, .-m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled__v

.globl m_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled__void
.type m_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled__void, @function
m_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Visibility__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void_000b:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void_000c:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled__void, .-m_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled__void

.globl m_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled__v
.type m_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled__v, @function
m_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_000c
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_0009:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_000a:
    jmp .Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_000d
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_000c:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_000d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled__v, .-m_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled__v

.globl m_Skymu_Forms_WindowBase_get_ButtonRightAction__void
.type m_Skymu_Forms_WindowBase_get_ButtonRightAction__void, @function
m_Skymu_Forms_WindowBase_get_ButtonRightAction__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonRightAction_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonRightAction_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_get_ButtonRightAction_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_get_ButtonRightAction_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_get_ButtonRightAction_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_get_ButtonRightAction__void, .-m_Skymu_Forms_WindowBase_get_ButtonRightAction__void

.globl m_Skymu_Forms_WindowBase_set_ButtonRightAction__ref
.type m_Skymu_Forms_WindowBase_set_ButtonRightAction__ref, @function
m_Skymu_Forms_WindowBase_set_ButtonRightAction__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonRightAction_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonRightAction_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_set_ButtonRightAction_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_set_ButtonRightAction_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_set_ButtonRightAction_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_set_ButtonRightAction_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_set_ButtonRightAction__ref, .-m_Skymu_Forms_WindowBase_set_ButtonRightAction__ref

.globl m_Skymu_Forms_WindowBase_bELClick__ref_ref
.type m_Skymu_Forms_WindowBase_bELClick__ref_ref, @function
m_Skymu_Forms_WindowBase_bELClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_bELClick_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_bELClick_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_bELClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_bELClick_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_Invoke__void
.Lm_Skymu_Forms_WindowBase_bELClick_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_bELClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_bELClick__ref_ref, .-m_Skymu_Forms_WindowBase_bELClick__ref_ref

.globl m_Skymu_Forms_WindowBase_bLClick__ref_ref
.type m_Skymu_Forms_WindowBase_bLClick__ref_ref, @function
m_Skymu_Forms_WindowBase_bLClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_bLClick_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_bLClick_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_bLClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_bLClick_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_Invoke__void
.Lm_Skymu_Forms_WindowBase_bLClick_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_bLClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_bLClick__ref_ref, .-m_Skymu_Forms_WindowBase_bLClick__ref_ref

.globl m_Skymu_Forms_WindowBase_bMClick__ref_ref
.type m_Skymu_Forms_WindowBase_bMClick__ref_ref, @function
m_Skymu_Forms_WindowBase_bMClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_bMClick_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_bMClick_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_bMClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_bMClick_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_Invoke__void
.Lm_Skymu_Forms_WindowBase_bMClick_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_bMClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_bMClick__ref_ref, .-m_Skymu_Forms_WindowBase_bMClick__ref_ref

.globl m_Skymu_Forms_WindowBase_bRClick__ref_ref
.type m_Skymu_Forms_WindowBase_bRClick__ref_ref, @function
m_Skymu_Forms_WindowBase_bRClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_bRClick_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_bRClick_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_bRClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_bRClick_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_Invoke__void
.Lm_Skymu_Forms_WindowBase_bRClick_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_bRClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_bRClick__ref_ref, .-m_Skymu_Forms_WindowBase_bRClick__ref_ref

.globl m_Skymu_Forms_WindowBase_InitializeComponent__void
.type m_Skymu_Forms_WindowBase_InitializeComponent__void, @function
m_Skymu_Forms_WindowBase_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0009
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_WindowBase_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_WindowBase_InitializeComponent_void(%rip), %rdi
    mov $38, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_WindowBase_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_InitializeComponent__void, .-m_Skymu_Forms_WindowBase_InitializeComponent__void

.globl m_Skymu_Forms_WindowBase_CreateDelegate__ref_ref
.type m_Skymu_Forms_WindowBase_CreateDelegate__ref_ref, @function
m_Skymu_Forms_WindowBase_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_CreateDelegate__ref_ref, .-m_Skymu_Forms_WindowBase_CreateDelegate__ref_ref

.globl m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003d
    cmp $1, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004a
    cmp $2, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0057
    cmp $3, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0064
    cmp $4, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0071
    cmp $5, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007e
    cmp $6, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a2
    cmp $7, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00af
    cmp $8, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bc
    cmp $9, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c9
    cmp $10, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ed
    cmp $11, %eax
    je .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0111
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0038:
    jmp .Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0135
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003f:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0044:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0049:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004c:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0051:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0056:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0057:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0058:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0059:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0063:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0064:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0065:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0066:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0070:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0071:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0072:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0073:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0078:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0080:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0085:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008b:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0090:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0091:
    lea m_Skymu_Forms_WindowBase_bELClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0097:
    lea .LN_7_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a4:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ae:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00af:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b1:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bd:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00be:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ca:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cb:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d5:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d6:
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00db:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dc:
    lea m_Skymu_Forms_WindowBase_bLClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e2:
    lea .LN_13_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e7:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ec:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ed:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ee:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ef:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f9:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fa:
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ff:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0100:
    lea m_Skymu_Forms_WindowBase_bMClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0106:
    lea .LN_16_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0110:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0111:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0112:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0113:
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0118:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011e:
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0123:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0124:
    lea m_Skymu_Forms_WindowBase_bRClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012a:
    lea .LN_19_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0134:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0135:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0136:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0137:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_20_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect__i4_ref

    .globl m_Skymu_Forms_WindowBase_OnContentRendered__ref
    .type m_Skymu_Forms_WindowBase_OnContentRendered__ref, @function
m_Skymu_Forms_WindowBase_OnContentRendered__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_WindowBase_OnContentRendered_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_WindowBase_OnContentRendered__ref, .-m_Skymu_Forms_WindowBase_OnContentRendered__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_WindowBase_ctor_ref:
    .asciz "Theme"

.LS_1_m_Skymu_Forms_WindowBase_ctor_ref:
    .short 83, 107, 121, 112, 101, 55

.LN_2_m_Skymu_Forms_WindowBase_ctor_ref:
    .asciz "Theme"

.LS_3_m_Skymu_Forms_WindowBase_ctor_ref:
    .short 83, 107, 121, 112, 101, 54

.LN_4_m_Skymu_Forms_WindowBase_ctor_ref:
    .asciz "GradientTop"

.LS_5_m_Skymu_Forms_WindowBase_ctor_ref:
    .short 77, 101, 116, 114, 111, 46, 83, 116, 114, 105, 112, 46, 66, 97, 99, 107, 103, 114, 111, 117, 110, 100

.LN_6_m_Skymu_Forms_WindowBase_ctor_ref:
    .asciz "GradientBottom"

.LS_7_m_Skymu_Forms_WindowBase_ctor_ref:
    .short 77, 101, 116, 114, 111, 46, 83, 116, 114, 105, 112, 46, 66, 97, 99, 107, 103, 114, 111, 117, 110, 100

.LN_8_m_Skymu_Forms_WindowBase_ctor_ref:
    .asciz "PageHost"

.LN_0_m_Skymu_Forms_WindowBase_get_HeaderText_void:
    .asciz "Header"

.LN_0_m_Skymu_Forms_WindowBase_set_HeaderText_ref:
    .asciz "Header"

.LN_0_m_Skymu_Forms_WindowBase_get_HeaderIcon_void:
    .asciz "HeaderImage"

.LN_0_m_Skymu_Forms_WindowBase_set_HeaderIcon_v:
    .asciz "HeaderImage"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftText_void:
    .asciz "ButtonEdgeLeft"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftText_ref:
    .asciz "ButtonEdgeLeft"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonLeftText_void:
    .asciz "ButtonLeft"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonLeftText_ref:
    .asciz "ButtonLeft"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonMiddleText_void:
    .asciz "ButtonMiddle"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonMiddleText_ref:
    .asciz "ButtonMiddle"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonRightText_void:
    .asciz "ButtonRight"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonRightText_ref:
    .asciz "ButtonRight"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftAction_void:
    .asciz "BELAction"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftAction_ref:
    .asciz "BELAction"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonLeftAction_void:
    .asciz "BLAction"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonLeftAction_ref:
    .asciz "BLAction"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonMiddleAction_void:
    .asciz "BMAction"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonMiddleAction_ref:
    .asciz "BMAction"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonEdgeLeftEnabled_void:
    .asciz "ButtonEdgeLeft"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonEdgeLeftEnabled_v:
    .asciz "ButtonEdgeLeft"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonMiddleEnabled_void:
    .asciz "ButtonMiddle"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonMiddleEnabled_v:
    .asciz "ButtonMiddle"

.LN_0_m_Skymu_Forms_WindowBase_get_ButtonRightAction_void:
    .asciz "BRAction"

.LN_0_m_Skymu_Forms_WindowBase_set_ButtonRightAction_ref:
    .asciz "BRAction"

.LN_0_m_Skymu_Forms_WindowBase_bELClick_ref_ref:
    .asciz "BELAction"

.LN_0_m_Skymu_Forms_WindowBase_bLClick_ref_ref:
    .asciz "BLAction"

.LN_0_m_Skymu_Forms_WindowBase_bMClick_ref_ref:
    .asciz "BMAction"

.LN_0_m_Skymu_Forms_WindowBase_bRClick_ref_ref:
    .asciz "BRAction"

.LN_0_m_Skymu_Forms_WindowBase_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_WindowBase_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_WindowBase_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 119, 105, 110, 100, 111, 119, 98, 97, 115, 101, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_WindowBase_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HeaderImage"

.LN_1_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GradientTop"

.LN_2_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Header"

.LN_3_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PageHost"

.LN_4_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GradientBottom"

.LN_5_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ButtonEdgeLeft"

.LN_6_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ButtonEdgeLeft"

.LN_7_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_8_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BottomControlsGrid"

.LN_9_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BBTextBox"

.LN_10_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BBCheckBox"

.LN_11_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ButtonLeft"

.LN_12_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ButtonLeft"

.LN_13_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_14_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ButtonMiddle"

.LN_15_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ButtonMiddle"

.LN_16_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_17_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ButtonRight"

.LN_18_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ButtonRight"

.LN_19_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_20_m_Skymu_Forms_WindowBase_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LSTUB_m_Skymu_Forms_WindowBase_OnContentRendered_ref:
    .asciz "Skymu.Forms.WindowBase::OnContentRendered  [floating-point 'sub']"

    .section .note.GNU-stack,"",@progbits
