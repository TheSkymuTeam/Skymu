# Forms/Notification.xaml.cs
    .text

.globl m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor__void
.type m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor__void, @function
m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor__void, .-m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor__void

.globl m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0__ref_ref
.type m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0__ref_ref, @function
m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0006:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_000b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Visibility__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0010:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0033
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0013:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0018:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_001d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Stop__void
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0022:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0023:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0028:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_002d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Start__void
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0033:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0034:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0039:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_003e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Stop__void
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0043:
    lea .LN_8_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Media_Animation_DoubleAnimation_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0048:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0049:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_004a:
    mov -64(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_004f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_get_Opacity__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0054:
    lea .LN_10_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_float64_ctor__gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0059:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Animation_DoubleAnimation_set_From__gen
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_005e:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_005f:
    movsd .LD_11_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0068:
    lea .LN_12_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Nullable_1_float64_ctor__gen
    mov %r12, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_006d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Animation_DoubleAnimation_set_To__gen
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0072:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0073:
    movsd .LD_13_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_007c:
    mov -64(%rbp), %rdi
    call m_System_TimeSpan_FromMilliseconds__f8
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0081:
    mov -64(%rbp), %rdi
    call m_System_Windows_Duration_op_Implicit__v
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0086:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Animation_Timeline_set_Duration__v
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_008b:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_008c:
    lea .LN_14_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Media_Animation_QuadraticEase_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0091:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0092:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0093:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Animation_EasingFunctionBase_set_EasingMode__v
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_0098:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Animation_DoubleAnimation_set_EasingFunction__ref
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_009d:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_009e:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_009f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00a0:
    mov -64(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00a5:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00a6:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00be
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00a8:
    mov -56(%rbp), %rax
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00a9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00aa:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00ab:
    lea m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3__ref_ref(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00b1:
    lea .LN_16_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00b6:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00b7:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00b8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00bd:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00be:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Media_Animation_Timeline_add_Completed__ref
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00c3:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00c4:
    mov -56(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00c9:
    lea .LN_19_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00ce:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00cf:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_BeginAnimation__ref_ref
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_00d4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0__ref_ref, .-m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0__ref_ref

.globl m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3__ref_ref
.type m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3__ref_ref, @function
m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_000b:
    lea .LN_1_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_0011:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_0016:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_001e
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_0018:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_0019:
    lea .LN_3_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_001e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3__ref_ref, .-m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3__ref_ref

.globl m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1__ref_ref
.type m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1__ref_ref, @function
m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Notification_PositionNotification__void
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1__ref_ref, .-m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1__ref_ref

.globl m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2__ref_ref
.type m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2__ref_ref, @function
m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0006:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_000b:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_001d
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_000e:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0013:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0018:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherTimer_Stop__void
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_001d:
    lea .LN_4_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0022:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0023:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0028:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0030
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_002a:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_002b:
    lea .LN_6_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_0030:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2__ref_ref, .-m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2__ref_ref

.globl m_Skymu_Forms_Notification_c_DisplayClass7_0_ctor__void
.type m_Skymu_Forms_Notification_c_DisplayClass7_0_ctor__void, @function
m_Skymu_Forms_Notification_c_DisplayClass7_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_c_DisplayClass7_0_ctor__void, .-m_Skymu_Forms_Notification_c_DisplayClass7_0_ctor__void

.globl m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0__ref
.type m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0__ref, @function
m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0__ref, .-m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0__ref

.globl m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1__ref
.type m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1__ref, @function
m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1__ref, .-m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1__ref

.globl m_Skymu_Forms_Notification_ctor__void
.type m_Skymu_Forms_Notification_ctor__void, @function
m_Skymu_Forms_Notification_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Notification_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Notification_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_ctor__void
.Lm_Skymu_Forms_Notification_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_ctor__void, .-m_Skymu_Forms_Notification_ctor__void

.globl m_Skymu_Forms_Notification_AddMessage__ref_ref
.type m_Skymu_Forms_Notification_AddMessage__ref_ref, @function
m_Skymu_Forms_Notification_AddMessage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $208, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0000:
    lea .LN_0_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_Notification_c_DisplayClass7_0_ctor__void
    mov %r12, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0005:
    mov -144(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0008:
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_000d:
    lea .LN_2_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0012:
    mov -144(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0017:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0018:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_001e
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_001a:
    mov -136(%rbp), %rax
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_001b:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_001c:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_002f
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_001f:
    lea m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0__ref(%rip), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0025:
    lea .LN_4_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_002a:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Yggdrasil_Yggdrasil_Models_Conversation__gen_gen
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_002f:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0030:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0055
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0032:
    mov -136(%rbp), %rax
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0033:
    lea .LN_5_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0038:
    mov -144(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_003d:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_003e:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0044
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0040:
    mov -136(%rbp), %rax
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0041:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0042:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0055
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0044:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0045:
    lea m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1__ref(%rip), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_004b:
    lea .LN_7_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0050:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Yggdrasil_Yggdrasil_Models_DirectMessage__gen_gen
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0055:
    mov -144(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0056:
    mov -48(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0057:
    mov -144(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_005c:
    xor %eax, %eax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_005d:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    cmp %rcx, %rax
    seta %al
    movzbl %al, %eax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_005f:
    mov -152(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0060:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0061:
    mov -152(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0062:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0063:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0068:
    mov -152(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c7
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_006a:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_006b:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0070:
    mov -152(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0071:
    mov -160(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c7
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0073:
    mov -24(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0074:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0079:
    mov -160(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_007b:
    mov $0, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_007c:
    mov -160(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_007e:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00bf
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0080:
    mov -120(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0082:
    mov -128(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0084:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0085:
    mov -176(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0087:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0089:
    mov -176(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0094
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_008b:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_008d:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0092:
    mov -176(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b5
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0094:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0096:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_009b:
    mov $1, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_009c:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b9
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_009e:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00a0:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00a5:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b5
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00a7:
    mov -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00a9:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Url__void
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00ae:
    mov -176(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b3:
    mov -176(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b9
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b5:
    mov $1, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b6:
    mov -176(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b7:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c7
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00b9:
    mov -128(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00bb:
    mov $1, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00bc:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00bd:
    mov -176(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00bf:
    mov -128(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c1:
    mov -120(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c3:
    mov -168(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c4:
    mov -176(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c5:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0080
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c7:
    mov -24(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00c8:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00cd:
    mov -176(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00d2:
    mov $0, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00d3:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00d5:
    mov -176(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00d7:
    lea .LN_8_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_Grid_ctor__void
    mov %r12, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00dc:
    mov -176(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00de:
    mov -80(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00e0:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_ColumnDefinitions__void
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00e5:
    lea .LN_9_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_ColumnDefinition_ctor__void
    mov %r12, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00ea:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00eb:
    call m_System_Windows_GridLength_get_Auto__void
    movslq %eax, %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00f0:
    mov -192(%rbp), %rsi
    mov -184(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ColumnDefinition_set_Width__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00f5:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ColumnDefinitionCollection_Add__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00fa:
    mov -80(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_00fc:
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_ColumnDefinitions__void
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0101:
    lea .LN_10_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_ColumnDefinition_ctor__void
    mov %r12, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0106:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0107:
    movsd .LD_11_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0110:
    mov $2, %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0111:
    lea .LN_12_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_GridLength_ctor__f8_v
    mov %r12, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0116:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ColumnDefinition_set_Width__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_011b:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ColumnDefinitionCollection_Add__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0120:
    mov -80(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0122:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_RowDefinitions__void
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0127:
    lea .LN_13_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_RowDefinition_ctor__void
    mov %r12, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_012c:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_012d:
    call m_System_Windows_GridLength_get_Auto__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0132:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_RowDefinition_set_Height__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0137:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_RowDefinitionCollection_Add__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_013c:
    mov -80(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_013e:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_RowDefinitions__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0143:
    lea .LN_14_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_RowDefinition_ctor__void
    mov %r12, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0148:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0149:
    call m_System_Windows_GridLength_get_Auto__void
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_014e:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_RowDefinition_set_Height__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0153:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_RowDefinitionCollection_Add__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0158:
    lea .LN_15_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_SliceControl_ctor__void
    mov %r12, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_015d:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_015e:
    lea .LS_16_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0163:
    mov -152(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0168:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Source__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_016d:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_016e:
    mov $22, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0170:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_ElementCount__i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0175:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0176:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0177:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_StackDirection__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_017c:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_017d:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_017e:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0192
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0180:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0181:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0186:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_ConnectionStatus__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_018b:
    mov -152(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0190:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0194
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0192:
    mov $21, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0194:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_DefaultIndex__i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0199:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_019a:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_019b:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_HorizontalAlignment__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01a0:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01a1:
    movsd .LD_17_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01aa:
    movsd .LD_18_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01b3:
    movsd .LD_19_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01bc:
    movsd .LD_20_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01c5:
    lea .LN_21_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -176(%rbp), %r8
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Thickness_ctor__f8_f8_f8_f8
    mov %r12, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01ca:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Margin__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01cf:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01d0:
    mov $-1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01d1:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_HoverIndex__i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01d6:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01d7:
    mov $-1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01d8:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_PressedIndex__i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01dd:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01de:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01df:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_SliceMode__i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01e4:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01e5:
    movsd .LD_22_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01ee:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Width__f8
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01f3:
    mov -136(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01f5:
    mov -88(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01f7:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01f8:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_Windows_Controls_Grid_SetRow__ref_i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01fd:
    mov -88(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_01ff:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0200:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_Windows_Controls_Grid_SetColumn__ref_i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0205:
    mov -80(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0207:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_020c:
    mov -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_020e:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_Add__ref
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0213:
    mov -144(%rbp), %rax
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0214:
    lea .LN_23_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_TextBlock_ctor__void
    mov %r12, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0219:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_021a:
    call m_System_Windows_FontWeights_get_Normal__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_021f:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontWeight__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0224:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0225:
    call m_System_Windows_Media_Brushes_get_Black__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_022a:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_022f:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0230:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0231:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_VerticalAlignment__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0236:
    mov -136(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0238:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0239:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_024a
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_023b:
    mov -96(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_023d:
    mov -48(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_023e:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0243:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0248:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_025c
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_024a:
    mov -96(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_024c:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_024d:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0252:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0257:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_025c:
    mov -96(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_025e:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_025f:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_Windows_Controls_Grid_SetRow__ref_i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0264:
    mov -96(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0266:
    mov $1, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0267:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_Windows_Controls_Grid_SetColumn__ref_i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_026c:
    mov -80(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_026e:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0273:
    mov -96(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0275:
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_Add__ref
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_027a:
    mov -144(%rbp), %rax
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_027b:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_027c:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_027e:
    mov -152(%rbp), %rcx
    mov -144(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_027f:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_029a
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0281:
    lea .LS_24_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0286:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0287:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_028c:
    lea .LS_25_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0291:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0296:
    mov -144(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0298:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d0
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_029a:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_029b:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02a6
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_029d:
    lea .LS_26_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02a2:
    mov -144(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02a4:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d0
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02a6:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02a8:
    mov -144(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02c3
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02aa:
    lea .LS_27_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02af:
    mov -24(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02b0:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Text__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02b5:
    lea .LS_28_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02ba:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02bf:
    mov -144(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02c1:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d0
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02c3:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02c4:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02cd
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02c6:
    lea .LS_29_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02cb:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02ce
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02cd:
    xor %eax, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02ce:
    mov -144(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d0:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d1:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02e0
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d3:
    mov -112(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d5:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d6:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0308
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d8:
    mov -136(%rbp), %rax
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02d9:
    lea .LS_30_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02de:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0308
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02e0:
    mov -112(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02e2:
    mov -144(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02f1
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02e4:
    mov -24(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02e5:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02ea:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02ef:
    jmp .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0308
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02f1:
    mov -24(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02f2:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02f7:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_02fc:
    lea .LS_31_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0301:
    mov -112(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0303:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0308:
    mov $0, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0309:
    xor %eax, %eax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_030a:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    call m_Skymu_Formatting_Formatter_Parse__ref_b_ref
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_030f:
    mov -144(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0311:
    mov -104(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0313:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0318:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_031d:
    lea .LS_32_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0322:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0327:
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_032c:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Foreground__ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0331:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0333:
    movsd .LD_33_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_033c:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_FontSize__f8
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0341:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0343:
    movsd .LD_34_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_034c:
    movsd .LD_35_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0355:
    movsd .LD_36_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_035e:
    movsd .LD_37_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0367:
    lea .LN_38_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -184(%rbp), %r8
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Thickness_ctor__f8_f8_f8_f8
    mov %r12, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_036c:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_set_Margin__v
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0371:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0373:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0374:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_System_Windows_Controls_Grid_SetRow__ref_i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0379:
    mov -104(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_037b:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_037c:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    call m_System_Windows_Controls_Grid_SetColumn__ref_i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0381:
    mov -80(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0383:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0388:
    mov -104(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_038a:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_Add__ref
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_038f:
    mov -152(%rbp), %rax
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0390:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0391:
    mov -152(%rbp), %rdi
    lea .LN_39_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_0396:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_039b:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_get_Count__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03a0:
    mov $5, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03a1:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03c5
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03a3:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03a4:
    mov -152(%rbp), %rdi
    lea .LN_40_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03a9:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03ae:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03af:
    mov -160(%rbp), %rdi
    lea .LN_41_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03b4:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03b9:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_get_Count__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03be:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03bf:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03c0:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_RemoveAt__i4
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03c5:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03c6:
    mov -152(%rbp), %rdi
    lea .LN_42_m_Skymu_Forms_Notification_AddMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03cb:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03d0:
    mov $0, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03d1:
    mov -80(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03d3:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_Insert__i4_ref
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03d8:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03d9:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_UpdateLayout__void
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03de:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03df:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Notification_PositionNotification__void
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_03e4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_AddMessage_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_AddMessage__ref_ref, .-m_Skymu_Forms_Notification_AddMessage__ref_ref

.globl m_Skymu_Forms_Notification_Window_MouseEnter__ref_ref
.type m_Skymu_Forms_Notification_Window_MouseEnter__ref_ref, @function
m_Skymu_Forms_Notification_Window_MouseEnter__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseEnter_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseEnter_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_Window_MouseEnter_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseEnter_ref_ref_0006:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseEnter_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Notification_Window_MouseEnter_ref_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_Window_MouseEnter_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_Window_MouseEnter__ref_ref, .-m_Skymu_Forms_Notification_Window_MouseEnter__ref_ref

.globl m_Skymu_Forms_Notification_Window_MouseLeave__ref_ref
.type m_Skymu_Forms_Notification_Window_MouseLeave__ref_ref, @function
m_Skymu_Forms_Notification_Window_MouseLeave__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseLeave_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseLeave_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_Window_MouseLeave_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseLeave_ref_ref_0006:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseLeave_ref_ref_0007:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Notification_Window_MouseLeave_ref_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_Window_MouseLeave_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_Window_MouseLeave__ref_ref, .-m_Skymu_Forms_Notification_Window_MouseLeave__ref_ref

.globl m_Skymu_Forms_Notification_CloseButton_Click__ref_ref
.type m_Skymu_Forms_Notification_CloseButton_Click__ref_ref, @function
m_Skymu_Forms_Notification_CloseButton_Click__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_CloseButton_Click_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_CloseButton_Click_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Notification_CloseButton_Click_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_CloseButton_Click_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_CloseButton_Click__ref_ref, .-m_Skymu_Forms_Notification_CloseButton_Click__ref_ref

.globl m_Skymu_Forms_Notification_Window_MouseRightButtonDown__ref_ref
.type m_Skymu_Forms_Notification_Window_MouseRightButtonDown__ref_ref, @function
m_Skymu_Forms_Notification_Window_MouseRightButtonDown__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseRightButtonDown_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_Window_MouseRightButtonDown_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Notification_Window_MouseRightButtonDown_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_Window_MouseRightButtonDown_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_Window_MouseRightButtonDown__ref_ref, .-m_Skymu_Forms_Notification_Window_MouseRightButtonDown__ref_ref

.globl m_Skymu_Forms_Notification_InitializeComponent__void
.type m_Skymu_Forms_Notification_InitializeComponent__void, @function
m_Skymu_Forms_Notification_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Notification_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Notification_InitializeComponent_void_0009
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Notification_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_Notification_InitializeComponent_void(%rip), %rdi
    mov $40, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_Notification_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_Notification_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_InitializeComponent__void, .-m_Skymu_Forms_Notification_InitializeComponent__void

.globl m_Skymu_Forms_Notification_CreateDelegate__ref_ref
.type m_Skymu_Forms_Notification_CreateDelegate__ref_ref, @function
m_Skymu_Forms_Notification_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_CreateDelegate__ref_ref, .-m_Skymu_Forms_Notification_CreateDelegate__ref_ref

.globl m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001a
    cmp $1, %eax
    je .Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0060
    cmp $2, %eax
    je .Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006d
    cmp $3, %eax
    je .Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007a
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0018:
    jmp .Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0087
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001a:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_001b:
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0021:
    lea m_Skymu_Forms_Notification_Window_MouseEnter__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0027:
    lea .LN_0_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_002c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseEnter__ref
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0031:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0032:
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0037:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0038:
    lea m_Skymu_Forms_Notification_Window_MouseLeave__ref_ref(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_003e:
    lea .LN_1_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0043:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeave__ref
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0048:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0049:
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_004f:
    lea m_Skymu_Forms_Notification_Window_MouseRightButtonDown__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0055:
    lea .LN_2_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005a:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseRightButtonDown__ref
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_005f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0060:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0061:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0062:
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0067:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_006f:
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0074:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0079:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_007c:
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0081:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0086:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0087:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0088:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0089:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_008e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect__i4_ref

    .globl m_Skymu_Forms_Notification_ctor__ref_ref
    .type m_Skymu_Forms_Notification_ctor__ref_ref, @function
m_Skymu_Forms_Notification_ctor__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_Notification_ctor_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_Notification_ctor__ref_ref, .-m_Skymu_Forms_Notification_ctor__ref_ref

    .globl m_Skymu_Forms_Notification_PositionNotification__void
    .type m_Skymu_Forms_Notification_PositionNotification__void, @function
m_Skymu_Forms_Notification_PositionNotification__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Forms_Notification_PositionNotification_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Forms_Notification_PositionNotification__void, .-m_Skymu_Forms_Notification_PositionNotification__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "notif"

.LN_1_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "close"

.LN_2_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "notif"

.LN_3_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "_closeTimer"

.LN_4_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "notif"

.LN_5_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "_closeTimer"

.LN_6_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "notif"

.LN_7_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "_closeTimer"

.LN_8_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "System.Windows.Media.Animation.DoubleAnimation"

.LN_9_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "notif"

.LN_10_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "System.Nullable`1<float64>"

.LD_11_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .double 0.0

.LN_12_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "System.Nullable`1<float64>"

.LD_13_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .double 250

.LN_14_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "System.Windows.Media.Animation.QuadraticEase"

.LN_15_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "<>9__3"

.LN_16_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "System.EventHandler"

.LN_17_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "<>9__3"

.LN_18_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "notif"

.LN_19_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_0_ref_ref:
    .asciz "OpacityProperty"

.LN_0_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref:
    .asciz "notif"

.LN_1_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref:
    .asciz "_activeNotification"

.LN_2_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref:
    .asciz "notif"

.LN_3_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_3_ref_ref:
    .asciz "_activeNotification"

.LN_0_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_1_ref_ref:
    .asciz "notif"

.LN_0_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref:
    .asciz "notif"

.LN_1_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref:
    .asciz "_closeTimer"

.LN_2_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref:
    .asciz "notif"

.LN_3_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref:
    .asciz "_closeTimer"

.LN_4_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref:
    .asciz "_activeNotification"

.LN_5_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref:
    .asciz "notif"

.LN_6_m_Skymu_Forms_Notification_c_DisplayClass5_0_ctor_b_2_ref_ref:
    .asciz "_activeNotification"

.LN_0_m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_0_ref:
    .asciz "e"

.LN_0_m_Skymu_Forms_Notification_c_DisplayClass7_0_AddMessage_b_1_ref:
    .asciz "e"

.LN_0_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "Skymu.Forms.Notification/'<>c__DisplayClass7_0'"

.LN_1_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "e"

.LN_2_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "ActiveViewModel"

.LN_3_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "ConversationList"

.LN_4_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "bool>"

.LN_5_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "ActiveViewModel"

.LN_6_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "ContactList"

.LN_7_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "bool>"

.LN_8_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.Controls.Grid"

.LN_9_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.Controls.ColumnDefinition"

.LN_10_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.Controls.ColumnDefinition"

.LD_11_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 1

.LN_12_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.GridLength"

.LN_13_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.Controls.RowDefinition"

.LN_14_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.Controls.RowDefinition"

.LN_15_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "Skymu.SliceControl"

.LS_16_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 85, 110, 105, 118, 101, 114, 115, 97, 108, 47, 73, 99, 111, 110, 47, 115, 107, 121, 112, 101, 45, 115, 116, 97, 116, 117, 115, 46, 112, 110, 103

.LD_17_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 0.0

.LD_18_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 0.0

.LD_19_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 4

.LD_20_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 0.0

.LN_21_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.Thickness"

.LD_22_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 16

.LN_23_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.Controls.TextBlock"

.LS_24_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 115, 104, 97, 114, 101, 100, 32, 97, 32, 112, 104, 111, 116, 111, 58, 32, 34

.LS_25_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 34

.LS_26_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 115, 104, 97, 114, 101, 100, 32, 97, 32, 112, 104, 111, 116, 111

.LS_27_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 34

.LS_28_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 34

.LS_29_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 40, 110, 111, 32, 109, 101, 115, 115, 97, 103, 101, 41

.LS_30_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 40, 110, 111, 32, 109, 101, 115, 115, 97, 103, 101, 41

.LS_31_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 32

.LS_32_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .short 84, 101, 120, 116, 46, 77, 101, 100, 105, 117, 109, 67, 111, 110, 116, 114, 97, 115, 116

.LD_33_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 11

.LD_34_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 0.0

.LD_35_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 1

.LD_36_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 0.0

.LD_37_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .double 6

.LN_38_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "System.Windows.Thickness"

.LN_39_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "MessagesContainer"

.LN_40_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "MessagesContainer"

.LN_41_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "MessagesContainer"

.LN_42_m_Skymu_Forms_Notification_AddMessage_ref_ref:
    .asciz "MessagesContainer"

.LN_0_m_Skymu_Forms_Notification_Window_MouseEnter_ref_ref:
    .asciz "close"

.LN_0_m_Skymu_Forms_Notification_Window_MouseLeave_ref_ref:
    .asciz "close"

.LN_0_m_Skymu_Forms_Notification_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_Notification_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_Notification_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 110, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_Notification_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_1_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_2_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_3_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "bubble"

.LN_4_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "close"

.LN_5_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessagesContainer"

.LN_6_m_Skymu_Forms_Notification_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LSTUB_m_Skymu_Forms_Notification_ctor_ref_ref:
    .asciz "Skymu.Forms.Notification::.ctor  [stack underflow at IL_001d (pop): depth 0 < pops 1]"

.LSTUB_m_Skymu_Forms_Notification_PositionNotification_void:
    .asciz "Skymu.Forms.Notification::PositionNotification  [floating-point 'sub']"

    .section .note.GNU-stack,"",@progbits
