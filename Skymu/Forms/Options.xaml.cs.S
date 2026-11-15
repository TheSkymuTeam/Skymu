# Forms/Options.xaml.cs
    .text

.globl m_Skymu_Forms_Options_c_cctor__void
.type m_Skymu_Forms_Options_c_cctor__void, @function
m_Skymu_Forms_Options_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Forms_Options_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Forms_Options_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_Options_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Forms_Options_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Forms_Options_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Forms_Options_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_c_cctor__void, .-m_Skymu_Forms_Options_c_cctor__void

.globl m_Skymu_Forms_Options_c_ctor__void
.type m_Skymu_Forms_Options_c_ctor__void, @function
m_Skymu_Forms_Options_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Options_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Options_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Forms_Options_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_c_ctor__void, .-m_Skymu_Forms_Options_c_ctor__void

.globl m_Skymu_Forms_Options_c_ctor_b_3_1__void
.type m_Skymu_Forms_Options_c_ctor_b_3_1__void, @function
m_Skymu_Forms_Options_c_ctor_b_3_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Options_c_ctor_b_3_1_void_0000:
    lea .LN_0_m_Skymu_Forms_Options_c_ctor_b_3_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_OptionPages_General_Skymu_ctor__void
    mov %r12, -24(%rbp)
.Lm_Skymu_Forms_Options_c_ctor_b_3_1_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_c_ctor_b_3_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_c_ctor_b_3_1__void, .-m_Skymu_Forms_Options_c_ctor_b_3_1__void

.globl m_Skymu_Forms_Options_c_ctor_b_3_2__void
.type m_Skymu_Forms_Options_c_ctor_b_3_2__void, @function
m_Skymu_Forms_Options_c_ctor_b_3_2__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Options_c_ctor_b_3_2_void_0000:
    lea .LN_0_m_Skymu_Forms_Options_c_ctor_b_3_2_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_OptionPages_Advanced_Debug_ctor__void
    mov %r12, -24(%rbp)
.Lm_Skymu_Forms_Options_c_ctor_b_3_2_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_c_ctor_b_3_2_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_c_ctor_b_3_2__void, .-m_Skymu_Forms_Options_c_ctor_b_3_2__void

.globl m_Skymu_Forms_Options_c_ctor_b_3_3__void
.type m_Skymu_Forms_Options_c_ctor_b_3_3__void, @function
m_Skymu_Forms_Options_c_ctor_b_3_3__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Options_c_ctor_b_3_3_void_0000:
    lea .LN_0_m_Skymu_Forms_Options_c_ctor_b_3_3_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_OptionPages_General_Main_ctor__void
    mov %r12, -24(%rbp)
.Lm_Skymu_Forms_Options_c_ctor_b_3_3_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_c_ctor_b_3_3_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_c_ctor_b_3_3__void, .-m_Skymu_Forms_Options_c_ctor_b_3_3__void

.globl m_Skymu_Forms_Options_c_TabSelect_b_5_0__void
.type m_Skymu_Forms_Options_c_TabSelect_b_5_0__void, @function
m_Skymu_Forms_Options_c_TabSelect_b_5_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Options_c_TabSelect_b_5_0_void_0000:
    lea .LN_0_m_Skymu_Forms_Options_c_TabSelect_b_5_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Forms_OptionPages_Placeholder_ctor__void
    mov %r12, -24(%rbp)
.Lm_Skymu_Forms_Options_c_TabSelect_b_5_0_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_c_TabSelect_b_5_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_c_TabSelect_b_5_0__void, .-m_Skymu_Forms_Options_c_TabSelect_b_5_0__void

.globl m_Skymu_Forms_Options_ctor__void
.type m_Skymu_Forms_Options_ctor__void, @function
m_Skymu_Forms_Options_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_ctor__void
.Lm_Skymu_Forms_Options_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0007:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Options_InitializeComponent__void
.Lm_Skymu_Forms_Options_ctor_void_000c:
    lea .LN_0_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0011:
    lea .LS_1_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_001b:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_ctor_void_002e
.Lm_Skymu_Forms_Options_ctor_void_001d:
    lea .LN_2_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0022:
    lea .LS_3_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0027:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_002c:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Options_ctor_void_0036
.Lm_Skymu_Forms_Options_ctor_void_002e:
    lea .LS_4_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0033:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0034:
    jmp .Lm_Skymu_Forms_Options_ctor_void_003c
.Lm_Skymu_Forms_Options_ctor_void_0036:
    lea .LS_5_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_003b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_003c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_003d:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0042:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0047:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0048:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_004d:
.Lm_Skymu_Forms_Options_ctor_void_0052:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Control_set_Background__ref
.Lm_Skymu_Forms_Options_ctor_void_0057:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0058:
    lea .LN_6_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_Grid_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_005d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_005f:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0065:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_006a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_Add__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_006f:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0070:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0071:
    mov -56(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0076:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0077:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_007c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_Add__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0081:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0082:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0083:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0088:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0089:
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_008e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_Add__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0093:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0094:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0095:
    mov -56(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_009a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_009b:
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00a0:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_Add__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00a5:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00a6:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00a7:
    mov -56(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00ac:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00ad:
    mov -64(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00b2:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_Add__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00b7:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00b8:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00b9:
    mov -56(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00be:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00bf:
    mov -64(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00c4:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_Add__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00c9:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_ctor_void_00ce:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00cf:
    lea .LN_20_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Controls_Page_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00d4:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00d5:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00d6:
    mov -56(%rbp), %rdi
    lea .LN_21_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00db:
    lea .LN_22_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00e0:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00e1:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_ctor_void_00fa
.Lm_Skymu_Forms_Options_ctor_void_00e3:
    mov -56(%rbp), %rax
.Lm_Skymu_Forms_Options_ctor_void_00e4:
    lea .LN_23_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00e9:
    lea m_Skymu_Forms_Options_c_ctor_b_3_1__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00ef:
    lea .LN_24_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_Page_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00f4:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00f5:
    lea .LN_25_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov -56(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Forms_Options_ctor_void_00fa:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_00ff:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0100:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0101:
    mov -48(%rbp), %rdi
    lea .LN_26_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0106:
    lea .LN_27_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_010b:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_010c:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_ctor_void_0125
.Lm_Skymu_Forms_Options_ctor_void_010e:
    mov -48(%rbp), %rax
.Lm_Skymu_Forms_Options_ctor_void_010f:
    lea .LN_28_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0114:
    lea m_Skymu_Forms_Options_c_ctor_b_3_2__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_011a:
    lea .LN_29_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_Page_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_011f:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0120:
    lea .LN_30_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov -48(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Forms_Options_ctor_void_0125:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_Add__gen_gen
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_012a:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_012b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_012c:
    mov -40(%rbp), %rdi
    lea .LN_31_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0131:
    lea .LN_32_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0136:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0137:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_ctor_void_0150
.Lm_Skymu_Forms_Options_ctor_void_0139:
    mov -40(%rbp), %rax
.Lm_Skymu_Forms_Options_ctor_void_013a:
    lea .LN_33_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_013f:
    lea m_Skymu_Forms_Options_c_ctor_b_3_3__void(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0145:
    lea .LN_34_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_Page_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_014a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_014b:
    lea .LN_35_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Forms_Options_ctor_void_0150:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_Add__gen_gen
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0155:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_36_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_ctor_void_015a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_015b:
    lea .LN_37_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0160:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0161:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0162:
    mov -48(%rbp), %rdi
    lea .LN_38_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0167:
    lea .LS_39_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_016c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0171:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0172:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0173:
    mov -48(%rbp), %rdi
    lea .LN_40_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0178:
    lea .LS_41_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_017d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0182:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0183:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0184:
    mov -48(%rbp), %rdi
    lea .LN_42_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0189:
    lea .LS_43_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_018e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0193:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0194:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0195:
    mov -48(%rbp), %rdi
    lea .LN_44_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_019a:
    lea .LS_45_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_019f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01a4:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01a5:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01a6:
    mov -48(%rbp), %rdi
    lea .LN_46_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01ab:
    lea .LS_47_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01b0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01b5:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01b6:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01b7:
    mov -48(%rbp), %rdi
    lea .LN_48_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01bc:
    lea .LS_49_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $74, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01c1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01c6:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01c7:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01c8:
    mov -48(%rbp), %rdi
    lea .LN_50_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01cd:
    lea .LS_51_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01d2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01d7:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01d8:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01d9:
    mov -48(%rbp), %rdi
    lea .LN_52_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01de:
    lea .LS_53_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01e3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01e8:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01e9:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01ea:
    mov -48(%rbp), %rdi
    lea .LN_54_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01ef:
    lea .LS_55_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01f4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01f9:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01fa:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_01fb:
    mov -48(%rbp), %rdi
    lea .LN_56_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0200:
    lea .LS_57_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0205:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_020a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_020b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_020c:
    mov -48(%rbp), %rdi
    lea .LN_58_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0211:
    lea .LS_59_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0216:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_021b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_021c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_021d:
    mov -48(%rbp), %rdi
    lea .LN_60_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0222:
    lea .LS_61_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0227:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_022c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_022d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_022e:
    mov -48(%rbp), %rdi
    lea .LN_62_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0233:
    lea .LS_63_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0238:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_023d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_023e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_023f:
    mov -48(%rbp), %rdi
    lea .LN_64_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0244:
    lea .LS_65_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0249:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_024e:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_024f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0250:
    mov -48(%rbp), %rdi
    lea .LN_66_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0255:
    lea .LS_67_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_025a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_025f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0260:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0261:
    mov -48(%rbp), %rdi
    lea .LN_68_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0266:
    lea .LS_69_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_026b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0270:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0271:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0272:
    mov -48(%rbp), %rdi
    lea .LN_70_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0277:
    lea .LS_71_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_027c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0281:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0282:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0283:
    mov -48(%rbp), %rdi
    lea .LN_72_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0288:
    lea .LS_73_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_028d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0292:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0293:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0294:
    mov -48(%rbp), %rdi
    lea .LN_74_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_0299:
    lea .LS_75_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_029e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02a3:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02a4:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02a5:
    mov -48(%rbp), %rdi
    lea .LN_76_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02aa:
    lea .LS_77_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02af:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02b4:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02b5:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02b6:
    mov -48(%rbp), %rdi
    lea .LN_78_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02bb:
    lea .LS_79_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02c0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02c5:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02c6:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02c7:
    mov -48(%rbp), %rdi
    lea .LN_80_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02cc:
    lea .LS_81_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02d1:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02d6:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02d7:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02d8:
    mov -48(%rbp), %rdi
    lea .LN_82_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02dd:
    lea .LS_83_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    mov $82, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02e2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02e7:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_84_m_Skymu_Forms_Options_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_ctor_void_02ec:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02ed:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02ee:
    lea m_Skymu_Forms_Options_ctor_b_3_0__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02f4:
    lea .LN_85_m_Skymu_Forms_Options_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_void_02f9:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_add_SourceInitialized__ref
.Lm_Skymu_Forms_Options_ctor_void_02fe:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_ctor__void, .-m_Skymu_Forms_Options_ctor__void

.globl m_Skymu_Forms_Options_CatSelect__ref_ref
.type m_Skymu_Forms_Options_CatSelect__ref_ref, @function
m_Skymu_Forms_Options_CatSelect__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0001:
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0006:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0008:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Options_CatSelect_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_000d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0012:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0013:
    jmp .Lm_Skymu_Forms_Options_CatSelect_ref_ref_0068
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0015:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0017:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Current__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_001c:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_001d:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_001f:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Key__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0024:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0025:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_Skymu_Forms_Options_CatSelect_ref_ref_0068
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0027:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0029:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Key__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_002e:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_002f:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0034:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0036:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Key__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_003b:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_003c:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_DefaultIndex__i4
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0041:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0043:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Key__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0048:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0049:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_HoverIndex__i4
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_004e:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0050:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Key__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0055:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0056:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_PressedIndex__i4
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_005b:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_005d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Value__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0062:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0063:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0068:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_006a:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_MoveNext__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_006f:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_CatSelect_ref_ref_0015
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0071:
    jmp .Lm_Skymu_Forms_Options_CatSelect_ref_ref_0081
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0081:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0082:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0083:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0088:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0089:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Options_CatSelect_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_008e:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_008f:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Item__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0094:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_0095:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_UIElement_set_Visibility__v
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_009a:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_009b:
    mov $3, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_009c:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_DefaultIndex__i4
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00a1:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00a2:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00a3:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_HoverIndex__i4
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00a8:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00a9:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00aa:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_set_PressedIndex__i4
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00af:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00b0:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00b1:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Options_CatSelect_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00b6:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00b7:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Item__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00bc:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00c1:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00c2:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_get_Item__i4
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00c7:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00cc:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00d1:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00d2:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_get_Item__i4
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00d7:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00d8:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Options_TabSelect__ref_ref
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_00dd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_CatSelect_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_CatSelect__ref_ref, .-m_Skymu_Forms_Options_CatSelect__ref_ref

.globl m_Skymu_Forms_Options_TabSelect__ref_ref
.type m_Skymu_Forms_Options_TabSelect__ref_ref, @function
m_Skymu_Forms_Options_TabSelect__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $208, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0001:
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0006:
    mov -128(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0007:
    mov -40(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0008:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Control_get_Template__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_000d:
    lea .LS_0_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0012:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0013:
    mov -144(%rbp), %rdx
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkTemplate_FindName__ref_ref
    mov %rax, -128(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0018:
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_001d:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_TabSelect_ref_ref_002b
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_001f:
    mov -40(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0020:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Tag__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0025:
    mov -136(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -136(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_002a:
    mov -144(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_002b:
    mov -40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_002c:
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_Parent__void
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0031:
    mov -144(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -144(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0036:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_003b:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_GetEnumerator__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0040:
    mov -152(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0041:
    jmp .Lm_Skymu_Forms_Options_TabSelect_ref_ref_007b
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0043:
    mov -64(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0044:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0049:
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_004e:
    mov -160(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0050:
    mov -72(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0052:
    mov -40(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0053:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_Skymu_Forms_Options_TabSelect_ref_ref_007b
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0055:
    mov -72(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0057:
    mov $0, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0058:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_005d:
    mov -72(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_005f:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Control_get_Template__void
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0064:
    lea .LS_1_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0069:
    mov -72(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_006b:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkTemplate_FindName__ref_ref
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0070:
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0075:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0076:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_007b:
    mov -64(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_007c:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0081:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_TabSelect_ref_ref_0043
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0083:
    jmp .Lm_Skymu_Forms_Options_TabSelect_ref_ref_0099
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0099:
    mov -40(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_009a:
    mov $2, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_009b:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00a0:
    mov -40(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00a1:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Control_get_Template__void
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00a6:
    lea .LS_2_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00ab:
    mov -40(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00ac:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkTemplate_FindName__ref_ref
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00b1:
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00b6:
    mov $2, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00b7:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_SliceControl_SetState__v
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00bc:
    mov $1, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00bd:
    mov -160(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00bf:
    jmp .Lm_Skymu_Forms_Options_TabSelect_ref_ref_0148
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00c4:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00c5:
    mov -160(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00ca:
    mov -40(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00cb:
    lea -104(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00cd:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00d2:
    mov -160(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Options_TabSelect_ref_ref_00da
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00d4:
    mov -104(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00d6:
    mov -160(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00d8:
    jmp .Lm_Skymu_Forms_Options_TabSelect_ref_ref_00e1
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00da:
    lea .LS_4_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    mov $83, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00df:
    mov -160(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00e1:
    mov -96(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00e3:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_ToLowerInvariant__void
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00e8:
    lea .LS_5_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00ed:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00f2:
    mov -160(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Options_TabSelect_ref_ref_0102
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00f4:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00f9:
    mov -96(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_00fb:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0100:
    mov -160(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0102:
    mov -96(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0104:
    lea .LS_6_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0109:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_IndexOf__ref
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_010e:
    mov -160(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0110:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0112:
    mov $-1, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0113:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Forms_Options_TabSelect_ref_ref_0150
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0115:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0116:
    mov -160(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_011b:
    mov -96(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_011d:
    mov $3, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_011e:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0120:
    mov $3, %rax
    mov %rax, -192(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0121:
    mov -192(%rbp), %rcx
    mov -184(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0122:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4_i4
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0127:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_012c:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_012d:
    mov -160(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0132:
    mov -96(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0134:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0136:
    mov $4, %rax
    mov %rax, -184(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0137:
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0138:
    mov -176(%rbp), %rsi
    mov -168(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_013d:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_TextBlock_set_Text__ref
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0142:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0144:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0145:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0146:
    mov -160(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0148:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_014a:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_014b:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Forms_Options_TabSelect_ref_ref_00c4
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0150:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0151:
    mov -160(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0156:
    mov -40(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0157:
    lea -48(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0159:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_TryGetValue__gen_gen
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_015e:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_TabSelect_ref_ref_0180
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0160:
    lea .LN_10_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0165:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0166:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_TabSelect_ref_ref_017f
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0168:
    mov -152(%rbp), %rax
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0169:
    lea .LN_11_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_016e:
    lea m_Skymu_Forms_Options_c_TabSelect_b_5_0__void(%rip), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0174:
    lea .LN_12_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Controls_Page_ctor__ref_v
    mov %r12, -152(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0179:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_017a:
    lea .LN_13_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rdi
    call shim_global_slot
    mov -152(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_017f:
    mov -152(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0180:
    mov -48(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0181:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Page_Invoke__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0186:
    mov -160(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0187:
    mov -56(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0188:
    mov $0, %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0189:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    call m_System_Windows_Navigation_JournalEntry_SetKeepAlive__ref_b
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_018e:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_018f:
    mov -160(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_Options_TabSelect_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0194:
    mov -56(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_0195:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Frame_Navigate__ref
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_019a:
    mov -160(%rbp), %rax
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_019b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_TabSelect_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_TabSelect__ref_ref, .-m_Skymu_Forms_Options_TabSelect__ref_ref

.globl m_Skymu_Forms_Options_CancelButtonClick__ref_ref
.type m_Skymu_Forms_Options_CancelButtonClick__ref_ref, @function
m_Skymu_Forms_Options_CancelButtonClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_CancelButtonClick_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_CancelButtonClick_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Options_CancelButtonClick_ref_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_CancelButtonClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_CancelButtonClick__ref_ref, .-m_Skymu_Forms_Options_CancelButtonClick__ref_ref

.globl m_Skymu_Forms_Options_SaveButtonClick__ref_ref
.type m_Skymu_Forms_Options_SaveButtonClick__ref_ref, @function
m_Skymu_Forms_Options_SaveButtonClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_SaveButtonClick_ref_ref_0000:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_Forms_Options_SaveButtonClick_ref_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_SaveButtonClick_ref_ref_0006:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Forms_Options_SaveButtonClick_ref_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_SaveButtonClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_SaveButtonClick__ref_ref, .-m_Skymu_Forms_Options_SaveButtonClick__ref_ref

.globl m_Skymu_Forms_Options_RestartButtonClick__ref_ref
.type m_Skymu_Forms_Options_RestartButtonClick__ref_ref, @function
m_Skymu_Forms_Options_RestartButtonClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_RestartButtonClick_ref_ref_0000:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_Forms_Options_RestartButtonClick_ref_ref_0005:
    call m_Skymu_Universal_Restart__void
.Lm_Skymu_Forms_Options_RestartButtonClick_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_RestartButtonClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_RestartButtonClick__ref_ref, .-m_Skymu_Forms_Options_RestartButtonClick__ref_ref

.globl m_Skymu_Forms_Options_ResetButtonClick__ref_ref
.type m_Skymu_Forms_Options_ResetButtonClick__ref_ref, @function
m_Skymu_Forms_Options_ResetButtonClick__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_ResetButtonClick_ref_ref_0000:
    call m_Skymu_Preferences_Settings_Reset__void
.Lm_Skymu_Forms_Options_ResetButtonClick_ref_ref_0005:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_Forms_Options_ResetButtonClick_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_ResetButtonClick_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_ResetButtonClick__ref_ref, .-m_Skymu_Forms_Options_ResetButtonClick__ref_ref

.globl m_Skymu_Forms_Options_InitializeComponent__void
.type m_Skymu_Forms_Options_InitializeComponent__void, @function
m_Skymu_Forms_Options_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Options_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Forms_Options_InitializeComponent_void_0009
.Lm_Skymu_Forms_Options_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Options_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_InitializeComponent_void_0010:
    lea .LS_2_m_Skymu_Forms_Options_InitializeComponent_void(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_0015:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_0016:
    lea .LN_3_m_Skymu_Forms_Options_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_InitializeComponent_void_001e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Forms_Options_InitializeComponent_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_InitializeComponent__void, .-m_Skymu_Forms_Options_InitializeComponent__void

.globl m_Skymu_Forms_Options_CreateDelegate__ref_ref
.type m_Skymu_Forms_Options_CreateDelegate__ref_ref, @function
m_Skymu_Forms_Options_CreateDelegate__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_CreateDelegate_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_CreateDelegate_ref_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_CreateDelegate_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_CreateDelegate_ref_ref_0003:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Delegate_CreateDelegate__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_CreateDelegate_ref_ref_0008:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_CreateDelegate_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_CreateDelegate__ref_ref, .-m_Skymu_Forms_Options_CreateDelegate__ref_ref

.globl m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect__i4_ref
.type m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect__i4_ref, @function
m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect__i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0001:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0003:
    mov -40(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b5
    cmp $1, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c2
    cmp $2, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cf
    cmp $3, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dc
    cmp $4, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e9
    cmp $5, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f6
    cmp $6, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0103
    cmp $7, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0110
    cmp $8, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011d
    cmp $9, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012a
    cmp $10, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0137
    cmp $11, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0144
    cmp $12, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0151
    cmp $13, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015e
    cmp $14, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016b
    cmp $15, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0178
    cmp $16, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0185
    cmp $17, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0192
    cmp $18, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019f
    cmp $19, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ac
    cmp $20, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b9
    cmp $21, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c6
    cmp $22, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d3
    cmp $23, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e0
    cmp $24, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ed
    cmp $25, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fa
    cmp $26, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0207
    cmp $27, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0214
    cmp $28, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0221
    cmp $29, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022e
    cmp $30, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023b
    cmp $31, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0248
    cmp $32, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0255
    cmp $33, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0262
    cmp $34, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026f
    cmp $35, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027c
    cmp $36, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0289
    cmp $37, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0296
    cmp $38, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a3
    cmp $39, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bb
    cmp $40, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d3
    cmp $41, %eax
    je .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02eb
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b0:
    jmp .Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0303
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b5:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b6:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00b7:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00bc:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c2:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c3:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c4:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00c9:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ce:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00cf:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d1:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00d6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00db:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dc:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00dd:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00de:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00e9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00ea:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00eb:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00f8:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_00fd:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0102:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0103:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0104:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0105:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_010f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0110:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0111:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0112:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0117:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_011f:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0124:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0129:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012a:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012b:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_012c:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0131:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0136:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0137:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0138:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0139:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_013e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0143:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0144:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0145:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0146:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_014b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0150:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0151:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0152:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0153:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0158:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_12_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_015f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0160:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0165:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_13_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_016d:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0172:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_14_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0177:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0178:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0179:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017a:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_017f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_15_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0184:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0185:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0186:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0187:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_018c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_16_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0191:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0192:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0193:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0194:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0199:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_17_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_019f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a0:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a1:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01a6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_18_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ab:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ac:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ad:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ae:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b3:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_19_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b8:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01b9:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ba:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01bb:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c0:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_20_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c5:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c6:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c7:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01c8:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01cd:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_21_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d3:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d4:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01d5:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01da:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_22_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01df:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e0:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e1:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e2:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01e7:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_23_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ec:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ed:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ee:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01ef:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f4:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_24_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01f9:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fa:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fb:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_01fc:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0201:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_25_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0206:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0207:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0208:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0209:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_020e:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_26_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0213:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0214:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0215:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0216:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_021b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_27_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0220:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0221:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0222:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0223:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0228:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_28_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_022f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0230:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0235:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_29_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023c:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_023d:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0242:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_30_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0247:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0248:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0249:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024a:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_024f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_31_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0254:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0255:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0256:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0257:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_025c:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_32_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0261:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0262:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0263:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0264:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0269:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_33_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_026f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0270:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0271:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0276:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_34_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_027e:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0283:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_35_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0288:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0289:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_028a:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_028b:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0290:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_36_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0295:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0296:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0297:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0298:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_029d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_37_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a3:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a4:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02a9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02aa:
    lea m_Skymu_Forms_Options_SaveButtonClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b0:
    lea .LN_38_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02b5:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ba:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bb:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02bc:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c2:
    lea m_Skymu_Forms_Options_RestartButtonClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02c8:
    lea .LN_39_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02cd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d3:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d4:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02d9:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02da:
    lea m_Skymu_Forms_Options_ResetButtonClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e0:
    lea .LN_40_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02e5:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ea:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02eb:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02ec:
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f1:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f2:
    lea m_Skymu_Forms_Options_CancelButtonClick__ref_ref(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02f8:
    lea .LN_41_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_RoutedEventHandler_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_02fd:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Primitives_ButtonBase_add_Click__ref
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0302:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0303:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0304:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_0305:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_42_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_030a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect__i4_ref, .-m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect__i4_ref

.globl m_Skymu_Forms_Options_ctor_b_3_0__ref_ref
.type m_Skymu_Forms_Options_ctor_b_3_0__ref_ref, @function
m_Skymu_Forms_Options_ctor_b_3_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_Forms_Options_ctor_b_3_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0006:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_000b:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_000c:
    jmp .Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0073
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_000e:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0010:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Current__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0015:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0016:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0018:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Key__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_001d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_ApplyTemplate__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0022:
    mov -72(%rbp), %rax
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0023:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0025:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_get_Value__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_002a:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_002f:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0030:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_get_Item__i4
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0035:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_003a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Panel_get_Children__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_003f:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_UIElementCollection_GetEnumerator__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0044:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0045:
    jmp .Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0058
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0047:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0048:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_004d:
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0052:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_ApplyTemplate__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0057:
    mov -88(%rbp), %rax
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0058:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0059:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_005e:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0047
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0060:
    jmp .Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0073
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0073:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0075:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Controls_Grid_MoveNext__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_007a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_000e
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_007c:
    jmp .Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_008c
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_008c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_008d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_008e:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Skymu_Forms_Options_ctor_b_3_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0093:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0094:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Options_TabSelect__ref_ref
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_0099:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Forms_Options_ctor_b_3_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Forms_Options_ctor_b_3_0__ref_ref, .-m_Skymu_Forms_Options_ctor_b_3_0__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Forms_Options_c_cctor_void:
    .asciz "Skymu.Forms.Options/'<>c'"

.LN_1_m_Skymu_Forms_Options_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Forms_Options_c_ctor_b_3_1_void:
    .asciz "Skymu.Forms.OptionPages.General.Skymu"

.LN_0_m_Skymu_Forms_Options_c_ctor_b_3_2_void:
    .asciz "Skymu.Forms.OptionPages.Advanced.Debug"

.LN_0_m_Skymu_Forms_Options_c_ctor_b_3_3_void:
    .asciz "Skymu.Forms.OptionPages.General.Main"

.LN_0_m_Skymu_Forms_Options_c_TabSelect_b_5_0_void:
    .asciz "Skymu.Forms.OptionPages.Placeholder"

.LN_0_m_Skymu_Forms_Options_ctor_void:
    .asciz "Theme"

.LS_1_m_Skymu_Forms_Options_ctor_void:
    .short 83, 107, 121, 112, 101, 55

.LN_2_m_Skymu_Forms_Options_ctor_void:
    .asciz "Theme"

.LS_3_m_Skymu_Forms_Options_ctor_void:
    .short 83, 107, 121, 112, 101, 54

.LS_4_m_Skymu_Forms_Options_ctor_void:
    .short 77, 101, 116, 114, 111, 46, 66, 97, 99, 107, 103, 114, 111, 117, 110, 100

.LS_5_m_Skymu_Forms_Options_ctor_void:
    .short 66, 97, 99, 107, 103, 114, 111, 117, 110, 100

.LN_6_m_Skymu_Forms_Options_ctor_void:
    .asciz "System.Windows.Controls.Grid>"

.LN_7_m_Skymu_Forms_Options_ctor_void:
    .asciz "HGeneral"

.LN_8_m_Skymu_Forms_Options_ctor_void:
    .asciz "GGeneral"

.LN_9_m_Skymu_Forms_Options_ctor_void:
    .asciz "HPrivacy"

.LN_10_m_Skymu_Forms_Options_ctor_void:
    .asciz "GPrivacy"

.LN_11_m_Skymu_Forms_Options_ctor_void:
    .asciz "HNotifications"

.LN_12_m_Skymu_Forms_Options_ctor_void:
    .asciz "GNotifications"

.LN_13_m_Skymu_Forms_Options_ctor_void:
    .asciz "HCalls"

.LN_14_m_Skymu_Forms_Options_ctor_void:
    .asciz "GCalls"

.LN_15_m_Skymu_Forms_Options_ctor_void:
    .asciz "HChatsSMS"

.LN_16_m_Skymu_Forms_Options_ctor_void:
    .asciz "GChatsSMS"

.LN_17_m_Skymu_Forms_Options_ctor_void:
    .asciz "HAdvanced"

.LN_18_m_Skymu_Forms_Options_ctor_void:
    .asciz "GAdvanced"

.LN_19_m_Skymu_Forms_Options_ctor_void:
    .asciz "catToGrid"

.LN_20_m_Skymu_Forms_Options_ctor_void:
    .asciz "System.Windows.Controls.Page>>"

.LN_21_m_Skymu_Forms_Options_ctor_void:
    .asciz "General_Skymu"

.LN_22_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9__3_1"

.LN_23_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9"

.LN_24_m_Skymu_Forms_Options_ctor_void:
    .asciz "System.Windows.Controls.Page>"

.LN_25_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9__3_1"

.LN_26_m_Skymu_Forms_Options_ctor_void:
    .asciz "Advanced_Debug"

.LN_27_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9__3_2"

.LN_28_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9"

.LN_29_m_Skymu_Forms_Options_ctor_void:
    .asciz "System.Windows.Controls.Page>"

.LN_30_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9__3_2"

.LN_31_m_Skymu_Forms_Options_ctor_void:
    .asciz "General_Main"

.LN_32_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9__3_3"

.LN_33_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9"

.LN_34_m_Skymu_Forms_Options_ctor_void:
    .asciz "System.Windows.Controls.Page>"

.LN_35_m_Skymu_Forms_Options_ctor_void:
    .asciz "<>9__3_3"

.LN_36_m_Skymu_Forms_Options_ctor_void:
    .asciz "tabDispenser"

.LN_37_m_Skymu_Forms_Options_ctor_void:
    .asciz "string>"

.LN_38_m_Skymu_Forms_Options_ctor_void:
    .asciz "General_Main"

.LS_39_m_Skymu_Forms_Options_ctor_void:
    .short 83, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 71, 69, 78, 69, 82, 65, 76, 95, 67, 65, 80, 84, 73, 79, 78

.LN_40_m_Skymu_Forms_Options_ctor_void:
    .asciz "General_Devices"

.LS_41_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 65, 85, 68, 73, 79, 95, 67, 65, 80, 84, 73, 79, 78

.LN_42_m_Skymu_Forms_Options_ctor_void:
    .asciz "General_Sounds"

.LS_43_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 83, 79, 85, 78, 68, 83, 95, 67, 65, 80, 84, 73, 79, 78

.LN_44_m_Skymu_Forms_Options_ctor_void:
    .asciz "General_Video"

.LS_45_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 86, 73, 68, 69, 79

.LN_46_m_Skymu_Forms_Options_ctor_void:
    .asciz "General_Access"

.LS_47_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 83, 75, 89, 65, 67, 67, 69, 83, 83

.LN_48_m_Skymu_Forms_Options_ctor_void:
    .asciz "General_Skymu"

.LS_49_m_Skymu_Forms_Options_ctor_void:
    .short 60, 98, 62, 83, 107, 121, 109, 117, 32, 67, 117, 115, 116, 111, 109, 105, 122, 97, 116, 105, 111, 110, 58, 60, 47, 98, 62, 32, 77, 111, 100, 105, 102, 121, 32, 116, 104, 101, 32, 119, 97, 121, 32, 83, 107, 121, 109, 117, 32, 108, 111, 111, 107, 115, 44, 32, 102, 101, 101, 108, 115, 44, 32, 97, 110, 100, 32, 98, 101, 104, 97, 118, 101, 115

.LN_50_m_Skymu_Forms_Options_ctor_void:
    .asciz "Privacy_Main"

.LS_51_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 80, 82, 73, 86, 65, 67, 89

.LN_52_m_Skymu_Forms_Options_ctor_void:
    .asciz "Privacy_Blocked"

.LS_53_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 84, 78, 84, 66, 56

.LN_54_m_Skymu_Forms_Options_ctor_void:
    .asciz "Notifications_Main"

.LS_55_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 78, 79, 84, 73, 70, 73, 67, 65, 84, 73, 79, 78, 83, 95, 67, 65, 80, 84, 73, 79, 78

.LN_56_m_Skymu_Forms_Options_ctor_void:
    .asciz "Notifications_Alerts"

.LS_57_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 65, 76, 69, 82, 84, 83

.LN_58_m_Skymu_Forms_Options_ctor_void:
    .asciz "Notifications_Sounds"

.LS_59_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 83, 79, 85, 78, 68, 83, 95, 67, 65, 80, 84, 73, 79, 78

.LN_60_m_Skymu_Forms_Options_ctor_void:
    .asciz "Calls_Main"

.LS_61_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 83, 69, 84, 85, 80, 95, 67, 65, 76, 76, 83

.LN_62_m_Skymu_Forms_Options_ctor_void:
    .asciz "Calls_Forwarding"

.LS_63_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 70, 79, 82, 87, 65, 82, 68, 73, 78, 71

.LN_64_m_Skymu_Forms_Options_ctor_void:
    .asciz "Calls_Voicemail"

.LS_65_m_Skymu_Forms_Options_ctor_void:
    .short 83, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 86, 79, 73, 67, 69, 77, 65, 73, 76, 95, 67, 65, 80, 84, 73, 79, 78

.LN_66_m_Skymu_Forms_Options_ctor_void:
    .asciz "Calls_Video"

.LS_67_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 86, 73, 68, 69, 79

.LN_68_m_Skymu_Forms_Options_ctor_void:
    .asciz "Chats_Main"

.LS_69_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 95, 67, 72, 65, 84

.LN_70_m_Skymu_Forms_Options_ctor_void:
    .asciz "Chats_Appearance"

.LS_71_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 67, 72, 65, 84, 95, 76, 79, 79, 75, 83

.LN_72_m_Skymu_Forms_Options_ctor_void:
    .asciz "Chats_SMS"

.LS_73_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 83, 77, 83

.LN_74_m_Skymu_Forms_Options_ctor_void:
    .asciz "Advanced_Main"

.LS_75_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 85, 80, 68, 65, 84, 69, 83

.LN_76_m_Skymu_Forms_Options_ctor_void:
    .asciz "Advanced_Updates"

.LS_77_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 85, 80, 71, 82, 65, 68, 69, 83

.LN_78_m_Skymu_Forms_Options_ctor_void:
    .asciz "Advanced_Connection"

.LS_79_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 67, 79, 78, 78, 69, 67, 84, 73, 79, 78

.LN_80_m_Skymu_Forms_Options_ctor_void:
    .asciz "Advanced_Hotkeys"

.LS_81_m_Skymu_Forms_Options_ctor_void:
    .short 115, 70, 95, 79, 80, 84, 73, 79, 78, 83, 95, 76, 66, 67, 95, 72, 79, 84, 75, 69, 89, 83

.LN_82_m_Skymu_Forms_Options_ctor_void:
    .asciz "Advanced_Debug"

.LS_83_m_Skymu_Forms_Options_ctor_void:
    .short 60, 98, 62, 68, 101, 98, 117, 103, 32, 111, 112, 116, 105, 111, 110, 115, 58, 60, 47, 98, 62, 32, 79, 112, 116, 105, 111, 110, 115, 32, 116, 104, 97, 116, 32, 111, 110, 108, 121, 32, 97, 112, 112, 101, 97, 114, 115, 32, 97, 110, 100, 32, 119, 111, 114, 107, 115, 32, 111, 110, 32, 34, 68, 101, 98, 117, 103, 34, 32, 98, 117, 105, 108, 100, 32, 118, 97, 114, 105, 97, 110, 116

.LN_84_m_Skymu_Forms_Options_ctor_void:
    .asciz "tabToText"

.LN_85_m_Skymu_Forms_Options_ctor_void:
    .asciz "System.EventHandler"

.LN_0_m_Skymu_Forms_Options_CatSelect_ref_ref:
    .asciz "catToGrid"

.LN_1_m_Skymu_Forms_Options_CatSelect_ref_ref:
    .asciz "catToGrid"

.LN_2_m_Skymu_Forms_Options_CatSelect_ref_ref:
    .asciz "catToGrid"

.LS_0_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .short 73, 110, 110, 101, 114, 83, 108, 105, 99, 101

.LS_1_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .short 73, 110, 110, 101, 114, 83, 108, 105, 99, 101

.LS_2_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .short 73, 110, 110, 101, 114, 83, 108, 105, 99, 101

.LN_3_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "tabToText"

.LS_4_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .short 60, 98, 62, 80, 108, 97, 99, 101, 104, 111, 108, 100, 101, 114, 58, 60, 47, 98, 62, 32, 87, 101, 32, 99, 111, 117, 108, 100, 110, 39, 116, 32, 102, 105, 110, 100, 32, 116, 104, 101, 32, 115, 101, 116, 116, 105, 110, 103, 115, 32, 112, 97, 103, 101, 32, 121, 111, 117, 32, 119, 101, 114, 101, 32, 108, 111, 111, 107, 105, 110, 103, 32, 102, 111, 114, 46, 32, 83, 111, 114, 114, 121, 33

.LS_5_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .short 115

.LS_6_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .short 60, 47, 98, 62

.LN_7_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "CTabTitle"

.LN_8_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "CTabDescription"

.LN_9_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "tabDispenser"

.LN_10_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "<>9__5_0"

.LN_11_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "<>9"

.LN_12_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "System.Windows.Controls.Page>"

.LN_13_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "<>9__5_0"

.LN_14_m_Skymu_Forms_Options_TabSelect_ref_ref:
    .asciz "PageHost"

.LN_0_m_Skymu_Forms_Options_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Forms_Options_InitializeComponent_void:
    .asciz "_contentLoaded"

.LS_2_m_Skymu_Forms_Options_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 102, 111, 114, 109, 115, 47, 111, 112, 116, 105, 111, 110, 115, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Forms_Options_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HGeneral"

.LN_1_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GGeneral"

.LN_2_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "General_Main"

.LN_3_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "General_Devices"

.LN_4_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "General_Sounds"

.LN_5_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "General_Video"

.LN_6_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "General_Access"

.LN_7_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "General_Skymu"

.LN_8_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HPrivacy"

.LN_9_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GPrivacy"

.LN_10_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Privacy_Main"

.LN_11_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Privacy_Blocked"

.LN_12_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HNotifications"

.LN_13_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GNotifications"

.LN_14_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Notifications_Main"

.LN_15_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Notifications_Alerts"

.LN_16_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Notifications_Sounds"

.LN_17_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HCalls"

.LN_18_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GCalls"

.LN_19_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Calls_Main"

.LN_20_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Calls_Forwarding"

.LN_21_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Calls_Voicemail"

.LN_22_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Calls_Video"

.LN_23_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HChatsSMS"

.LN_24_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GChatsSMS"

.LN_25_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Chats_Main"

.LN_26_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Chats_Appearance"

.LN_27_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Chats_SMS"

.LN_28_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "HAdvanced"

.LN_29_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "GAdvanced"

.LN_30_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Advanced_Main"

.LN_31_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Advanced_Updates"

.LN_32_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Advanced_Connection"

.LN_33_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Advanced_Hotkeys"

.LN_34_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "Advanced_Debug"

.LN_35_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CTabTitle"

.LN_36_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "CTabDescription"

.LN_37_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "PageHost"

.LN_38_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_39_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_40_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_41_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "System.Windows.RoutedEventHandler"

.LN_42_m_Skymu_Forms_Options_System_Windows_Markup_IComponentConnector_Connect_i4_ref:
    .asciz "_contentLoaded"

.LN_0_m_Skymu_Forms_Options_ctor_b_3_0_ref_ref:
    .asciz "catToGrid"

.LN_1_m_Skymu_Forms_Options_ctor_b_3_0_ref_ref:
    .asciz "General_Skymu"

    .section .note.GNU-stack,"",@progbits
