# Forms/IncomingCall.xaml.cs
    .text

.globl m_Skymu_Forms_IncomingCall_OnClose__ref_ref
.type m_Skymu_Forms_IncomingCall_OnClose__ref_ref, @function
m_Skymu_Forms_IncomingCall_OnClose__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnClose_ref_ref_0000:
    lea .LS_0_m_Skymu_Forms_IncomingCall_OnClose_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnClose_ref_ref_0005:
    mov -40(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_Forms_IncomingCall_OnClose_ref_ref_000a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnClose_ref_ref_000b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_IncomingCall_OnClose_ref_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_OnClose_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_IncomingCall_OnClose__ref_ref, .-m_Skymu_Forms_IncomingCall_OnClose__ref_ref

.globl m_Skymu_Forms_IncomingCall_OnAnswer__ref_ref
.type m_Skymu_Forms_IncomingCall_OnAnswer__ref_ref, @function
m_Skymu_Forms_IncomingCall_OnAnswer__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_IncomingCall_OnAnswer_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_000c
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0009:
    mov -32(%rbp), %rax
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_000a:
    jmp .Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0017
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_000d:
    lea .LN_1_m_Skymu_Forms_IncomingCall_OnAnswer_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_EventArgs_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0012:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventHandler_Invoke__ref_ref
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0017:
    lea .LS_2_m_Skymu_Forms_IncomingCall_OnAnswer_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_001c:
    mov -40(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0021:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0022:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_0027:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_OnAnswer_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_IncomingCall_OnAnswer__ref_ref, .-m_Skymu_Forms_IncomingCall_OnAnswer__ref_ref

.globl m_Skymu_Forms_IncomingCall_OnDrag__ref_ref
.type m_Skymu_Forms_IncomingCall_OnDrag__ref_ref, @function
m_Skymu_Forms_IncomingCall_OnDrag__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_RoutedEventArgs_get_OriginalSource__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0006:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_000b:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_000c:
    jmp .Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0037
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_000e:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0014:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0015:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0016:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0030
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0018:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0019:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Tag__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_001e:
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0023:
    lea .LS_0_m_Skymu_Forms_IncomingCall_OnDrag_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0028:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_002d:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0030
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_002f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0030:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0031:
    mov -80(%rbp), %rdi
    call m_System_Windows_Media_VisualTreeHelper_GetParent__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0036:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0037:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0038:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_000e
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_003a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_003b:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_DragMove__void
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_0040:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_OnDrag_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_IncomingCall_OnDrag__ref_ref, .-m_Skymu_Forms_IncomingCall_OnDrag__ref_ref

.globl m_Skymu_Forms_IncomingCall_OnDecline__ref_ref
.type m_Skymu_Forms_IncomingCall_OnDecline__ref_ref, @function
m_Skymu_Forms_IncomingCall_OnDecline__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_0000:
    lea .LS_0_m_Skymu_Forms_IncomingCall_OnDecline_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_0005:
    mov -40(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_StopPlayback__ref
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_000a:
    lea .LN_1_m_Skymu_Forms_IncomingCall_OnDecline_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_000f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_0010:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_IncomingCall_OnDecline_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_0015:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_CallBottle_get_Caller__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_001a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_DeclineCall__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_001f:
    mov -40(%rbp), %rax
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_0020:
    lea .LS_3_m_Skymu_Forms_IncomingCall_OnDecline_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_0025:
    mov -40(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_Play__ref
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_002a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_002b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_0030:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_OnDecline_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_IncomingCall_OnDecline__ref_ref, .-m_Skymu_Forms_IncomingCall_OnDecline__ref_ref

.globl m_Skymu_Forms_IncomingCall_InitializeComponent__void
.type m_Skymu_Forms_IncomingCall_InitializeComponent__void, @function
m_Skymu_Forms_IncomingCall_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_IncomingCall_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0009
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_IncomingCall_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_IncomingCall_InitializeComponent_void(%rip), %rdi
    mov $40, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_IncomingCall_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_IncomingCall_InitializeComponent__void, .-m_Skymu_Forms_IncomingCall_InitializeComponent__void

.globl m_Skymu_Forms_IncomingCall_CreateDelegate__ref_ref
.type m_Skymu_Forms_IncomingCall_CreateDelegate__ref_ref, @function
m_Skymu_Forms_IncomingCall_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_IncomingCall_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_IncomingCall_CreateDelegate__ref_ref, .-m_Skymu_Forms_IncomingCall_CreateDelegate__ref_ref

.globl m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001e
    cmp $1, %eax
    je .Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0036
    cmp $2, %eax
    je .Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0043
    cmp $3, %eax
    je .Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0050
    cmp $4, %eax
    je .Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005d
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001c:
    jmp .Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006a
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001f:
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0024:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0025:
    lea m_Skymu_Forms_IncomingCall_OnDrag__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002b:
    lea .LN_0_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0030:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0035:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0036:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0037:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0038:
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0042:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0043:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0044:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0045:
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0050:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0051:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0052:
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0057:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005f:
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0064:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0069:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006b:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0071:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect__i4_ref

    .globl m_Skymu_Forms_IncomingCall_ctor__ref
    .type m_Skymu_Forms_IncomingCall_ctor__ref, @function
m_Skymu_Forms_IncomingCall_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_IncomingCall_ctor_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_IncomingCall_ctor__ref, .-m_Skymu_Forms_IncomingCall_ctor__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_Forms_IncomingCall_OnClose_ref_ref:
    .short 67, 65, 76, 76, 95, 73, 78

.LN_0_m_Skymu_Forms_IncomingCall_OnAnswer_ref_ref:
    .asciz "Answered"

.LN_1_m_Skymu_Forms_IncomingCall_OnAnswer_ref_ref:
    .asciz "System.EventArgs"

.LS_2_m_Skymu_Forms_IncomingCall_OnAnswer_ref_ref:
    .short 67, 65, 76, 76, 95, 73, 78

.LS_0_m_Skymu_Forms_IncomingCall_OnDrag_ref_ref:
    .short 78, 111, 68, 114, 97, 103

.LS_0_m_Skymu_Forms_IncomingCall_OnDecline_ref_ref:
    .short 67, 65, 76, 76, 95, 73, 78

.LN_1_m_Skymu_Forms_IncomingCall_OnDecline_ref_ref:
    .asciz "CallPlugin"

.LN_2_m_Skymu_Forms_IncomingCall_OnDecline_ref_ref:
    .asciz "_call"

.LS_3_m_Skymu_Forms_IncomingCall_OnDecline_ref_ref:
    .short 72, 65, 78, 71, 85, 80

.LN_0_m_Skymu_Forms_IncomingCall_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_IncomingCall_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_IncomingCall_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 105, 110, 99, 111, 109, 105, 110, 103, 99, 97, 108, 108, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_IncomingCall_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_1_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CallerAvatar"

.LN_2_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CallerName"

.LN_3_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Answer"

.LN_4_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Decline"

.LN_5_m_Skymu_Forms_IncomingCall_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LSTUB_m_Skymu_Forms_IncomingCall_ctor_ref:
    .asciz "Skymu.Forms.IncomingCall::.ctor  [stack underflow at IL_0039 (dup): depth 0 < pops 1]"

    .section .note.GNU-stack,"",@progbits
