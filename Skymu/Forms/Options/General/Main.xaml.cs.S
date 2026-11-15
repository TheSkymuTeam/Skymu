# Forms/Options/General/Main.xaml.cs
    .text

.globl m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor__void
.type m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor__void, @function
m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor__void, .-m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_ctor__void

.globl m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0__void
.type m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0__void, @function
m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0__void, .-m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0__void

.globl m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1__void
.type m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1__void, @function
m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_000b:
    call m_System_Diagnostics_Process_GetCurrentProcess__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_0010:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_Process_get_MainModule__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_0015:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_ProcessModule_get_FileName__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_001a:
    mov -24(%rbp), %rdi
    call m_System_Diagnostics_Process_Start__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_001f:
    mov -24(%rbp), %rax
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_0020:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_0025:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_Shutdown__void
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1__void, .-m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1__void

.globl m_Skymu_Forms_OptionPages_General_Main_ctor__void
.type m_Skymu_Forms_OptionPages_General_Main_ctor__void, @function
m_Skymu_Forms_OptionPages_General_Main_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_ctor__void
.Lm_Skymu_Forms_OptionPages_General_Main_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_ctor_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_OptionPages_General_Main_InitializeComponent__void
.Lm_Skymu_Forms_OptionPages_General_Main_ctor_void_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Main_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Main_ctor__void, .-m_Skymu_Forms_OptionPages_General_Main_ctor__void

.globl m_Skymu_Forms_OptionPages_General_Main_InitializeComponent__void
.type m_Skymu_Forms_OptionPages_General_Main_InitializeComponent__void, @function
m_Skymu_Forms_OptionPages_General_Main_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0009
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void(%rip), %rdi
    mov $48, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Main_InitializeComponent__void, .-m_Skymu_Forms_OptionPages_General_Main_InitializeComponent__void

.globl m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001c
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0004:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0005:
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_000a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_000b:
    lea m_Skymu_Forms_OptionPages_General_Main_OnLanguageSelectionChanged__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0011:
    lea .LN_0_m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_SelectionChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0016:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_add_SelectionChanged__ref
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001d:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001e:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref

    .globl m_Skymu_Forms_OptionPages_General_Main_OnLanguageSelectionChanged__ref_ref
    .type m_Skymu_Forms_OptionPages_General_Main_OnLanguageSelectionChanged__ref_ref, @function
m_Skymu_Forms_OptionPages_General_Main_OnLanguageSelectionChanged__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_OptionPages_General_Main_OnLanguageSelectionChanged_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_OptionPages_General_Main_OnLanguageSelectionChanged__ref_ref, .-m_Skymu_Forms_OptionPages_General_Main_OnLanguageSelectionChanged__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_0_void:
    .asciz "dialog"

.LN_0_m_Skymu_Forms_OptionPages_General_Main_c_DisplayClass1_0_OnLanguageSelectionChanged_b_1_void:
    .asciz "dialog"

.LN_0_m_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 111, 112, 116, 105, 111, 110, 115, 47, 103, 101, 110, 101, 114, 97, 108, 47, 109, 97, 105, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_OptionPages_General_Main_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.SelectionChangedEventHandler"

.LN_1_m_Skymu_Forms_OptionPages_General_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LSTUB_m_Skymu_Forms_OptionPages_General_Main_OnLanguageSelectionChanged_ref_ref:
    .asciz "Skymu.Forms.OptionPages.General.Main::OnLanguageSelectionChanged  [constructor with 17 arguments (limit 5)]"

    .section .note.GNU-stack,"",@progbits
