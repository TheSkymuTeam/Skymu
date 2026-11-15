# Themes/Skype4/Login.xaml.cs
    .text

.globl m_Skymu_Skype4_Login_c_cctor__void
.type m_Skymu_Skype4_Login_c_cctor__void, @function
m_Skymu_Skype4_Login_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Skype4_Login_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Skype4_Login_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype4_Login_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Skype4_Login_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Skype4_Login_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Skype4_Login_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Login_c_cctor__void, .-m_Skymu_Skype4_Login_c_cctor__void

.globl m_Skymu_Skype4_Login_c_ctor__void
.type m_Skymu_Skype4_Login_c_ctor__void, @function
m_Skymu_Skype4_Login_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Login_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Login_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype4_Login_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Login_c_ctor__void, .-m_Skymu_Skype4_Login_c_ctor__void

.globl m_Skymu_Skype4_Login_c_ctor_b_0_0__void
.type m_Skymu_Skype4_Login_c_ctor_b_0_0__void, @function
m_Skymu_Skype4_Login_c_ctor_b_0_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Login_c_ctor_b_0_0_void_0000:
    lea .LN_0_m_Skymu_Skype4_Login_c_ctor_b_0_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype4_Main_ctor__void
    mov %r12, -24(%rbp)
.Lm_Skymu_Skype4_Login_c_ctor_b_0_0_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_c_ctor_b_0_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Login_c_ctor_b_0_0__void, .-m_Skymu_Skype4_Login_c_ctor_b_0_0__void

.globl m_Skymu_Skype4_Login_ctor__ref
.type m_Skymu_Skype4_Login_ctor__ref, @function
m_Skymu_Skype4_Login_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0002:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_ctor__b
.Lm_Skymu_Skype4_Login_ctor_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0008:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype4_Login_InitializeComponent__void
.Lm_Skymu_Skype4_Login_ctor_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_000e:
    lea .LN_0_m_Skymu_Skype4_Login_ctor_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0013:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0014:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype4_Login_ctor_ref_002d
.Lm_Skymu_Skype4_Login_ctor_ref_0016:
    mov -32(%rbp), %rax
.Lm_Skymu_Skype4_Login_ctor_ref_0017:
    lea .LN_1_m_Skymu_Skype4_Login_ctor_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_001c:
    lea m_Skymu_Skype4_Login_c_ctor_b_0_0__void(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0022:
    lea .LN_2_m_Skymu_Skype4_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_IMainWindowHolder_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0027:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0028:
    lea .LN_3_m_Skymu_Skype4_Login_ctor_ref(%rip), %rdi
    call shim_global_slot
    mov -32(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Skype4_Login_ctor_ref_002d:
    lea .LN_4_m_Skymu_Skype4_Login_ctor_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_ViewModels_LoginViewModel_ctor__gen
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype4_Login_ctor_ref_0032:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_LoginWindowBase_InitializeLoginWindow__ref
.Lm_Skymu_Skype4_Login_ctor_ref_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Login_ctor__ref, .-m_Skymu_Skype4_Login_ctor__ref

.globl m_Skymu_Skype4_Login_InitializeComponent__void
.type m_Skymu_Skype4_Login_InitializeComponent__void, @function
m_Skymu_Skype4_Login_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Login_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype4_Login_InitializeComponent_void_0009
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Login_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Skype4_Login_InitializeComponent_void(%rip), %rdi
    mov $41, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Skype4_Login_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Skype4_Login_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Login_InitializeComponent__void, .-m_Skymu_Skype4_Login_InitializeComponent__void

.globl m_Skymu_Skype4_Login_CreateDelegate__ref_ref
.type m_Skymu_Skype4_Login_CreateDelegate__ref_ref, @function
m_Skymu_Skype4_Login_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Login_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Login_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Login_CreateDelegate__ref_ref, .-m_Skymu_Skype4_Login_CreateDelegate__ref_ref

.globl m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0051
    cmp $1, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005e
    cmp $2, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006b
    cmp $3, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0078
    cmp $4, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0085
    cmp $5, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0092
    cmp $6, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009f
    cmp $7, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c3
    cmp $8, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d0
    cmp $9, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dd
    cmp $10, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ea
    cmp $11, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f7
    cmp $12, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0104
    cmp $13, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011c
    cmp $14, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0129
    cmp $15, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0136
    cmp $16, %eax
    je .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0143
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004c:
    jmp .Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0150
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0051:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0052:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0053:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0058:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0060:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0065:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006d:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0072:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0077:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0078:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0079:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007a:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0084:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0085:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0086:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0087:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0091:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0092:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0093:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0094:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0099:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a1:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ab:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ac:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b2:
    lea m_Skymu_Theming_LoginWindowBase_ProtocolSelectionChanged__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b8:
    lea .LN_8_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_SelectionChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_Selector_add_SelectionChanged__ref
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c5:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ca:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cf:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d2:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00de:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00df:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ea:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00eb:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ec:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f9:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fe:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0103:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0104:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0105:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010b:
    lea m_Skymu_Theming_LoginWindowBase_Hyperlink_RequestNavigate__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0111:
    lea .LN_14_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Navigation_RequestNavigateEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0116:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Documents_Hyperlink_add_RequestNavigate__ref
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011e:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0123:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0128:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0129:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012b:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0130:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0135:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0136:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0137:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0138:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0142:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0143:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0144:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0145:
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0150:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0151:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0152:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0157:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Skype4_Login_c_cctor_void:
    .asciz "Skymu.Skype4.Login/'<>c'"

.LN_1_m_Skymu_Skype4_Login_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Skype4_Login_c_ctor_b_0_0_void:
    .asciz "Skymu.Skype4.Main"

.LN_0_m_Skymu_Skype4_Login_ctor_ref:
    .asciz "<>9__0_0"

.LN_1_m_Skymu_Skype4_Login_ctor_ref:
    .asciz "<>9"

.LN_2_m_Skymu_Skype4_Login_ctor_ref:
    .asciz "Skymu.ViewModels.IMainWindowHolder>"

.LN_3_m_Skymu_Skype4_Login_ctor_ref:
    .asciz "<>9__0_0"

.LN_4_m_Skymu_Skype4_Login_ctor_ref:
    .asciz "Skymu.ViewModels.LoginViewModel"

.LN_0_m_Skymu_Skype4_Login_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Skype4_Login_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Skype4_Login_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 116, 104, 101, 109, 101, 115, 47, 115, 107, 121, 112, 101, 52, 47, 108, 111, 103, 105, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Skype4_Login_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MenuBarRow"

.LN_1_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Spinner"

.LN_2_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SpinnerRotate"

.LN_3_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "header"

.LN_4_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LoginControls"

.LN_5_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProtocolText"

.LN_6_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProtocolComboBox"

.LN_7_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProtocolComboBox"

.LN_8_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.SelectionChangedEventHandler"

.LN_9_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeName"

.LN_10_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "UsernameBox"

.LN_11_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PasswordLabel"

.LN_12_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PasswordTokenBox"

.LN_13_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ForgotPasswordLink"

.LN_14_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Navigation.RequestNavigateEventHandler"

.LN_15_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LoginButton"

.LN_16_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FooterPanel"

.LN_17_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SaveCredentials"

.LN_18_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StartOnWinStart"

.LN_19_m_Skymu_Skype4_Login_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

    .section .note.GNU-stack,"",@progbits
