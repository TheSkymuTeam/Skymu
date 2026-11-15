# Themes/Skype5/Main.xaml.cs
    .text

.globl m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor__void
.type m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor__void, @function
m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor__void, .-m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor__void

.globl m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1__void
.type m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1__void, @function
m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0000:
    lea .LN_0_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0005:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_000d:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_000f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0014:
    lea .LN_3_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_IncomingCall_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0019:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_001e:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_001f:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0020:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0025:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0026:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0027:
    lea m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_002d:
    lea .LN_6_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0032:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0037:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0038:
    mov -32(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_003d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_003e:
    mov -32(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0043:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0044:
    mov -40(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0049:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_004e:
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0053:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0058:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0059:
    mov -32(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_005e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_0063:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1__void, .-m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1__void

.globl m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor__void
.type m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor__void, @function
m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor__void, .-m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor__void

.globl m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2__ref_ref
.type m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2__ref_ref, @function
m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_000d:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0012:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0017:
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_001c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0021:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0022:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0027:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_002c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_002d:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0032:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0037:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_CallBottle_get_Caller__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_003c:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_003d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_InitiateCall__ref_b
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_0042:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2__ref_ref, .-m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2__ref_ref

.globl m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext__void
.type m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext__void, @function
m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0073
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0017:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_001c:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00c2
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0021:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0022:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0027:
    lea .LN_5_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_002c:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_002d:
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0032:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0037:
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_DirectMessage__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_003c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_WebServices_Home_Generate__ref_ref_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0046:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0047:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0049:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_004e:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_008f
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0051:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0052:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0053:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0054:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_005a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_005b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0060:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0061:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0066:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0068:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0069:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Skymu_Skype5_Main_GenerateHome_d_10__gen_gen
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_006e:
    jmp .Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0116
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0073:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0074:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0079:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_007a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_007b:
    mov -56(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0080:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0087:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0088:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0089:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_008a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_008f:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0091:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0096:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00ea
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0098:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0099:
    mov -56(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_009e:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_009f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00a4:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00a5:
    mov -56(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00aa:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00ab:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00b0:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00b1:
    mov -56(%rbp), %rdi
    lea .LN_16_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00b6:
    lea .LN_17_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_HomeUnavailable_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00bb:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00c0:
    jmp .Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00ea
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00c2:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00c3:
    mov -56(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00c8:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00c9:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00ce:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00cf:
    mov -56(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00d4:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00d5:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00da:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00db:
    mov -56(%rbp), %rdi
    lea .LN_20_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00e0:
    lea .LN_21_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_HomeUnavailable_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00e5:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_ContentControl_set_Content__ref
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_00ea:
    jmp .Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0103
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0103:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0104:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0106:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_22_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_010b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_010c:
    mov -56(%rbp), %rdi
    lea .LN_23_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0111:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_0116:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext__void, .-m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext__void

.globl m_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine__ref
.type m_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine__ref, @function
m_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine__ref, .-m_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine__ref

.globl m_Skymu_Skype5_Main_ShowHomeView__void
.type m_Skymu_Skype5_Main_ShowHomeView__void, @function
m_Skymu_Skype5_Main_ShowHomeView__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0001:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0002:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype5_Main_ToggleStatusBoxSelection__b
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0008:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_000d:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_000e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0013:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0014:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0019:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_001a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowHomeView_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0020:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0025:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0026:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowHomeView_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_002c:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0031:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0032:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0038:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_003d:
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0042:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype5_Main_ShowHomeView_void_0052
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0045:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_004a:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_004b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0050:
    jmp .Lm_Skymu_Skype5_Main_ShowHomeView_void_005e
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0052:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0053:
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0058:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0059:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowHomeView_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_005f:
    mov -24(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype5_Main_ShowHomeView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0064:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowHomeView_void_0065:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype5_Main_ShowHomeView_void_006a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_ShowHomeView_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_ShowHomeView__void, .-m_Skymu_Skype5_Main_ShowHomeView__void

.globl m_Skymu_Skype5_Main_ShowChatView__void
.type m_Skymu_Skype5_Main_ShowChatView__void, @function
m_Skymu_Skype5_Main_ShowChatView__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0001:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0002:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype5_Main_ToggleStatusBoxSelection__b
.Lm_Skymu_Skype5_Main_ShowChatView_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0008:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_000d:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_000e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype5_Main_ShowChatView_void_0013:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0014:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0019:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_001a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowChatView_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0020:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype5_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0025:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0026:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowChatView_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_002c:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype5_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0031:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0032:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowChatView_void_0037:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0038:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype5_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_003d:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_003e:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowChatView_void_0043:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0044:
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype5_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0049:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_004a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowChatView_void_004f:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0050:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype5_Main_ShowChatView_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0055:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowChatView_void_0056:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Skype5_Main_ShowChatView_void_005b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_ShowChatView_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_ShowChatView__void, .-m_Skymu_Skype5_Main_ShowChatView__void

.globl m_Skymu_Skype5_Main_ToggleStatusBoxSelection__b
.type m_Skymu_Skype5_Main_ToggleStatusBoxSelection__b, @function
m_Skymu_Skype5_Main_ToggleStatusBoxSelection__b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_ToggleStatusBoxSelection_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_000c
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0009:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_000a:
    jmp .Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_000d
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_000c:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_000d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0012:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0013:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_ToggleStatusBoxSelection_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0018:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0019:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0036
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_001b:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0020:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0025:
    lea .LS_2_m_Skymu_Skype5_Main_ToggleStatusBoxSelection_b(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_002a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_002f:
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0034:
    jmp .Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_003b
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0036:
    call m_System_Windows_Media_Brushes_get_White__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_003b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_TextColor__ref
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0040:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0041:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype5_Main_ToggleStatusBoxSelection_b(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0046:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0047:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_004c
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0049:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_004a:
    jmp .Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_004d
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_004c:
    mov $2, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_004d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_0052:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_ToggleStatusBoxSelection_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_ToggleStatusBoxSelection__b, .-m_Skymu_Skype5_Main_ToggleStatusBoxSelection__b

.globl m_Skymu_Skype5_Main_ShowOwnName__ref
.type m_Skymu_Skype5_Main_ShowOwnName__ref, @function
m_Skymu_Skype5_Main_ShowOwnName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowOwnName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowOwnName_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_ShowOwnName_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowOwnName_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ShowOwnName_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype5_Main_ShowOwnName_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_ShowOwnName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_ShowOwnName__ref, .-m_Skymu_Skype5_Main_ShowOwnName__ref

.globl m_Skymu_Skype5_Main_OnFeedbackClick__ref_ref
.type m_Skymu_Skype5_Main_OnFeedbackClick__ref_ref, @function
m_Skymu_Skype5_Main_OnFeedbackClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype5_Main_OnFeedbackClick_ref_ref_0000:
    lea .LS_0_m_Skymu_Skype5_Main_OnFeedbackClick_ref_ref(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_OnFeedbackClick_ref_ref_0005:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_OnFeedbackClick_ref_ref_0006:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_OpenURL__ref_b
.Lm_Skymu_Skype5_Main_OnFeedbackClick_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_OnFeedbackClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_OnFeedbackClick__ref_ref, .-m_Skymu_Skype5_Main_OnFeedbackClick__ref_ref

.globl m_Skymu_Skype5_Main_GenerateHome__void
.type m_Skymu_Skype5_Main_GenerateHome__void, @function
m_Skymu_Skype5_Main_GenerateHome__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_GenerateHome_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype5_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_GenerateHome_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype5_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_Skype5_Main_GenerateHome_d_10__gen
.Lm_Skymu_Skype5_Main_GenerateHome_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype5_Main_GenerateHome_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_GenerateHome_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_GenerateHome_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_GenerateHome__void, .-m_Skymu_Skype5_Main_GenerateHome__void

.globl m_Skymu_Skype5_Main_OnUserCountUpdated__ref
.type m_Skymu_Skype5_Main_OnUserCountUpdated__ref, @function
m_Skymu_Skype5_Main_OnUserCountUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype5_Main_OnUserCountUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_OnUserCountUpdated_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_OnUserCountUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_OnUserCountUpdated_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_OnUserCountUpdated_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype5_Main_OnUserCountUpdated_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_OnUserCountUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_OnUserCountUpdated__ref, .-m_Skymu_Skype5_Main_OnUserCountUpdated__ref

.globl m_Skymu_Skype5_Main_ShowCreditText__ref
.type m_Skymu_Skype5_Main_ShowCreditText__ref, @function
m_Skymu_Skype5_Main_ShowCreditText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowCreditText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowCreditText_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_ShowCreditText_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowCreditText_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ShowCreditText_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_Text__ref
.Lm_Skymu_Skype5_Main_ShowCreditText_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_ShowCreditText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_ShowCreditText__ref, .-m_Skymu_Skype5_Main_ShowCreditText__ref

.globl m_Skymu_Skype5_Main_ShowLogin__b
.type m_Skymu_Skype5_Main_ShowLogin__b, @function
m_Skymu_Skype5_Main_ShowLogin__b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype5_Main_ShowLogin_b_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowLogin_b_0001:
    lea .LN_0_m_Skymu_Skype5_Main_ShowLogin_b(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype5_Login_ctor__b
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype5_Main_ShowLogin_b_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Skype5_Main_ShowLogin_b_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_ShowLogin_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_ShowLogin__b, .-m_Skymu_Skype5_Main_ShowLogin__b

.globl m_Skymu_Skype5_Main_ctor__void
.type m_Skymu_Skype5_Main_ctor__void, @function
m_Skymu_Skype5_Main_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0001:
    lea .LS_0_m_Skymu_Skype5_Main_ctor_void(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0006:
    mov -32(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_ctor_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0011:
    lea .LS_2_m_Skymu_Skype5_Main_ctor_void(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0016:
    mov -32(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_001b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype5_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_ctor_void_0020:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0021:
    lea .LS_4_m_Skymu_Skype5_Main_ctor_void(%rip), %rdi
    mov $33, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0026:
    mov -32(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_002b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype5_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_ctor_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0031:
    lea .LS_6_m_Skymu_Skype5_Main_ctor_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0036:
    mov -32(%rbp), %rdi
    call m_Skymu_Helpers_ImageHelper_FreezeLoad__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_003b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype5_Main_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_ctor_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0041:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_ctor__void
.Lm_Skymu_Skype5_Main_ctor_void_0046:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0047:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype5_Main_InitializeComponent__void
.Lm_Skymu_Skype5_Main_ctor_void_004c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_004d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Theming_MainWindowBase_InitializeMainWindow__void
.Lm_Skymu_Skype5_Main_ctor_void_0052:
    lea .LN_8_m_Skymu_Skype5_Main_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0057:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype5_Main_ctor_void_006f
.Lm_Skymu_Skype5_Main_ctor_void_0059:
    lea .LN_9_m_Skymu_Skype5_Main_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_005f:
    lea m_Skymu_Skype5_Main_ctor_b_14_0__ref_ref(%rip), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_0065:
    lea .LN_10_m_Skymu_Skype5_Main_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_CallBottle_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_void_006a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICall_add_IncomingCallTube__gen
.Lm_Skymu_Skype5_Main_ctor_void_006f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_ctor__void, .-m_Skymu_Skype5_Main_ctor__void

.globl m_Skymu_Skype5_Main_InitializeComponent__void
.type m_Skymu_Skype5_Main_InitializeComponent__void, @function
m_Skymu_Skype5_Main_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype5_Main_InitializeComponent_void_0009
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Skype5_Main_InitializeComponent_void(%rip), %rdi
    mov $40, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Skype5_Main_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Skype5_Main_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_InitializeComponent__void, .-m_Skymu_Skype5_Main_InitializeComponent__void

.globl m_Skymu_Skype5_Main_CreateDelegate__ref_ref
.type m_Skymu_Skype5_Main_CreateDelegate__ref_ref, @function
m_Skymu_Skype5_Main_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype5_Main_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_CreateDelegate__ref_ref, .-m_Skymu_Skype5_Main_CreateDelegate__ref_ref

.globl m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c1
    cmp $1, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ce
    cmp $2, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01db
    cmp $3, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e8
    cmp $4, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f5
    cmp $5, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0202
    cmp $6, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020f
    cmp $7, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021c
    cmp $8, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0240
    cmp $9, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024d
    cmp $10, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025a
    cmp $11, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0267
    cmp $12, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0274
    cmp $13, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0298
    cmp $14, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a5
    cmp $15, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b2
    cmp $16, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bf
    cmp $17, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d7
    cmp $18, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ef
    cmp $19, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0307
    cmp $20, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_031f
    cmp $21, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0337
    cmp $22, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_034f
    cmp $23, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0367
    cmp $24, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037f
    cmp $25, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0397
    cmp $26, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03af
    cmp $27, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c7
    cmp $28, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03df
    cmp $29, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f7
    cmp $30, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0404
    cmp $31, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0411
    cmp $32, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0429
    cmp $33, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0441
    cmp $34, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0459
    cmp $35, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0471
    cmp $36, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047e
    cmp $37, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048b
    cmp $38, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0498
    cmp $39, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a5
    cmp $40, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b2
    cmp $41, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04bf
    cmp $42, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cc
    cmp $43, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d9
    cmp $44, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e6
    cmp $45, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f3
    cmp $46, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0517
    cmp $47, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_052f
    cmp $48, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0547
    cmp $49, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055f
    cmp $50, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0577
    cmp $51, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_058f
    cmp $52, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a7
    cmp $53, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b4
    cmp $54, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c1
    cmp $55, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ce
    cmp $56, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05db
    cmp $57, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e8
    cmp $58, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f5
    cmp $59, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0602
    cmp $60, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_060f
    cmp $61, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061c
    cmp $62, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0629
    cmp $63, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0636
    cmp $64, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0643
    cmp $65, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_067f
    cmp $66, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a3
    cmp $67, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0994
    cmp $68, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b0
    cmp $69, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06bd
    cmp $70, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ca
    cmp $71, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d7
    cmp $72, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e4
    cmp $73, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06f1
    cmp $74, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_072c
    cmp $75, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0739
    cmp $76, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0746
    cmp $77, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0753
    cmp $78, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0760
    cmp $79, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_076d
    cmp $80, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_077a
    cmp $81, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0787
    cmp $82, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0794
    cmp $83, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07a1
    cmp $84, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ae
    cmp $85, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07bb
    cmp $86, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07c8
    cmp $87, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d5
    cmp $88, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e2
    cmp $89, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ef
    cmp $90, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07fc
    cmp $91, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0837
    cmp $92, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0844
    cmp $93, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0851
    cmp $94, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085e
    cmp $95, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_086b
    cmp $96, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0878
    cmp $97, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0885
    cmp $98, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0892
    cmp $99, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_089f
    cmp $100, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08c3
    cmp $101, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d0
    cmp $102, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08dd
    cmp $103, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ea
    cmp $104, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f7
    cmp $105, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0904
    cmp $106, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0911
    cmp $107, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_091e
    cmp $108, %eax
    je .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0987
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01bc:
    jmp .Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0994
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c3:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ce:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cf:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d0:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01da:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01db:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01dc:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01dd:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ea:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ef:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f7:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fc:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0201:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0202:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0203:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0204:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0209:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0210:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0211:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0216:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021e:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0223:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0228:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0229:
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022f:
    lea m_Skymu_Theming_MainWindowBase_TitleBarIcon_MouseDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0235:
    lea .LN_9_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0240:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0241:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0242:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0247:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024f:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0254:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0259:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025c:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0261:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0266:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0267:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0268:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0269:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0273:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0274:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0275:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0276:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0280:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0281:
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0286:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0287:
    lea m_Skymu_Theming_MainWindowBase_WindowArea_MouseDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_028d:
    lea .LN_16_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0292:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseDown__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0297:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0298:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0299:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_029a:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_029f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a7:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ac:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b4:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_19_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02be:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bf:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c0:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c6:
    lea m_Skymu_Theming_MainWindowBase_OnStatus__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02cc:
    lea .LN_20_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d7:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d8:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02dd:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02de:
    lea m_Skymu_Theming_MainWindowBase_OnStatus__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e4:
    lea .LN_21_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e9:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ee:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ef:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f0:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f6:
    lea m_Skymu_Theming_MainWindowBase_OnStatus__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fc:
    lea .LN_22_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0301:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0306:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0307:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0308:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030e:
    lea m_Skymu_Theming_MainWindowBase_OnStatus__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0314:
    lea .LN_23_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0319:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_031e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_031f:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0320:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0325:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0326:
    lea m_Skymu_Theming_MainWindowBase_OnAccountManager__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_032c:
    lea .LN_24_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0331:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0336:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0337:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0338:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_033e:
    lea m_Skymu_Theming_MainWindowBase_OnSignOut__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0344:
    lea .LN_25_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0349:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_034e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_034f:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0350:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0355:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0356:
    lea m_Skymu_Theming_MainWindowBase_OnSwitchUser__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_035c:
    lea .LN_26_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0361:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0366:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0367:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0368:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_036e:
    lea m_Skymu_Theming_MainWindowBase_OnClose__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0374:
    lea .LN_27_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0379:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_037f:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0380:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0385:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0386:
    lea m_Skymu_Theming_MainWindowBase_OnAddContact__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_038c:
    lea .LN_28_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0391:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0396:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0397:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0398:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_039d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_039e:
    lea m_Skymu_Theming_MainWindowBase_OnCall__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a4:
    lea .LN_29_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03a9:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ae:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03af:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b0:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03b6:
    lea m_Skymu_Theming_MainWindowBase_OnContacts__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03bc:
    lea .LN_30_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c7:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03c8:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03cd:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ce:
    lea m_Skymu_Theming_MainWindowBase_OnRecent__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d4:
    lea .LN_31_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03d9:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03de:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03df:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e0:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03e6:
    lea m_Skymu_Theming_MainWindowBase_OnHome__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03ec:
    lea .LN_32_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03f9:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_03fe:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_33_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0403:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0404:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0405:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0406:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_040b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_34_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0410:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0411:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0412:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0417:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0418:
    lea m_Skymu_Theming_MainWindowBase_OnOptions__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_041e:
    lea .LN_35_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0423:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0428:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0429:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042a:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_042f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0430:
    lea m_Skymu_Theming_MainWindowBase_OnCheckUpdates__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0436:
    lea .LN_36_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_043b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0440:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0441:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0442:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0447:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0448:
    lea m_Skymu_Theming_MainWindowBase_OnAbout__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_044e:
    lea .LN_37_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0453:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0458:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0459:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_045a:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_045f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0460:
    lea m_Skymu_Theming_MainWindowBase_OnPrivacyPolicy__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0466:
    lea .LN_38_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_046b:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0470:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0471:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0472:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0473:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0478:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_39_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_047f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0480:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0485:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_40_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_048d:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0492:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_41_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0497:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0498:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0499:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_049a:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_049f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_42_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04a7:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ac:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_43_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b4:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04b9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_44_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04be:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04bf:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c1:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04c6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_45_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04cd:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ce:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_46_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04d9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04da:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04db:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_47_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04e8:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ed:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_48_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04f5:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04fa:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_49_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_04ff:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0500:
    mov -48(%rbp), %rdi
    lea .LN_50_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0505:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0506:
    lea m_Skymu_Theming_MainWindowBase_StatusArea_Click__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_050c:
    lea .LN_51_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0511:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonUp__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0516:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0517:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0518:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_051d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_051e:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0524:
    lea .LN_52_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0529:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_052e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_052f:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0530:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0535:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0536:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_053c:
    lea .LN_53_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0541:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0546:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0547:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0548:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_054d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_054e:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0554:
    lea .LN_54_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0559:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_055f:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0560:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0565:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0566:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_056c:
    lea .LN_55_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0571:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0576:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0577:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0578:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_057d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_057e:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0584:
    lea .LN_56_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0589:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_058e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_058f:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0590:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0595:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0596:
    lea m_Skymu_Theming_MainWindowBase_StatusMenuItemClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_059c:
    lea .LN_57_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_MenuItem_add_Click__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05a9:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ae:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_58_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b4:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b5:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05b6:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05bb:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_59_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c3:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05c8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_60_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05cd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ce:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05cf:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05d0:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05d5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_61_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05da:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05db:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05dc:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05dd:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_62_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05e9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ea:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05ef:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_63_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05f7:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_05fc:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_64_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0601:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0602:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0603:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0604:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0609:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_65_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_060e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_060f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0610:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0611:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0616:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_66_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_061e:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0623:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_67_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0628:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0629:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_062a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_062b:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0630:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_68_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0635:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0636:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0637:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0638:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_063d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_69_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0642:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0643:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0644:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0645:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_064a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_70_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_064f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0650:
    mov -48(%rbp), %rdi
    lea .LN_71_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0655:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0656:
    lea m_Skymu_Theming_MainWindowBase_SearchBox_Focused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_065c:
    lea .LN_72_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0661:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_GotKeyboardFocus__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0666:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0667:
    mov -48(%rbp), %rdi
    lea .LN_73_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_066c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_066d:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_066e:
    # unsupported in forced mode: ldvirtftn instance void Skymu.Theming.MainWindowBase::SearchBox_Unfocused(object, class [PresentationCore]System.Windows.Input.KeyboardFocusChangedEventArgs)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0674:
    lea .LN_74_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0679:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_LostKeyboardFocus__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_067e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_067f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0680:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0681:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0686:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_75_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_068b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_068c:
    mov -48(%rbp), %rdi
    lea .LN_76_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0691:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0692:
    lea m_Skymu_Theming_MainWindowBase_ConversationList_ItemClicked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0698:
    lea .LN_77_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_069d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_PreviewMouseLeftButtonUp__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06a5:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06aa:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_78_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06af:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b2:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06b7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_79_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06bc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06bd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06be:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06bf:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06c4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_80_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06c9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06ca:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06cb:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06cc:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_81_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06d9:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06de:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_82_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e4:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e5:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06e6:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06eb:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_83_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06f0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06f1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06f2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06f3:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06f8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_84_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06fd:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_06fe:
    mov -48(%rbp), %rdi
    lea .LN_85_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0703:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0704:
    lea m_Skymu_Theming_MainWindowBase_SkypeSplitter_Press__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_070a:
    lea .LN_86_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_070f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0714:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0715:
    mov -48(%rbp), %rdi
    lea .LN_87_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_071a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_071b:
    lea m_Skymu_Theming_MainWindowBase_SkypeSplitter_MouseMove__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0721:
    lea .LN_88_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0726:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseMove__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_072b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_072c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_072d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_072e:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0733:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_89_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0738:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0739:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_073a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_073b:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0740:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_90_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0745:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0746:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0747:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0748:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_074d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_91_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0752:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0753:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0754:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0755:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_075a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_92_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_075f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0760:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0761:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0762:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0767:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_93_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_076c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_076d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_076e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_076f:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0774:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_94_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0779:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_077a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_077b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_077c:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0781:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_95_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0786:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0787:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0788:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0789:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_078e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_96_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0793:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0794:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0795:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0796:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_079b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_97_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07a0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07a1:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07a2:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07a3:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07a8:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_98_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ad:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ae:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07af:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07b0:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07b5:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_99_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ba:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07bb:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07bc:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07bd:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07c2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_100_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07c7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07c8:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07c9:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ca:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07cf:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_101_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d4:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07d7:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07dc:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_102_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e4:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07e9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_103_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ee:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07ef:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07f0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07f1:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07f6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_104_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07fb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07fc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07fd:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_07fe:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0803:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_105_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0808:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0809:
    mov -48(%rbp), %rdi
    lea .LN_106_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_080e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_080f:
    lea m_Skymu_Theming_MainWindowBase_ChatTopBarSplitter_Press__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0815:
    lea .LN_107_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_081a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseLeftButtonDown__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_081f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0820:
    mov -48(%rbp), %rdi
    lea .LN_108_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0825:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0826:
    lea m_Skymu_Theming_MainWindowBase_ChatTopBarSplitter_MouseMove__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_082c:
    lea .LN_109_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0831:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_MouseMove__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0836:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0837:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0838:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0839:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_083e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_110_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0843:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0844:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0845:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0846:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_084b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_111_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0850:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0851:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0852:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0853:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0858:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_112_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_085f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0860:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0865:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_113_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_086a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_086b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_086c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_086d:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0872:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_114_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0877:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0878:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0879:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_087a:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_087f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_115_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0884:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0885:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0886:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0887:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_088c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_116_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0891:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0892:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0893:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0894:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0899:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_117_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_089e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_089f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08a0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08a1:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08a6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_118_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ab:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ac:
    mov -48(%rbp), %rdi
    lea .LN_119_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08b1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08b2:
    lea m_Skymu_Theming_MainWindowBase_ConversationItemsList_Loaded__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08b8:
    lea .LN_120_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08bd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_add_Loaded__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08c2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08c3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08c4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08c5:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ca:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_121_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08cf:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d2:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08d7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_122_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08dc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08dd:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08de:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08df:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08e4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_123_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08e9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ea:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08eb:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08ec:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_124_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f7:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f8:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08f9:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_08fe:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_125_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0903:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0904:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0905:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0906:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_090b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_126_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0910:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0911:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0912:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0913:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0918:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_127_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_091d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_091e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_091f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0920:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0925:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_128_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_092a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_092b:
    mov -48(%rbp), %rdi
    lea .LN_129_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0930:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0931:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_Focused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0937:
    lea .LN_130_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_093c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_GotKeyboardFocus__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0941:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0942:
    mov -48(%rbp), %rdi
    lea .LN_131_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0947:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0948:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_Unfocused__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_094e:
    lea .LN_132_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyboardFocusChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0953:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_LostKeyboardFocus__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0958:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0959:
    mov -48(%rbp), %rdi
    lea .LN_133_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_095e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_095f:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_PreviewKeyDown__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0965:
    lea .LN_134_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_KeyEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_096a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_add_PreviewKeyDown__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_096f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0970:
    mov -48(%rbp), %rdi
    lea .LN_135_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0975:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0976:
    lea m_Skymu_Theming_MainWindowBase_MessageTextBox_TextChanged__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_097c:
    lea .LN_136_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_TextChangedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0981:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_TextBoxBase_add_TextChanged__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0986:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0987:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0988:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0989:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_098e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_137_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0993:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0994:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0995:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0996:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_138_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_099b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref
.type m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref, @function
m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0001:
    mov $68, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0003:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0039
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0005:
    lea .LN_0_m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_EventSetter_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000a:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_000c:
    lea .LN_1_m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0011:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_EventSetter_set_Event__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0016:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0018:
    lea m_Skymu_Theming_MainWindowBase_ServerListItem_Clicked__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_001e:
    lea .LN_2_m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Input_MouseButtonEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0023:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_EventSetter_set_Handler__ref
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0028:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0029:
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_002e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Style_get_Setters__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0033:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0034:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_SetterBase_Add__gen
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref, .-m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect__i4_ref

.globl m_Skymu_Skype5_Main_ctor_b_14_0__ref_ref
.type m_Skymu_Skype5_Main_ctor_b_14_0__ref_ref, @function
m_Skymu_Skype5_Main_ctor_b_14_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_0000:
    lea .LN_0_m_Skymu_Skype5_Main_ctor_b_14_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype5_Main_ctor_b_14_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_000d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype5_Main_ctor_b_14_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_0014:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_0019:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_001f:
    lea m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_0025:
    lea .LN_3_m_Skymu_Skype5_Main_ctor_b_14_0_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_002a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke__ref
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_002f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype5_Main_ctor_b_14_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype5_Main_ctor_b_14_0__ref_ref, .-m_Skymu_Skype5_Main_ctor_b_14_0__ref_ref

    .globl m_Skymu_Skype5_Main_OnSidebarResized__void
    .type m_Skymu_Skype5_Main_OnSidebarResized__void, @function
m_Skymu_Skype5_Main_OnSidebarResized__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Skype5_Main_OnSidebarResized_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Skype5_Main_OnSidebarResized__void, .-m_Skymu_Skype5_Main_OnSidebarResized__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "Skymu.Skype5.Main/'<>c__DisplayClass14_1'"

.LN_1_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "CS$<>8__locals1"

.LN_2_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "e"

.LN_3_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "Skymu.Forms.IncomingCall"

.LN_4_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "ic"

.LN_5_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "handler"

.LN_6_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "System.EventHandler"

.LN_7_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "handler"

.LN_8_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "ic"

.LN_9_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "Answered"

.LN_10_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "handler"

.LN_11_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "Answered"

.LN_12_m_Skymu_Skype5_Main_c_DisplayClass14_0_ctor_b_1_void:
    .asciz "ic"

.LN_0_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref:
    .asciz "ic"

.LN_1_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref:
    .asciz "Answered"

.LN_2_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref:
    .asciz "handler"

.LN_3_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref:
    .asciz "Answered"

.LN_4_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_5_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref:
    .asciz "<>4__this"

.LN_6_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref:
    .asciz "CS$<>8__locals1"

.LN_7_m_Skymu_Skype5_Main_c_DisplayClass14_1_ctor_b_2_ref_ref:
    .asciz "e"

.LN_0_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "vmodel"

.LN_3_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "UseSkypeHome"

.LN_4_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "browser"

.LN_5_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "CurrentUser"

.LN_6_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "vmodel"

.LN_7_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "ContactList"

.LN_8_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_11_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "browser"

.LN_15_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_16_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_17_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "Skymu.Forms.HomeUnavailable"

.LN_18_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "browser"

.LN_19_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_20_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "HomeUnavailableFrame"

.LN_21_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "Skymu.Forms.HomeUnavailable"

.LN_22_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>1__state"

.LN_23_m_Skymu_Skype5_Main_GenerateHome_d_10_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype5_Main_GenerateHome_d_10_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "HomeTopbar"

.LN_1_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "ChatTopbar"

.LN_2_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "ChatProfileArea"

.LN_3_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "MessageWindow"

.LN_4_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "vmodel"

.LN_5_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "UseSkypeHome"

.LN_6_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "browser"

.LN_7_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "HomeUnavailableFrame"

.LN_8_m_Skymu_Skype5_Main_ShowHomeView_void:
    .asciz "MainPageButton"

.LN_0_m_Skymu_Skype5_Main_ShowChatView_void:
    .asciz "StatusBox"

.LN_1_m_Skymu_Skype5_Main_ShowChatView_void:
    .asciz "HomeTopbar"

.LN_2_m_Skymu_Skype5_Main_ShowChatView_void:
    .asciz "ChatTopbar"

.LN_3_m_Skymu_Skype5_Main_ShowChatView_void:
    .asciz "ChatProfileArea"

.LN_4_m_Skymu_Skype5_Main_ShowChatView_void:
    .asciz "MessageWindow"

.LN_5_m_Skymu_Skype5_Main_ShowChatView_void:
    .asciz "browser"

.LN_6_m_Skymu_Skype5_Main_ShowChatView_void:
    .asciz "HomeUnavailableFrame"

.LN_0_m_Skymu_Skype5_Main_ToggleStatusBoxSelection_b:
    .asciz "StatusBox"

.LN_1_m_Skymu_Skype5_Main_ToggleStatusBoxSelection_b:
    .asciz "StatusBox"

.LS_2_m_Skymu_Skype5_Main_ToggleStatusBoxSelection_b:
    .short 84, 101, 120, 116, 46, 72, 105, 103, 104, 67, 111, 110, 116, 114, 97, 115, 116

.LN_3_m_Skymu_Skype5_Main_ToggleStatusBoxSelection_b:
    .asciz "SBHomeButton"

.LN_0_m_Skymu_Skype5_Main_ShowOwnName_ref:
    .asciz "StatusBox"

.LS_0_m_Skymu_Skype5_Main_OnFeedbackClick_ref_ref:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 119, 119, 119, 46, 115, 107, 121, 109, 117, 46, 97, 112, 112, 47, 100, 105, 115, 99, 111, 114, 100

.LN_0_m_Skymu_Skype5_Main_GenerateHome_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_Skype5_Main_GenerateHome_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype5_Main_GenerateHome_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_Skype5_Main_GenerateHome_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_Skype5_Main_GenerateHome_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_Skype5_Main_OnUserCountUpdated_ref:
    .asciz "GlobalUserCount"

.LN_0_m_Skymu_Skype5_Main_ShowCreditText_ref:
    .asciz "SkypeCreditBox"

.LN_0_m_Skymu_Skype5_Main_ShowLogin_b:
    .asciz "Skymu.Skype5.Login"

.LS_0_m_Skymu_Skype5_Main_ctor_void:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 77, 97, 105, 110, 47, 99, 111, 110, 116, 97, 99, 116, 115, 46, 112, 110, 103

.LN_1_m_Skymu_Skype5_Main_ctor_void:
    .asciz "contactsBtnImage"

.LS_2_m_Skymu_Skype5_Main_ctor_void:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 77, 97, 105, 110, 47, 114, 101, 99, 101, 110, 116, 115, 46, 112, 110, 103

.LN_3_m_Skymu_Skype5_Main_ctor_void:
    .asciz "recentsBtnImage"

.LS_4_m_Skymu_Skype5_Main_ctor_void:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 77, 97, 105, 110, 47, 99, 111, 110, 116, 97, 99, 116, 115, 45, 101, 109, 112, 116, 121, 46, 112, 110, 103

.LN_5_m_Skymu_Skype5_Main_ctor_void:
    .asciz "contactsBtnImageEmpty"

.LS_6_m_Skymu_Skype5_Main_ctor_void:
    .short 84, 104, 101, 109, 101, 97, 98, 108, 101, 47, 77, 97, 105, 110, 47, 114, 101, 99, 101, 110, 116, 115, 45, 101, 109, 112, 116, 121, 46, 112, 110, 103

.LN_7_m_Skymu_Skype5_Main_ctor_void:
    .asciz "recentsBtnImageEmpty"

.LN_8_m_Skymu_Skype5_Main_ctor_void:
    .asciz "CallPlugin"

.LN_9_m_Skymu_Skype5_Main_ctor_void:
    .asciz "CallPlugin"

.LN_10_m_Skymu_Skype5_Main_ctor_void:
    .asciz "Yggdrasil.Bottles.CallBottle>"

.LN_0_m_Skymu_Skype5_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Skype5_Main_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Skype5_Main_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 116, 104, 101, 109, 101, 115, 47, 115, 107, 121, 112, 101, 53, 47, 109, 97, 105, 110, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Skype5_Main_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FrameArea"

.LN_1_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleBar"

.LN_2_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CaptionButtons"

.LN_3_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "split"

.LN_4_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "minimize"

.LN_5_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "maximize"

.LN_6_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "close"

.LN_7_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleBarIcon"

.LN_8_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleBarIcon"

.LN_9_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_10_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleShadow"

.LN_11_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleShadow2"

.LN_12_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleShadow3"

.LN_13_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TitleMain"

.LN_14_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WindowArea"

.LN_15_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WindowArea"

.LN_16_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_17_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MenuBarArea"

.LN_18_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MainMenuBar"

.LN_19_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MenubarStatusHolder"

.LN_20_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_21_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_22_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_23_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_24_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_25_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_26_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_27_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_28_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_29_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_30_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_31_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_32_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_33_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ExtrasMenu"

.LN_34_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GetExtrasMenuItem"

.LN_35_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_36_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_37_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_38_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_39_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MainMenuBarDivider"

.LN_40_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContentBgTop"

.LN_41_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContentBgBottom"

.LN_42_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FillWindowHost"

.LN_43_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContentArea"

.LN_44_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarColumn"

.LN_45_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitterColumn"

.LN_46_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Sidebar"

.LN_47_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarStatus"

.LN_48_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusBox"

.LN_49_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusArea"

.LN_50_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusArea"

.LN_51_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_52_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_53_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_54_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_55_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_56_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_57_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_58_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "StatusIcon"

.LN_59_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SBHomeButton"

.LN_60_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeCreditBox"

.LN_61_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarTabs"

.LN_62_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContactsColumn"

.LN_63_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ServersColumn"

.LN_64_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "RecentsColumn"

.LN_65_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnContacts"

.LN_66_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnServers"

.LN_67_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "btnRecents"

.LN_68_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ContactsArea"

.LN_69_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PseudoSearchBox"

.LN_70_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_71_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_72_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_73_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SearchBox"

.LN_74_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_75_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationList"

.LN_76_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationList"

.LN_77_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_78_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ServersList"

.LN_79_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SidebarAddButtons"

.LN_80_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "AddContactButton"

.LN_81_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MakeGroupButton"

.LN_82_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GlobalUserCount"

.LN_83_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SelectedItemHolder"

.LN_84_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_85_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_86_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_87_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SkypeSplitter"

.LN_88_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_89_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatArea"

.LN_90_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarRow"

.LN_91_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TopbarWindowRow"

.LN_92_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopbarSplitterRow"

.LN_93_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageWindowRow"

.LN_94_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopbar"

.LN_95_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "chatHeader"

.LN_96_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatCloseButton"

.LN_97_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HomeTopbar"

.LN_98_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MainPageButton"

.LN_99_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ProfileButton"

.LN_100_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FeedbackButton"

.LN_101_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "browser"

.LN_102_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HomeUnavailableFrame"

.LN_103_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "FillMessagePanelHost"

.LN_104_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatProfileArea"

.LN_105_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_106_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_107_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_108_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatTopBarSplitter"

.LN_109_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseEventHandler"

.LN_110_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageWindow"

.LN_111_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ChatButtonRow"

.LN_112_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "VideoCallButton"

.LN_113_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CallButton"

.LN_114_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CallDropdown"

.LN_115_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "WifiButton"

.LN_116_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Spinner"

.LN_117_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SpinnerRotate"

.LN_118_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationItemsList"

.LN_119_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "ConversationItemsList"

.LN_120_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_121_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageBoxPanel"

.LN_122_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiButton"

.LN_123_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiFlyout"

.LN_124_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "EmojiWrapPanel"

.LN_125_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicator"

.LN_126_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicatorIcon"

.LN_127_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "TypingIndicatorText"

.LN_128_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_129_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_130_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_131_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_132_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyboardFocusChangedEventHandler"

.LN_133_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_134_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.KeyEventHandler"

.LN_135_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "MessageTextBox"

.LN_136_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.Controls.TextChangedEventHandler"

.LN_137_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "SendMsgButton"

.LN_138_m_Skymu_Skype5_Main_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "System.Windows.EventSetter"

.LN_1_m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "PreviewMouseLeftButtonUpEvent"

.LN_2_m_Skymu_Skype5_Main_System_Windows_Markup_IStyleConnector_Connect_i4_ref:
    .asciz "System.Windows.Input.MouseButtonEventHandler"

.LN_0_m_Skymu_Skype5_Main_ctor_b_14_0_ref_ref:
    .asciz "Skymu.Skype5.Main/'<>c__DisplayClass14_0'"

.LN_1_m_Skymu_Skype5_Main_ctor_b_14_0_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype5_Main_ctor_b_14_0_ref_ref:
    .asciz "e"

.LN_3_m_Skymu_Skype5_Main_ctor_b_14_0_ref_ref:
    .asciz "System.Action"

.LSTUB_m_Skymu_Skype5_Main_OnSidebarResized_void:
    .asciz "Skymu.Skype5.Main::OnSidebarResized  [floating-point 'bgt']"

    .section .note.GNU-stack,"",@progbits
