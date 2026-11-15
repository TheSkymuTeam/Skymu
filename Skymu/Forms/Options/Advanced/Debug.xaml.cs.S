# Forms/Options/Advanced/Debug.xaml.cs
    .text

.globl m_Skymu_Forms_OptionPages_Advanced_Debug_ctor__void
.type m_Skymu_Forms_OptionPages_Advanced_Debug_ctor__void, @function
m_Skymu_Forms_OptionPages_Advanced_Debug_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_ctor__void
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_ctor_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent__void
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_ctor_void_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_Advanced_Debug_ctor__void, .-m_Skymu_Forms_OptionPages_Advanced_Debug_ctor__void

.globl m_Skymu_Forms_OptionPages_Advanced_Debug_OURL__ref_ref
.type m_Skymu_Forms_OptionPages_Advanced_Debug_OURL__ref_ref, @function
m_Skymu_Forms_OptionPages_Advanced_Debug_OURL__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_OURL_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_OURL_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Navigation_RequestNavigateEventArgs_get_Uri__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_OURL_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Uri_get_AbsoluteUri__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_OURL_ref_ref_000b:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_OURL_ref_ref_000c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_OURL_ref_ref_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_OURL_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_Advanced_Debug_OURL__ref_ref, .-m_Skymu_Forms_OptionPages_Advanced_Debug_OURL__ref_ref

.globl m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick__ref_ref
.type m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick__ref_ref, @function
m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0000:
    lea .LN_0_m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Forms_FolderBrowserDialog_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0006:
    lea .LS_1_m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_000b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_FolderBrowserDialog_set_Description__ref
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0010:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0011:
    call m_System_Environment_GetCommandLineArgs__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0016:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0017:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0018:
    mov -56(%rbp), %rdi
    call m_System_IO_Path_GetFullPath__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_001d:
    mov -56(%rbp), %rdi
    call m_System_IO_Path_GetDirectoryName__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0022:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_FolderBrowserDialog_set_SelectedPath__ref
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0027:
    mov -40(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0028:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0029:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_CommonDialog_ShowDialog__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_002e:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_002f:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0057
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0031:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0032:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_FolderBrowserDialog_get_SelectedPath__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0037:
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_CustomPluginPath__ref
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_003c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_003d:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0042:
    lea .LN_3_m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0047:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_GetBindingExpression__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_004c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_004d:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0052
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_004f:
    mov -40(%rbp), %rax
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0050:
    jmp .Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0057
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0052:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Data_BindingExpressionBase_UpdateTarget__void
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0057:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_0058:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_Component_Dispose__void
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_005d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick__ref_ref, .-m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick__ref_ref

.globl m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent__void
.type m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent__void, @function
m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0009
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void(%rip), %rdi
    mov $50, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent__void, .-m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent__void

.globl m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0016
    cmp $1, %eax
    je .Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0023
    cmp $2, %eax
    je .Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003b
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0014:
    jmp .Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0053
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0017:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0018:
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0024:
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0029:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002a:
    lea m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0030:
    lea .LN_1_m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003c:
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0041:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0042:
    lea m_Skymu_Forms_OptionPages_Advanced_Debug_OURL__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0048:
    lea .LN_2_m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Navigation_RequestNavigateEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_Hyperlink_add_RequestNavigate__ref
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0052:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0053:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0054:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0055:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref:
    .asciz "System.Windows.Forms.FolderBrowserDialog"

.LS_1_m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref:
    .short 83, 101, 108, 101, 99, 116, 32, 116, 104, 101, 32, 112, 108, 117, 103, 105, 110, 32, 102, 111, 108, 100, 101, 114

.LN_2_m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref:
    .asciz "PluginPathBox"

.LN_3_m_Skymu_Forms_OptionPages_Advanced_Debug_PluginPathBrowseClick_ref_ref:
    .asciz "TextProperty"

.LN_0_m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 111, 112, 116, 105, 111, 110, 115, 47, 97, 100, 118, 97, 110, 99, 101, 100, 47, 100, 101, 98, 117, 103, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_OptionPages_Advanced_Debug_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PluginPathBox"

.LN_1_m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_2_m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Navigation.RequestNavigateEventHandler"

.LN_3_m_Skymu_Forms_OptionPages_Advanced_Debug_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

    .section .note.GNU-stack,"",@progbits
