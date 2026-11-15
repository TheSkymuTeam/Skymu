# Forms/About.xaml.cs
    .text

.globl m_Skymu_Forms_About_ctor__void
.type m_Skymu_Forms_About_ctor__void, @function
m_Skymu_Forms_About_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_ctor__void
.Lm_Skymu_Forms_About_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_About_InitializeComponent__void
.Lm_Skymu_Forms_About_ctor_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_ctor_void_000d:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_About_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0012:
    lea .LN_1_m_Skymu_Forms_About_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0017:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0018:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_GetVersionString__b
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_void_001d:
    lea .LS_2_m_Skymu_Forms_About_ctor_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0022:
    lea .LN_3_m_Skymu_Forms_About_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0027:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_GetCodeName__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_About_ctor_void_002c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0031:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_About_ctor_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0038:
    lea m_Skymu_Forms_About_ctor_b_1_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_ctor_void_003e:
    lea .LN_4_m_Skymu_Forms_About_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0043:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_PreviewMouseDown__ref
.Lm_Skymu_Forms_About_ctor_void_0048:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_void_004a:
    lea m_Skymu_Forms_About_ctor_b_1_1__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0050:
    lea .LN_5_m_Skymu_Forms_About_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_void_0055:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_add_Deactivated__ref
.Lm_Skymu_Forms_About_ctor_void_005a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_About_ctor__void, .-m_Skymu_Forms_About_ctor__void

.globl m_Skymu_Forms_About_RequestClose__void
.type m_Skymu_Forms_About_RequestClose__void, @function
m_Skymu_Forms_About_RequestClose__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_About_RequestClose_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_RequestClose_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_About_RequestClose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_RequestClose_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_About_RequestClose_void_0009
.Lm_Skymu_Forms_About_RequestClose_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_RequestClose_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_RequestClose_void_000a:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_RequestClose_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_About_RequestClose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_About_RequestClose_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_RequestClose_void_0011:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_About_RequestClose_void_0016:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_RequestClose_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_About_RequestClose__void, .-m_Skymu_Forms_About_RequestClose__void

.globl m_Skymu_Forms_About_InitializeComponent__void
.type m_Skymu_Forms_About_InitializeComponent__void, @function
m_Skymu_Forms_About_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_About_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_About_InitializeComponent_void_0009
.Lm_Skymu_Forms_About_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_About_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_About_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_About_InitializeComponent_void(%rip), %rdi
    mov $33, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_About_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_About_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_About_InitializeComponent__void, .-m_Skymu_Forms_About_InitializeComponent__void

.globl m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0011
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0004:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0005:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0006:
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_000b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0012:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0013:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Forms_About_ctor_b_1_0__ref_ref
.type m_Skymu_Forms_About_ctor_b_1_0__ref_ref, @function
m_Skymu_Forms_About_ctor_b_1_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_b_1_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_ctor_b_1_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_About_RequestClose__void
.Lm_Skymu_Forms_About_ctor_b_1_0_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_ctor_b_1_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_About_ctor_b_1_0__ref_ref, .-m_Skymu_Forms_About_ctor_b_1_0__ref_ref

.globl m_Skymu_Forms_About_ctor_b_1_1__ref_ref
.type m_Skymu_Forms_About_ctor_b_1_1__ref_ref, @function
m_Skymu_Forms_About_ctor_b_1_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_About_ctor_b_1_1_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_About_ctor_b_1_1_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_About_RequestClose__void
.Lm_Skymu_Forms_About_ctor_b_1_1_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_About_ctor_b_1_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_About_ctor_b_1_1__ref_ref, .-m_Skymu_Forms_About_ctor_b_1_1__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_About_ctor_void:
    .asciz "BuildVersion"

.LN_1_m_Skymu_Forms_About_ctor_void:
    .asciz "BUILD_INFO"

.LS_2_m_Skymu_Forms_About_ctor_void:
    .short 32

.LN_3_m_Skymu_Forms_About_ctor_void:
    .asciz "BUILD_INFO"

.LN_4_m_Skymu_Forms_About_ctor_void:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_5_m_Skymu_Forms_About_ctor_void:
    .asciz "System.EventHandler"

.LN_0_m_Skymu_Forms_About_RequestClose_void:
    .asciz "_closing"

.LN_1_m_Skymu_Forms_About_RequestClose_void:
    .asciz "_closing"

.LN_0_m_Skymu_Forms_About_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_About_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_About_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 97, 98, 111, 117, 116, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_About_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BuildVersion"

.LN_1_m_Skymu_Forms_About_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

    .section .note.GNU-stack,"",@progbits
