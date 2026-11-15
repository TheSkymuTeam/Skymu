# UserControls/QuickLTB.xaml.cs
    .text

.globl m_Skymu_UserControls_QuickLTB_get_Key__void
.type m_Skymu_UserControls_QuickLTB_get_Key__void, @function
m_Skymu_UserControls_QuickLTB_get_Key__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_UserControls_QuickLTB_get_Key_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_get_Key_void_0001:
    lea .LN_0_m_Skymu_UserControls_QuickLTB_get_Key_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_get_Key_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_get_Key_void_000b:
.Lm_Skymu_UserControls_QuickLTB_get_Key_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_get_Key_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_get_Key__void, .-m_Skymu_UserControls_QuickLTB_get_Key__void

.globl m_Skymu_UserControls_QuickLTB_set_Key__ref
.type m_Skymu_UserControls_QuickLTB_set_Key__ref, @function
m_Skymu_UserControls_QuickLTB_set_Key__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_set_Key_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_set_Key_ref_0001:
    lea .LN_0_m_Skymu_UserControls_QuickLTB_set_Key_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_set_Key_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_UserControls_QuickLTB_set_Key_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_UserControls_QuickLTB_set_Key_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_set_Key_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_set_Key__ref, .-m_Skymu_UserControls_QuickLTB_set_Key__ref

.globl m_Skymu_UserControls_QuickLTB_get_Bindings__void
.type m_Skymu_UserControls_QuickLTB_get_Bindings__void, @function
m_Skymu_UserControls_QuickLTB_get_Bindings__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_UserControls_QuickLTB_get_Bindings_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_get_Bindings_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_UserControls_QuickLTB_get_Bindings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_get_Bindings_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_get_Bindings_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_get_Bindings__void, .-m_Skymu_UserControls_QuickLTB_get_Bindings__void

.globl m_Skymu_UserControls_QuickLTB_ctor__void
.type m_Skymu_UserControls_QuickLTB_ctor__void, @function
m_Skymu_UserControls_QuickLTB_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0001:
    lea .LN_0_m_Skymu_UserControls_QuickLTB_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Data_BindingBase_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_UserControls_QuickLTB_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_000c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UserControl_ctor__void
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0012:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_UserControls_QuickLTB_InitializeComponent__void
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0018:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_UserControls_QuickLTB_UpdateBinding__void
.Lm_Skymu_UserControls_QuickLTB_ctor_void_001d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_001e:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_UserControls_QuickLTB_get_Bindings__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0023:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0024:
    lea m_Skymu_UserControls_QuickLTB_ctor_b_7_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_002a:
    lea .LN_2_m_Skymu_UserControls_QuickLTB_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Collections_Specialized_NotifyCollectionChangedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_002f:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_BindingBase_add_CollectionChanged__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_void_0034:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_ctor__void, .-m_Skymu_UserControls_QuickLTB_ctor__void

.globl m_Skymu_UserControls_QuickLTB_OnKeyChange__ref_v
.type m_Skymu_UserControls_QuickLTB_OnKeyChange__ref_v, @function
m_Skymu_UserControls_QuickLTB_OnKeyChange__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_0007:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_0008:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_0010
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_000a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_000b:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_UserControls_QuickLTB_UpdateBinding__void
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_OnKeyChange_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_OnKeyChange__ref_v, .-m_Skymu_UserControls_QuickLTB_OnKeyChange__ref_v

.globl m_Skymu_UserControls_QuickLTB_UpdateBinding__void
.type m_Skymu_UserControls_QuickLTB_UpdateBinding__void, @function
m_Skymu_UserControls_QuickLTB_UpdateBinding__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0001:
    lea .LS_0_m_Skymu_UserControls_QuickLTB_UpdateBinding_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0006:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_FindResource__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_000b:
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0010:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0011:
    lea .LN_1_m_Skymu_UserControls_QuickLTB_UpdateBinding_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Data_MultiBinding_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0016:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0017:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0018:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_MultiBinding_set_Converter__ref
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_001d:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_001f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_UserControls_QuickLTB_get_Key__void
    mov %rax, -64(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0024:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_MultiBinding_set_ConverterParameter__ref
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0029:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_002a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_002b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_UserControls_QuickLTB_get_Bindings__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0030:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0067
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0032:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0033:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_UserControls_QuickLTB_get_Bindings__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0038:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_BindingBase_GetEnumerator__void
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_003d:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_003e:
    jmp .Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0053
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0040:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_BindingBase_get_Current__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0046:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0047:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0048:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_MultiBinding_get_Bindings__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_004d:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_004e:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_BindingBase_Add__gen
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0053:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0054:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0059:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0040
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_005b:
    jmp .Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0067
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0067:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0068:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_UserControls_QuickLTB_UpdateBinding_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_006d:
    lea .LN_3_m_Skymu_UserControls_QuickLTB_UpdateBinding_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0072:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0073:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_SetBinding__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0078:
    mov -56(%rbp), %rax
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_0079:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_UpdateBinding_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_UpdateBinding__void, .-m_Skymu_UserControls_QuickLTB_UpdateBinding__void

.globl m_Skymu_UserControls_QuickLTB_InitializeComponent__void
.type m_Skymu_UserControls_QuickLTB_InitializeComponent__void, @function
m_Skymu_UserControls_QuickLTB_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_UserControls_QuickLTB_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0009
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_UserControls_QuickLTB_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_UserControls_QuickLTB_InitializeComponent_void(%rip), %rdi
    mov $43, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_UserControls_QuickLTB_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_InitializeComponent__void, .-m_Skymu_UserControls_QuickLTB_InitializeComponent__void

.globl m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0011
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0004:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0005:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0006:
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_000b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0012:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0013:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_UserControls_QuickLTB_ctor_b_7_0__ref_ref
.type m_Skymu_UserControls_QuickLTB_ctor_b_7_0__ref_ref, @function
m_Skymu_UserControls_QuickLTB_ctor_b_7_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_b_7_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_UserControls_QuickLTB_ctor_b_7_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_UserControls_QuickLTB_UpdateBinding__void
.Lm_Skymu_UserControls_QuickLTB_ctor_b_7_0_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_UserControls_QuickLTB_ctor_b_7_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_UserControls_QuickLTB_ctor_b_7_0__ref_ref, .-m_Skymu_UserControls_QuickLTB_ctor_b_7_0__ref_ref

    .globl m_Skymu_UserControls_QuickLTB_cctor__void
    .type m_Skymu_UserControls_QuickLTB_cctor__void, @function
m_Skymu_UserControls_QuickLTB_cctor__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_UserControls_QuickLTB_cctor_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_UserControls_QuickLTB_cctor__void, .-m_Skymu_UserControls_QuickLTB_cctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_UserControls_QuickLTB_get_Key_void:
    .asciz "KeyProperty"

.LN_0_m_Skymu_UserControls_QuickLTB_set_Key_ref:
    .asciz "KeyProperty"

.LN_0_m_Skymu_UserControls_QuickLTB_get_Bindings_void:
    .asciz "<Bindings>k__BackingField"

.LN_0_m_Skymu_UserControls_QuickLTB_ctor_void:
    .asciz "System.Windows.Data.BindingBase>"

.LN_1_m_Skymu_UserControls_QuickLTB_ctor_void:
    .asciz "<Bindings>k__BackingField"

.LN_2_m_Skymu_UserControls_QuickLTB_ctor_void:
    .asciz "System.Collections.Specialized.NotifyCollectionChangedEventHandler"

.LS_0_m_Skymu_UserControls_QuickLTB_UpdateBinding_void:
    .short 83, 107, 121, 76, 97, 110, 103, 80, 97, 114, 115, 101, 67, 111, 110, 118, 101, 114, 116, 101, 114

.LN_1_m_Skymu_UserControls_QuickLTB_UpdateBinding_void:
    .asciz "System.Windows.Data.MultiBinding"

.LN_2_m_Skymu_UserControls_QuickLTB_UpdateBinding_void:
    .asciz "ContentCtrl"

.LN_3_m_Skymu_UserControls_QuickLTB_UpdateBinding_void:
    .asciz "ContentProperty"

.LN_0_m_Skymu_UserControls_QuickLTB_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_UserControls_QuickLTB_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_UserControls_QuickLTB_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 117, 115, 101, 114, 99, 111, 110, 116, 114, 111, 108, 115, 47, 113, 117, 105, 99, 107, 108, 116, 98, 46, 120, 97, 109, 108

.LN_3_m_Skymu_UserControls_QuickLTB_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContentCtrl"

.LN_1_m_Skymu_UserControls_QuickLTB_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LSTUB_m_Skymu_UserControls_QuickLTB_cctor_void:
    .asciz "Skymu.UserControls.QuickLTB::.cctor  [ldtoken (metadata token)]"

    .section .note.GNU-stack,"",@progbits
