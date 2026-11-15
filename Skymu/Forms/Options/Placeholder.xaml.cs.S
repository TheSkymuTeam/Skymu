# Forms/Options/Placeholder.xaml.cs
    .text

.globl m_Skymu_Forms_OptionPages_Placeholder_ctor__void
.type m_Skymu_Forms_OptionPages_Placeholder_ctor__void, @function
m_Skymu_Forms_OptionPages_Placeholder_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_ctor__void
.Lm_Skymu_Forms_OptionPages_Placeholder_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_ctor_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent__void
.Lm_Skymu_Forms_OptionPages_Placeholder_ctor_void_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Placeholder_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_Placeholder_ctor__void, .-m_Skymu_Forms_OptionPages_Placeholder_ctor__void

.globl m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent__void
.type m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent__void, @function
m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0009
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void(%rip), %rdi
    mov $47, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent__void, .-m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent__void

.globl m_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 111, 112, 116, 105, 111, 110, 115, 47, 112, 108, 97, 99, 101, 104, 111, 108, 100, 101, 114, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_OptionPages_Placeholder_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_OptionPages_Placeholder_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

    .section .note.GNU-stack,"",@progbits
