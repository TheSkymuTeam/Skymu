# UserControls/SliceControl.xaml.cs
    .text

.globl m_Skymu_SliceControl_c_cctor__void
.type m_Skymu_SliceControl_c_cctor__void, @function
m_Skymu_SliceControl_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_SliceControl_c_cctor_void_0000:
    lea .LN_0_m_Skymu_SliceControl_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_SliceControl_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_SliceControl_c_cctor_void_0005:
    lea .LN_1_m_Skymu_SliceControl_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_SliceControl_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_c_cctor__void, .-m_Skymu_SliceControl_c_cctor__void

.globl m_Skymu_SliceControl_c_ctor__void
.type m_Skymu_SliceControl_c_ctor__void, @function
m_Skymu_SliceControl_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_SliceControl_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_c_ctor__void, .-m_Skymu_SliceControl_c_ctor__void

.globl m_Skymu_SliceControl_c_DisplayClass196_0_ctor__void
.type m_Skymu_SliceControl_c_DisplayClass196_0_ctor__void, @function
m_Skymu_SliceControl_c_DisplayClass196_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_SliceControl_c_DisplayClass196_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_c_DisplayClass196_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_c_DisplayClass196_0_ctor__void, .-m_Skymu_SliceControl_c_DisplayClass196_0_ctor__void

.globl m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0__ref_ref
.type m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0__ref_ref, @function
m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0006:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_000c:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0011:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0014
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0015:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_001a:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_001f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0020:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0025:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_002a:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_002b:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0030:
    mov -72(%rbp), %rdi
    lea .LN_8_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0035:
    movsd .LD_9_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_003e:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_003f:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0040:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0045:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0046:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0047:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0048:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_004d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_004e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0053:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0054:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_0059:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_005a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_005f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0__ref_ref, .-m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0__ref_ref

.globl m_Skymu_SliceControl_c_DisplayClass94_0_ctor__void
.type m_Skymu_SliceControl_c_DisplayClass94_0_ctor__void, @function
m_Skymu_SliceControl_c_DisplayClass94_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass94_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass94_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_SliceControl_c_DisplayClass94_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_c_DisplayClass94_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_c_DisplayClass94_0_ctor__void, .-m_Skymu_SliceControl_c_DisplayClass94_0_ctor__void

.globl m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0__ref_ref
.type m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0__ref_ref, @function
m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateHitTestState__void
.Lm_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref_000c:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref_0011:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateAnimation__void
.Lm_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref_0016:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0__ref_ref, .-m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0__ref_ref

.globl m_Skymu_SliceControl_ctor__void
.type m_Skymu_SliceControl_ctor__void, @function
m_Skymu_SliceControl_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UserControl_ctor__void
.Lm_Skymu_SliceControl_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0007:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_InitializeComponent__void
.Lm_Skymu_SliceControl_ctor_void_000c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_000d:
    lea m_Skymu_SliceControl_OnThemeChanged__void(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0013:
    lea .LN_0_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0018:
    mov -24(%rbp), %rdi
    call m_Skymu_Universal_add_ThemeChanged__ref
.Lm_Skymu_SliceControl_ctor_void_001d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_001f:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Control_get_Background__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0024:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_ctor_void_0029:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_002a:
    mov $3, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_002b:
    mov -32(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0030:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0031:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0032:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0033:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0038:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_SliceControl_ctor_void_0039:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_003a:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_003b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_003c:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0041:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_SliceControl_ctor_void_0042:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0043:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0045:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_004a:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_SliceControl_ctor_void_004b:
    mov -16(%rbp), %rdx
    mov -8(%rbp), %rdi
    lea .LN_5_m_Skymu_SliceControl_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_ctor_void_0050:
    lea .LN_6_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0055:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_void_00a3
.Lm_Skymu_SliceControl_ctor_void_0057:
    mov $7, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0058:
    lea .LN_7_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Threading_DispatcherTimer_ctor__v
    mov %r12, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_005d:
    lea .LN_8_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_SliceControl_ctor_void_0062:
    lea .LN_9_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0067:
    movsd .LD_10_m_Skymu_SliceControl_ctor_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0070:
    mov -32(%rbp), %rdi
    call m_System_TimeSpan_FromMilliseconds__f8
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0075:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_set_Interval__v
.Lm_Skymu_SliceControl_ctor_void_007a:
    lea .LN_11_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_007f:
    lea .LN_12_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0084:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0085:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_void_009e
.Lm_Skymu_SliceControl_ctor_void_0087:
    mov -24(%rbp), %rax
.Lm_Skymu_SliceControl_ctor_void_0088:
    lea .LN_13_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_008d:
    lea m_Skymu_SliceControl_c_ctor_b_23_0__ref_ref(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0093:
    lea .LN_14_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0098:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0099:
    lea .LN_15_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_SliceControl_ctor_void_009e:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_add_Tick__ref
.Lm_Skymu_SliceControl_ctor_void_00a3:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00a4:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00a5:
    lea m_Skymu_SliceControl_ctor_b_23_1__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00ab:
    lea .LN_16_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00b0:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseEnter__ref
.Lm_Skymu_SliceControl_ctor_void_00b5:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00b6:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00b7:
    lea m_Skymu_SliceControl_ctor_b_23_2__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00bd:
    lea .LN_17_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00c2:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeave__ref
.Lm_Skymu_SliceControl_ctor_void_00c7:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00c8:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00c9:
    lea m_Skymu_SliceControl_ctor_b_23_3__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00cf:
    lea .LN_18_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00d4:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_SliceControl_ctor_void_00d9:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00da:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00db:
    lea m_Skymu_SliceControl_ctor_b_23_4__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00e1:
    lea .LN_19_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00e6:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_SliceControl_ctor_void_00eb:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00ec:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00ed:
    lea m_Skymu_SliceControl_ctor_b_23_5__ref_v(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00f3:
    lea .LN_20_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_DependencyPropertyChangedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00f8:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_IsEnabledChanged__ref
.Lm_Skymu_SliceControl_ctor_void_00fd:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00fe:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_00ff:
    lea m_Skymu_SliceControl_ctor_b_23_6__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0105:
    lea .LN_21_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_010a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_Loaded__ref
.Lm_Skymu_SliceControl_ctor_void_010f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0110:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0111:
    lea m_Skymu_SliceControl_ctor_b_23_7__ref_v(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0117:
    lea .LN_22_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_DependencyPropertyChangedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_011c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_IsVisibleChanged__ref
.Lm_Skymu_SliceControl_ctor_void_0121:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0122:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0123:
    lea m_Skymu_SliceControl_ctor_b_23_8__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_void_0129:
    lea .LN_23_m_Skymu_SliceControl_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_void_012e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_Unloaded__ref
.Lm_Skymu_SliceControl_ctor_void_0133:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor__void, .-m_Skymu_SliceControl_ctor__void

.globl m_Skymu_SliceControl_OnThemeChanged__void
.type m_Skymu_SliceControl_OnThemeChanged__void, @function
m_Skymu_SliceControl_OnThemeChanged__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_OnThemeChanged_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_OnThemeChanged_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateSlices__void
.Lm_Skymu_SliceControl_OnThemeChanged_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnThemeChanged_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_OnThemeChanged__void, .-m_Skymu_SliceControl_OnThemeChanged__void

.globl m_Skymu_SliceControl_get_BackgroundHover__void
.type m_Skymu_SliceControl_get_BackgroundHover__void, @function
m_Skymu_SliceControl_get_BackgroundHover__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_BackgroundHover_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_BackgroundHover_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_BackgroundHover_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_BackgroundHover_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_BackgroundHover_void_000b:
.Lm_Skymu_SliceControl_get_BackgroundHover_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_BackgroundHover_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_BackgroundHover__void, .-m_Skymu_SliceControl_get_BackgroundHover__void

.globl m_Skymu_SliceControl_set_BackgroundHover__ref
.type m_Skymu_SliceControl_set_BackgroundHover__ref, @function
m_Skymu_SliceControl_set_BackgroundHover__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_BackgroundHover_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_BackgroundHover_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_BackgroundHover_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_BackgroundHover_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_BackgroundHover_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_BackgroundHover_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_BackgroundHover_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_BackgroundHover__ref, .-m_Skymu_SliceControl_set_BackgroundHover__ref

.globl m_Skymu_SliceControl_get_BackgroundPressed__void
.type m_Skymu_SliceControl_get_BackgroundPressed__void, @function
m_Skymu_SliceControl_get_BackgroundPressed__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_BackgroundPressed_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_BackgroundPressed_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_BackgroundPressed_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_BackgroundPressed_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_BackgroundPressed_void_000b:
.Lm_Skymu_SliceControl_get_BackgroundPressed_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_BackgroundPressed_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_BackgroundPressed__void, .-m_Skymu_SliceControl_get_BackgroundPressed__void

.globl m_Skymu_SliceControl_set_BackgroundPressed__ref
.type m_Skymu_SliceControl_set_BackgroundPressed__ref, @function
m_Skymu_SliceControl_set_BackgroundPressed__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_BackgroundPressed_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_BackgroundPressed_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_BackgroundPressed_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_BackgroundPressed_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_BackgroundPressed_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_BackgroundPressed_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_BackgroundPressed_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_BackgroundPressed__ref, .-m_Skymu_SliceControl_set_BackgroundPressed__ref

.globl m_Skymu_SliceControl_get_TextColorPressed__void
.type m_Skymu_SliceControl_get_TextColorPressed__void, @function
m_Skymu_SliceControl_get_TextColorPressed__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextColorPressed_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextColorPressed_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextColorPressed_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextColorPressed_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextColorPressed_void_000b:
.Lm_Skymu_SliceControl_get_TextColorPressed_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextColorPressed_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextColorPressed__void, .-m_Skymu_SliceControl_get_TextColorPressed__void

.globl m_Skymu_SliceControl_set_TextColorPressed__ref
.type m_Skymu_SliceControl_set_TextColorPressed__ref, @function
m_Skymu_SliceControl_set_TextColorPressed__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextColorPressed_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextColorPressed_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextColorPressed_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextColorPressed_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextColorPressed_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextColorPressed_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextColorPressed_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextColorPressed__ref, .-m_Skymu_SliceControl_set_TextColorPressed__ref

.globl m_Skymu_SliceControl_get_ElementSpan__void
.type m_Skymu_SliceControl_get_ElementSpan__void, @function
m_Skymu_SliceControl_get_ElementSpan__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_ElementSpan_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ElementSpan_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_ElementSpan_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_ElementSpan_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ElementSpan_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ElementSpan_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_ElementSpan_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_ElementSpan__void, .-m_Skymu_SliceControl_get_ElementSpan__void

.globl m_Skymu_SliceControl_set_ElementSpan__i4
.type m_Skymu_SliceControl_set_ElementSpan__i4, @function
m_Skymu_SliceControl_set_ElementSpan__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_ElementSpan_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_ElementSpan_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_ElementSpan_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_ElementSpan_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_ElementSpan_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_ElementSpan_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_ElementSpan_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_ElementSpan_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_ElementSpan_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_ElementSpan__i4, .-m_Skymu_SliceControl_set_ElementSpan__i4

.globl m_Skymu_SliceControl_get_ButtonStateOnInit__void
.type m_Skymu_SliceControl_get_ButtonStateOnInit__void, @function
m_Skymu_SliceControl_get_ButtonStateOnInit__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_ButtonStateOnInit_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ButtonStateOnInit_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_ButtonStateOnInit_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_ButtonStateOnInit_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ButtonStateOnInit_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ButtonStateOnInit_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_ButtonStateOnInit_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_ButtonStateOnInit__void, .-m_Skymu_SliceControl_get_ButtonStateOnInit__void

.globl m_Skymu_SliceControl_set_ButtonStateOnInit__v
.type m_Skymu_SliceControl_set_ButtonStateOnInit__v, @function
m_Skymu_SliceControl_set_ButtonStateOnInit__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_ButtonStateOnInit_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_ButtonStateOnInit_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_ButtonStateOnInit_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_ButtonStateOnInit_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_ButtonStateOnInit_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_ButtonStateOnInit_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_ButtonStateOnInit_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_ButtonStateOnInit_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_ButtonStateOnInit_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_ButtonStateOnInit__v, .-m_Skymu_SliceControl_set_ButtonStateOnInit__v

.globl m_Skymu_SliceControl_get_Command__void
.type m_Skymu_SliceControl_get_Command__void, @function
m_Skymu_SliceControl_get_Command__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_Command_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Command_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_Command_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_Command_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Command_void_000b:
.Lm_Skymu_SliceControl_get_Command_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_Command_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_Command__void, .-m_Skymu_SliceControl_get_Command__void

.globl m_Skymu_SliceControl_set_Command__ref
.type m_Skymu_SliceControl_set_Command__ref, @function
m_Skymu_SliceControl_set_Command__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_Command_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_Command_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_Command_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_Command_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_Command_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_Command_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_Command_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_Command__ref, .-m_Skymu_SliceControl_set_Command__ref

.globl m_Skymu_SliceControl_get_CommandParameter__void
.type m_Skymu_SliceControl_get_CommandParameter__void, @function
m_Skymu_SliceControl_get_CommandParameter__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_CommandParameter_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_CommandParameter_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_CommandParameter_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_CommandParameter_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_CommandParameter_void_000b:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_CommandParameter_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_CommandParameter__void, .-m_Skymu_SliceControl_get_CommandParameter__void

.globl m_Skymu_SliceControl_set_CommandParameter__ref
.type m_Skymu_SliceControl_set_CommandParameter__ref, @function
m_Skymu_SliceControl_set_CommandParameter__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_CommandParameter_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_CommandParameter_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_CommandParameter_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_CommandParameter_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_CommandParameter_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_CommandParameter_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_CommandParameter_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_CommandParameter__ref, .-m_Skymu_SliceControl_set_CommandParameter__ref

.globl m_Skymu_SliceControl_get_IsRadioButton__void
.type m_Skymu_SliceControl_get_IsRadioButton__void, @function
m_Skymu_SliceControl_get_IsRadioButton__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_IsRadioButton_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IsRadioButton_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_IsRadioButton_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_IsRadioButton_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IsRadioButton_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IsRadioButton_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_IsRadioButton_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_IsRadioButton__void, .-m_Skymu_SliceControl_get_IsRadioButton__void

.globl m_Skymu_SliceControl_set_IsRadioButton__v
.type m_Skymu_SliceControl_set_IsRadioButton__v, @function
m_Skymu_SliceControl_set_IsRadioButton__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_IsRadioButton_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_IsRadioButton_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_IsRadioButton_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_IsRadioButton_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IsRadioButton_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_IsRadioButton_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IsRadioButton_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_IsRadioButton_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_IsRadioButton_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_IsRadioButton__v, .-m_Skymu_SliceControl_set_IsRadioButton__v

.globl m_Skymu_SliceControl_get_Interactive__void
.type m_Skymu_SliceControl_get_Interactive__void, @function
m_Skymu_SliceControl_get_Interactive__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_Interactive_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Interactive_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_Interactive_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_Interactive_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Interactive_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Interactive_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_Interactive_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_Interactive__void, .-m_Skymu_SliceControl_get_Interactive__void

.globl m_Skymu_SliceControl_set_Interactive__v
.type m_Skymu_SliceControl_set_Interactive__v, @function
m_Skymu_SliceControl_set_Interactive__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_Interactive_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_Interactive_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_Interactive_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_Interactive_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_Interactive_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_Interactive_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_Interactive_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_Interactive_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_Interactive_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_Interactive__v, .-m_Skymu_SliceControl_set_Interactive__v

.globl m_Skymu_SliceControl_OnInteractiveChanged__ref_v
.type m_Skymu_SliceControl_OnInteractiveChanged__ref_v, @function
m_Skymu_SliceControl_OnInteractiveChanged__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_OnInteractiveChanged_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_OnInteractiveChanged_ref_v_0001:
.Lm_Skymu_SliceControl_OnInteractiveChanged_ref_v_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateHitTestState__void
.Lm_Skymu_SliceControl_OnInteractiveChanged_ref_v_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnInteractiveChanged_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_OnInteractiveChanged__ref_v, .-m_Skymu_SliceControl_OnInteractiveChanged__ref_v

.globl m_Skymu_SliceControl_get_HoverTransition__void
.type m_Skymu_SliceControl_get_HoverTransition__void, @function
m_Skymu_SliceControl_get_HoverTransition__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_HoverTransition_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_HoverTransition_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_HoverTransition_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_HoverTransition_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_HoverTransition_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_HoverTransition_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_HoverTransition_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_HoverTransition__void, .-m_Skymu_SliceControl_get_HoverTransition__void

.globl m_Skymu_SliceControl_set_HoverTransition__v
.type m_Skymu_SliceControl_set_HoverTransition__v, @function
m_Skymu_SliceControl_set_HoverTransition__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_HoverTransition_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_HoverTransition_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_HoverTransition_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_HoverTransition_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_HoverTransition_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_HoverTransition_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_HoverTransition_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_HoverTransition_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_HoverTransition_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_HoverTransition__v, .-m_Skymu_SliceControl_set_HoverTransition__v

.globl m_Skymu_SliceControl_get_IconSource__void
.type m_Skymu_SliceControl_get_IconSource__void, @function
m_Skymu_SliceControl_get_IconSource__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_IconSource_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconSource_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_IconSource_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_IconSource_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconSource_void_000b:
.Lm_Skymu_SliceControl_get_IconSource_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_IconSource_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_IconSource__void, .-m_Skymu_SliceControl_get_IconSource__void

.globl m_Skymu_SliceControl_set_IconSource__ref
.type m_Skymu_SliceControl_set_IconSource__ref, @function
m_Skymu_SliceControl_set_IconSource__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_IconSource_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_IconSource_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_IconSource_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_IconSource_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconSource_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_IconSource_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_IconSource_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_IconSource__ref, .-m_Skymu_SliceControl_set_IconSource__ref

.globl m_Skymu_SliceControl_get_IconWidth__void
.type m_Skymu_SliceControl_get_IconWidth__void, @function
m_Skymu_SliceControl_get_IconWidth__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_IconWidth_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconWidth_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_IconWidth_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_IconWidth_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconWidth_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconWidth_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_IconWidth_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_IconWidth__void, .-m_Skymu_SliceControl_get_IconWidth__void

.globl m_Skymu_SliceControl_set_IconWidth__f8
.type m_Skymu_SliceControl_set_IconWidth__f8, @function
m_Skymu_SliceControl_set_IconWidth__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_IconWidth_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_IconWidth_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_IconWidth_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_IconWidth_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconWidth_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_IconWidth_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconWidth_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_IconWidth_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_IconWidth_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_IconWidth__f8, .-m_Skymu_SliceControl_set_IconWidth__f8

.globl m_Skymu_SliceControl_get_IconHeight__void
.type m_Skymu_SliceControl_get_IconHeight__void, @function
m_Skymu_SliceControl_get_IconHeight__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_IconHeight_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconHeight_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_IconHeight_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_IconHeight_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconHeight_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconHeight_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_IconHeight_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_IconHeight__void, .-m_Skymu_SliceControl_get_IconHeight__void

.globl m_Skymu_SliceControl_set_IconHeight__f8
.type m_Skymu_SliceControl_set_IconHeight__f8, @function
m_Skymu_SliceControl_set_IconHeight__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_IconHeight_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_IconHeight_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_IconHeight_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_IconHeight_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconHeight_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_IconHeight_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconHeight_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_IconHeight_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_IconHeight_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_IconHeight__f8, .-m_Skymu_SliceControl_set_IconHeight__f8

.globl m_Skymu_SliceControl_get_IconLeftMargin__void
.type m_Skymu_SliceControl_get_IconLeftMargin__void, @function
m_Skymu_SliceControl_get_IconLeftMargin__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_IconLeftMargin_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconLeftMargin_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_IconLeftMargin_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_IconLeftMargin_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconLeftMargin_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconLeftMargin_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_IconLeftMargin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_IconLeftMargin__void, .-m_Skymu_SliceControl_get_IconLeftMargin__void

.globl m_Skymu_SliceControl_set_IconLeftMargin__i4
.type m_Skymu_SliceControl_set_IconLeftMargin__i4, @function
m_Skymu_SliceControl_set_IconLeftMargin__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_IconLeftMargin_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_IconLeftMargin_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_IconLeftMargin_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_IconLeftMargin_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconLeftMargin_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_IconLeftMargin_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconLeftMargin_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_IconLeftMargin_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_IconLeftMargin_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_IconLeftMargin__i4, .-m_Skymu_SliceControl_set_IconLeftMargin__i4

.globl m_Skymu_SliceControl_get_IconRightMargin__void
.type m_Skymu_SliceControl_get_IconRightMargin__void, @function
m_Skymu_SliceControl_get_IconRightMargin__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_IconRightMargin_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconRightMargin_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_IconRightMargin_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_IconRightMargin_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconRightMargin_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IconRightMargin_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_IconRightMargin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_IconRightMargin__void, .-m_Skymu_SliceControl_get_IconRightMargin__void

.globl m_Skymu_SliceControl_set_IconRightMargin__i4
.type m_Skymu_SliceControl_set_IconRightMargin__i4, @function
m_Skymu_SliceControl_set_IconRightMargin__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_IconRightMargin_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_IconRightMargin_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_IconRightMargin_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_IconRightMargin_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconRightMargin_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_IconRightMargin_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IconRightMargin_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_IconRightMargin_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_IconRightMargin_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_IconRightMargin__i4, .-m_Skymu_SliceControl_set_IconRightMargin__i4

.globl m_Skymu_SliceControl_get_Themeable__void
.type m_Skymu_SliceControl_get_Themeable__void, @function
m_Skymu_SliceControl_get_Themeable__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_Themeable_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Themeable_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_Themeable_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_Themeable_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Themeable_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Themeable_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_Themeable_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_Themeable__void, .-m_Skymu_SliceControl_get_Themeable__void

.globl m_Skymu_SliceControl_set_Themeable__v
.type m_Skymu_SliceControl_set_Themeable__v, @function
m_Skymu_SliceControl_set_Themeable__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_Themeable_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_Themeable_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_Themeable_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_Themeable_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_Themeable_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_Themeable_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_Themeable_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_Themeable_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_Themeable_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_Themeable__v, .-m_Skymu_SliceControl_set_Themeable__v

.globl m_Skymu_SliceControl_get_Source__void
.type m_Skymu_SliceControl_get_Source__void, @function
m_Skymu_SliceControl_get_Source__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_Source_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Source_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_Source_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_Source_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Source_void_000b:
.Lm_Skymu_SliceControl_get_Source_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_Source_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_Source__void, .-m_Skymu_SliceControl_get_Source__void

.globl m_Skymu_SliceControl_set_Source__ref
.type m_Skymu_SliceControl_set_Source__ref, @function
m_Skymu_SliceControl_set_Source__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_Source_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_Source_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_Source_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_Source_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_Source_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_Source_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_Source_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_Source__ref, .-m_Skymu_SliceControl_set_Source__ref

.globl m_Skymu_SliceControl_OnSourceChanged__ref_v
.type m_Skymu_SliceControl_OnSourceChanged__ref_v, @function
m_Skymu_SliceControl_OnSourceChanged__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0000:
    lea .LN_0_m_Skymu_SliceControl_OnSourceChanged_ref_v(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_SliceControl_c_DisplayClass94_0_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0005:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0006:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0008:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_000d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_OnSourceChanged_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0012:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0013:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_OnSourceChanged_ref_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0018:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0050
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_001a:
    lea -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_001c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyPropertyChangedEventArgs_get_NewValue__void
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0021:
    mov -56(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0026:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0027:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0028:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0045
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_002a:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_002b:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapSource_get_IsDownloading__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0030:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0045
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0032:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0033:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0034:
    lea m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_003a:
    lea .LN_3_m_Skymu_SliceControl_OnSourceChanged_ref_v(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_003f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Imaging_BitmapSource_add_DownloadCompleted__ref
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0044:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0045:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0046:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_OnSourceChanged_ref_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_004b:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateAnimation__void
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_0050:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnSourceChanged_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_OnSourceChanged__ref_v, .-m_Skymu_SliceControl_OnSourceChanged__ref_v

.globl m_Skymu_SliceControl_get_ElementCount__void
.type m_Skymu_SliceControl_get_ElementCount__void, @function
m_Skymu_SliceControl_get_ElementCount__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_ElementCount_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ElementCount_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_ElementCount_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_ElementCount_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ElementCount_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_ElementCount_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_ElementCount_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_ElementCount__void, .-m_Skymu_SliceControl_get_ElementCount__void

.globl m_Skymu_SliceControl_set_ElementCount__i4
.type m_Skymu_SliceControl_set_ElementCount__i4, @function
m_Skymu_SliceControl_set_ElementCount__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_ElementCount_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_ElementCount_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_ElementCount_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_ElementCount_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_ElementCount_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_ElementCount_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_ElementCount_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_ElementCount_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_ElementCount_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_ElementCount__i4, .-m_Skymu_SliceControl_set_ElementCount__i4

.globl m_Skymu_SliceControl_get_SpriteSpacing__void
.type m_Skymu_SliceControl_get_SpriteSpacing__void, @function
m_Skymu_SliceControl_get_SpriteSpacing__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_SpriteSpacing_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_SpriteSpacing_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_SpriteSpacing_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_SpriteSpacing_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_SpriteSpacing_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_SpriteSpacing_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_SpriteSpacing_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_SpriteSpacing__void, .-m_Skymu_SliceControl_get_SpriteSpacing__void

.globl m_Skymu_SliceControl_set_SpriteSpacing__f8
.type m_Skymu_SliceControl_set_SpriteSpacing__f8, @function
m_Skymu_SliceControl_set_SpriteSpacing__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_SpriteSpacing_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_SpriteSpacing_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_SpriteSpacing_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_SpriteSpacing_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_SpriteSpacing_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_SpriteSpacing_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_SpriteSpacing_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_SpriteSpacing_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_SpriteSpacing_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_SpriteSpacing__f8, .-m_Skymu_SliceControl_set_SpriteSpacing__f8

.globl m_Skymu_SliceControl_get_StackDirection__void
.type m_Skymu_SliceControl_get_StackDirection__void, @function
m_Skymu_SliceControl_get_StackDirection__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_StackDirection_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_StackDirection_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_StackDirection_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_StackDirection_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_StackDirection_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_StackDirection_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_StackDirection_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_StackDirection__void, .-m_Skymu_SliceControl_get_StackDirection__void

.globl m_Skymu_SliceControl_set_StackDirection__v
.type m_Skymu_SliceControl_set_StackDirection__v, @function
m_Skymu_SliceControl_set_StackDirection__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_StackDirection_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_StackDirection_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_StackDirection_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_StackDirection_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_StackDirection_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_StackDirection_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_StackDirection_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_StackDirection_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_StackDirection_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_StackDirection__v, .-m_Skymu_SliceControl_set_StackDirection__v

.globl m_Skymu_SliceControl_get_DefaultIndex__void
.type m_Skymu_SliceControl_get_DefaultIndex__void, @function
m_Skymu_SliceControl_get_DefaultIndex__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_DefaultIndex_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_DefaultIndex_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_DefaultIndex_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_DefaultIndex_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_DefaultIndex_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_DefaultIndex_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_DefaultIndex_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_DefaultIndex__void, .-m_Skymu_SliceControl_get_DefaultIndex__void

.globl m_Skymu_SliceControl_set_DefaultIndex__i4
.type m_Skymu_SliceControl_set_DefaultIndex__i4, @function
m_Skymu_SliceControl_set_DefaultIndex__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_DefaultIndex_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_DefaultIndex_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_DefaultIndex_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_DefaultIndex_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_DefaultIndex_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_DefaultIndex_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_DefaultIndex_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_DefaultIndex_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_DefaultIndex_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_DefaultIndex__i4, .-m_Skymu_SliceControl_set_DefaultIndex__i4

.globl m_Skymu_SliceControl_get_DisabledIndex__void
.type m_Skymu_SliceControl_get_DisabledIndex__void, @function
m_Skymu_SliceControl_get_DisabledIndex__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_DisabledIndex_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_DisabledIndex_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_DisabledIndex_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_DisabledIndex_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_DisabledIndex_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_DisabledIndex_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_DisabledIndex_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_DisabledIndex__void, .-m_Skymu_SliceControl_get_DisabledIndex__void

.globl m_Skymu_SliceControl_set_DisabledIndex__i4
.type m_Skymu_SliceControl_set_DisabledIndex__i4, @function
m_Skymu_SliceControl_set_DisabledIndex__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_DisabledIndex_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_DisabledIndex_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_DisabledIndex_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_DisabledIndex_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_DisabledIndex_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_DisabledIndex_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_DisabledIndex_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_DisabledIndex_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_DisabledIndex_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_DisabledIndex__i4, .-m_Skymu_SliceControl_set_DisabledIndex__i4

.globl m_Skymu_SliceControl_get_HoverIndex__void
.type m_Skymu_SliceControl_get_HoverIndex__void, @function
m_Skymu_SliceControl_get_HoverIndex__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_HoverIndex_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_HoverIndex_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_HoverIndex_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_HoverIndex_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_HoverIndex_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_HoverIndex_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_HoverIndex_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_HoverIndex__void, .-m_Skymu_SliceControl_get_HoverIndex__void

.globl m_Skymu_SliceControl_set_HoverIndex__i4
.type m_Skymu_SliceControl_set_HoverIndex__i4, @function
m_Skymu_SliceControl_set_HoverIndex__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_HoverIndex_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_HoverIndex_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_HoverIndex_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_HoverIndex_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_HoverIndex_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_HoverIndex_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_HoverIndex_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_HoverIndex_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_HoverIndex_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_HoverIndex__i4, .-m_Skymu_SliceControl_set_HoverIndex__i4

.globl m_Skymu_SliceControl_get_PressedIndex__void
.type m_Skymu_SliceControl_get_PressedIndex__void, @function
m_Skymu_SliceControl_get_PressedIndex__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_PressedIndex_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_PressedIndex_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_PressedIndex_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_PressedIndex_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_PressedIndex_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_PressedIndex_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_PressedIndex_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_PressedIndex__void, .-m_Skymu_SliceControl_get_PressedIndex__void

.globl m_Skymu_SliceControl_set_PressedIndex__i4
.type m_Skymu_SliceControl_set_PressedIndex__i4, @function
m_Skymu_SliceControl_set_PressedIndex__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_PressedIndex_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_PressedIndex_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_PressedIndex_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_PressedIndex_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_PressedIndex_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_PressedIndex_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_PressedIndex_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_PressedIndex_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_PressedIndex_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_PressedIndex__i4, .-m_Skymu_SliceControl_set_PressedIndex__i4

.globl m_Skymu_SliceControl_get_IsAnimation__void
.type m_Skymu_SliceControl_get_IsAnimation__void, @function
m_Skymu_SliceControl_get_IsAnimation__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_IsAnimation_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IsAnimation_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_IsAnimation_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_IsAnimation_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IsAnimation_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_IsAnimation_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_IsAnimation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_IsAnimation__void, .-m_Skymu_SliceControl_get_IsAnimation__void

.globl m_Skymu_SliceControl_set_IsAnimation__v
.type m_Skymu_SliceControl_set_IsAnimation__v, @function
m_Skymu_SliceControl_set_IsAnimation__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_IsAnimation_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_IsAnimation_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_IsAnimation_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_IsAnimation_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IsAnimation_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_IsAnimation_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_IsAnimation_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_IsAnimation_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_IsAnimation_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_IsAnimation__v, .-m_Skymu_SliceControl_set_IsAnimation__v

.globl m_Skymu_SliceControl_get_AnimationFps__void
.type m_Skymu_SliceControl_get_AnimationFps__void, @function
m_Skymu_SliceControl_get_AnimationFps__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_AnimationFps_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_AnimationFps_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_AnimationFps_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_AnimationFps_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_AnimationFps_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_AnimationFps_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_AnimationFps_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_AnimationFps__void, .-m_Skymu_SliceControl_get_AnimationFps__void

.globl m_Skymu_SliceControl_set_AnimationFps__f8
.type m_Skymu_SliceControl_set_AnimationFps__f8, @function
m_Skymu_SliceControl_set_AnimationFps__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_AnimationFps_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_AnimationFps_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_AnimationFps_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_AnimationFps_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_AnimationFps_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_AnimationFps_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_AnimationFps_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_AnimationFps_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_AnimationFps_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_AnimationFps__f8, .-m_Skymu_SliceControl_set_AnimationFps__f8

.globl m_Skymu_SliceControl_get_Text__void
.type m_Skymu_SliceControl_get_Text__void, @function
m_Skymu_SliceControl_get_Text__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_Text_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Text_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_Text_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_Text_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_Text_void_000b:
.Lm_Skymu_SliceControl_get_Text_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_Text_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_Text__void, .-m_Skymu_SliceControl_get_Text__void

.globl m_Skymu_SliceControl_set_Text__ref
.type m_Skymu_SliceControl_set_Text__ref, @function
m_Skymu_SliceControl_set_Text__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_Text_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_Text_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_Text_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_Text_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_Text_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_Text_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_Text_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_Text__ref, .-m_Skymu_SliceControl_set_Text__ref

.globl m_Skymu_SliceControl_get_TextFont__void
.type m_Skymu_SliceControl_get_TextFont__void, @function
m_Skymu_SliceControl_get_TextFont__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextFont_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextFont_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextFont_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextFont_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextFont_void_000b:
.Lm_Skymu_SliceControl_get_TextFont_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextFont_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextFont__void, .-m_Skymu_SliceControl_get_TextFont__void

.globl m_Skymu_SliceControl_set_TextFont__ref
.type m_Skymu_SliceControl_set_TextFont__ref, @function
m_Skymu_SliceControl_set_TextFont__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextFont_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextFont_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextFont_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextFont_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextFont_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextFont_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextFont_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextFont__ref, .-m_Skymu_SliceControl_set_TextFont__ref

.globl m_Skymu_SliceControl_get_TextWeight__void
.type m_Skymu_SliceControl_get_TextWeight__void, @function
m_Skymu_SliceControl_get_TextWeight__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextWeight_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextWeight_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextWeight_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextWeight_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextWeight_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextWeight_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextWeight_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextWeight__void, .-m_Skymu_SliceControl_get_TextWeight__void

.globl m_Skymu_SliceControl_set_TextWeight__v
.type m_Skymu_SliceControl_set_TextWeight__v, @function
m_Skymu_SliceControl_set_TextWeight__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextWeight_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextWeight_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextWeight_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextWeight_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextWeight_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_TextWeight_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextWeight_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextWeight_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextWeight_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextWeight__v, .-m_Skymu_SliceControl_set_TextWeight__v

.globl m_Skymu_SliceControl_get_LeftWidth__void
.type m_Skymu_SliceControl_get_LeftWidth__void, @function
m_Skymu_SliceControl_get_LeftWidth__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_LeftWidth_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_LeftWidth_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_LeftWidth_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_LeftWidth_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_LeftWidth_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_LeftWidth_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_LeftWidth_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_LeftWidth__void, .-m_Skymu_SliceControl_get_LeftWidth__void

.globl m_Skymu_SliceControl_set_LeftWidth__f8
.type m_Skymu_SliceControl_set_LeftWidth__f8, @function
m_Skymu_SliceControl_set_LeftWidth__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_LeftWidth_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_LeftWidth_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_LeftWidth_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_LeftWidth_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_LeftWidth_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_LeftWidth_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_LeftWidth_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_LeftWidth_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_LeftWidth_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_LeftWidth__f8, .-m_Skymu_SliceControl_set_LeftWidth__f8

.globl m_Skymu_SliceControl_get_RightWidth__void
.type m_Skymu_SliceControl_get_RightWidth__void, @function
m_Skymu_SliceControl_get_RightWidth__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_RightWidth_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_RightWidth_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_RightWidth_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_RightWidth_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_RightWidth_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_RightWidth_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_RightWidth_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_RightWidth__void, .-m_Skymu_SliceControl_get_RightWidth__void

.globl m_Skymu_SliceControl_set_RightWidth__f8
.type m_Skymu_SliceControl_set_RightWidth__f8, @function
m_Skymu_SliceControl_set_RightWidth__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_RightWidth_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_RightWidth_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_RightWidth_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_RightWidth_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_RightWidth_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_RightWidth_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_RightWidth_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_RightWidth_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_RightWidth_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_RightWidth__f8, .-m_Skymu_SliceControl_set_RightWidth__f8

.globl m_Skymu_SliceControl_get_TopHeight__void
.type m_Skymu_SliceControl_get_TopHeight__void, @function
m_Skymu_SliceControl_get_TopHeight__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TopHeight_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TopHeight_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TopHeight_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TopHeight_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TopHeight_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TopHeight_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TopHeight_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TopHeight__void, .-m_Skymu_SliceControl_get_TopHeight__void

.globl m_Skymu_SliceControl_set_TopHeight__f8
.type m_Skymu_SliceControl_set_TopHeight__f8, @function
m_Skymu_SliceControl_set_TopHeight__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TopHeight_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TopHeight_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TopHeight_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TopHeight_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TopHeight_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_TopHeight_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TopHeight_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TopHeight_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TopHeight_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TopHeight__f8, .-m_Skymu_SliceControl_set_TopHeight__f8

.globl m_Skymu_SliceControl_get_BottomHeight__void
.type m_Skymu_SliceControl_get_BottomHeight__void, @function
m_Skymu_SliceControl_get_BottomHeight__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_BottomHeight_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_BottomHeight_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_BottomHeight_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_BottomHeight_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_BottomHeight_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_BottomHeight_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_BottomHeight_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_BottomHeight__void, .-m_Skymu_SliceControl_get_BottomHeight__void

.globl m_Skymu_SliceControl_set_BottomHeight__f8
.type m_Skymu_SliceControl_set_BottomHeight__f8, @function
m_Skymu_SliceControl_set_BottomHeight__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_BottomHeight_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_BottomHeight_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_BottomHeight_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_BottomHeight_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_BottomHeight_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_BottomHeight_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_BottomHeight_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_BottomHeight_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_BottomHeight_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_BottomHeight__f8, .-m_Skymu_SliceControl_set_BottomHeight__f8

.globl m_Skymu_SliceControl_get_TextStyle__void
.type m_Skymu_SliceControl_get_TextStyle__void, @function
m_Skymu_SliceControl_get_TextStyle__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextStyle_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextStyle_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextStyle_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextStyle_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextStyle_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextStyle_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextStyle_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextStyle__void, .-m_Skymu_SliceControl_get_TextStyle__void

.globl m_Skymu_SliceControl_set_TextStyle__v
.type m_Skymu_SliceControl_set_TextStyle__v, @function
m_Skymu_SliceControl_set_TextStyle__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextStyle_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextStyle_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextStyle_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextStyle_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextStyle_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_TextStyle_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextStyle_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextStyle_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextStyle_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextStyle__v, .-m_Skymu_SliceControl_set_TextStyle__v

.globl m_Skymu_SliceControl_get_TextSize__void
.type m_Skymu_SliceControl_get_TextSize__void, @function
m_Skymu_SliceControl_get_TextSize__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextSize_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextSize_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextSize_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextSize_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextSize_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextSize_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextSize_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextSize__void, .-m_Skymu_SliceControl_get_TextSize__void

.globl m_Skymu_SliceControl_set_TextSize__f8
.type m_Skymu_SliceControl_set_TextSize__f8, @function
m_Skymu_SliceControl_set_TextSize__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextSize_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextSize_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextSize_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextSize_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextSize_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_TextSize_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextSize_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextSize_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextSize_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextSize__f8, .-m_Skymu_SliceControl_set_TextSize__f8

.globl m_Skymu_SliceControl_get_TextColor__void
.type m_Skymu_SliceControl_get_TextColor__void, @function
m_Skymu_SliceControl_get_TextColor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextColor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextColor_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextColor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextColor_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextColor_void_000b:
.Lm_Skymu_SliceControl_get_TextColor_void_0010:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextColor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextColor__void, .-m_Skymu_SliceControl_get_TextColor__void

.globl m_Skymu_SliceControl_set_TextColor__ref
.type m_Skymu_SliceControl_set_TextColor__ref, @function
m_Skymu_SliceControl_set_TextColor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextColor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextColor_ref_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextColor_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextColor_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextColor_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextColor_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextColor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextColor__ref, .-m_Skymu_SliceControl_set_TextColor__ref

.globl m_Skymu_SliceControl_get_TextHorizontalAlignment__void
.type m_Skymu_SliceControl_get_TextHorizontalAlignment__void, @function
m_Skymu_SliceControl_get_TextHorizontalAlignment__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextHorizontalAlignment_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextHorizontalAlignment_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextHorizontalAlignment_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextHorizontalAlignment_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextHorizontalAlignment_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextHorizontalAlignment_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextHorizontalAlignment_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextHorizontalAlignment__void, .-m_Skymu_SliceControl_get_TextHorizontalAlignment__void

.globl m_Skymu_SliceControl_set_TextHorizontalAlignment__v
.type m_Skymu_SliceControl_set_TextHorizontalAlignment__v, @function
m_Skymu_SliceControl_set_TextHorizontalAlignment__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextHorizontalAlignment_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextHorizontalAlignment_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextHorizontalAlignment_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextHorizontalAlignment_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextHorizontalAlignment_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_TextHorizontalAlignment_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextHorizontalAlignment_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextHorizontalAlignment_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextHorizontalAlignment_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextHorizontalAlignment__v, .-m_Skymu_SliceControl_set_TextHorizontalAlignment__v

.globl m_Skymu_SliceControl_get_TextVerticalAlignment__void
.type m_Skymu_SliceControl_get_TextVerticalAlignment__void, @function
m_Skymu_SliceControl_get_TextVerticalAlignment__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextVerticalAlignment_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextVerticalAlignment_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextVerticalAlignment_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextVerticalAlignment_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextVerticalAlignment_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextVerticalAlignment_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextVerticalAlignment_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextVerticalAlignment__void, .-m_Skymu_SliceControl_get_TextVerticalAlignment__void

.globl m_Skymu_SliceControl_set_TextVerticalAlignment__v
.type m_Skymu_SliceControl_set_TextVerticalAlignment__v, @function
m_Skymu_SliceControl_set_TextVerticalAlignment__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextVerticalAlignment_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextVerticalAlignment_v_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextVerticalAlignment_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextVerticalAlignment_v_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextVerticalAlignment_v_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_TextVerticalAlignment_v(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextVerticalAlignment_v_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextVerticalAlignment_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextVerticalAlignment_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextVerticalAlignment__v, .-m_Skymu_SliceControl_set_TextVerticalAlignment__v

.globl m_Skymu_SliceControl_get_TextLeftMargin__void
.type m_Skymu_SliceControl_get_TextLeftMargin__void, @function
m_Skymu_SliceControl_get_TextLeftMargin__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextLeftMargin_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextLeftMargin_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextLeftMargin_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextLeftMargin_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextLeftMargin_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextLeftMargin_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextLeftMargin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextLeftMargin__void, .-m_Skymu_SliceControl_get_TextLeftMargin__void

.globl m_Skymu_SliceControl_set_TextLeftMargin__i4
.type m_Skymu_SliceControl_set_TextLeftMargin__i4, @function
m_Skymu_SliceControl_set_TextLeftMargin__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextLeftMargin_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextLeftMargin_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextLeftMargin_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextLeftMargin_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextLeftMargin_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_TextLeftMargin_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextLeftMargin_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextLeftMargin_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextLeftMargin_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextLeftMargin__i4, .-m_Skymu_SliceControl_set_TextLeftMargin__i4

.globl m_Skymu_SliceControl_get_TextRightMargin__void
.type m_Skymu_SliceControl_get_TextRightMargin__void, @function
m_Skymu_SliceControl_get_TextRightMargin__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_TextRightMargin_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextRightMargin_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_TextRightMargin_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_TextRightMargin_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextRightMargin_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_TextRightMargin_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_TextRightMargin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_TextRightMargin__void, .-m_Skymu_SliceControl_get_TextRightMargin__void

.globl m_Skymu_SliceControl_set_TextRightMargin__i4
.type m_Skymu_SliceControl_set_TextRightMargin__i4, @function
m_Skymu_SliceControl_set_TextRightMargin__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_TextRightMargin_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_TextRightMargin_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_TextRightMargin_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_TextRightMargin_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextRightMargin_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_TextRightMargin_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_TextRightMargin_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_TextRightMargin_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_TextRightMargin_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_TextRightMargin__i4, .-m_Skymu_SliceControl_set_TextRightMargin__i4

.globl m_Skymu_SliceControl_get_PressedOffsetY__void
.type m_Skymu_SliceControl_get_PressedOffsetY__void, @function
m_Skymu_SliceControl_get_PressedOffsetY__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_PressedOffsetY_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_PressedOffsetY_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_PressedOffsetY_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_PressedOffsetY_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_PressedOffsetY_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_PressedOffsetY_void_0010:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_PressedOffsetY_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_PressedOffsetY__void, .-m_Skymu_SliceControl_get_PressedOffsetY__void

.globl m_Skymu_SliceControl_set_PressedOffsetY__f8
.type m_Skymu_SliceControl_set_PressedOffsetY__f8, @function
m_Skymu_SliceControl_set_PressedOffsetY__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_PressedOffsetY_f8_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_PressedOffsetY_f8_0001:
    lea .LN_0_m_Skymu_SliceControl_set_PressedOffsetY_f8(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_PressedOffsetY_f8_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_PressedOffsetY_f8_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_PressedOffsetY_f8(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_PressedOffsetY_f8_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_PressedOffsetY_f8_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_PressedOffsetY_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_PressedOffsetY__f8, .-m_Skymu_SliceControl_set_PressedOffsetY__f8

.globl m_Skymu_SliceControl_get_SliceMode__void
.type m_Skymu_SliceControl_get_SliceMode__void, @function
m_Skymu_SliceControl_get_SliceMode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_get_SliceMode_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_SliceMode_void_0001:
    lea .LN_0_m_Skymu_SliceControl_get_SliceMode_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_get_SliceMode_void_0006:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_GetValue__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_SliceMode_void_000b:
    mov -24(%rbp), %rdi
    call shim_unbox
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_get_SliceMode_void_0010:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_get_SliceMode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_get_SliceMode__void, .-m_Skymu_SliceControl_get_SliceMode__void

.globl m_Skymu_SliceControl_set_SliceMode__i4
.type m_Skymu_SliceControl_set_SliceMode__i4, @function
m_Skymu_SliceControl_set_SliceMode__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_set_SliceMode_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_set_SliceMode_i4_0001:
    lea .LN_0_m_Skymu_SliceControl_set_SliceMode_i4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_set_SliceMode_i4_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_SliceMode_i4_0007:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_set_SliceMode_i4(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_set_SliceMode_i4_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyObject_SetValue__ref_ref
.Lm_Skymu_SliceControl_set_SliceMode_i4_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_set_SliceMode_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_set_SliceMode__i4, .-m_Skymu_SliceControl_set_SliceMode__i4

.globl m_Skymu_SliceControl_SetStateInternal__v
.type m_Skymu_SliceControl_SetStateInternal__v, @function
m_Skymu_SliceControl_SetStateInternal__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_SetStateInternal_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0006:
    mov $3, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0007:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_SetStateInternal_v_0016
.Lm_Skymu_SliceControl_SetStateInternal_v_0009:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_000a:
    mov $3, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_000b:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_SliceControl_SetStateInternal_v_0016
.Lm_Skymu_SliceControl_SetStateInternal_v_000d:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_000e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0013:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_SetStateInternal_v_0016
.Lm_Skymu_SliceControl_SetStateInternal_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_SetStateInternal_v_0016:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0017:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_IsRadioButton__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_001c:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_SetStateInternal_v_0038
.Lm_Skymu_SliceControl_SetStateInternal_v_001e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_001f:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_SetStateInternal_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0024:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0025:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_SetStateInternal_v_0038
.Lm_Skymu_SliceControl_SetStateInternal_v_0027:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0028:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0029:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_SliceControl_SetStateInternal_v_0038
.Lm_Skymu_SliceControl_SetStateInternal_v_002b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_002c:
    mov $3, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_002d:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_SliceControl_SetStateInternal_v_0038
.Lm_Skymu_SliceControl_SetStateInternal_v_002f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0030:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_SetStateInternal_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0035:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_SetStateInternal_v_0038
.Lm_Skymu_SliceControl_SetStateInternal_v_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_SetStateInternal_v_0038:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0039:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_SetStateInternal_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_003e:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_SetStateInternal_v_0048
.Lm_Skymu_SliceControl_SetStateInternal_v_0040:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0041:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_SetStateInternal_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0046:
    jmp .Lm_Skymu_SliceControl_SetStateInternal_v_004e
.Lm_Skymu_SliceControl_SetStateInternal_v_0048:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0049:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_SliceControl_SetStateInternal_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_004e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_004f:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_SetStateInternal_v_0052
.Lm_Skymu_SliceControl_SetStateInternal_v_0051:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_SetStateInternal_v_0052:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0053:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_HoverTransition__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0058:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_SetStateInternal_v_0088
.Lm_Skymu_SliceControl_SetStateInternal_v_005a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_005b:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_IsAnimation__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0060:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_SetStateInternal_v_0088
.Lm_Skymu_SliceControl_SetStateInternal_v_0062:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0063:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_HoverIndex__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0068:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0069:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_DefaultIndex__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_006e:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_SliceControl_SetStateInternal_v_0088
.Lm_Skymu_SliceControl_SetStateInternal_v_0070:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0071:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0072:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_SliceControl_SetStateInternal_v_0085
.Lm_Skymu_SliceControl_SetStateInternal_v_0074:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0075:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_SetStateInternal_v_0082
.Lm_Skymu_SliceControl_SetStateInternal_v_0077:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0078:
    mov -32(%rbp), %rdi
    lea .LN_6_m_Skymu_SliceControl_SetStateInternal_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_007d:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_007e:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %rcx, %rax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0080:
    jmp .Lm_Skymu_SliceControl_SetStateInternal_v_0089
.Lm_Skymu_SliceControl_SetStateInternal_v_0082:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0083:
    jmp .Lm_Skymu_SliceControl_SetStateInternal_v_0089
.Lm_Skymu_SliceControl_SetStateInternal_v_0085:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0086:
    jmp .Lm_Skymu_SliceControl_SetStateInternal_v_0089
.Lm_Skymu_SliceControl_SetStateInternal_v_0088:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0089:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_SetStateInternal_v_0093
.Lm_Skymu_SliceControl_SetStateInternal_v_008b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_008c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_008d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_BeginFadeTransition__v
.Lm_Skymu_SliceControl_SetStateInternal_v_0092:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_SetStateInternal_v_0093:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_0094:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_AbortFade__void
.Lm_Skymu_SliceControl_SetStateInternal_v_0099:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_009a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetStateInternal_v_009b:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_SliceControl_SetStateInternal_v_00a0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_SetStateInternal_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_SetStateInternal__v, .-m_Skymu_SliceControl_SetStateInternal__v

.globl m_Skymu_SliceControl_AbortFade__void
.type m_Skymu_SliceControl_AbortFade__void, @function
m_Skymu_SliceControl_AbortFade__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_AbortFade_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_AbortFade_void_0009
.Lm_Skymu_SliceControl_AbortFade_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_AbortFade_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_000a:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_AbortFade_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_000f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Animation_Storyboard_Stop__void
.Lm_Skymu_SliceControl_AbortFade_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0015:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0016:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_AbortFade_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_AbortFade_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_001c:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_AbortFade_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0022:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_AbortFade_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0028:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_SliceControl_AbortFade_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_002d:
    movsd .LD_6_m_Skymu_SliceControl_AbortFade_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0036:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0037:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0038:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_SliceControl_AbortFade_void_003d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_003e:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_003f:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0040:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_SliceControl_AbortFade_void_0045:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_AbortFade_void_0046:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_SliceControl_AbortFade_void_004b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_AbortFade_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_AbortFade__void, .-m_Skymu_SliceControl_AbortFade__void

.globl m_Skymu_SliceControl_SyncOverlayLayout__void
.type m_Skymu_SliceControl_SyncOverlayLayout__void, @function
m_Skymu_SliceControl_SyncOverlayLayout__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0007:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_000c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_ActualWidth__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0011:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Width__f8
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0017:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_001d:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0022:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_ActualHeight__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0027:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Height__f8
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_002d:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0032:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0033:
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0038:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Visibility__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_003d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0042:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0043:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_SliceMode__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0048:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0049:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_SliceControl_SyncOverlayLayout_void_00d2
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_004f:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0055:
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_005a:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_ActualWidth__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_005f:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Width__f8
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0065:
    mov -24(%rbp), %rdi
    lea .LN_8_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_006a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_006b:
    mov -32(%rbp), %rdi
    lea .LN_9_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0070:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_ActualHeight__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0075:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Height__f8
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_007a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_007b:
    mov -24(%rbp), %rdi
    lea .LN_10_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0080:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0081:
    mov -32(%rbp), %rdi
    lea .LN_11_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0086:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_ActualWidth__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_008b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Width__f8
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0090:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0091:
    mov -24(%rbp), %rdi
    lea .LN_12_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0096:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_0097:
    mov -32(%rbp), %rdi
    lea .LN_13_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_009c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_ActualHeight__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00a1:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Height__f8
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00a6:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00a7:
    mov -24(%rbp), %rdi
    lea .LN_14_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00ac:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00ad:
    mov -32(%rbp), %rdi
    lea .LN_15_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00b2:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Visibility__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00b7:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00bc:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00bd:
    mov -24(%rbp), %rdi
    lea .LN_16_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00c2:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00c3:
    mov -32(%rbp), %rdi
    lea .LN_17_m_Skymu_SliceControl_SyncOverlayLayout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00c8:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Visibility__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00cd:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_00d2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_SyncOverlayLayout_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_SyncOverlayLayout__void, .-m_Skymu_SliceControl_SyncOverlayLayout__void

.globl m_Skymu_SliceControl_UpdateHitTestState__void
.type m_Skymu_SliceControl_UpdateHitTestState__void, @function
m_Skymu_SliceControl_UpdateHitTestState__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0001:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0002:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0007:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_UpdateHitTestState_void_0011
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_000a:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Interactive__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_000f:
    jmp .Lm_Skymu_SliceControl_UpdateHitTestState_void_0012
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0011:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0012:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_IsHitTestVisible__b
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0018:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_001d:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_UpdateHitTestState_void_002f
.Lm_Skymu_SliceControl_UpdateHitTestState_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0020:
    movsd .LD_0_m_Skymu_SliceControl_UpdateHitTestState_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0029:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_SliceControl_UpdateHitTestState_void_002e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateHitTestState_void_002f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0030:
    movsd .LD_1_m_Skymu_SliceControl_UpdateHitTestState_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateHitTestState_void_0039:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Opacity__f8
.Lm_Skymu_SliceControl_UpdateHitTestState_void_003e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateHitTestState_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_UpdateHitTestState__void, .-m_Skymu_SliceControl_UpdateHitTestState__void

.globl m_Skymu_SliceControl_SetState__v
.type m_Skymu_SliceControl_SetState__v, @function
m_Skymu_SliceControl_SetState__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_SetState_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetState_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetState_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_SetState_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_SetState_v_0007:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetState_v_0008:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateHitTestState__void
.Lm_Skymu_SliceControl_SetState_v_000d:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetState_v_000e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateSlices__void
.Lm_Skymu_SliceControl_SetState_v_0013:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetState_v_0014:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateTextOffset__void
.Lm_Skymu_SliceControl_SetState_v_0019:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetState_v_001a:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateIconOffset__void
.Lm_Skymu_SliceControl_SetState_v_001f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetState_v_0020:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateBackground__void
.Lm_Skymu_SliceControl_SetState_v_0025:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetState_v_0026:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateTextColor__void
.Lm_Skymu_SliceControl_SetState_v_002b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_SetState_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_SetState__v, .-m_Skymu_SliceControl_SetState__v

.globl m_Skymu_SliceControl_GetState__void
.type m_Skymu_SliceControl_GetState__void, @function
m_Skymu_SliceControl_GetState__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_GetState_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetState_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_GetState_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetState_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_GetState_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_GetState__void, .-m_Skymu_SliceControl_GetState__void

.globl m_Skymu_SliceControl_UpdateBackground__void
.type m_Skymu_SliceControl_UpdateBackground__void, @function
m_Skymu_SliceControl_UpdateBackground__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_UpdateBackground_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0006:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0008:
    mov -32(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_SliceControl_UpdateBackground_void_001a
    cmp $1, %eax
    je .Lm_Skymu_SliceControl_UpdateBackground_void_002f
    cmp $2, %eax
    je .Lm_Skymu_SliceControl_UpdateBackground_void_0044
.Lm_Skymu_SliceControl_UpdateBackground_void_0019:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateBackground_void_001a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_001b:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_UpdateBackground_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0020:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_UpdateBackground_void_0058
.Lm_Skymu_SliceControl_UpdateBackground_void_0022:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0023:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0024:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_UpdateBackground_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0029:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Control_set_Background__ref
.Lm_Skymu_SliceControl_UpdateBackground_void_002e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateBackground_void_002f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0030:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_BackgroundHover__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0035:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_UpdateBackground_void_0058
.Lm_Skymu_SliceControl_UpdateBackground_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0038:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_BackgroundHover__void
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_003e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Control_set_Background__ref
.Lm_Skymu_SliceControl_UpdateBackground_void_0043:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateBackground_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0045:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_BackgroundPressed__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_004a:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_UpdateBackground_void_0058
.Lm_Skymu_SliceControl_UpdateBackground_void_004c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_004e:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_BackgroundPressed__void
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_UpdateBackground_void_0053:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Control_set_Background__ref
.Lm_Skymu_SliceControl_UpdateBackground_void_0058:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateBackground_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_UpdateBackground__void, .-m_Skymu_SliceControl_UpdateBackground__void

.globl m_Skymu_SliceControl_GetEffectiveTextColor__void
.type m_Skymu_SliceControl_GetEffectiveTextColor__void, @function
m_Skymu_SliceControl_GetEffectiveTextColor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_GetEffectiveTextColor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0006:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0007:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0018
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_000a:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextColorPressed__void
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_000f:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0018
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0012:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextColorPressed__void
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0017:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_0019:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextColor__void
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_001e:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_GetEffectiveTextColor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_GetEffectiveTextColor__void, .-m_Skymu_SliceControl_GetEffectiveTextColor__void

.globl m_Skymu_SliceControl_UpdateTextColor__void
.type m_Skymu_SliceControl_UpdateTextColor__void, @function
m_Skymu_SliceControl_UpdateTextColor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_UpdateTextColor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateTextColor_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_UpdateTextColor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateTextColor_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_UpdateTextColor_void_0019
.Lm_Skymu_SliceControl_UpdateTextColor_void_0008:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateTextColor_void_0009:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_UpdateTextColor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateTextColor_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateTextColor_void_000f:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_GetEffectiveTextColor__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateTextColor_void_0014:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_SliceControl_UpdateTextColor_void_0019:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateTextColor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_UpdateTextColor__void, .-m_Skymu_SliceControl_UpdateTextColor__void

.globl m_Skymu_SliceControl_OnAnimationPropertyChanged__ref_v
.type m_Skymu_SliceControl_OnAnimationPropertyChanged__ref_v, @function
m_Skymu_SliceControl_OnAnimationPropertyChanged__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_OnAnimationPropertyChanged_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_OnAnimationPropertyChanged_ref_v_0001:
.Lm_Skymu_SliceControl_OnAnimationPropertyChanged_ref_v_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateAnimation__void
.Lm_Skymu_SliceControl_OnAnimationPropertyChanged_ref_v_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnAnimationPropertyChanged_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_OnAnimationPropertyChanged__ref_v, .-m_Skymu_SliceControl_OnAnimationPropertyChanged__ref_v

.globl m_Skymu_SliceControl_OnAnyPropertyChanged__ref_v
.type m_Skymu_SliceControl_OnAnyPropertyChanged__ref_v, @function
m_Skymu_SliceControl_OnAnyPropertyChanged__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_OnAnyPropertyChanged_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_OnAnyPropertyChanged_ref_v_0001:
.Lm_Skymu_SliceControl_OnAnyPropertyChanged_ref_v_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateSlices__void
.Lm_Skymu_SliceControl_OnAnyPropertyChanged_ref_v_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnAnyPropertyChanged_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_OnAnyPropertyChanged__ref_v, .-m_Skymu_SliceControl_OnAnyPropertyChanged__ref_v

.globl m_Skymu_SliceControl_OnOffsetChanged__ref_v
.type m_Skymu_SliceControl_OnOffsetChanged__ref_v, @function
m_Skymu_SliceControl_OnOffsetChanged__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_OnOffsetChanged_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_OnOffsetChanged_ref_v_0001:
.Lm_Skymu_SliceControl_OnOffsetChanged_ref_v_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_OnOffsetChanged_ref_v_0007:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateIconOffset__void
.Lm_Skymu_SliceControl_OnOffsetChanged_ref_v_000c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateTextOffset__void
.Lm_Skymu_SliceControl_OnOffsetChanged_ref_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnOffsetChanged_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_OnOffsetChanged__ref_v, .-m_Skymu_SliceControl_OnOffsetChanged__ref_v

.globl m_Skymu_SliceControl_OnTextChanged__ref_v
.type m_Skymu_SliceControl_OnTextChanged__ref_v, @function
m_Skymu_SliceControl_OnTextChanged__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_OnTextChanged_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_OnTextChanged_ref_v_0001:
.Lm_Skymu_SliceControl_OnTextChanged_ref_v_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_OnTextChanged_ref_v_0007:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateText__void
.Lm_Skymu_SliceControl_OnTextChanged_ref_v_000c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateTextOffset__void
.Lm_Skymu_SliceControl_OnTextChanged_ref_v_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnTextChanged_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_OnTextChanged__ref_v, .-m_Skymu_SliceControl_OnTextChanged__ref_v

.globl m_Skymu_SliceControl_OnIconChanged__ref_v
.type m_Skymu_SliceControl_OnIconChanged__ref_v, @function
m_Skymu_SliceControl_OnIconChanged__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_OnIconChanged_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_OnIconChanged_ref_v_0001:
.Lm_Skymu_SliceControl_OnIconChanged_ref_v_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateIconOffset__void
.Lm_Skymu_SliceControl_OnIconChanged_ref_v_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_OnIconChanged_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_OnIconChanged__ref_v, .-m_Skymu_SliceControl_OnIconChanged__ref_v

.globl m_Skymu_SliceControl_UpdateText__void
.type m_Skymu_SliceControl_UpdateText__void, @function
m_Skymu_SliceControl_UpdateText__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_UpdateText_void_0009
.Lm_Skymu_SliceControl_UpdateText_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateText_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_000a:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_000f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0010:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Text__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0015:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_SliceControl_UpdateText_void_001a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_001b:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0020:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0021:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextFont__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0026:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontFamily__ref
.Lm_Skymu_SliceControl_UpdateText_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_002c:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0032:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextSize__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0037:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontSize__f8
.Lm_Skymu_SliceControl_UpdateText_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_003d:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0042:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0043:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_GetEffectiveTextColor__void
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0048:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_SliceControl_UpdateText_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_004e:
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0053:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0054:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextHorizontalAlignment__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0059:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_HorizontalAlignment__v
.Lm_Skymu_SliceControl_UpdateText_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_005f:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0065:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextVerticalAlignment__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_006a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_VerticalAlignment__v
.Lm_Skymu_SliceControl_UpdateText_void_006f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0070:
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0075:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0076:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextWeight__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_007b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontWeight__v
.Lm_Skymu_SliceControl_UpdateText_void_0080:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0081:
    mov -24(%rbp), %rdi
    lea .LN_8_m_Skymu_SliceControl_UpdateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_0087:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_TextStyle__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_UpdateText_void_008c:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontStyle__v
.Lm_Skymu_SliceControl_UpdateText_void_0091:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_UpdateText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_UpdateText__void, .-m_Skymu_SliceControl_UpdateText__void

.globl m_Skymu_SliceControl_MakeBrush__void
.type m_Skymu_SliceControl_MakeBrush__void, @function
m_Skymu_SliceControl_MakeBrush__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_SliceControl_MakeBrush_void_0000:
    lea .LN_0_m_Skymu_SliceControl_MakeBrush_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Media_ImageBrush_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_SliceControl_MakeBrush_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_MakeBrush_void_0006:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_MakeBrush_void_0007:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_TileBrush_set_Stretch__v
.Lm_Skymu_SliceControl_MakeBrush_void_000c:
    mov -8(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_SliceControl_MakeBrush_void_000d:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_MakeBrush_void_000e:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_TileBrush_set_ViewboxUnits__v
.Lm_Skymu_SliceControl_MakeBrush_void_0013:
    mov -8(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_MakeBrush_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_MakeBrush__void, .-m_Skymu_SliceControl_MakeBrush__void

.globl m_Skymu_SliceControl_GetCurrentIndex__void
.type m_Skymu_SliceControl_GetCurrentIndex__void, @function
m_Skymu_SliceControl_GetCurrentIndex__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_GetCurrentIndex_void_0011
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0008:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0009:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_GetCurrentIndex_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_000e:
    mov $3, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_000f:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_GetCurrentIndex_void_0018
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0012:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_DisabledIndex__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0017:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0019:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_IsAnimation__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_001e:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_GetCurrentIndex_void_0027
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0020:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0021:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_GetCurrentIndex_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0026:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0028:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_GetCurrentIndex_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_002d:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_002e:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_GetCurrentIndex_void_0040
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0031:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_HoverIndex__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0036:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0037:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_SliceControl_GetCurrentIndex_void_0040
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0039:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_003a:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_HoverIndex__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_003f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0041:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_GetCurrentIndex_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0046:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0047:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_GetCurrentIndex_void_0059
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_004a:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_PressedIndex__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_004f:
    mov $-1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0050:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_SliceControl_GetCurrentIndex_void_0059
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0052:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0053:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_PressedIndex__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0058:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_GetCurrentIndex_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_005a:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_DefaultIndex__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_GetCurrentIndex_void_005f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_GetCurrentIndex_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_GetCurrentIndex__void, .-m_Skymu_SliceControl_GetCurrentIndex__void

.globl m_Skymu_SliceControl_ApplyBrush__ref_ref_f8_f8_f8_f8
.type m_Skymu_SliceControl_ApplyBrush__ref_ref_f8_f8_f8_f8, @function
m_Skymu_SliceControl_ApplyBrush__ref_ref_f8_f8_f8_f8:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0000:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0001:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_ImageBrush_get_ImageSource__void
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0006:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0007:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Source__void
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_000c:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_001a
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_000e:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_000f:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0010:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Source__void
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0015:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_ImageBrush_set_ImageSource__ref
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_001a:
    lea -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_001c:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_001d:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_001f:
    movsd .LD_0_m_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0028:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_002a:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_Math_Max__f8_f8
    mov %rax, -104(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_002f:
    movsd .LD_1_m_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0038:
    mov 16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_003a:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_System_Math_Max__f8_f8
    mov %rax, -112(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_003f:
    mov -112(%rbp), %r8
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Rect_ctor__f8_f8_f8_f8
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0044:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0045:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_TileBrush_get_Viewbox__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_004a:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_004b:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_Windows_Rect_op_Inequality__v_v
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0050:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0059
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0052:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0053:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0054:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_TileBrush_set_Viewbox__v
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0059:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_005a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Shapes_Shape_get_Fill__void
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_005f:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0060:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0069
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0062:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0063:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0064:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Shapes_Shape_set_Fill__ref
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0069:
    call m_Skymu_Universal_get_IsDarkTheme__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_006e:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0084
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0070:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0071:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Themeable__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0076:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0084
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0078:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0079:
    lea .LN_2_m_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Shaders_DarkenShader_ctor__void
    mov %r12, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_007e:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Effect__ref
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0083:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0084:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0085:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_0086:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Effect__ref
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_008b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ApplyBrush__ref_ref_f8_f8_f8_f8, .-m_Skymu_SliceControl_ApplyBrush__ref_ref_f8_f8_f8_f8

.globl m_Skymu_SliceControl_SetNineSliceVisibility__b
.type m_Skymu_SliceControl_SetNineSliceVisibility__b, @function
m_Skymu_SliceControl_SetNineSliceVisibility__b:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0001:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0006
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0003:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0004:
    jmp .Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0007
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0006:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0007:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0008:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0009:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_SetNineSliceVisibility_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_000f:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_SetNineSliceVisibility_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0014:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0015:
    mov -72(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_SetNineSliceVisibility_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_001a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_001b:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_001c:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_001d:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0022:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0023:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0024:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0025:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_002a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_002b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0030:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0031:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_SetNineSliceVisibility_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0036:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0037:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_SetNineSliceVisibility_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_003c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_003d:
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_SliceControl_SetNineSliceVisibility_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0042:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0043:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0044:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0045:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_004a:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_004b:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_004c:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_004d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0052:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0053:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_0058:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_SetNineSliceVisibility_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_SetNineSliceVisibility__b, .-m_Skymu_SliceControl_SetNineSliceVisibility__b

.globl m_Skymu_SliceControl_InitializeComponent__void
.type m_Skymu_SliceControl_InitializeComponent__void, @function
m_Skymu_SliceControl_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_InitializeComponent_void_0009
.Lm_Skymu_SliceControl_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_SliceControl_InitializeComponent_void(%rip), %rdi
    mov $47, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_SliceControl_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_SliceControl_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_InitializeComponent__void, .-m_Skymu_SliceControl_InitializeComponent__void

.globl m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0049
    cmp $1, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0056
    cmp $2, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0063
    cmp $3, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0070
    cmp $4, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007d
    cmp $5, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008a
    cmp $6, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0097
    cmp $7, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a4
    cmp $8, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b1
    cmp $9, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00be
    cmp $10, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cb
    cmp $11, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d8
    cmp $12, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e5
    cmp $13, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f2
    cmp $14, %eax
    je .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ff
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0044:
    jmp .Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010c
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0049:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004b:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0050:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0055:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0056:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0057:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0058:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0062:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0063:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0064:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0065:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0070:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0071:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0072:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0077:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007f:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0084:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0089:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008c:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0091:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0096:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0097:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0098:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0099:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_009e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a4:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a5:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00a6:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ab:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b3:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00be:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bf:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c0:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ca:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cb:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cc:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cd:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00da:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00df:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e7:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ec:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f4:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fe:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ff:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0100:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0101:
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0106:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010d:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010e:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_15_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0113:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_SliceControl_ctor_b_23_1__ref_ref
.type m_Skymu_SliceControl_ctor_b_23_1__ref_ref, @function
m_Skymu_SliceControl_ctor_b_23_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_0009
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_000a:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetStateInternal__v
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor_b_23_1__ref_ref, .-m_Skymu_SliceControl_ctor_b_23_1__ref_ref

.globl m_Skymu_SliceControl_ctor_b_23_2__ref_ref
.type m_Skymu_SliceControl_ctor_b_23_2__ref_ref, @function
m_Skymu_SliceControl_ctor_b_23_2__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_0009
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_000a:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetStateInternal__v
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_2_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor_b_23_2__ref_ref, .-m_Skymu_SliceControl_ctor_b_23_2__ref_ref

.globl m_Skymu_SliceControl_ctor_b_23_3__ref_ref
.type m_Skymu_SliceControl_ctor_b_23_3__ref_ref, @function
m_Skymu_SliceControl_ctor_b_23_3__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0009
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_000a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_IsRadioButton__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_000f:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_001b
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0011:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0012:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_ctor_b_23_3_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0017:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0018:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_001b
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_001a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_001c:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_001d:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_ctor_b_23_3_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0022:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0023:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0024:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetStateInternal__v
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_0029:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_3_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor_b_23_3__ref_ref, .-m_Skymu_SliceControl_ctor_b_23_3__ref_ref

.globl m_Skymu_SliceControl_ctor_b_23_4__ref_ref
.type m_Skymu_SliceControl_ctor_b_23_4__ref_ref, @function
m_Skymu_SliceControl_ctor_b_23_4__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0006:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0009
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_000a:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_000b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_SliceControl_ctor_b_23_4_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0011:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsMouseOver__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0016:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0021
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0018:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0019:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_HoverIndex__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_001e:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_001f:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0024
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0021:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0022:
    jmp .Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0025
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0024:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0025:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0027:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_IsRadioButton__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_002c:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0038
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_002e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_002f:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_SliceControl_ctor_b_23_4_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0034:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0035:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0038
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0038:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0039:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_003a:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetStateInternal__v
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_003f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0040:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Command__void
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0045:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0068
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0047:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0048:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_CommandParameter__void
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_004d:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_004e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_004f:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Command__void
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0054:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0055:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Input_ICommand_CanExecute__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_005a:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0068
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_005c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_005d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Command__void
    mov %rax, -56(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0062:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0063:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Input_ICommand_Execute__ref
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_0068:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_4_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor_b_23_4__ref_ref, .-m_Skymu_SliceControl_ctor_b_23_4__ref_ref

.globl m_Skymu_SliceControl_ctor_b_23_5__ref_v
.type m_Skymu_SliceControl_ctor_b_23_5__ref_v, @function
m_Skymu_SliceControl_ctor_b_23_5__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateHitTestState__void
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0007:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_000c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_003e
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_000e:
    lea .LN_0_m_Skymu_SliceControl_ctor_b_23_5_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0013:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0014:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_Remove__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0019:
    mov -40(%rbp), %rax
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_001a:
    lea .LN_1_m_Skymu_SliceControl_ctor_b_23_5_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_001f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Count__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0024:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0036
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0026:
    lea .LN_2_m_Skymu_SliceControl_ctor_b_23_5_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_002b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_002c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0031
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_002e:
    mov -32(%rbp), %rax
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_002f:
    jmp .Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0036
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Stop__void
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0036:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0037:
    mov $3, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0038:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetStateInternal__v
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_003d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_003e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_003f:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0040:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetStateInternal__v
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0045:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_0046:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateAnimation__void
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_004b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_5_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor_b_23_5__ref_v, .-m_Skymu_SliceControl_ctor_b_23_5__ref_v

.globl m_Skymu_SliceControl_ctor_b_23_6__ref_ref
.type m_Skymu_SliceControl_ctor_b_23_6__ref_ref, @function
m_Skymu_SliceControl_ctor_b_23_6__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateHitTestState__void
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0007:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateTextOffset__void
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_000d:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateIconOffset__void
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0014:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_IsEnabled__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0019:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_001e
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_001b:
    mov $3, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_001c:
    jmp .Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0024
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_001e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_001f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_ButtonStateOnInit__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0024:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetStateInternal__v
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0029:
    lea .LN_0_m_Skymu_SliceControl_ctor_b_23_6_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_002e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_002f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_Remove__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0034:
    mov -40(%rbp), %rax
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0035:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_0036:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateAnimation__void
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_003b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_6_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor_b_23_6__ref_ref, .-m_Skymu_SliceControl_ctor_b_23_6__ref_ref

.globl m_Skymu_SliceControl_ctor_b_23_7__ref_v
.type m_Skymu_SliceControl_ctor_b_23_7__ref_v, @function
m_Skymu_SliceControl_ctor_b_23_7__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0002:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_DependencyPropertyChangedEventArgs_get_NewValue__void
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0007:
    mov -40(%rbp), %rdi
    call shim_unbox
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_000c:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0015
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_000f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_UpdateAnimation__void
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0015:
    lea .LN_0_m_Skymu_SliceControl_ctor_b_23_7_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_001a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_001b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_Remove__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0020:
    mov -40(%rbp), %rax
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0021:
    lea .LN_1_m_Skymu_SliceControl_ctor_b_23_7_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0026:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Count__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_002b:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_003c
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_002d:
    lea .LN_2_m_Skymu_SliceControl_ctor_b_23_7_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0032:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0033:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0037
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0035:
    mov -32(%rbp), %rax
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0036:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_0037:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Stop__void
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_003c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_7_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor_b_23_7__ref_v, .-m_Skymu_SliceControl_ctor_b_23_7__ref_v

.globl m_Skymu_SliceControl_ctor_b_23_8__ref_ref
.type m_Skymu_SliceControl_ctor_b_23_8__ref_ref, @function
m_Skymu_SliceControl_ctor_b_23_8__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0000:
    lea .LN_0_m_Skymu_SliceControl_ctor_b_23_8_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_Remove__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_000b:
    mov -40(%rbp), %rax
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_000c:
    lea .LN_1_m_Skymu_SliceControl_ctor_b_23_8_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0011:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_get_Count__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0016:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0028
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0018:
    lea .LN_2_m_Skymu_SliceControl_ctor_b_23_8_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_001e:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0023
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0020:
    mov -32(%rbp), %rax
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0021:
    jmp .Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0028
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0023:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Stop__void
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0028:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0029:
    lea m_Skymu_SliceControl_OnThemeChanged__void(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_002f:
    lea .LN_3_m_Skymu_SliceControl_ctor_b_23_8_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0034:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_remove_ThemeChanged__ref
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_SliceControl_ctor_b_23_8_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_SliceControl_ctor_b_23_8__ref_ref, .-m_Skymu_SliceControl_ctor_b_23_8__ref_ref

    .globl m_Skymu_SliceControl_c_ctor_b_23_0__ref_ref
    .type m_Skymu_SliceControl_c_ctor_b_23_0__ref_ref, @function
m_Skymu_SliceControl_c_ctor_b_23_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_c_ctor_b_23_0_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_c_ctor_b_23_0__ref_ref, .-m_Skymu_SliceControl_c_ctor_b_23_0__ref_ref

    .globl m_Skymu_SliceControl_BeginFadeTransition__v
    .type m_Skymu_SliceControl_BeginFadeTransition__v, @function
m_Skymu_SliceControl_BeginFadeTransition__v:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_BeginFadeTransition_v(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_BeginFadeTransition__v, .-m_Skymu_SliceControl_BeginFadeTransition__v

    .globl m_Skymu_SliceControl_PaintOverlay__v
    .type m_Skymu_SliceControl_PaintOverlay__v, @function
m_Skymu_SliceControl_PaintOverlay__v:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_PaintOverlay_v(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_PaintOverlay__v, .-m_Skymu_SliceControl_PaintOverlay__v

    .globl m_Skymu_SliceControl_UpdateTextOffset__void
    .type m_Skymu_SliceControl_UpdateTextOffset__void, @function
m_Skymu_SliceControl_UpdateTextOffset__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_UpdateTextOffset_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_UpdateTextOffset__void, .-m_Skymu_SliceControl_UpdateTextOffset__void

    .globl m_Skymu_SliceControl_UpdateIconOffset__void
    .type m_Skymu_SliceControl_UpdateIconOffset__void, @function
m_Skymu_SliceControl_UpdateIconOffset__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_UpdateIconOffset_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_UpdateIconOffset__void, .-m_Skymu_SliceControl_UpdateIconOffset__void

    .globl m_Skymu_SliceControl_UpdateAnimation__void
    .type m_Skymu_SliceControl_UpdateAnimation__void, @function
m_Skymu_SliceControl_UpdateAnimation__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_UpdateAnimation_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_UpdateAnimation__void, .-m_Skymu_SliceControl_UpdateAnimation__void

    .globl m_Skymu_SliceControl_GetStateViewbox__void
    .type m_Skymu_SliceControl_GetStateViewbox__void, @function
m_Skymu_SliceControl_GetStateViewbox__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_GetStateViewbox_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_GetStateViewbox__void, .-m_Skymu_SliceControl_GetStateViewbox__void

    .globl m_Skymu_SliceControl_GetElementHeight__void
    .type m_Skymu_SliceControl_GetElementHeight__void, @function
m_Skymu_SliceControl_GetElementHeight__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_GetElementHeight_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_GetElementHeight__void, .-m_Skymu_SliceControl_GetElementHeight__void

    .globl m_Skymu_SliceControl_UpdateSlices__void
    .type m_Skymu_SliceControl_UpdateSlices__void, @function
m_Skymu_SliceControl_UpdateSlices__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_UpdateSlices_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_UpdateSlices__void, .-m_Skymu_SliceControl_UpdateSlices__void

    .globl m_Skymu_SliceControl_cctor__void
    .type m_Skymu_SliceControl_cctor__void, @function
m_Skymu_SliceControl_cctor__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_SliceControl_cctor_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_SliceControl_cctor__void, .-m_Skymu_SliceControl_cctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_SliceControl_c_cctor_void:
    .asciz "Skymu.SliceControl/'<>c'"

.LN_1_m_Skymu_SliceControl_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "<>4__this"

.LN_1_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "_fadeStoryboard"

.LN_2_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "newSb"

.LN_3_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "<>4__this"

.LN_4_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "OverlayLeft"

.LN_5_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "<>4__this"

.LN_6_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "OverlayMiddle"

.LN_7_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "<>4__this"

.LN_8_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "OverlayRight"

.LD_9_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .double 0.0

.LN_10_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "<>4__this"

.LN_11_m_Skymu_SliceControl_c_DisplayClass196_0_BeginFadeTransition_b_0_ref_ref:
    .asciz "_fadeStoryboard"

.LN_0_m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref:
    .asciz "control"

.LN_1_m_Skymu_SliceControl_c_DisplayClass94_0_OnSourceChanged_b_0_ref_ref:
    .asciz "control"

.LN_0_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Action"

.LN_1_m_Skymu_SliceControl_ctor_void:
    .asciz "_background"

.LN_2_m_Skymu_SliceControl_ctor_void:
    .asciz "OverlayLeft"

.LN_3_m_Skymu_SliceControl_ctor_void:
    .asciz "OverlayMiddle"

.LN_4_m_Skymu_SliceControl_ctor_void:
    .asciz "OverlayRight"

.LN_5_m_Skymu_SliceControl_ctor_void:
    .asciz "_overlayRects"

.LN_6_m_Skymu_SliceControl_ctor_void:
    .asciz "_sharedAnimationTimer"

.LN_7_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.Threading.DispatcherTimer"

.LN_8_m_Skymu_SliceControl_ctor_void:
    .asciz "_sharedAnimationTimer"

.LN_9_m_Skymu_SliceControl_ctor_void:
    .asciz "_sharedAnimationTimer"

.LD_10_m_Skymu_SliceControl_ctor_void:
    .double 16.67

.LN_11_m_Skymu_SliceControl_ctor_void:
    .asciz "_sharedAnimationTimer"

.LN_12_m_Skymu_SliceControl_ctor_void:
    .asciz "<>9__23_0"

.LN_13_m_Skymu_SliceControl_ctor_void:
    .asciz "<>9"

.LN_14_m_Skymu_SliceControl_ctor_void:
    .asciz "System.EventHandler"

.LN_15_m_Skymu_SliceControl_ctor_void:
    .asciz "<>9__23_0"

.LN_16_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_17_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_18_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_19_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_20_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.DependencyPropertyChangedEventHandler"

.LN_21_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.RoutedEventHandler"

.LN_22_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.DependencyPropertyChangedEventHandler"

.LN_23_m_Skymu_SliceControl_ctor_void:
    .asciz "System.Windows.RoutedEventHandler"

.LN_0_m_Skymu_SliceControl_get_BackgroundHover_void:
    .asciz "BackgroundHoverProperty"

.LN_0_m_Skymu_SliceControl_set_BackgroundHover_ref:
    .asciz "BackgroundHoverProperty"

.LN_0_m_Skymu_SliceControl_get_BackgroundPressed_void:
    .asciz "BackgroundPressedProperty"

.LN_0_m_Skymu_SliceControl_set_BackgroundPressed_ref:
    .asciz "BackgroundPressedProperty"

.LN_0_m_Skymu_SliceControl_get_TextColorPressed_void:
    .asciz "TextColorPressedProperty"

.LN_0_m_Skymu_SliceControl_set_TextColorPressed_ref:
    .asciz "TextColorPressedProperty"

.LN_0_m_Skymu_SliceControl_get_ElementSpan_void:
    .asciz "ElementSpanProperty"

.LN_0_m_Skymu_SliceControl_set_ElementSpan_i4:
    .asciz "ElementSpanProperty"

.LN_1_m_Skymu_SliceControl_set_ElementSpan_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_ButtonStateOnInit_void:
    .asciz "ButtonStateOnInitProperty"

.LN_0_m_Skymu_SliceControl_set_ButtonStateOnInit_v:
    .asciz "ButtonStateOnInitProperty"

.LN_1_m_Skymu_SliceControl_set_ButtonStateOnInit_v:
    .asciz "Skymu.ButtonVisualState"

.LN_0_m_Skymu_SliceControl_get_Command_void:
    .asciz "CommandProperty"

.LN_0_m_Skymu_SliceControl_set_Command_ref:
    .asciz "CommandProperty"

.LN_0_m_Skymu_SliceControl_get_CommandParameter_void:
    .asciz "CommandParameterProperty"

.LN_0_m_Skymu_SliceControl_set_CommandParameter_ref:
    .asciz "CommandParameterProperty"

.LN_0_m_Skymu_SliceControl_get_IsRadioButton_void:
    .asciz "IsRadioButtonProperty"

.LN_0_m_Skymu_SliceControl_set_IsRadioButton_v:
    .asciz "IsRadioButtonProperty"

.LN_1_m_Skymu_SliceControl_set_IsRadioButton_v:
    .asciz "System.Boolean"

.LN_0_m_Skymu_SliceControl_get_Interactive_void:
    .asciz "InteractiveProperty"

.LN_0_m_Skymu_SliceControl_set_Interactive_v:
    .asciz "InteractiveProperty"

.LN_1_m_Skymu_SliceControl_set_Interactive_v:
    .asciz "System.Boolean"

.LN_0_m_Skymu_SliceControl_get_HoverTransition_void:
    .asciz "HoverTransitionProperty"

.LN_0_m_Skymu_SliceControl_set_HoverTransition_v:
    .asciz "HoverTransitionProperty"

.LN_1_m_Skymu_SliceControl_set_HoverTransition_v:
    .asciz "System.Boolean"

.LN_0_m_Skymu_SliceControl_get_IconSource_void:
    .asciz "IconSourceProperty"

.LN_0_m_Skymu_SliceControl_set_IconSource_ref:
    .asciz "IconSourceProperty"

.LN_0_m_Skymu_SliceControl_get_IconWidth_void:
    .asciz "IconWidthProperty"

.LN_0_m_Skymu_SliceControl_set_IconWidth_f8:
    .asciz "IconWidthProperty"

.LN_1_m_Skymu_SliceControl_set_IconWidth_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_IconHeight_void:
    .asciz "IconHeightProperty"

.LN_0_m_Skymu_SliceControl_set_IconHeight_f8:
    .asciz "IconHeightProperty"

.LN_1_m_Skymu_SliceControl_set_IconHeight_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_IconLeftMargin_void:
    .asciz "IconLeftMarginProperty"

.LN_0_m_Skymu_SliceControl_set_IconLeftMargin_i4:
    .asciz "IconLeftMarginProperty"

.LN_1_m_Skymu_SliceControl_set_IconLeftMargin_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_IconRightMargin_void:
    .asciz "IconRightMarginProperty"

.LN_0_m_Skymu_SliceControl_set_IconRightMargin_i4:
    .asciz "IconRightMarginProperty"

.LN_1_m_Skymu_SliceControl_set_IconRightMargin_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_Themeable_void:
    .asciz "ThemeableProperty"

.LN_0_m_Skymu_SliceControl_set_Themeable_v:
    .asciz "ThemeableProperty"

.LN_1_m_Skymu_SliceControl_set_Themeable_v:
    .asciz "System.Boolean"

.LN_0_m_Skymu_SliceControl_get_Source_void:
    .asciz "SourceProperty"

.LN_0_m_Skymu_SliceControl_set_Source_ref:
    .asciz "SourceProperty"

.LN_0_m_Skymu_SliceControl_OnSourceChanged_ref_v:
    .asciz "Skymu.SliceControl/'<>c__DisplayClass94_0'"

.LN_1_m_Skymu_SliceControl_OnSourceChanged_ref_v:
    .asciz "control"

.LN_2_m_Skymu_SliceControl_OnSourceChanged_ref_v:
    .asciz "control"

.LN_3_m_Skymu_SliceControl_OnSourceChanged_ref_v:
    .asciz "System.EventHandler"

.LN_4_m_Skymu_SliceControl_OnSourceChanged_ref_v:
    .asciz "control"

.LN_0_m_Skymu_SliceControl_get_ElementCount_void:
    .asciz "ElementCountProperty"

.LN_0_m_Skymu_SliceControl_set_ElementCount_i4:
    .asciz "ElementCountProperty"

.LN_1_m_Skymu_SliceControl_set_ElementCount_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_SpriteSpacing_void:
    .asciz "SpriteSpacingProperty"

.LN_0_m_Skymu_SliceControl_set_SpriteSpacing_f8:
    .asciz "SpriteSpacingProperty"

.LN_1_m_Skymu_SliceControl_set_SpriteSpacing_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_StackDirection_void:
    .asciz "StackDirectionProperty"

.LN_0_m_Skymu_SliceControl_set_StackDirection_v:
    .asciz "StackDirectionProperty"

.LN_1_m_Skymu_SliceControl_set_StackDirection_v:
    .asciz "Skymu.SpriteStackDirection"

.LN_0_m_Skymu_SliceControl_get_DefaultIndex_void:
    .asciz "DefaultIndexProperty"

.LN_0_m_Skymu_SliceControl_set_DefaultIndex_i4:
    .asciz "DefaultIndexProperty"

.LN_1_m_Skymu_SliceControl_set_DefaultIndex_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_DisabledIndex_void:
    .asciz "DisabledIndexProperty"

.LN_0_m_Skymu_SliceControl_set_DisabledIndex_i4:
    .asciz "DisabledIndexProperty"

.LN_1_m_Skymu_SliceControl_set_DisabledIndex_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_HoverIndex_void:
    .asciz "HoverIndexProperty"

.LN_0_m_Skymu_SliceControl_set_HoverIndex_i4:
    .asciz "HoverIndexProperty"

.LN_1_m_Skymu_SliceControl_set_HoverIndex_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_PressedIndex_void:
    .asciz "PressedIndexProperty"

.LN_0_m_Skymu_SliceControl_set_PressedIndex_i4:
    .asciz "PressedIndexProperty"

.LN_1_m_Skymu_SliceControl_set_PressedIndex_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_IsAnimation_void:
    .asciz "IsAnimationProperty"

.LN_0_m_Skymu_SliceControl_set_IsAnimation_v:
    .asciz "IsAnimationProperty"

.LN_1_m_Skymu_SliceControl_set_IsAnimation_v:
    .asciz "System.Boolean"

.LN_0_m_Skymu_SliceControl_get_AnimationFps_void:
    .asciz "AnimationFpsProperty"

.LN_0_m_Skymu_SliceControl_set_AnimationFps_f8:
    .asciz "AnimationFpsProperty"

.LN_1_m_Skymu_SliceControl_set_AnimationFps_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_Text_void:
    .asciz "TextProperty"

.LN_0_m_Skymu_SliceControl_set_Text_ref:
    .asciz "TextProperty"

.LN_0_m_Skymu_SliceControl_get_TextFont_void:
    .asciz "TextFontProperty"

.LN_0_m_Skymu_SliceControl_set_TextFont_ref:
    .asciz "TextFontProperty"

.LN_0_m_Skymu_SliceControl_get_TextWeight_void:
    .asciz "TextWeightProperty"

.LN_0_m_Skymu_SliceControl_set_TextWeight_v:
    .asciz "TextWeightProperty"

.LN_1_m_Skymu_SliceControl_set_TextWeight_v:
    .asciz "System.Windows.FontWeight"

.LN_0_m_Skymu_SliceControl_get_LeftWidth_void:
    .asciz "LeftWidthProperty"

.LN_0_m_Skymu_SliceControl_set_LeftWidth_f8:
    .asciz "LeftWidthProperty"

.LN_1_m_Skymu_SliceControl_set_LeftWidth_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_RightWidth_void:
    .asciz "RightWidthProperty"

.LN_0_m_Skymu_SliceControl_set_RightWidth_f8:
    .asciz "RightWidthProperty"

.LN_1_m_Skymu_SliceControl_set_RightWidth_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_TopHeight_void:
    .asciz "TopHeightProperty"

.LN_0_m_Skymu_SliceControl_set_TopHeight_f8:
    .asciz "TopHeightProperty"

.LN_1_m_Skymu_SliceControl_set_TopHeight_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_BottomHeight_void:
    .asciz "BottomHeightProperty"

.LN_0_m_Skymu_SliceControl_set_BottomHeight_f8:
    .asciz "BottomHeightProperty"

.LN_1_m_Skymu_SliceControl_set_BottomHeight_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_TextStyle_void:
    .asciz "TextStyleProperty"

.LN_0_m_Skymu_SliceControl_set_TextStyle_v:
    .asciz "TextStyleProperty"

.LN_1_m_Skymu_SliceControl_set_TextStyle_v:
    .asciz "System.Windows.FontStyle"

.LN_0_m_Skymu_SliceControl_get_TextSize_void:
    .asciz "TextSizeProperty"

.LN_0_m_Skymu_SliceControl_set_TextSize_f8:
    .asciz "TextSizeProperty"

.LN_1_m_Skymu_SliceControl_set_TextSize_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_TextColor_void:
    .asciz "TextColorProperty"

.LN_0_m_Skymu_SliceControl_set_TextColor_ref:
    .asciz "TextColorProperty"

.LN_0_m_Skymu_SliceControl_get_TextHorizontalAlignment_void:
    .asciz "TextHorizontalAlignmentProperty"

.LN_0_m_Skymu_SliceControl_set_TextHorizontalAlignment_v:
    .asciz "TextHorizontalAlignmentProperty"

.LN_1_m_Skymu_SliceControl_set_TextHorizontalAlignment_v:
    .asciz "System.Windows.HorizontalAlignment"

.LN_0_m_Skymu_SliceControl_get_TextVerticalAlignment_void:
    .asciz "TextVerticalAlignmentProperty"

.LN_0_m_Skymu_SliceControl_set_TextVerticalAlignment_v:
    .asciz "TextVerticalAlignmentProperty"

.LN_1_m_Skymu_SliceControl_set_TextVerticalAlignment_v:
    .asciz "System.Windows.VerticalAlignment"

.LN_0_m_Skymu_SliceControl_get_TextLeftMargin_void:
    .asciz "TextLeftMarginProperty"

.LN_0_m_Skymu_SliceControl_set_TextLeftMargin_i4:
    .asciz "TextLeftMarginProperty"

.LN_1_m_Skymu_SliceControl_set_TextLeftMargin_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_TextRightMargin_void:
    .asciz "TextRightMarginProperty"

.LN_0_m_Skymu_SliceControl_set_TextRightMargin_i4:
    .asciz "TextRightMarginProperty"

.LN_1_m_Skymu_SliceControl_set_TextRightMargin_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_get_PressedOffsetY_void:
    .asciz "PressedOffsetYProperty"

.LN_0_m_Skymu_SliceControl_set_PressedOffsetY_f8:
    .asciz "PressedOffsetYProperty"

.LN_1_m_Skymu_SliceControl_set_PressedOffsetY_f8:
    .asciz "System.Double"

.LN_0_m_Skymu_SliceControl_get_SliceMode_void:
    .asciz "SliceModeProperty"

.LN_0_m_Skymu_SliceControl_set_SliceMode_i4:
    .asciz "SliceModeProperty"

.LN_1_m_Skymu_SliceControl_set_SliceMode_i4:
    .asciz "System.Int32"

.LN_0_m_Skymu_SliceControl_SetStateInternal_v:
    .asciz "_visualState"

.LN_1_m_Skymu_SliceControl_SetStateInternal_v:
    .asciz "_visualState"

.LN_2_m_Skymu_SliceControl_SetStateInternal_v:
    .asciz "holding_down"

.LN_3_m_Skymu_SliceControl_SetStateInternal_v:
    .asciz "_fadeStoryboard"

.LN_4_m_Skymu_SliceControl_SetStateInternal_v:
    .asciz "_visualState"

.LN_5_m_Skymu_SliceControl_SetStateInternal_v:
    .asciz "_fadeTargetState"

.LN_6_m_Skymu_SliceControl_SetStateInternal_v:
    .asciz "_visualState"

.LN_0_m_Skymu_SliceControl_AbortFade_void:
    .asciz "_fadeStoryboard"

.LN_1_m_Skymu_SliceControl_AbortFade_void:
    .asciz "_fadeStoryboard"

.LN_2_m_Skymu_SliceControl_AbortFade_void:
    .asciz "_fadeStoryboard"

.LN_3_m_Skymu_SliceControl_AbortFade_void:
    .asciz "OverlayLeft"

.LN_4_m_Skymu_SliceControl_AbortFade_void:
    .asciz "OverlayMiddle"

.LN_5_m_Skymu_SliceControl_AbortFade_void:
    .asciz "OverlayRight"

.LD_6_m_Skymu_SliceControl_AbortFade_void:
    .double 0.0

.LN_0_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayMiddle"

.LN_1_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "MiddleSlice"

.LN_2_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayMiddle"

.LN_3_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "MiddleSlice"

.LN_4_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayMiddle"

.LN_5_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "MiddleSlice"

.LN_6_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayLeft"

.LN_7_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "LeftSlice"

.LN_8_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayLeft"

.LN_9_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "LeftSlice"

.LN_10_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayRight"

.LN_11_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "RightSlice"

.LN_12_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayRight"

.LN_13_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "RightSlice"

.LN_14_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayLeft"

.LN_15_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "LeftSlice"

.LN_16_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "OverlayRight"

.LN_17_m_Skymu_SliceControl_SyncOverlayLayout_void:
    .asciz "RightSlice"

.LD_0_m_Skymu_SliceControl_UpdateHitTestState_void:
    .double 0.4

.LD_1_m_Skymu_SliceControl_UpdateHitTestState_void:
    .double 1

.LN_0_m_Skymu_SliceControl_SetState_v:
    .asciz "_visualState"

.LN_0_m_Skymu_SliceControl_GetState_void:
    .asciz "_visualState"

.LN_0_m_Skymu_SliceControl_UpdateBackground_void:
    .asciz "_visualState"

.LN_1_m_Skymu_SliceControl_UpdateBackground_void:
    .asciz "_background"

.LN_2_m_Skymu_SliceControl_UpdateBackground_void:
    .asciz "_background"

.LN_0_m_Skymu_SliceControl_GetEffectiveTextColor_void:
    .asciz "_visualState"

.LN_0_m_Skymu_SliceControl_UpdateTextColor_void:
    .asciz "OverlayText"

.LN_1_m_Skymu_SliceControl_UpdateTextColor_void:
    .asciz "OverlayText"

.LN_0_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_1_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_2_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_3_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_4_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_5_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_6_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_7_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_8_m_Skymu_SliceControl_UpdateText_void:
    .asciz "OverlayText"

.LN_0_m_Skymu_SliceControl_MakeBrush_void:
    .asciz "System.Windows.Media.ImageBrush"

.LN_0_m_Skymu_SliceControl_GetCurrentIndex_void:
    .asciz "_visualState"

.LN_1_m_Skymu_SliceControl_GetCurrentIndex_void:
    .asciz "_currentAnimationFrame"

.LN_2_m_Skymu_SliceControl_GetCurrentIndex_void:
    .asciz "_visualState"

.LN_3_m_Skymu_SliceControl_GetCurrentIndex_void:
    .asciz "_visualState"

.LD_0_m_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8:
    .double 0.0

.LD_1_m_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8:
    .double 0.0

.LN_2_m_Skymu_SliceControl_ApplyBrush_ref_ref_f8_f8_f8_f8:
    .asciz "Skymu.Shaders.DarkenShader"

.LN_0_m_Skymu_SliceControl_SetNineSliceVisibility_b:
    .asciz "TopLeftSlice"

.LN_1_m_Skymu_SliceControl_SetNineSliceVisibility_b:
    .asciz "TopMidSlice"

.LN_2_m_Skymu_SliceControl_SetNineSliceVisibility_b:
    .asciz "TopRightSlice"

.LN_3_m_Skymu_SliceControl_SetNineSliceVisibility_b:
    .asciz "BotLeftSlice"

.LN_4_m_Skymu_SliceControl_SetNineSliceVisibility_b:
    .asciz "BotMidSlice"

.LN_5_m_Skymu_SliceControl_SetNineSliceVisibility_b:
    .asciz "BotRightSlice"

.LN_0_m_Skymu_SliceControl_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_SliceControl_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_SliceControl_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 117, 115, 101, 114, 99, 111, 110, 116, 114, 111, 108, 115, 47, 115, 108, 105, 99, 101, 99, 111, 110, 116, 114, 111, 108, 46, 120, 97, 109, 108

.LN_3_m_Skymu_SliceControl_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Root"

.LN_1_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TopLeftSlice"

.LN_2_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TopMidSlice"

.LN_3_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TopRightSlice"

.LN_4_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "LeftSlice"

.LN_5_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MiddleSlice"

.LN_6_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "RightSlice"

.LN_7_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "OverlayLeft"

.LN_8_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "OverlayMiddle"

.LN_9_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "OverlayRight"

.LN_10_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BotLeftSlice"

.LN_11_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BotMidSlice"

.LN_12_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "BotRightSlice"

.LN_13_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "OverlayImage"

.LN_14_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "OverlayText"

.LN_15_m_Skymu_SliceControl_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_SliceControl_ctor_b_23_3_ref_ref:
    .asciz "_visualState"

.LN_1_m_Skymu_SliceControl_ctor_b_23_3_ref_ref:
    .asciz "holding_down"

.LN_0_m_Skymu_SliceControl_ctor_b_23_4_ref_ref:
    .asciz "holding_down"

.LN_1_m_Skymu_SliceControl_ctor_b_23_4_ref_ref:
    .asciz "_visualState"

.LN_0_m_Skymu_SliceControl_ctor_b_23_5_ref_v:
    .asciz "_animatingControls"

.LN_1_m_Skymu_SliceControl_ctor_b_23_5_ref_v:
    .asciz "_animatingControls"

.LN_2_m_Skymu_SliceControl_ctor_b_23_5_ref_v:
    .asciz "_sharedAnimationTimer"

.LN_0_m_Skymu_SliceControl_ctor_b_23_6_ref_ref:
    .asciz "_animatingControls"

.LN_0_m_Skymu_SliceControl_ctor_b_23_7_ref_v:
    .asciz "_animatingControls"

.LN_1_m_Skymu_SliceControl_ctor_b_23_7_ref_v:
    .asciz "_animatingControls"

.LN_2_m_Skymu_SliceControl_ctor_b_23_7_ref_v:
    .asciz "_sharedAnimationTimer"

.LN_0_m_Skymu_SliceControl_ctor_b_23_8_ref_ref:
    .asciz "_animatingControls"

.LN_1_m_Skymu_SliceControl_ctor_b_23_8_ref_ref:
    .asciz "_animatingControls"

.LN_2_m_Skymu_SliceControl_ctor_b_23_8_ref_ref:
    .asciz "_sharedAnimationTimer"

.LN_3_m_Skymu_SliceControl_ctor_b_23_8_ref_ref:
    .asciz "System.Action"

.LSTUB_m_Skymu_SliceControl_c_ctor_b_23_0_ref_ref:
    .asciz "Skymu.SliceControl/<>c::'<.ctor>b__23_0'  [floating-point 'ble']"

.LSTUB_m_Skymu_SliceControl_BeginFadeTransition_v:
    .asciz "Skymu.SliceControl::BeginFadeTransition  [stack underflow at IL_0093 (brtrue.s): depth 0 < pops 1]"

.LSTUB_m_Skymu_SliceControl_PaintOverlay_v:
    .asciz "Skymu.SliceControl::PaintOverlay  [call with 7 stack arguments]"

.LSTUB_m_Skymu_SliceControl_UpdateTextOffset_void:
    .asciz "Skymu.SliceControl::UpdateTextOffset  [float conversion]"

.LSTUB_m_Skymu_SliceControl_UpdateIconOffset_void:
    .asciz "Skymu.SliceControl::UpdateIconOffset  [float conversion]"

.LSTUB_m_Skymu_SliceControl_UpdateAnimation_void:
    .asciz "Skymu.SliceControl::UpdateAnimation  [stack underflow at IL_007b (pop): depth 0 < pops 1]"

.LSTUB_m_Skymu_SliceControl_GetStateViewbox_void:
    .asciz "Skymu.SliceControl::GetStateViewbox  [float conversion]"

.LSTUB_m_Skymu_SliceControl_GetElementHeight_void:
    .asciz "Skymu.SliceControl::GetElementHeight  [inconsistent stack depth at IL_0050: 3 vs 5]"

.LSTUB_m_Skymu_SliceControl_UpdateSlices_void:
    .asciz "Skymu.SliceControl::UpdateSlices  [inconsistent stack depth at IL_007f: 2 vs 3]"

.LSTUB_m_Skymu_SliceControl_cctor_void:
    .asciz "Skymu.SliceControl::.cctor  [ldtoken (metadata token)]"

    .section .note.GNU-stack,"",@progbits
