    .text

.globl m_Yggdrasil_Models_Metadata_get_Identifier__void
.type m_Yggdrasil_Models_Metadata_get_Identifier__void, @function
m_Yggdrasil_Models_Metadata_get_Identifier__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Identifier_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Identifier_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_get_Identifier_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Identifier_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_get_Identifier_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_get_Identifier__void, .-m_Yggdrasil_Models_Metadata_get_Identifier__void
.globl m_Yggdrasil_Models_Metadata_set_Identifier__ref
.type m_Yggdrasil_Models_Metadata_set_Identifier__ref, @function
m_Yggdrasil_Models_Metadata_set_Identifier__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Identifier_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Identifier_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Identifier_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_set_Identifier_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Metadata_set_Identifier_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_set_Identifier_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_set_Identifier__ref, .-m_Yggdrasil_Models_Metadata_set_Identifier__ref
.globl m_Yggdrasil_Models_Metadata_get_DisplayName__void
.type m_Yggdrasil_Models_Metadata_get_DisplayName__void, @function
m_Yggdrasil_Models_Metadata_get_DisplayName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_DisplayName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_DisplayName_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_get_DisplayName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_DisplayName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_get_DisplayName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_get_DisplayName__void, .-m_Yggdrasil_Models_Metadata_get_DisplayName__void
.globl m_Yggdrasil_Models_Metadata_set_DisplayName__ref
.type m_Yggdrasil_Models_Metadata_set_DisplayName__ref, @function
m_Yggdrasil_Models_Metadata_set_DisplayName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_DisplayName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_DisplayName_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_DisplayName_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_set_DisplayName_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_DisplayName_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_DisplayName_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_Metadata_set_DisplayName_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_DisplayName_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_string__gen_gen_ref
.Lm_Yggdrasil_Models_Metadata_set_DisplayName_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_set_DisplayName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_set_DisplayName__ref, .-m_Yggdrasil_Models_Metadata_set_DisplayName__ref
.globl m_Yggdrasil_Models_Metadata_get_Avatar__void
.type m_Yggdrasil_Models_Metadata_get_Avatar__void, @function
m_Yggdrasil_Models_Metadata_get_Avatar__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Avatar_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Avatar_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_get_Avatar_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Avatar_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_get_Avatar_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_get_Avatar__void, .-m_Yggdrasil_Models_Metadata_get_Avatar__void
.globl m_Yggdrasil_Models_Metadata_set_Avatar__v
.type m_Yggdrasil_Models_Metadata_set_Avatar__v, @function
m_Yggdrasil_Models_Metadata_set_Avatar__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Avatar_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Avatar_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Avatar_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_set_Avatar_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Avatar_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Avatar_v_0008:
    lea .LS_1_m_Yggdrasil_Models_Metadata_set_Avatar_v(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Avatar_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_uint8__gen_gen_ref
.Lm_Yggdrasil_Models_Metadata_set_Avatar_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_set_Avatar_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_set_Avatar__v, .-m_Yggdrasil_Models_Metadata_set_Avatar__v
.globl m_Yggdrasil_Models_Metadata_get_Description__void
.type m_Yggdrasil_Models_Metadata_get_Description__void, @function
m_Yggdrasil_Models_Metadata_get_Description__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Description_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Description_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_get_Description_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_get_Description_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_get_Description_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_get_Description__void, .-m_Yggdrasil_Models_Metadata_get_Description__void
.globl m_Yggdrasil_Models_Metadata_set_Description__ref
.type m_Yggdrasil_Models_Metadata_set_Description__ref, @function
m_Yggdrasil_Models_Metadata_set_Description__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Description_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Description_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Description_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_set_Description_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Description_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Description_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_Metadata_set_Description_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_set_Description_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_string__gen_gen_ref
.Lm_Yggdrasil_Models_Metadata_set_Description_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_set_Description_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_set_Description__ref, .-m_Yggdrasil_Models_Metadata_set_Description__ref
.globl m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref
.type m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref, @function
m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_000f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_set_Identifier__ref
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0015:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0016:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_001e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref, .-m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref
.globl m_Yggdrasil_Models_Metadata_add_PropertyChanged__ref
.type m_Yggdrasil_Models_Metadata_add_PropertyChanged__ref, @function
m_Yggdrasil_Models_Metadata_add_PropertyChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_add_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0010:
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_Metadata_add_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_ComponentModel_PropertyChangedEventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0007
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_add_PropertyChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_add_PropertyChanged__ref, .-m_Yggdrasil_Models_Metadata_add_PropertyChanged__ref
.globl m_Yggdrasil_Models_Metadata_remove_PropertyChanged__ref
.type m_Yggdrasil_Models_Metadata_remove_PropertyChanged__ref, @function
m_Yggdrasil_Models_Metadata_remove_PropertyChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0010:
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_ComponentModel_PropertyChangedEventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0007
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_remove_PropertyChanged__ref, .-m_Yggdrasil_Models_Metadata_remove_PropertyChanged__ref
.globl m_Yggdrasil_Models_Metadata_Set_T__gen_gen_ref
.type m_Yggdrasil_Models_Metadata_Set_T__gen_gen_ref, @function
m_Yggdrasil_Models_Metadata_Set_T__gen_gen_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0001:
    mov -48(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0006:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref(%rip), %rsi
    call shim_box
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_000c:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0011:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Object_Equals__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0016:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0019
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0019:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_001a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_001b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rax
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0021:
    mov -48(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0026:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0027:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_002b
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0029:
    mov -40(%rbp), %rax
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_002c:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_002d:
    lea .LN_3_m_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventArgs_ctor__ref
    mov %r12, -56(%rbp)
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0032:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventHandler_Invoke__ref_ref
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_0037:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Metadata_Set_T__gen_gen_ref, .-m_Yggdrasil_Models_Metadata_Set_T__gen_gen_ref
.globl m_Yggdrasil_Models_Participant_ctor__ref_ref_arr
.type m_Yggdrasil_Models_Participant_ctor__ref_ref_arr, @function
m_Yggdrasil_Models_Participant_ctor__ref_ref_arr:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Models_Participant_ctor_ref_ref_arr_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Participant_ctor_ref_ref_arr_0001:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Participant_ctor_ref_ref_arr_0002:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_Participant_ctor_ref_ref_arr_0003:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Participant_ctor_ref_ref_arr_0004:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Participant_ctor_ref_ref_arr_0005:
    mov -80(%rbp), %r8
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref
.Lm_Yggdrasil_Models_Participant_ctor_ref_ref_arr_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Participant_ctor_ref_ref_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Participant_ctor__ref_ref_arr, .-m_Yggdrasil_Models_Participant_ctor__ref_ref_arr
.globl m_Yggdrasil_Models_Role_get_HexColor__void
.type m_Yggdrasil_Models_Role_get_HexColor__void, @function
m_Yggdrasil_Models_Role_get_HexColor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Role_get_HexColor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Role_get_HexColor_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Role_get_HexColor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Role_get_HexColor_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Role_get_HexColor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Role_get_HexColor__void, .-m_Yggdrasil_Models_Role_get_HexColor__void
.globl m_Yggdrasil_Models_Role_set_HexColor__v
.type m_Yggdrasil_Models_Role_set_HexColor__v, @function
m_Yggdrasil_Models_Role_set_HexColor__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Role_set_HexColor_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Role_set_HexColor_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Role_set_HexColor_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Role_set_HexColor_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Role_set_HexColor_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Role_set_HexColor_v_0008:
    lea .LS_1_m_Yggdrasil_Models_Role_set_HexColor_v(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Role_set_HexColor_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_uint32__gen_gen_ref
.Lm_Yggdrasil_Models_Role_set_HexColor_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Role_set_HexColor_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Role_set_HexColor__v, .-m_Yggdrasil_Models_Role_set_HexColor__v
.globl m_Yggdrasil_Models_Role_get_Hoist__void
.type m_Yggdrasil_Models_Role_get_Hoist__void, @function
m_Yggdrasil_Models_Role_get_Hoist__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Role_get_Hoist_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Role_get_Hoist_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Role_get_Hoist_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Role_get_Hoist_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Role_get_Hoist_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Role_get_Hoist__void, .-m_Yggdrasil_Models_Role_get_Hoist__void
.globl m_Yggdrasil_Models_Role_set_Hoist__v
.type m_Yggdrasil_Models_Role_set_Hoist__v, @function
m_Yggdrasil_Models_Role_set_Hoist__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Role_set_Hoist_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Role_set_Hoist_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Role_set_Hoist_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Role_set_Hoist_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Role_set_Hoist_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Role_set_Hoist_v_0008:
    lea .LS_1_m_Yggdrasil_Models_Role_set_Hoist_v(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Role_set_Hoist_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_bool__gen_gen_ref
.Lm_Yggdrasil_Models_Role_set_Hoist_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Role_set_Hoist_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Role_set_Hoist__v, .-m_Yggdrasil_Models_Role_set_Hoist__v
.globl m_Yggdrasil_Models_Role_get_Mentionable__void
.type m_Yggdrasil_Models_Role_get_Mentionable__void, @function
m_Yggdrasil_Models_Role_get_Mentionable__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Role_get_Mentionable_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Role_get_Mentionable_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Role_get_Mentionable_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Role_get_Mentionable_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Role_get_Mentionable_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Role_get_Mentionable__void, .-m_Yggdrasil_Models_Role_get_Mentionable__void
.globl m_Yggdrasil_Models_Role_set_Mentionable__v
.type m_Yggdrasil_Models_Role_set_Mentionable__v, @function
m_Yggdrasil_Models_Role_set_Mentionable__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Role_set_Mentionable_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Role_set_Mentionable_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Role_set_Mentionable_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Role_set_Mentionable_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Role_set_Mentionable_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Role_set_Mentionable_v_0008:
    lea .LS_1_m_Yggdrasil_Models_Role_set_Mentionable_v(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Role_set_Mentionable_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_bool__gen_gen_ref
.Lm_Yggdrasil_Models_Role_set_Mentionable_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Role_set_Mentionable_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Role_set_Mentionable__v, .-m_Yggdrasil_Models_Role_set_Mentionable__v
.globl m_Yggdrasil_Models_Role_ctor__ref_ref_ref_arr_ref_ref
.type m_Yggdrasil_Models_Role_ctor__ref_ref_ref_arr_ref_ref, @function
m_Yggdrasil_Models_Role_ctor__ref_ref_ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0003:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0005:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0006:
    mov -104(%rbp), %r8
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_000c:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_000d:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0013:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0015:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_001a:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_001b:
    mov 16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_001d:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Role_ctor__ref_ref_ref_arr_ref_ref, .-m_Yggdrasil_Models_Role_ctor__ref_ref_ref_arr_ref_ref
.globl m_Yggdrasil_Models_User_get_Status__void
.type m_Yggdrasil_Models_User_get_Status__void, @function
m_Yggdrasil_Models_User_get_Status__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_User_get_Status_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_User_get_Status_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_User_get_Status_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_User_get_Status_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_User_get_Status_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_User_get_Status__void, .-m_Yggdrasil_Models_User_get_Status__void
.globl m_Yggdrasil_Models_User_set_Status__ref
.type m_Yggdrasil_Models_User_set_Status__ref, @function
m_Yggdrasil_Models_User_set_Status__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_User_set_Status_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_User_set_Status_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_User_set_Status_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_User_set_Status_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_User_set_Status_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_User_set_Status_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_User_set_Status_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_User_set_Status_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_string__gen_gen_ref
.Lm_Yggdrasil_Models_User_set_Status_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_User_set_Status_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_User_set_Status__ref, .-m_Yggdrasil_Models_User_set_Status__ref
.globl m_Yggdrasil_Models_User_get_Username__void
.type m_Yggdrasil_Models_User_get_Username__void, @function
m_Yggdrasil_Models_User_get_Username__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_User_get_Username_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_User_get_Username_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_User_get_Username_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_User_get_Username_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_User_get_Username_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_User_get_Username__void, .-m_Yggdrasil_Models_User_get_Username__void
.globl m_Yggdrasil_Models_User_set_Username__ref
.type m_Yggdrasil_Models_User_set_Username__ref, @function
m_Yggdrasil_Models_User_set_Username__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_User_set_Username_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_User_set_Username_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_User_set_Username_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_User_set_Username_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_User_set_Username_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_User_set_Username_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_User_set_Username_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_User_set_Username_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_string__gen_gen_ref
.Lm_Yggdrasil_Models_User_set_Username_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_User_set_Username_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_User_set_Username__ref, .-m_Yggdrasil_Models_User_set_Username__ref
.globl m_Yggdrasil_Models_User_get_ConnectionStatus__void
.type m_Yggdrasil_Models_User_get_ConnectionStatus__void, @function
m_Yggdrasil_Models_User_get_ConnectionStatus__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_User_get_ConnectionStatus_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_User_get_ConnectionStatus_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_User_get_ConnectionStatus_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_User_get_ConnectionStatus_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_User_get_ConnectionStatus_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_User_get_ConnectionStatus__void, .-m_Yggdrasil_Models_User_get_ConnectionStatus__void
.globl m_Yggdrasil_Models_User_set_ConnectionStatus__v
.type m_Yggdrasil_Models_User_set_ConnectionStatus__v, @function
m_Yggdrasil_Models_User_set_ConnectionStatus__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_User_set_ConnectionStatus_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_User_set_ConnectionStatus_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_User_set_ConnectionStatus_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_User_set_ConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_User_set_ConnectionStatus_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_User_set_ConnectionStatus_v_0008:
    lea .LS_1_m_Yggdrasil_Models_User_set_ConnectionStatus_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_User_set_ConnectionStatus_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_valuetype_Yggdrasil_Enumerations_PresenceStatus__gen_gen_ref
.Lm_Yggdrasil_Models_User_set_ConnectionStatus_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_User_set_ConnectionStatus_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_User_set_ConnectionStatus__v, .-m_Yggdrasil_Models_User_set_ConnectionStatus__v
.globl m_Yggdrasil_Models_User_ctor__ref_ref_ref_ref_ref_arr
.type m_Yggdrasil_Models_User_ctor__ref_ref_ref_ref_ref_arr, @function
m_Yggdrasil_Models_User_ctor__ref_ref_ref_ref_ref_arr:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0001:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0002:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0003:
    mov 16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0005:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Participant_ctor__ref_ref_arr
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_000a:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_000b:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_000c:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0011:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0012:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0014:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0019:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_001a:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_001c:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_0021:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_User_ctor__ref_ref_ref_ref_ref_arr, .-m_Yggdrasil_Models_User_ctor__ref_ref_ref_ref_ref_arr
.globl m_Yggdrasil_Models_Conversation_get_UnreadCount__void
.type m_Yggdrasil_Models_Conversation_get_UnreadCount__void, @function
m_Yggdrasil_Models_Conversation_get_UnreadCount__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Conversation_get_UnreadCount_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Conversation_get_UnreadCount_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Conversation_get_UnreadCount_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Conversation_get_UnreadCount_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Conversation_get_UnreadCount_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Conversation_get_UnreadCount__void, .-m_Yggdrasil_Models_Conversation_get_UnreadCount__void
.globl m_Yggdrasil_Models_Conversation_set_UnreadCount__i4
.type m_Yggdrasil_Models_Conversation_set_UnreadCount__i4, @function
m_Yggdrasil_Models_Conversation_set_UnreadCount__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_UnreadCount_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_UnreadCount_i4_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_UnreadCount_i4_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Conversation_set_UnreadCount_i4(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_UnreadCount_i4_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_UnreadCount_i4_0008:
    lea .LS_1_m_Yggdrasil_Models_Conversation_set_UnreadCount_i4(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_UnreadCount_i4_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_int32__gen_gen_ref
.Lm_Yggdrasil_Models_Conversation_set_UnreadCount_i4_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Conversation_set_UnreadCount_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Conversation_set_UnreadCount__i4, .-m_Yggdrasil_Models_Conversation_set_UnreadCount__i4
.globl m_Yggdrasil_Models_Conversation_get_LastMessageTime__void
.type m_Yggdrasil_Models_Conversation_get_LastMessageTime__void, @function
m_Yggdrasil_Models_Conversation_get_LastMessageTime__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Conversation_get_LastMessageTime_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Conversation_get_LastMessageTime_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Conversation_get_LastMessageTime_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Conversation_get_LastMessageTime_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Conversation_get_LastMessageTime_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Conversation_get_LastMessageTime__void, .-m_Yggdrasil_Models_Conversation_get_LastMessageTime__void
.globl m_Yggdrasil_Models_Conversation_set_LastMessageTime__v
.type m_Yggdrasil_Models_Conversation_set_LastMessageTime__v, @function
m_Yggdrasil_Models_Conversation_set_LastMessageTime__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_LastMessageTime_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_LastMessageTime_v_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_LastMessageTime_v_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Conversation_set_LastMessageTime_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_LastMessageTime_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_LastMessageTime_v_0008:
    lea .LS_1_m_Yggdrasil_Models_Conversation_set_LastMessageTime_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Conversation_set_LastMessageTime_v_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_valuetype_netstandard_System_DateTime__gen_gen_ref
.Lm_Yggdrasil_Models_Conversation_set_LastMessageTime_v_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Conversation_set_LastMessageTime_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Conversation_set_LastMessageTime__v, .-m_Yggdrasil_Models_Conversation_set_LastMessageTime__v
.globl m_Yggdrasil_Models_Conversation_ctor__ref_ref_i4_arr_gen_ref
.type m_Yggdrasil_Models_Conversation_ctor__ref_ref_i4_arr_gen_ref, @function
m_Yggdrasil_Models_Conversation_ctor__ref_ref_i4_arr_gen_ref:
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
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0003:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0005:
    mov 16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0007:
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
    call m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_000d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_000e:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0014:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0016:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0017:
    lea -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0019:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTime_get_HasValue__void
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_001e:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0027
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0020:
    call m_System_DateTime_get_Now__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0025:
    jmp .Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_002e
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0027:
    lea -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0029:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTime_GetValueOrDefault__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_002e:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_0033:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Conversation_ctor__ref_ref_i4_arr_gen_ref, .-m_Yggdrasil_Models_Conversation_ctor__ref_ref_i4_arr_gen_ref
.globl m_Yggdrasil_Models_DirectMessage_get_Partner__void
.type m_Yggdrasil_Models_DirectMessage_get_Partner__void, @function
m_Yggdrasil_Models_DirectMessage_get_Partner__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_DirectMessage_get_Partner_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_DirectMessage_get_Partner_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_DirectMessage_get_Partner_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_DirectMessage_get_Partner_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_DirectMessage_get_Partner_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_DirectMessage_get_Partner__void, .-m_Yggdrasil_Models_DirectMessage_get_Partner__void
.globl m_Yggdrasil_Models_Group_get_Members__void
.type m_Yggdrasil_Models_Group_get_Members__void, @function
m_Yggdrasil_Models_Group_get_Members__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Group_get_Members_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Group_get_Members_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Group_get_Members_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Group_get_Members_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Group_get_Members_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Group_get_Members__void, .-m_Yggdrasil_Models_Group_get_Members__void
.globl m_Yggdrasil_Models_Group_set_Members__ref
.type m_Yggdrasil_Models_Group_set_Members__ref, @function
m_Yggdrasil_Models_Group_set_Members__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Group_set_Members_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Group_set_Members_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Group_set_Members_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Group_set_Members_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Group_set_Members_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Group_set_Members_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_Group_set_Members_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Group_set_Members_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_class_Yggdrasil_Models_User__gen_gen_ref
.Lm_Yggdrasil_Models_Group_set_Members_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Group_set_Members_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Group_set_Members__ref, .-m_Yggdrasil_Models_Group_set_Members__ref
.globl m_Yggdrasil_Models_Server_get_Members__void
.type m_Yggdrasil_Models_Server_get_Members__void, @function
m_Yggdrasil_Models_Server_get_Members__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Server_get_Members_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Members_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_get_Members_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Members_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_get_Members_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_get_Members__void, .-m_Yggdrasil_Models_Server_get_Members__void
.globl m_Yggdrasil_Models_Server_set_Members__ref
.type m_Yggdrasil_Models_Server_set_Members__ref, @function
m_Yggdrasil_Models_Server_set_Members__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Server_set_Members_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Server_set_Members_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Members_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_set_Members_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Members_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Server_set_Members_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_Server_set_Members_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Server_set_Members_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Models_ServerMember__gen_gen_ref
.Lm_Yggdrasil_Models_Server_set_Members_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_set_Members_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_set_Members__ref, .-m_Yggdrasil_Models_Server_set_Members__ref
.globl m_Yggdrasil_Models_Server_get_Roles__void
.type m_Yggdrasil_Models_Server_get_Roles__void, @function
m_Yggdrasil_Models_Server_get_Roles__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Server_get_Roles_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Roles_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_get_Roles_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Roles_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_get_Roles_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_get_Roles__void, .-m_Yggdrasil_Models_Server_get_Roles__void
.globl m_Yggdrasil_Models_Server_set_Roles__ref
.type m_Yggdrasil_Models_Server_set_Roles__ref, @function
m_Yggdrasil_Models_Server_set_Roles__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Server_set_Roles_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Server_set_Roles_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Roles_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_set_Roles_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Roles_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Server_set_Roles_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_Server_set_Roles_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Server_set_Roles_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Models_Role__gen_gen_ref
.Lm_Yggdrasil_Models_Server_set_Roles_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_set_Roles_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_set_Roles__ref, .-m_Yggdrasil_Models_Server_set_Roles__ref
.globl m_Yggdrasil_Models_Server_get_Channels__void
.type m_Yggdrasil_Models_Server_get_Channels__void, @function
m_Yggdrasil_Models_Server_get_Channels__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Server_get_Channels_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Channels_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_get_Channels_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Channels_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_get_Channels_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_get_Channels__void, .-m_Yggdrasil_Models_Server_get_Channels__void
.globl m_Yggdrasil_Models_Server_set_Channels__ref
.type m_Yggdrasil_Models_Server_set_Channels__ref, @function
m_Yggdrasil_Models_Server_set_Channels__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Server_set_Channels_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Server_set_Channels_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Channels_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_set_Channels_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Channels_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Server_set_Channels_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_Server_set_Channels_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Server_set_Channels_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Models_ServerChannel__gen_gen_ref
.Lm_Yggdrasil_Models_Server_set_Channels_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_set_Channels_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_set_Channels__ref, .-m_Yggdrasil_Models_Server_set_Channels__ref
.globl m_Yggdrasil_Models_Server_get_GroupedChannels__void
.type m_Yggdrasil_Models_Server_get_GroupedChannels__void, @function
m_Yggdrasil_Models_Server_get_GroupedChannels__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Server_get_GroupedChannels_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_GroupedChannels_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_get_GroupedChannels_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_GroupedChannels_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_get_GroupedChannels_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_get_GroupedChannels__void, .-m_Yggdrasil_Models_Server_get_GroupedChannels__void
.globl m_Yggdrasil_Models_Server_set_GroupedChannels__ref
.type m_Yggdrasil_Models_Server_set_GroupedChannels__ref, @function
m_Yggdrasil_Models_Server_set_GroupedChannels__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Server_set_GroupedChannels_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Server_set_GroupedChannels_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_GroupedChannels_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_set_GroupedChannels_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_GroupedChannels_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Server_set_GroupedChannels_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_Server_set_GroupedChannels_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Server_set_GroupedChannels_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_class_netstandard_System_Collections_ObjectModel_ObservableCollection_1_object__gen_gen_ref
.Lm_Yggdrasil_Models_Server_set_GroupedChannels_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_set_GroupedChannels_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_set_GroupedChannels__ref, .-m_Yggdrasil_Models_Server_set_GroupedChannels__ref
.globl m_Yggdrasil_Models_Server_get_MemberCount__void
.type m_Yggdrasil_Models_Server_get_MemberCount__void, @function
m_Yggdrasil_Models_Server_get_MemberCount__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Server_get_MemberCount_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_MemberCount_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_get_MemberCount_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_MemberCount_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_get_MemberCount_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_get_MemberCount__void, .-m_Yggdrasil_Models_Server_get_MemberCount__void
.globl m_Yggdrasil_Models_Server_set_MemberCount__i4
.type m_Yggdrasil_Models_Server_set_MemberCount__i4, @function
m_Yggdrasil_Models_Server_set_MemberCount__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Server_set_MemberCount_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Server_set_MemberCount_i4_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_MemberCount_i4_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_set_MemberCount_i4(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_MemberCount_i4_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Server_set_MemberCount_i4_0008:
    lea .LS_1_m_Yggdrasil_Models_Server_set_MemberCount_i4(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Server_set_MemberCount_i4_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_int32__gen_gen_ref
.Lm_Yggdrasil_Models_Server_set_MemberCount_i4_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_set_MemberCount_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_set_MemberCount__i4, .-m_Yggdrasil_Models_Server_set_MemberCount__i4
.globl m_Yggdrasil_Models_Server_get_Position__void
.type m_Yggdrasil_Models_Server_get_Position__void, @function
m_Yggdrasil_Models_Server_get_Position__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Server_get_Position_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Position_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_get_Position_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Position_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_get_Position_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_get_Position__void, .-m_Yggdrasil_Models_Server_get_Position__void
.globl m_Yggdrasil_Models_Server_set_Position__i4
.type m_Yggdrasil_Models_Server_set_Position__i4, @function
m_Yggdrasil_Models_Server_set_Position__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Server_set_Position_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Server_set_Position_i4_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Position_i4_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_set_Position_i4(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Position_i4_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Server_set_Position_i4_0008:
    lea .LS_1_m_Yggdrasil_Models_Server_set_Position_i4(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Server_set_Position_i4_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_int32__gen_gen_ref
.Lm_Yggdrasil_Models_Server_set_Position_i4_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_set_Position_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_set_Position__i4, .-m_Yggdrasil_Models_Server_set_Position__i4
.globl m_Yggdrasil_Models_Server_get_Invite__void
.type m_Yggdrasil_Models_Server_get_Invite__void, @function
m_Yggdrasil_Models_Server_get_Invite__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Server_get_Invite_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Invite_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_get_Invite_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_Invite_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_get_Invite_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_get_Invite__void, .-m_Yggdrasil_Models_Server_get_Invite__void
.globl m_Yggdrasil_Models_Server_set_Invite__ref
.type m_Yggdrasil_Models_Server_set_Invite__ref, @function
m_Yggdrasil_Models_Server_set_Invite__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Server_set_Invite_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Server_set_Invite_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Invite_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_set_Invite_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_Invite_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Server_set_Invite_ref_0008:
    lea .LS_1_m_Yggdrasil_Models_Server_set_Invite_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_Server_set_Invite_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_Set_string__gen_gen_ref
.Lm_Yggdrasil_Models_Server_set_Invite_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_set_Invite_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_set_Invite__ref, .-m_Yggdrasil_Models_Server_set_Invite__ref
.globl m_Yggdrasil_Models_Server_get_CategoryMap__void
.type m_Yggdrasil_Models_Server_get_CategoryMap__void, @function
m_Yggdrasil_Models_Server_get_CategoryMap__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Server_get_CategoryMap_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_CategoryMap_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_get_CategoryMap_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Server_get_CategoryMap_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_get_CategoryMap_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_get_CategoryMap__void, .-m_Yggdrasil_Models_Server_get_CategoryMap__void
.globl m_Yggdrasil_Models_Server_set_CategoryMap__ref
.type m_Yggdrasil_Models_Server_set_CategoryMap__ref, @function
m_Yggdrasil_Models_Server_set_CategoryMap__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Server_set_CategoryMap_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Server_set_CategoryMap_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Server_set_CategoryMap_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_set_CategoryMap_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Server_set_CategoryMap_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_set_CategoryMap_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_set_CategoryMap__ref, .-m_Yggdrasil_Models_Server_set_CategoryMap__ref
.globl m_Yggdrasil_Models_Server_ctor__ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref
.type m_Yggdrasil_Models_Server_ctor__ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref, @function
m_Yggdrasil_Models_Server_ctor__ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $160, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0003:
    mov 16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0005:
    mov 40(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0007:
    mov -144(%rbp), %r8
    mov -136(%rbp), %rcx
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_ctor__ref_ref_arr_ref
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_000d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_000e:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0014:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0016:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_001c:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_001e:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0023:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0024:
    mov 24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0026:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0027:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_002f
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0029:
    mov -112(%rbp), %rax
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_002a:
    lea .LN_3_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_002f:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Server_set_CategoryMap__gen
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0034:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0035:
    lea .LN_4_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_ObjectModel_ObservableCollection_1_object_ctor__void
    mov %r12, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_003a:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_5_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_003f:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0040:
    mov 32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0042:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0047
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0044:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0045:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_004b
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0047:
    mov 32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0049:
    jmp .Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0051
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_004b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_004c:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerMember_get_Count__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0051:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_6_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0056:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0057:
    mov 56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0059:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_7_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_005e:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_005f:
    mov 48(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0061:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rdi
    lea .LN_8_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_0066:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Server_ctor__ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref, .-m_Yggdrasil_Models_Server_ctor__ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref
.globl m_Yggdrasil_Models_ServerChannel_get_ParentServerID__void
.type m_Yggdrasil_Models_ServerChannel_get_ParentServerID__void, @function
m_Yggdrasil_Models_ServerChannel_get_ParentServerID__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_ParentServerID_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_ParentServerID_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerChannel_get_ParentServerID_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_ParentServerID_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerChannel_get_ParentServerID_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerChannel_get_ParentServerID__void, .-m_Yggdrasil_Models_ServerChannel_get_ParentServerID__void
.globl m_Yggdrasil_Models_ServerChannel_get_ChannelType__void
.type m_Yggdrasil_Models_ServerChannel_get_ChannelType__void, @function
m_Yggdrasil_Models_ServerChannel_get_ChannelType__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_ChannelType_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_ChannelType_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerChannel_get_ChannelType_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_ChannelType_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerChannel_get_ChannelType_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerChannel_get_ChannelType__void, .-m_Yggdrasil_Models_ServerChannel_get_ChannelType__void
.globl m_Yggdrasil_Models_ServerChannel_get_CategoryID__void
.type m_Yggdrasil_Models_ServerChannel_get_CategoryID__void, @function
m_Yggdrasil_Models_ServerChannel_get_CategoryID__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_CategoryID_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_CategoryID_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerChannel_get_CategoryID_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_CategoryID_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerChannel_get_CategoryID_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerChannel_get_CategoryID__void, .-m_Yggdrasil_Models_ServerChannel_get_CategoryID__void
.globl m_Yggdrasil_Models_ServerChannel_get_Position__void
.type m_Yggdrasil_Models_ServerChannel_get_Position__void, @function
m_Yggdrasil_Models_ServerChannel_get_Position__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_Position_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_Position_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerChannel_get_Position_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerChannel_get_Position_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerChannel_get_Position_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerChannel_get_Position__void, .-m_Yggdrasil_Models_ServerChannel_get_Position__void
.globl m_Yggdrasil_Models_ServerMember_get_User__void
.type m_Yggdrasil_Models_ServerMember_get_User__void, @function
m_Yggdrasil_Models_ServerMember_get_User__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_User_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_User_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerMember_get_User_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_User_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerMember_get_User_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerMember_get_User__void, .-m_Yggdrasil_Models_ServerMember_get_User__void
.globl m_Yggdrasil_Models_ServerMember_get_Roles__void
.type m_Yggdrasil_Models_ServerMember_get_Roles__void, @function
m_Yggdrasil_Models_ServerMember_get_Roles__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_Roles_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_Roles_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerMember_get_Roles_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_Roles_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerMember_get_Roles_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerMember_get_Roles__void, .-m_Yggdrasil_Models_ServerMember_get_Roles__void
.globl m_Yggdrasil_Models_ServerMember_get_Nickname__void
.type m_Yggdrasil_Models_ServerMember_get_Nickname__void, @function
m_Yggdrasil_Models_ServerMember_get_Nickname__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_Nickname_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_Nickname_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerMember_get_Nickname_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_Nickname_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerMember_get_Nickname_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerMember_get_Nickname__void, .-m_Yggdrasil_Models_ServerMember_get_Nickname__void
.globl m_Yggdrasil_Models_ServerMember_set_Nickname__ref
.type m_Yggdrasil_Models_ServerMember_set_Nickname__ref, @function
m_Yggdrasil_Models_ServerMember_set_Nickname__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_set_Nickname_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ServerMember_set_Nickname_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ServerMember_set_Nickname_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerMember_set_Nickname_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ServerMember_set_Nickname_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerMember_set_Nickname_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerMember_set_Nickname__ref, .-m_Yggdrasil_Models_ServerMember_set_Nickname__ref
.globl m_Yggdrasil_Models_ServerMember_get_JoinDate__void
.type m_Yggdrasil_Models_ServerMember_get_JoinDate__void, @function
m_Yggdrasil_Models_ServerMember_get_JoinDate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_JoinDate_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_JoinDate_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerMember_get_JoinDate_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ServerMember_get_JoinDate_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerMember_get_JoinDate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerMember_get_JoinDate__void, .-m_Yggdrasil_Models_ServerMember_get_JoinDate__void
.globl m_Yggdrasil_Models_ServerMember_ctor__ref_gen_ref_gen
.type m_Yggdrasil_Models_ServerMember_ctor__ref_gen_ref_gen, @function
m_Yggdrasil_Models_ServerMember_ctor__ref_gen_ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0007:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_000f:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0010:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0018
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0012:
    mov -56(%rbp), %rax
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0013:
    lea .LN_1_m_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Role_ctor__void
    mov %r12, -56(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0018:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_001d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_001e:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_001f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerMember_set_Nickname__ref
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0024:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0025:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_0027:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_002c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ServerMember_ctor__ref_gen_ref_gen, .-m_Yggdrasil_Models_ServerMember_ctor__ref_gen_ref_gen
.globl m_Yggdrasil_Models_Attachment_get_Name__void
.type m_Yggdrasil_Models_Attachment_get_Name__void, @function
m_Yggdrasil_Models_Attachment_get_Name__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Name_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Name_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Attachment_get_Name_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Name_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_get_Name_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_get_Name__void, .-m_Yggdrasil_Models_Attachment_get_Name__void
.globl m_Yggdrasil_Models_Attachment_set_Name__ref
.type m_Yggdrasil_Models_Attachment_set_Name__ref, @function
m_Yggdrasil_Models_Attachment_set_Name__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Name_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Name_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Name_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Attachment_set_Name_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Attachment_set_Name_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_set_Name_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_set_Name__ref, .-m_Yggdrasil_Models_Attachment_set_Name__ref
.globl m_Yggdrasil_Models_Attachment_get_File__void
.type m_Yggdrasil_Models_Attachment_get_File__void, @function
m_Yggdrasil_Models_Attachment_get_File__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_File_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_File_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Attachment_get_File_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_File_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_get_File_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_get_File__void, .-m_Yggdrasil_Models_Attachment_get_File__void
.globl m_Yggdrasil_Models_Attachment_set_File__v
.type m_Yggdrasil_Models_Attachment_set_File__v, @function
m_Yggdrasil_Models_Attachment_set_File__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_File_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_File_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_File_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Attachment_set_File_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Attachment_set_File_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_set_File_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_set_File__v, .-m_Yggdrasil_Models_Attachment_set_File__v
.globl m_Yggdrasil_Models_Attachment_get_Url__void
.type m_Yggdrasil_Models_Attachment_get_Url__void, @function
m_Yggdrasil_Models_Attachment_get_Url__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Url_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Url_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Attachment_get_Url_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Url_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_get_Url_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_get_Url__void, .-m_Yggdrasil_Models_Attachment_get_Url__void
.globl m_Yggdrasil_Models_Attachment_set_Url__ref
.type m_Yggdrasil_Models_Attachment_set_Url__ref, @function
m_Yggdrasil_Models_Attachment_set_Url__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Url_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Url_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Url_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Attachment_set_Url_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Attachment_set_Url_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_set_Url_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_set_Url__ref, .-m_Yggdrasil_Models_Attachment_set_Url__ref
.globl m_Yggdrasil_Models_Attachment_get_Type__void
.type m_Yggdrasil_Models_Attachment_get_Type__void, @function
m_Yggdrasil_Models_Attachment_get_Type__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Type_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Type_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Attachment_get_Type_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_get_Type_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_get_Type_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_get_Type__void, .-m_Yggdrasil_Models_Attachment_get_Type__void
.globl m_Yggdrasil_Models_Attachment_set_Type__v
.type m_Yggdrasil_Models_Attachment_set_Type__v, @function
m_Yggdrasil_Models_Attachment_set_Type__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Type_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Type_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_set_Type_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Attachment_set_Type_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Attachment_set_Type_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_set_Type_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_set_Type__v, .-m_Yggdrasil_Models_Attachment_set_Type__v
.globl m_Yggdrasil_Models_Attachment_ctor__arr_ref
.type m_Yggdrasil_Models_Attachment_ctor__arr_ref, @function
m_Yggdrasil_Models_Attachment_ctor__arr_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_0008:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_set_File__arr
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_000f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_set_Name__ref
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_0015:
    mov $4, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_0016:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_set_Type__v
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_ctor_arr_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_ctor__arr_ref, .-m_Yggdrasil_Models_Attachment_ctor__arr_ref
.globl m_Yggdrasil_Models_Attachment_ctor__ref_ref
.type m_Yggdrasil_Models_Attachment_ctor__ref_ref, @function
m_Yggdrasil_Models_Attachment_ctor__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_0008:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_set_Url__ref
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_000f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_set_Name__ref
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Attachment_ctor_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Attachment_ctor__ref_ref, .-m_Yggdrasil_Models_Attachment_ctor__ref_ref
.globl m_Yggdrasil_Models_AuthTypeInfo_get_AuthType__void
.type m_Yggdrasil_Models_AuthTypeInfo_get_AuthType__void, @function
m_Yggdrasil_Models_AuthTypeInfo_get_AuthType__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_AuthType_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_AuthType_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_AuthType_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_AuthType_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_get_AuthType_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_get_AuthType__void, .-m_Yggdrasil_Models_AuthTypeInfo_get_AuthType__void
.globl m_Yggdrasil_Models_AuthTypeInfo_set_AuthType__v
.type m_Yggdrasil_Models_AuthTypeInfo_set_AuthType__v, @function
m_Yggdrasil_Models_AuthTypeInfo_set_AuthType__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_AuthType_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_AuthType_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_AuthType_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_AuthType_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_AuthType_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_set_AuthType_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_set_AuthType__v, .-m_Yggdrasil_Models_AuthTypeInfo_set_AuthType__v
.globl m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername__void
.type m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername__void, @function
m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername__void, .-m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername__void
.globl m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername__ref
.type m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername__ref, @function
m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername__ref, .-m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername__ref
.globl m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword__void
.type m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword__void, @function
m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword__void, .-m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword__void
.globl m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword__ref
.type m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword__ref, @function
m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword__ref, .-m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword__ref
.globl m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType__void
.type m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType__void, @function
m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType__void, .-m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType__void
.globl m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType__ref
.type m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType__ref, @function
m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType__ref, .-m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType__ref
.globl m_Yggdrasil_Models_AuthTypeInfo_get_Url__void
.type m_Yggdrasil_Models_AuthTypeInfo_get_Url__void, @function
m_Yggdrasil_Models_AuthTypeInfo_get_Url__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_Url_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_Url_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_Url_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_get_Url_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_get_Url_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_get_Url__void, .-m_Yggdrasil_Models_AuthTypeInfo_get_Url__void
.globl m_Yggdrasil_Models_AuthTypeInfo_set_Url__ref
.type m_Yggdrasil_Models_AuthTypeInfo_set_Url__ref, @function
m_Yggdrasil_Models_AuthTypeInfo_set_Url__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_Url_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_Url_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_Url_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_Url_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_AuthTypeInfo_set_Url_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_set_Url_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_set_Url__ref, .-m_Yggdrasil_Models_AuthTypeInfo_set_Url__ref
.globl m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref
.type m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref, @function
m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0008:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_AuthTypeInfo_set_AuthType__v
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_000e:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_000f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType__ref
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0015:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0016:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername__ref
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_001e:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword__ref
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_AuthTypeInfo_ctor_v_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref, .-m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref
.globl m_Yggdrasil_Models_SavedCredential_get_User__void
.type m_Yggdrasil_Models_SavedCredential_get_User__void, @function
m_Yggdrasil_Models_SavedCredential_get_User__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_User_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_User_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_SavedCredential_get_User_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_User_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_SavedCredential_get_User_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_SavedCredential_get_User__void, .-m_Yggdrasil_Models_SavedCredential_get_User__void
.globl m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
.type m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void, @function
m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_PasswordOrToken_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_PasswordOrToken_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_PasswordOrToken_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_SavedCredential_get_PasswordOrToken_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void, .-m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
.globl m_Yggdrasil_Models_SavedCredential_get_Plugin__void
.type m_Yggdrasil_Models_SavedCredential_get_Plugin__void, @function
m_Yggdrasil_Models_SavedCredential_get_Plugin__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_Plugin_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_Plugin_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_SavedCredential_get_Plugin_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_Plugin_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_SavedCredential_get_Plugin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_SavedCredential_get_Plugin__void, .-m_Yggdrasil_Models_SavedCredential_get_Plugin__void
.globl m_Yggdrasil_Models_SavedCredential_get_AutoLogin__void
.type m_Yggdrasil_Models_SavedCredential_get_AutoLogin__void, @function
m_Yggdrasil_Models_SavedCredential_get_AutoLogin__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_AutoLogin_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_AutoLogin_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_SavedCredential_get_AutoLogin_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_AutoLogin_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_SavedCredential_get_AutoLogin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_SavedCredential_get_AutoLogin__void, .-m_Yggdrasil_Models_SavedCredential_get_AutoLogin__void
.globl m_Yggdrasil_Models_SavedCredential_set_AutoLogin__v
.type m_Yggdrasil_Models_SavedCredential_set_AutoLogin__v, @function
m_Yggdrasil_Models_SavedCredential_set_AutoLogin__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_set_AutoLogin_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_set_AutoLogin_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_set_AutoLogin_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_SavedCredential_set_AutoLogin_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_SavedCredential_set_AutoLogin_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_SavedCredential_set_AutoLogin_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_SavedCredential_set_AutoLogin__v, .-m_Yggdrasil_Models_SavedCredential_set_AutoLogin__v
.globl m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void
.type m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void, @function
m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_AuthenticationType_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_AuthenticationType_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_SavedCredential_get_AuthenticationType_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_get_AuthenticationType_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_SavedCredential_get_AuthenticationType_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void, .-m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void
.globl m_Yggdrasil_Models_SavedCredential_ctor__ref_ref_v_ref_ref
.type m_Yggdrasil_Models_SavedCredential_ctor__ref_ref_v_ref_ref, @function
m_Yggdrasil_Models_SavedCredential_ctor__ref_ref_v_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0001:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0008:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_000f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0016:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_001e:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0023:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0024:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_0026:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_set_AutoLogin__b
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_002b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_SavedCredential_ctor__ref_ref_v_ref_ref, .-m_Yggdrasil_Models_SavedCredential_ctor__ref_ref_v_ref_ref
.globl m_Yggdrasil_Models_ConversationItem_get_Time__void
.type m_Yggdrasil_Models_ConversationItem_get_Time__void, @function
m_Yggdrasil_Models_ConversationItem_get_Time__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_Time_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_Time_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ConversationItem_get_Time_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_Time_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ConversationItem_get_Time_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ConversationItem_get_Time__void, .-m_Yggdrasil_Models_ConversationItem_get_Time__void
.globl m_Yggdrasil_Models_ConversationItem_set_Time__v
.type m_Yggdrasil_Models_ConversationItem_set_Time__v, @function
m_Yggdrasil_Models_ConversationItem_set_Time__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_Time_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_Time_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_Time_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ConversationItem_set_Time_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ConversationItem_set_Time_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ConversationItem_set_Time_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ConversationItem_set_Time__v, .-m_Yggdrasil_Models_ConversationItem_set_Time__v
.globl m_Yggdrasil_Models_ConversationItem_get_Identifier__void
.type m_Yggdrasil_Models_ConversationItem_get_Identifier__void, @function
m_Yggdrasil_Models_ConversationItem_get_Identifier__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_Identifier_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_Identifier_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ConversationItem_get_Identifier_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_Identifier_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ConversationItem_get_Identifier_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ConversationItem_get_Identifier__void, .-m_Yggdrasil_Models_ConversationItem_get_Identifier__void
.globl m_Yggdrasil_Models_ConversationItem_set_Identifier__ref
.type m_Yggdrasil_Models_ConversationItem_set_Identifier__ref, @function
m_Yggdrasil_Models_ConversationItem_set_Identifier__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_Identifier_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_Identifier_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_Identifier_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ConversationItem_set_Identifier_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ConversationItem_set_Identifier_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ConversationItem_set_Identifier_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ConversationItem_set_Identifier__ref, .-m_Yggdrasil_Models_ConversationItem_set_Identifier__ref
.globl m_Yggdrasil_Models_ConversationItem_get_ConversationId__void
.type m_Yggdrasil_Models_ConversationItem_get_ConversationId__void, @function
m_Yggdrasil_Models_ConversationItem_get_ConversationId__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_ConversationId_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_ConversationId_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ConversationItem_get_ConversationId_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_get_ConversationId_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ConversationItem_get_ConversationId_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ConversationItem_get_ConversationId__void, .-m_Yggdrasil_Models_ConversationItem_get_ConversationId__void
.globl m_Yggdrasil_Models_ConversationItem_set_ConversationId__ref
.type m_Yggdrasil_Models_ConversationItem_set_ConversationId__ref, @function
m_Yggdrasil_Models_ConversationItem_set_ConversationId__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_ConversationId_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_ConversationId_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_set_ConversationId_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ConversationItem_set_ConversationId_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ConversationItem_set_ConversationId_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ConversationItem_set_ConversationId_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ConversationItem_set_ConversationId__ref, .-m_Yggdrasil_Models_ConversationItem_set_ConversationId__ref
.globl m_Yggdrasil_Models_ConversationItem_ctor__void
.type m_Yggdrasil_Models_ConversationItem_ctor__void, @function
m_Yggdrasil_Models_ConversationItem_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ConversationItem_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_ConversationItem_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ConversationItem_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ConversationItem_ctor__void, .-m_Yggdrasil_Models_ConversationItem_ctor__void
.globl m_Yggdrasil_Models_Message_get_Author__void
.type m_Yggdrasil_Models_Message_get_Author__void, @function
m_Yggdrasil_Models_Message_get_Author__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Message_get_Author_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_Author_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_get_Author_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_Author_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_get_Author_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_get_Author__void, .-m_Yggdrasil_Models_Message_get_Author__void
.globl m_Yggdrasil_Models_Message_set_Author__ref
.type m_Yggdrasil_Models_Message_set_Author__ref, @function
m_Yggdrasil_Models_Message_set_Author__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Message_set_Author_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Message_set_Author_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Message_set_Author_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_set_Author_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Message_set_Author_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_set_Author_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_set_Author__ref, .-m_Yggdrasil_Models_Message_set_Author__ref
.globl m_Yggdrasil_Models_Message_get_Text__void
.type m_Yggdrasil_Models_Message_get_Text__void, @function
m_Yggdrasil_Models_Message_get_Text__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Message_get_Text_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_Text_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_get_Text_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_Text_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_get_Text_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_get_Text__void, .-m_Yggdrasil_Models_Message_get_Text__void
.globl m_Yggdrasil_Models_Message_set_Text__ref
.type m_Yggdrasil_Models_Message_set_Text__ref, @function
m_Yggdrasil_Models_Message_set_Text__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Message_set_Text_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Message_set_Text_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Message_set_Text_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_set_Text_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Message_set_Text_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_set_Text_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_set_Text__ref, .-m_Yggdrasil_Models_Message_set_Text__ref
.globl m_Yggdrasil_Models_Message_get_Attachments__void
.type m_Yggdrasil_Models_Message_get_Attachments__void, @function
m_Yggdrasil_Models_Message_get_Attachments__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Message_get_Attachments_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_Attachments_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_get_Attachments_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_Attachments_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_get_Attachments_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_get_Attachments__void, .-m_Yggdrasil_Models_Message_get_Attachments__void
.globl m_Yggdrasil_Models_Message_set_Attachments__ref
.type m_Yggdrasil_Models_Message_set_Attachments__ref, @function
m_Yggdrasil_Models_Message_set_Attachments__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Message_set_Attachments_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Message_set_Attachments_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Message_set_Attachments_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_set_Attachments_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Message_set_Attachments_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_set_Attachments_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_set_Attachments__ref, .-m_Yggdrasil_Models_Message_set_Attachments__ref
.globl m_Yggdrasil_Models_Message_get_ParentMessage__void
.type m_Yggdrasil_Models_Message_get_ParentMessage__void, @function
m_Yggdrasil_Models_Message_get_ParentMessage__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Message_get_ParentMessage_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_ParentMessage_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_get_ParentMessage_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_ParentMessage_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_get_ParentMessage_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_get_ParentMessage__void, .-m_Yggdrasil_Models_Message_get_ParentMessage__void
.globl m_Yggdrasil_Models_Message_set_ParentMessage__ref
.type m_Yggdrasil_Models_Message_set_ParentMessage__ref, @function
m_Yggdrasil_Models_Message_set_ParentMessage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Message_set_ParentMessage_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Message_set_ParentMessage_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Message_set_ParentMessage_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_set_ParentMessage_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Message_set_ParentMessage_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_set_ParentMessage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_set_ParentMessage__ref, .-m_Yggdrasil_Models_Message_set_ParentMessage__ref
.globl m_Yggdrasil_Models_Message_get_IsForwarded__void
.type m_Yggdrasil_Models_Message_get_IsForwarded__void, @function
m_Yggdrasil_Models_Message_get_IsForwarded__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Message_get_IsForwarded_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_IsForwarded_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_get_IsForwarded_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_IsForwarded_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_get_IsForwarded_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_get_IsForwarded__void, .-m_Yggdrasil_Models_Message_get_IsForwarded__void
.globl m_Yggdrasil_Models_Message_set_IsForwarded__v
.type m_Yggdrasil_Models_Message_set_IsForwarded__v, @function
m_Yggdrasil_Models_Message_set_IsForwarded__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Message_set_IsForwarded_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Message_set_IsForwarded_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Message_set_IsForwarded_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_set_IsForwarded_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Message_set_IsForwarded_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_set_IsForwarded_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_set_IsForwarded__v, .-m_Yggdrasil_Models_Message_set_IsForwarded__v
.globl m_Yggdrasil_Models_Message_get_PreviousMessageIdentifier__void
.type m_Yggdrasil_Models_Message_get_PreviousMessageIdentifier__void, @function
m_Yggdrasil_Models_Message_get_PreviousMessageIdentifier__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Message_get_PreviousMessageIdentifier_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_PreviousMessageIdentifier_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_get_PreviousMessageIdentifier_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_PreviousMessageIdentifier_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_get_PreviousMessageIdentifier_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_get_PreviousMessageIdentifier__void, .-m_Yggdrasil_Models_Message_get_PreviousMessageIdentifier__void
.globl m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier__ref
.type m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier__ref, @function
m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIdentifier_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIdentifier_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIdentifier_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIdentifier_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIdentifier_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier__ref, .-m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier__ref
.globl m_Yggdrasil_Models_Message_get_PreviousMessageIsAction__void
.type m_Yggdrasil_Models_Message_get_PreviousMessageIsAction__void, @function
m_Yggdrasil_Models_Message_get_PreviousMessageIsAction__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_Message_get_PreviousMessageIsAction_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_PreviousMessageIsAction_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_get_PreviousMessageIsAction_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_Message_get_PreviousMessageIsAction_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_get_PreviousMessageIsAction_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_get_PreviousMessageIsAction__void, .-m_Yggdrasil_Models_Message_get_PreviousMessageIsAction__void
.globl m_Yggdrasil_Models_Message_set_PreviousMessageIsAction__v
.type m_Yggdrasil_Models_Message_set_PreviousMessageIsAction__v, @function
m_Yggdrasil_Models_Message_set_PreviousMessageIsAction__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIsAction_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIsAction_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIsAction_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_Message_set_PreviousMessageIsAction_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIsAction_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_set_PreviousMessageIsAction_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_set_PreviousMessageIsAction__v, .-m_Yggdrasil_Models_Message_set_PreviousMessageIsAction__v
.globl m_Yggdrasil_Models_Message_ctor__ref_ref_v_ref_arr_ref_ref
.type m_Yggdrasil_Models_Message_ctor__ref_ref_v_ref_arr_ref_ref, @function
m_Yggdrasil_Models_Message_ctor__ref_ref_v_ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
    mov %r9, -56(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0001:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_ctor__void
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0008:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_set_Identifier__ref
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_000f:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_Author__ref
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0015:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0017:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_Text__ref
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_001c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_001d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_001e:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_set_Time__v
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0023:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0024:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0026:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_Attachments__arr
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_002c:
    mov 16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_002e:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_ParentMessage__ref
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0033:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0034:
    mov 24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_0036:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_set_IsForwarded__b
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_003b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_Message_ctor_ref_ref_v_ref_arr_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_Message_ctor__ref_ref_v_ref_arr_ref_ref, .-m_Yggdrasil_Models_Message_ctor__ref_ref_v_ref_arr_ref_ref
.globl m_Yggdrasil_Models_CallStartedNotice_get_StartedBy__void
.type m_Yggdrasil_Models_CallStartedNotice_get_StartedBy__void, @function
m_Yggdrasil_Models_CallStartedNotice_get_StartedBy__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_get_StartedBy_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_get_StartedBy_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallStartedNotice_get_StartedBy_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_get_StartedBy_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallStartedNotice_get_StartedBy_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallStartedNotice_get_StartedBy__void, .-m_Yggdrasil_Models_CallStartedNotice_get_StartedBy__void
.globl m_Yggdrasil_Models_CallStartedNotice_set_StartedBy__ref
.type m_Yggdrasil_Models_CallStartedNotice_set_StartedBy__ref, @function
m_Yggdrasil_Models_CallStartedNotice_set_StartedBy__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_set_StartedBy_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_set_StartedBy_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_set_StartedBy_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallStartedNotice_set_StartedBy_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_CallStartedNotice_set_StartedBy_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallStartedNotice_set_StartedBy_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallStartedNotice_set_StartedBy__ref, .-m_Yggdrasil_Models_CallStartedNotice_set_StartedBy__ref
.globl m_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall__void
.type m_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall__void, @function
m_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall__void, .-m_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall__void
.globl m_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall__v
.type m_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall__v, @function
m_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall__v, .-m_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall__v
.globl m_Yggdrasil_Models_CallStartedNotice_ctor__ref_b_v
.type m_Yggdrasil_Models_CallStartedNotice_ctor__ref_b_v, @function
m_Yggdrasil_Models_CallStartedNotice_ctor__ref_b_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_ctor__void
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_0007:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_0008:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallStartedNotice_set_StartedBy__ref
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_000e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_000f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_set_Time__v
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_0015:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_0016:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall__b
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallStartedNotice_ctor_ref_b_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallStartedNotice_ctor__ref_b_v, .-m_Yggdrasil_Models_CallStartedNotice_ctor__ref_b_v
.globl m_Yggdrasil_Models_CallEndedNotice_get_StartedBy__void
.type m_Yggdrasil_Models_CallEndedNotice_get_StartedBy__void, @function
m_Yggdrasil_Models_CallEndedNotice_get_StartedBy__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_StartedBy_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_StartedBy_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallEndedNotice_get_StartedBy_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_StartedBy_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallEndedNotice_get_StartedBy_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallEndedNotice_get_StartedBy__void, .-m_Yggdrasil_Models_CallEndedNotice_get_StartedBy__void
.globl m_Yggdrasil_Models_CallEndedNotice_set_StartedBy__ref
.type m_Yggdrasil_Models_CallEndedNotice_set_StartedBy__ref, @function
m_Yggdrasil_Models_CallEndedNotice_set_StartedBy__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_StartedBy_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_StartedBy_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_StartedBy_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallEndedNotice_set_StartedBy_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_CallEndedNotice_set_StartedBy_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallEndedNotice_set_StartedBy_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallEndedNotice_set_StartedBy__ref, .-m_Yggdrasil_Models_CallEndedNotice_set_StartedBy__ref
.globl m_Yggdrasil_Models_CallEndedNotice_get_Duration__void
.type m_Yggdrasil_Models_CallEndedNotice_get_Duration__void, @function
m_Yggdrasil_Models_CallEndedNotice_get_Duration__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_Duration_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_Duration_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallEndedNotice_get_Duration_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_Duration_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallEndedNotice_get_Duration_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallEndedNotice_get_Duration__void, .-m_Yggdrasil_Models_CallEndedNotice_get_Duration__void
.globl m_Yggdrasil_Models_CallEndedNotice_set_Duration__v
.type m_Yggdrasil_Models_CallEndedNotice_set_Duration__v, @function
m_Yggdrasil_Models_CallEndedNotice_set_Duration__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_Duration_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_Duration_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_Duration_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallEndedNotice_set_Duration_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_CallEndedNotice_set_Duration_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallEndedNotice_set_Duration_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallEndedNotice_set_Duration__v, .-m_Yggdrasil_Models_CallEndedNotice_set_Duration__v
.globl m_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall__void
.type m_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall__void, @function
m_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall__void, .-m_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall__void
.globl m_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall__v
.type m_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall__v, @function
m_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall__v, .-m_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall__v
.globl m_Yggdrasil_Models_CallEndedNotice_ctor__ref_v_b_v
.type m_Yggdrasil_Models_CallEndedNotice_ctor__ref_v_b_v, @function
m_Yggdrasil_Models_CallEndedNotice_ctor__ref_v_b_v:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_ctor__void
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0007:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0008:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallEndedNotice_set_StartedBy__ref
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_000d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_000f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallEndedNotice_set_Duration__v
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0015:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0017:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_set_Time__v
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_001c:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_001d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_001e:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall__b
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_CallEndedNotice_ctor_ref_v_b_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_CallEndedNotice_ctor__ref_v_b_v, .-m_Yggdrasil_Models_CallEndedNotice_ctor__ref_v_b_v
.globl m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft__void
.type m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft__void, @function
m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft__void, .-m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft__void
.globl m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft__ref
.type m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft__ref, @function
m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft__ref, .-m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft__ref
.globl m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight__void
.type m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight__void, @function
m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight__void, .-m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight__void
.globl m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight__ref
.type m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight__ref, @function
m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight__ref, .-m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight__ref
.globl m_Yggdrasil_Models_ClickableConfiguration_get_Type__void
.type m_Yggdrasil_Models_ClickableConfiguration_get_Type__void, @function
m_Yggdrasil_Models_ClickableConfiguration_get_Type__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_Type_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_Type_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ClickableConfiguration_get_Type_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_get_Type_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ClickableConfiguration_get_Type_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ClickableConfiguration_get_Type__void, .-m_Yggdrasil_Models_ClickableConfiguration_get_Type__void
.globl m_Yggdrasil_Models_ClickableConfiguration_set_Type__v
.type m_Yggdrasil_Models_ClickableConfiguration_set_Type__v, @function
m_Yggdrasil_Models_ClickableConfiguration_set_Type__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_Type_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_Type_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_Type_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ClickableConfiguration_set_Type_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ClickableConfiguration_set_Type_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ClickableConfiguration_set_Type_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ClickableConfiguration_set_Type__v, .-m_Yggdrasil_Models_ClickableConfiguration_set_Type__v
.globl m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref
.type m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref, @function
m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_0008:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft__ref
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_000e:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_000f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight__ref
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_0015:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_0016:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ClickableConfiguration_set_Type__v
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ClickableConfiguration_ctor_v_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref, .-m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref
.globl m_Yggdrasil_Models_ExtraConfiguration_get_title__void
.type m_Yggdrasil_Models_ExtraConfiguration_get_title__void, @function
m_Yggdrasil_Models_ExtraConfiguration_get_title__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_title_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_title_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ExtraConfiguration_get_title_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_title_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ExtraConfiguration_get_title_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ExtraConfiguration_get_title__void, .-m_Yggdrasil_Models_ExtraConfiguration_get_title__void
.globl m_Yggdrasil_Models_ExtraConfiguration_set_title__ref
.type m_Yggdrasil_Models_ExtraConfiguration_set_title__ref, @function
m_Yggdrasil_Models_ExtraConfiguration_set_title__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_title_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_title_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_title_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ExtraConfiguration_set_title_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_title_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ExtraConfiguration_set_title_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ExtraConfiguration_set_title__ref, .-m_Yggdrasil_Models_ExtraConfiguration_set_title__ref
.globl m_Yggdrasil_Models_ExtraConfiguration_get_description__void
.type m_Yggdrasil_Models_ExtraConfiguration_get_description__void, @function
m_Yggdrasil_Models_ExtraConfiguration_get_description__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_description_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_description_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ExtraConfiguration_get_description_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_description_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ExtraConfiguration_get_description_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ExtraConfiguration_get_description__void, .-m_Yggdrasil_Models_ExtraConfiguration_get_description__void
.globl m_Yggdrasil_Models_ExtraConfiguration_set_description__ref
.type m_Yggdrasil_Models_ExtraConfiguration_set_description__ref, @function
m_Yggdrasil_Models_ExtraConfiguration_set_description__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_description_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_description_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_description_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ExtraConfiguration_set_description_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_description_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ExtraConfiguration_set_description_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ExtraConfiguration_set_description__ref, .-m_Yggdrasil_Models_ExtraConfiguration_set_description__ref
.globl m_Yggdrasil_Models_ExtraConfiguration_get_onRun__void
.type m_Yggdrasil_Models_ExtraConfiguration_get_onRun__void, @function
m_Yggdrasil_Models_ExtraConfiguration_get_onRun__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_onRun_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_onRun_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ExtraConfiguration_get_onRun_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_get_onRun_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ExtraConfiguration_get_onRun_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ExtraConfiguration_get_onRun__void, .-m_Yggdrasil_Models_ExtraConfiguration_get_onRun__void
.globl m_Yggdrasil_Models_ExtraConfiguration_set_onRun__ref
.type m_Yggdrasil_Models_ExtraConfiguration_set_onRun__ref, @function
m_Yggdrasil_Models_ExtraConfiguration_set_onRun__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_onRun_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_onRun_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_onRun_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ExtraConfiguration_set_onRun_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ExtraConfiguration_set_onRun_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ExtraConfiguration_set_onRun_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ExtraConfiguration_set_onRun__ref, .-m_Yggdrasil_Models_ExtraConfiguration_set_onRun__ref
.globl m_Yggdrasil_Models_ExtraConfiguration_ctor__ref_ref_ref
.type m_Yggdrasil_Models_ExtraConfiguration_ctor__ref_ref_ref, @function
m_Yggdrasil_Models_ExtraConfiguration_ctor__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_0008:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ExtraConfiguration_set_title__ref
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_000e:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_000f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ExtraConfiguration_set_description__ref
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_0015:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_0016:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ExtraConfiguration_set_onRun__ref
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ExtraConfiguration_ctor_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ExtraConfiguration_ctor__ref_ref_ref, .-m_Yggdrasil_Models_ExtraConfiguration_ctor__ref_ref_ref
.globl m_Yggdrasil_Models_ActiveCall_get_CallId__void
.type m_Yggdrasil_Models_ActiveCall_get_CallId__void, @function
m_Yggdrasil_Models_ActiveCall_get_CallId__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_CallId_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_CallId_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_get_CallId_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_CallId_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_get_CallId_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_get_CallId__void, .-m_Yggdrasil_Models_ActiveCall_get_CallId__void
.globl m_Yggdrasil_Models_ActiveCall_get_Conversation__void
.type m_Yggdrasil_Models_ActiveCall_get_Conversation__void, @function
m_Yggdrasil_Models_ActiveCall_get_Conversation__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_Conversation_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_Conversation_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_get_Conversation_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_Conversation_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_get_Conversation_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_get_Conversation__void, .-m_Yggdrasil_Models_ActiveCall_get_Conversation__void
.globl m_Yggdrasil_Models_ActiveCall_get_IsVideo__void
.type m_Yggdrasil_Models_ActiveCall_get_IsVideo__void, @function
m_Yggdrasil_Models_ActiveCall_get_IsVideo__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_IsVideo_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_IsVideo_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_get_IsVideo_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_IsVideo_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_get_IsVideo_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_get_IsVideo__void, .-m_Yggdrasil_Models_ActiveCall_get_IsVideo__void
.globl m_Yggdrasil_Models_ActiveCall_get_State__void
.type m_Yggdrasil_Models_ActiveCall_get_State__void, @function
m_Yggdrasil_Models_ActiveCall_get_State__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_State_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_State_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_get_State_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_State_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_get_State_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_get_State__void, .-m_Yggdrasil_Models_ActiveCall_get_State__void
.globl m_Yggdrasil_Models_ActiveCall_set_State__v
.type m_Yggdrasil_Models_ActiveCall_set_State__v, @function
m_Yggdrasil_Models_ActiveCall_set_State__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_set_State_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_set_State_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_set_State_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_set_State_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ActiveCall_set_State_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_set_State_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_set_State__v, .-m_Yggdrasil_Models_ActiveCall_set_State__v
.globl m_Yggdrasil_Models_ActiveCall_get_StartedAt__void
.type m_Yggdrasil_Models_ActiveCall_get_StartedAt__void, @function
m_Yggdrasil_Models_ActiveCall_get_StartedAt__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_StartedAt_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_StartedAt_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_get_StartedAt_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_StartedAt_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_get_StartedAt_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_get_StartedAt__void, .-m_Yggdrasil_Models_ActiveCall_get_StartedAt__void
.globl m_Yggdrasil_Models_ActiveCall_get_Participants__void
.type m_Yggdrasil_Models_ActiveCall_get_Participants__void, @function
m_Yggdrasil_Models_ActiveCall_get_Participants__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_Participants_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_Participants_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_get_Participants_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_get_Participants_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_get_Participants_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_get_Participants__void, .-m_Yggdrasil_Models_ActiveCall_get_Participants__void
.globl m_Yggdrasil_Models_ActiveCall_set_Participants__ref
.type m_Yggdrasil_Models_ActiveCall_set_Participants__ref, @function
m_Yggdrasil_Models_ActiveCall_set_Participants__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_set_Participants_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_set_Participants_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_set_Participants_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_set_Participants_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ActiveCall_set_Participants_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_set_Participants_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_set_Participants__ref, .-m_Yggdrasil_Models_ActiveCall_set_Participants__ref
.globl m_Yggdrasil_Models_ActiveCall_ctor__ref_ref_b_arr
.type m_Yggdrasil_Models_ActiveCall_ctor__ref_ref_b_arr, @function
m_Yggdrasil_Models_ActiveCall_ctor__ref_ref_b_arr:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0007:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_000d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_000e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0016:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_001b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_001c:
    call m_System_DateTime_get_UtcNow__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0021:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0026:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0027:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0029:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_set_Participants__arr
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_002e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_002f:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0030:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ActiveCall_set_State__v
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_0035:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Models_ActiveCall_ctor__ref_ref_b_arr, .-m_Yggdrasil_Models_ActiveCall_ctor__ref_ref_b_arr
.globl m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder__ref_ref_ref_ref_ref
.type m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder__ref_ref_ref_ref_ref, @function
m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder__ref_ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0000:
    call m_System_Runtime_InteropServices_RuntimeInformation_get_ProcessArchitecture__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0005:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0006:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_000c
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0009:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_000a:
    jmp .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0036
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_000c:
    call m_System_Runtime_InteropServices_RuntimeInformation_get_ProcessArchitecture__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0011:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0017
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0013:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0014:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0015:
    jmp .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0036
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0017:
    call m_System_Runtime_InteropServices_RuntimeInformation_get_ProcessArchitecture__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_001c:
    mov $3, %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_001d:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0024
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_001f:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0021:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0022:
    jmp .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0036
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0024:
    call m_System_Runtime_InteropServices_RuntimeInformation_get_ProcessArchitecture__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0029:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_002a:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0030
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_002c:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_002d:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_002e:
    jmp .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0036
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0030:
    lea .LN_0_m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_PlatformNotSupportedException_ctor__void
    mov %r12, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0035:
    mov -72(%rbp), %rdi
    call shim_throw
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0036:
    call m_System_Reflection_Assembly_GetCallingAssembly__void
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_003b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Reflection_Assembly_get_Location__void
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0040:
    mov -72(%rbp), %rdi
    call m_System_IO_Path_GetDirectoryName__ref
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0045:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0046:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0047:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref_ref
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_004c:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_004d:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_004e:
    lea .LN_1_m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0053:
    mov $8, %rax
    mov %rax, -88(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0054:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_Yggdrasil_Tools_Windows_LibraryHelper_LoadLibraryEx__ref_v_u4
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0059:
    lea .LN_2_m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_005e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_IntPtr_op_Equality__v_v
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0063:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_006c
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0065:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_0066:
    lea .LN_3_m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DllNotFoundException_ctor__ref
    mov %r12, -72(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_006b:
    mov -72(%rbp), %rdi
    call shim_throw
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_006c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder__ref_ref_ref_ref_ref, .-m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder__ref_ref_ref_ref_ref
.globl m_Yggdrasil_Tools_Windows_LibraryHelper_ctor__void
.type m_Yggdrasil_Tools_Windows_LibraryHelper_ctor__void, @function
m_Yggdrasil_Tools_Windows_LibraryHelper_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Tools_Windows_LibraryHelper_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Tools_Windows_LibraryHelper_ctor__void, .-m_Yggdrasil_Tools_Windows_LibraryHelper_ctor__void
.globl m_Yggdrasil_Bottles_DialogBottle_get_Type__void
.type m_Yggdrasil_Bottles_DialogBottle_get_Type__void, @function
m_Yggdrasil_Bottles_DialogBottle_get_Type__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Type_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Type_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_DialogBottle_get_Type_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Type_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_DialogBottle_get_Type_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_DialogBottle_get_Type__void, .-m_Yggdrasil_Bottles_DialogBottle_get_Type__void
.globl m_Yggdrasil_Bottles_DialogBottle_get_Message__void
.type m_Yggdrasil_Bottles_DialogBottle_get_Message__void, @function
m_Yggdrasil_Bottles_DialogBottle_get_Message__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Message_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Message_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_DialogBottle_get_Message_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Message_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_DialogBottle_get_Message_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_DialogBottle_get_Message__void, .-m_Yggdrasil_Bottles_DialogBottle_get_Message__void
.globl m_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText__void
.type m_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText__void, @function
m_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText__void, .-m_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText__void
.globl m_Yggdrasil_Bottles_DialogBottle_get_Action__void
.type m_Yggdrasil_Bottles_DialogBottle_get_Action__void, @function
m_Yggdrasil_Bottles_DialogBottle_get_Action__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Action_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Action_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_DialogBottle_get_Action_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_get_Action_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_DialogBottle_get_Action_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_DialogBottle_get_Action__void, .-m_Yggdrasil_Bottles_DialogBottle_get_Action__void
.globl m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
.type m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref, @function
m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref, .-m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
.globl m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_ref
.type m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_ref, @function
m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_0015:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_0016:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_ref, .-m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_ref
.globl m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_gen
.type m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_gen, @function
m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_000e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_0016:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_gen, .-m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref_gen
.globl m_Yggdrasil_Bottles_ListBottle_get_List__void
.type m_Yggdrasil_Bottles_ListBottle_get_List__void, @function
m_Yggdrasil_Bottles_ListBottle_get_List__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_ListBottle_get_List_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_ListBottle_get_List_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_ListBottle_get_List_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_ListBottle_get_List_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_ListBottle_get_List_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_ListBottle_get_List__void, .-m_Yggdrasil_Bottles_ListBottle_get_List__void
.globl m_Yggdrasil_Bottles_ListBottle_ctor__v
.type m_Yggdrasil_Bottles_ListBottle_ctor__v, @function
m_Yggdrasil_Bottles_ListBottle_ctor__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Bottles_ListBottle_ctor_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Bottles_ListBottle_ctor_v_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Yggdrasil_Bottles_ListBottle_ctor_v_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Bottles_ListBottle_ctor_v_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_ListBottle_ctor_v_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_ListBottle_ctor_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_ListBottle_ctor_v_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_ListBottle_ctor_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_ListBottle_ctor__v, .-m_Yggdrasil_Bottles_ListBottle_ctor__v
.globl m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item__void
.type m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item__void, @function
m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item__void, .-m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item__void
.globl m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor__v_ref
.type m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor__v_ref, @function
m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor__v_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListBottle_ctor__v
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref_0009:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor__v_ref, .-m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor__v_ref
.globl m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier__void
.type m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier__void, @function
m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier__void, .-m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier__void
.globl m_Yggdrasil_Bottles_ListItemRemovedBottle_ctor__v_ref
.type m_Yggdrasil_Bottles_ListItemRemovedBottle_ctor__v_ref, @function
m_Yggdrasil_Bottles_ListItemRemovedBottle_ctor__v_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_ListBottle_ctor__v
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref_0009:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_ListItemRemovedBottle_ctor__v_ref, .-m_Yggdrasil_Bottles_ListItemRemovedBottle_ctor__v_ref
.globl m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
.type m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void, @function
m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_MessageBottle_get_ConversationId_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageBottle_get_ConversationId_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageBottle_get_ConversationId_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageBottle_get_ConversationId_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageBottle_get_ConversationId_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void, .-m_Yggdrasil_Bottles_MessageBottle_get_ConversationId__void
.globl m_Yggdrasil_Bottles_MessageBottle_ctor__ref
.type m_Yggdrasil_Bottles_MessageBottle_ctor__ref, @function
m_Yggdrasil_Bottles_MessageBottle_ctor__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageBottle_ctor_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Bottles_MessageBottle_ctor_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Yggdrasil_Bottles_MessageBottle_ctor_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Yggdrasil_Bottles_MessageBottle_ctor_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_MessageBottle_ctor_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageBottle_ctor_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_MessageBottle_ctor_ref_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageBottle_ctor_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageBottle_ctor__ref, .-m_Yggdrasil_Bottles_MessageBottle_ctor__ref
.globl m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void
.type m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void, @function
m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_get_Item_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_get_Item_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_get_Item_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_get_Item_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void, .-m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item__void
.globl m_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel__void
.type m_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel__void, @function
m_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel__void, .-m_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel__void
.globl m_Yggdrasil_Bottles_MessageRecievedBottle_ctor__ref_ref_b
.type m_Yggdrasil_Bottles_MessageRecievedBottle_ctor__ref_ref_b, @function
m_Yggdrasil_Bottles_MessageRecievedBottle_ctor__ref_ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_0001:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_0002:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_ctor__ref
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_0008:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_0009:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_000f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_0010:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageRecievedBottle_ctor__ref_ref_b, .-m_Yggdrasil_Bottles_MessageRecievedBottle_ctor__ref_ref_b
.globl m_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId__void
.type m_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId__void, @function
m_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId__void, .-m_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId__void
.globl m_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem__void
.type m_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem__void, @function
m_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem__void, .-m_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem__void
.globl m_Yggdrasil_Bottles_MessageEditedBottle_ctor__ref_ref_ref
.type m_Yggdrasil_Bottles_MessageEditedBottle_ctor__ref_ref_ref, @function
m_Yggdrasil_Bottles_MessageEditedBottle_ctor__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_0002:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_ctor__ref
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_0009:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_000f:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_0010:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageEditedBottle_ctor__ref_ref_ref, .-m_Yggdrasil_Bottles_MessageEditedBottle_ctor__ref_ref_ref
.globl m_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId__void
.type m_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId__void, @function
m_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId__void, .-m_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId__void
.globl m_Yggdrasil_Bottles_MessageDeletedBottle_ctor__ref_ref
.type m_Yggdrasil_Bottles_MessageDeletedBottle_ctor__ref_ref, @function
m_Yggdrasil_Bottles_MessageDeletedBottle_ctor__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref_0002:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_ctor__ref
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref_0009:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_MessageDeletedBottle_ctor__ref_ref, .-m_Yggdrasil_Bottles_MessageDeletedBottle_ctor__ref_ref
.globl m_Yggdrasil_Bottles_CallBottle_get_State__void
.type m_Yggdrasil_Bottles_CallBottle_get_State__void, @function
m_Yggdrasil_Bottles_CallBottle_get_State__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_State_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_State_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_CallBottle_get_State_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_State_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_CallBottle_get_State_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_CallBottle_get_State__void, .-m_Yggdrasil_Bottles_CallBottle_get_State__void
.globl m_Yggdrasil_Bottles_CallBottle_get_FailReason__void
.type m_Yggdrasil_Bottles_CallBottle_get_FailReason__void, @function
m_Yggdrasil_Bottles_CallBottle_get_FailReason__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_FailReason_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_FailReason_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_CallBottle_get_FailReason_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_FailReason_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_CallBottle_get_FailReason_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_CallBottle_get_FailReason__void, .-m_Yggdrasil_Bottles_CallBottle_get_FailReason__void
.globl m_Yggdrasil_Bottles_CallBottle_get_Caller__void
.type m_Yggdrasil_Bottles_CallBottle_get_Caller__void, @function
m_Yggdrasil_Bottles_CallBottle_get_Caller__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_Caller_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_Caller_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_CallBottle_get_Caller_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_get_Caller_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_CallBottle_get_Caller_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_CallBottle_get_Caller__void, .-m_Yggdrasil_Bottles_CallBottle_get_Caller__void
.globl m_Yggdrasil_Bottles_CallBottle_ctor__ref_v
.type m_Yggdrasil_Bottles_CallBottle_ctor__ref_v, @function
m_Yggdrasil_Bottles_CallBottle_ctor__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_CallBottle_ctor__ref_v, .-m_Yggdrasil_Bottles_CallBottle_ctor__ref_v
.globl m_Yggdrasil_Bottles_CallBottle_ctor__ref_v_ref
.type m_Yggdrasil_Bottles_CallBottle_ctor__ref_v_ref, @function
m_Yggdrasil_Bottles_CallBottle_ctor__ref_v_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_EventArgs_ctor__void
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_0015:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_0016:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Yggdrasil_Bottles_CallBottle_ctor__ref_v_ref, .-m_Yggdrasil_Bottles_CallBottle_ctor__ref_v_ref
    .globl m_Yggdrasil_ICore_add_DialogTube__ref
    .type m_Yggdrasil_ICore_add_DialogTube__ref, @function
m_Yggdrasil_ICore_add_DialogTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_add_DialogTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_add_DialogTube__ref, .-m_Yggdrasil_ICore_add_DialogTube__ref
    .globl m_Yggdrasil_ICore_remove_DialogTube__ref
    .type m_Yggdrasil_ICore_remove_DialogTube__ref, @function
m_Yggdrasil_ICore_remove_DialogTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_remove_DialogTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_remove_DialogTube__ref, .-m_Yggdrasil_ICore_remove_DialogTube__ref
    .globl m_Yggdrasil_ICore_add_MessageTube__ref
    .type m_Yggdrasil_ICore_add_MessageTube__ref, @function
m_Yggdrasil_ICore_add_MessageTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_add_MessageTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_add_MessageTube__ref, .-m_Yggdrasil_ICore_add_MessageTube__ref
    .globl m_Yggdrasil_ICore_remove_MessageTube__ref
    .type m_Yggdrasil_ICore_remove_MessageTube__ref, @function
m_Yggdrasil_ICore_remove_MessageTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_remove_MessageTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_remove_MessageTube__ref, .-m_Yggdrasil_ICore_remove_MessageTube__ref
    .globl m_Yggdrasil_ICore_add_ListTube__ref
    .type m_Yggdrasil_ICore_add_ListTube__ref, @function
m_Yggdrasil_ICore_add_ListTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_add_ListTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_add_ListTube__ref, .-m_Yggdrasil_ICore_add_ListTube__ref
    .globl m_Yggdrasil_ICore_remove_ListTube__ref
    .type m_Yggdrasil_ICore_remove_ListTube__ref, @function
m_Yggdrasil_ICore_remove_ListTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_remove_ListTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_remove_ListTube__ref, .-m_Yggdrasil_ICore_remove_ListTube__ref
    .globl m_Yggdrasil_ICore_get_Name__void
    .type m_Yggdrasil_ICore_get_Name__void, @function
m_Yggdrasil_ICore_get_Name__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_get_Name_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_get_Name__void, .-m_Yggdrasil_ICore_get_Name__void
    .globl m_Yggdrasil_ICore_get_InternalName__void
    .type m_Yggdrasil_ICore_get_InternalName__void, @function
m_Yggdrasil_ICore_get_InternalName__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_get_InternalName_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_get_InternalName__void, .-m_Yggdrasil_ICore_get_InternalName__void
    .globl m_Yggdrasil_ICore_get_AuthenticationTypes__void
    .type m_Yggdrasil_ICore_get_AuthenticationTypes__void, @function
m_Yggdrasil_ICore_get_AuthenticationTypes__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_get_AuthenticationTypes_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_get_AuthenticationTypes__void, .-m_Yggdrasil_ICore_get_AuthenticationTypes__void
    .globl m_Yggdrasil_ICore_get_SupportsServers__void
    .type m_Yggdrasil_ICore_get_SupportsServers__void, @function
m_Yggdrasil_ICore_get_SupportsServers__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_get_SupportsServers_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_get_SupportsServers__void, .-m_Yggdrasil_ICore_get_SupportsServers__void
    .globl m_Yggdrasil_ICore_get_TypingTimeout__void
    .type m_Yggdrasil_ICore_get_TypingTimeout__void, @function
m_Yggdrasil_ICore_get_TypingTimeout__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_get_TypingTimeout_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_get_TypingTimeout__void, .-m_Yggdrasil_ICore_get_TypingTimeout__void
    .globl m_Yggdrasil_ICore_get_TypingRepeat__void
    .type m_Yggdrasil_ICore_get_TypingRepeat__void, @function
m_Yggdrasil_ICore_get_TypingRepeat__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_get_TypingRepeat_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_get_TypingRepeat__void, .-m_Yggdrasil_ICore_get_TypingRepeat__void
    .globl m_Yggdrasil_ICore_StoreCredential__void
    .type m_Yggdrasil_ICore_StoreCredential__void, @function
m_Yggdrasil_ICore_StoreCredential__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_StoreCredential_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_StoreCredential__void, .-m_Yggdrasil_ICore_StoreCredential__void
    .globl m_Yggdrasil_ICore_GetQRCode__void
    .type m_Yggdrasil_ICore_GetQRCode__void, @function
m_Yggdrasil_ICore_GetQRCode__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_GetQRCode_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_GetQRCode__void, .-m_Yggdrasil_ICore_GetQRCode__void
    .globl m_Yggdrasil_ICore_Authenticate__v_ref_ref
    .type m_Yggdrasil_ICore_Authenticate__v_ref_ref, @function
m_Yggdrasil_ICore_Authenticate__v_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_Authenticate_v_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_Authenticate__v_ref_ref, .-m_Yggdrasil_ICore_Authenticate__v_ref_ref
    .globl m_Yggdrasil_ICore_Authenticate__ref
    .type m_Yggdrasil_ICore_Authenticate__ref, @function
m_Yggdrasil_ICore_Authenticate__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_Authenticate_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_Authenticate__ref, .-m_Yggdrasil_ICore_Authenticate__ref
    .globl m_Yggdrasil_ICore_AuthenticateTwoFA__ref
    .type m_Yggdrasil_ICore_AuthenticateTwoFA__ref, @function
m_Yggdrasil_ICore_AuthenticateTwoFA__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_AuthenticateTwoFA_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_AuthenticateTwoFA__ref, .-m_Yggdrasil_ICore_AuthenticateTwoFA__ref
    .globl m_Yggdrasil_ICore_SendMessage__ref_ref_ref_ref_ref
    .type m_Yggdrasil_ICore_SendMessage__ref_ref_ref_ref_ref, @function
m_Yggdrasil_ICore_SendMessage__ref_ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_SendMessage_ref_ref_ref_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_SendMessage__ref_ref_ref_ref_ref, .-m_Yggdrasil_ICore_SendMessage__ref_ref_ref_ref_ref
    .globl m_Yggdrasil_ICore_EditMessage__ref_ref_ref
    .type m_Yggdrasil_ICore_EditMessage__ref_ref_ref, @function
m_Yggdrasil_ICore_EditMessage__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_EditMessage_ref_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_EditMessage__ref_ref_ref, .-m_Yggdrasil_ICore_EditMessage__ref_ref_ref
    .globl m_Yggdrasil_ICore_DeleteMessage__ref_ref
    .type m_Yggdrasil_ICore_DeleteMessage__ref_ref, @function
m_Yggdrasil_ICore_DeleteMessage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_DeleteMessage_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_DeleteMessage__ref_ref, .-m_Yggdrasil_ICore_DeleteMessage__ref_ref
    .globl m_Yggdrasil_ICore_GetUserInfo__void
    .type m_Yggdrasil_ICore_GetUserInfo__void, @function
m_Yggdrasil_ICore_GetUserInfo__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_GetUserInfo_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_GetUserInfo__void, .-m_Yggdrasil_ICore_GetUserInfo__void
    .globl m_Yggdrasil_ICore_FetchContacts__void
    .type m_Yggdrasil_ICore_FetchContacts__void, @function
m_Yggdrasil_ICore_FetchContacts__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_FetchContacts_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_FetchContacts__void, .-m_Yggdrasil_ICore_FetchContacts__void
    .globl m_Yggdrasil_ICore_FetchConversations__void
    .type m_Yggdrasil_ICore_FetchConversations__void, @function
m_Yggdrasil_ICore_FetchConversations__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_FetchConversations_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_FetchConversations__void, .-m_Yggdrasil_ICore_FetchConversations__void
    .globl m_Yggdrasil_ICore_FetchServers__void
    .type m_Yggdrasil_ICore_FetchServers__void, @function
m_Yggdrasil_ICore_FetchServers__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_FetchServers_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_FetchServers__void, .-m_Yggdrasil_ICore_FetchServers__void
    .globl m_Yggdrasil_ICore_FetchMessages__ref_ref_ref_ref
    .type m_Yggdrasil_ICore_FetchMessages__ref_ref_ref_ref, @function
m_Yggdrasil_ICore_FetchMessages__ref_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_FetchMessages_ref_ref_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_FetchMessages__ref_ref_ref_ref, .-m_Yggdrasil_ICore_FetchMessages__ref_ref_ref_ref
    .globl m_Yggdrasil_ICore_Dispose__void
    .type m_Yggdrasil_ICore_Dispose__void, @function
m_Yggdrasil_ICore_Dispose__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_Dispose_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_Dispose__void, .-m_Yggdrasil_ICore_Dispose__void
    .globl m_Yggdrasil_ICore_get_ClickableConfigurations__void
    .type m_Yggdrasil_ICore_get_ClickableConfigurations__void, @function
m_Yggdrasil_ICore_get_ClickableConfigurations__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_get_ClickableConfigurations_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_get_ClickableConfigurations__void, .-m_Yggdrasil_ICore_get_ClickableConfigurations__void
    .globl m_Yggdrasil_ICore_get_TypingUsersList__void
    .type m_Yggdrasil_ICore_get_TypingUsersList__void, @function
m_Yggdrasil_ICore_get_TypingUsersList__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_get_TypingUsersList_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_get_TypingUsersList__void, .-m_Yggdrasil_ICore_get_TypingUsersList__void
    .globl m_Yggdrasil_ICore_SetConnectionStatus__v
    .type m_Yggdrasil_ICore_SetConnectionStatus__v, @function
m_Yggdrasil_ICore_SetConnectionStatus__v:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_SetConnectionStatus_v(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_SetConnectionStatus__v, .-m_Yggdrasil_ICore_SetConnectionStatus__v
    .globl m_Yggdrasil_ICore_SetMood__ref
    .type m_Yggdrasil_ICore_SetMood__ref, @function
m_Yggdrasil_ICore_SetMood__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_SetMood_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_SetMood__ref, .-m_Yggdrasil_ICore_SetMood__ref
    .globl m_Yggdrasil_ICore_SetTyping__ref_b
    .type m_Yggdrasil_ICore_SetTyping__ref_b, @function
m_Yggdrasil_ICore_SetTyping__ref_b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICore_SetTyping_ref_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICore_SetTyping__ref_b, .-m_Yggdrasil_ICore_SetTyping__ref_b
    .globl m_Yggdrasil_ICall_get_SupportsVideoCalls__void
    .type m_Yggdrasil_ICall_get_SupportsVideoCalls__void, @function
m_Yggdrasil_ICall_get_SupportsVideoCalls__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_get_SupportsVideoCalls_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_get_SupportsVideoCalls__void, .-m_Yggdrasil_ICall_get_SupportsVideoCalls__void
    .globl m_Yggdrasil_ICall_add_IncomingCallTube__ref
    .type m_Yggdrasil_ICall_add_IncomingCallTube__ref, @function
m_Yggdrasil_ICall_add_IncomingCallTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_add_IncomingCallTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_add_IncomingCallTube__ref, .-m_Yggdrasil_ICall_add_IncomingCallTube__ref
    .globl m_Yggdrasil_ICall_remove_IncomingCallTube__ref
    .type m_Yggdrasil_ICall_remove_IncomingCallTube__ref, @function
m_Yggdrasil_ICall_remove_IncomingCallTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_remove_IncomingCallTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_remove_IncomingCallTube__ref, .-m_Yggdrasil_ICall_remove_IncomingCallTube__ref
    .globl m_Yggdrasil_ICall_add_CallStateChangedTube__ref
    .type m_Yggdrasil_ICall_add_CallStateChangedTube__ref, @function
m_Yggdrasil_ICall_add_CallStateChangedTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_add_CallStateChangedTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_add_CallStateChangedTube__ref, .-m_Yggdrasil_ICall_add_CallStateChangedTube__ref
    .globl m_Yggdrasil_ICall_remove_CallStateChangedTube__ref
    .type m_Yggdrasil_ICall_remove_CallStateChangedTube__ref, @function
m_Yggdrasil_ICall_remove_CallStateChangedTube__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_remove_CallStateChangedTube_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_remove_CallStateChangedTube__ref, .-m_Yggdrasil_ICall_remove_CallStateChangedTube__ref
    .globl m_Yggdrasil_ICall_StartCall__ref_b_b
    .type m_Yggdrasil_ICall_StartCall__ref_b_b, @function
m_Yggdrasil_ICall_StartCall__ref_b_b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_StartCall_ref_b_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_StartCall__ref_b_b, .-m_Yggdrasil_ICall_StartCall__ref_b_b
    .globl m_Yggdrasil_ICall_AnswerCall__ref
    .type m_Yggdrasil_ICall_AnswerCall__ref, @function
m_Yggdrasil_ICall_AnswerCall__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_AnswerCall_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_AnswerCall__ref, .-m_Yggdrasil_ICall_AnswerCall__ref
    .globl m_Yggdrasil_ICall_DeclineCall__ref
    .type m_Yggdrasil_ICall_DeclineCall__ref, @function
m_Yggdrasil_ICall_DeclineCall__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_DeclineCall_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_DeclineCall__ref, .-m_Yggdrasil_ICall_DeclineCall__ref
    .globl m_Yggdrasil_ICall_EndCall__ref
    .type m_Yggdrasil_ICall_EndCall__ref, @function
m_Yggdrasil_ICall_EndCall__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_EndCall_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_EndCall__ref, .-m_Yggdrasil_ICall_EndCall__ref
    .globl m_Yggdrasil_ICall_SetMuted__ref_b
    .type m_Yggdrasil_ICall_SetMuted__ref_b, @function
m_Yggdrasil_ICall_SetMuted__ref_b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_SetMuted_ref_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_SetMuted__ref_b, .-m_Yggdrasil_ICall_SetMuted__ref_b
    .globl m_Yggdrasil_ICall_SetVideoEnabled__ref_b
    .type m_Yggdrasil_ICall_SetVideoEnabled__ref_b, @function
m_Yggdrasil_ICall_SetVideoEnabled__ref_b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_ICall_SetVideoEnabled_ref_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_ICall_SetVideoEnabled__ref_b, .-m_Yggdrasil_ICall_SetVideoEnabled__ref_b
    .globl m_Yggdrasil_IListManagement_FindNewContact__ref
    .type m_Yggdrasil_IListManagement_FindNewContact__ref, @function
m_Yggdrasil_IListManagement_FindNewContact__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_IListManagement_FindNewContact_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_IListManagement_FindNewContact__ref, .-m_Yggdrasil_IListManagement_FindNewContact__ref
    .globl m_Yggdrasil_IListManagement_AddContact__ref_ref
    .type m_Yggdrasil_IListManagement_AddContact__ref_ref, @function
m_Yggdrasil_IListManagement_AddContact__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_IListManagement_AddContact_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_IListManagement_AddContact__ref_ref, .-m_Yggdrasil_IListManagement_AddContact__ref_ref
    .globl m_Yggdrasil_IExtras_get_ExtraConfigurations__void
    .type m_Yggdrasil_IExtras_get_ExtraConfigurations__void, @function
m_Yggdrasil_IExtras_get_ExtraConfigurations__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_IExtras_get_ExtraConfigurations_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_IExtras_get_ExtraConfigurations__void, .-m_Yggdrasil_IExtras_get_ExtraConfigurations__void
    .globl m_Yggdrasil_Models_DirectMessage_ctor__ref_i4_ref_gen
    .type m_Yggdrasil_Models_DirectMessage_ctor__ref_i4_ref_gen, @function
m_Yggdrasil_Models_DirectMessage_ctor__ref_i4_ref_gen:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_Models_DirectMessage_ctor_ref_i4_ref_gen(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_Models_DirectMessage_ctor__ref_i4_ref_gen, .-m_Yggdrasil_Models_DirectMessage_ctor__ref_i4_ref_gen
    .globl m_Yggdrasil_Models_Group_ctor__ref_ref_i4_arr_arr_gen
    .type m_Yggdrasil_Models_Group_ctor__ref_ref_i4_arr_arr_gen, @function
m_Yggdrasil_Models_Group_ctor__ref_ref_i4_arr_arr_gen:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_Models_Group_ctor_ref_ref_i4_arr_arr_gen(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_Models_Group_ctor__ref_ref_i4_arr_arr_gen, .-m_Yggdrasil_Models_Group_ctor__ref_ref_i4_arr_arr_gen
    .globl m_Yggdrasil_Models_ServerChannel_ctor__ref_ref_ref_i4_v_ref_ref_ref
    .type m_Yggdrasil_Models_ServerChannel_ctor__ref_ref_ref_i4_v_ref_ref_ref, @function
m_Yggdrasil_Models_ServerChannel_ctor__ref_ref_ref_i4_v_ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_Models_ServerChannel_ctor_ref_ref_ref_i4_v_ref_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_Models_ServerChannel_ctor__ref_ref_ref_i4_v_ref_ref_ref, .-m_Yggdrasil_Models_ServerChannel_ctor__ref_ref_ref_i4_v_ref_ref_ref
    .globl m_Yggdrasil_Models_Attachment_ctor__arr_ref_ref_v
    .type m_Yggdrasil_Models_Attachment_ctor__arr_ref_ref_v, @function
m_Yggdrasil_Models_Attachment_ctor__arr_ref_ref_v:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_Models_Attachment_ctor_arr_ref_ref_v(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_Models_Attachment_ctor__arr_ref_ref_v, .-m_Yggdrasil_Models_Attachment_ctor__arr_ref_ref_v
    .globl m_Yggdrasil_Models_ActionMessage_ctor__ref_ref_v_ref_arr_ref_ref
    .type m_Yggdrasil_Models_ActionMessage_ctor__ref_ref_v_ref_arr_ref_ref, @function
m_Yggdrasil_Models_ActionMessage_ctor__ref_ref_v_ref_arr_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_Models_ActionMessage_ctor_ref_ref_v_ref_arr_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_Models_ActionMessage_ctor__ref_ref_v_ref_arr_ref_ref, .-m_Yggdrasil_Models_ActionMessage_ctor__ref_ref_v_ref_arr_ref_ref
    .globl m_Yggdrasil_Tools_Windows_LibraryHelper_LoadLibraryEx__ref_i8_u4
    .type m_Yggdrasil_Tools_Windows_LibraryHelper_LoadLibraryEx__ref_i8_u4, @function
m_Yggdrasil_Tools_Windows_LibraryHelper_LoadLibraryEx__ref_i8_u4:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Yggdrasil_Tools_Windows_LibraryHelper_LoadLibraryEx_ref_i8_u4(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Yggdrasil_Tools_Windows_LibraryHelper_LoadLibraryEx__ref_i8_u4, .-m_Yggdrasil_Tools_Windows_LibraryHelper_LoadLibraryEx__ref_i8_u4
.Lnullmsg:
    .asciz "null receiver"
.Ltype_System_Collections_ObjectModel_ObservableCollection_1_object:
    .asciz "System.Collections.ObjectModel.ObservableCollection`1<object>"
.Ltype_System_ComponentModel_PropertyChangedEventArgs:
    .asciz "System.ComponentModel.PropertyChangedEventArgs"
.Ltype_System_DllNotFoundException:
    .asciz "System.DllNotFoundException"
.Ltype_System_PlatformNotSupportedException:
    .asciz "System.PlatformNotSupportedException"
.Ltype_Yggdrasil_Bottles_CallBottle:
    .asciz "Yggdrasil.Bottles.CallBottle"
.Ltype_Yggdrasil_Bottles_DialogBottle:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.Ltype_Yggdrasil_Bottles_ListBottle:
    .asciz "Yggdrasil.Bottles.ListBottle"
.Ltype_Yggdrasil_Bottles_ListItemRemovedBottle:
    .asciz "Yggdrasil.Bottles.ListItemRemovedBottle"
.Ltype_Yggdrasil_Bottles_ListItemUpdatedBottle:
    .asciz "Yggdrasil.Bottles.ListItemUpdatedBottle"
.Ltype_Yggdrasil_Bottles_MessageBottle:
    .asciz "Yggdrasil.Bottles.MessageBottle"
.Ltype_Yggdrasil_Bottles_MessageDeletedBottle:
    .asciz "Yggdrasil.Bottles.MessageDeletedBottle"
.Ltype_Yggdrasil_Bottles_MessageEditedBottle:
    .asciz "Yggdrasil.Bottles.MessageEditedBottle"
.Ltype_Yggdrasil_Bottles_MessageRecievedBottle:
    .asciz "Yggdrasil.Bottles.MessageRecievedBottle"
.Ltype_Yggdrasil_ICall:
    .asciz "Yggdrasil.ICall"
.Ltype_Yggdrasil_ICore:
    .asciz "Yggdrasil.ICore"
.Ltype_Yggdrasil_IExtras:
    .asciz "Yggdrasil.IExtras"
.Ltype_Yggdrasil_IListManagement:
    .asciz "Yggdrasil.IListManagement"
.Ltype_Yggdrasil_Models_ActionMessage:
    .asciz "Yggdrasil.Models.ActionMessage"
.Ltype_Yggdrasil_Models_ActiveCall:
    .asciz "Yggdrasil.Models.ActiveCall"
.Ltype_Yggdrasil_Models_Attachment:
    .asciz "Yggdrasil.Models.Attachment"
.Ltype_Yggdrasil_Models_AuthTypeInfo:
    .asciz "Yggdrasil.Models.AuthTypeInfo"
.Ltype_Yggdrasil_Models_CallEndedNotice:
    .asciz "Yggdrasil.Models.CallEndedNotice"
.Ltype_Yggdrasil_Models_CallStartedNotice:
    .asciz "Yggdrasil.Models.CallStartedNotice"
.Ltype_Yggdrasil_Models_ClickableConfiguration:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.Ltype_Yggdrasil_Models_Conversation:
    .asciz "Yggdrasil.Models.Conversation"
.Ltype_Yggdrasil_Models_ConversationItem:
    .asciz "Yggdrasil.Models.ConversationItem"
.Ltype_Yggdrasil_Models_DirectMessage:
    .asciz "Yggdrasil.Models.DirectMessage"
.Ltype_Yggdrasil_Models_ExtraConfiguration:
    .asciz "Yggdrasil.Models.ExtraConfiguration"
.Ltype_Yggdrasil_Models_Group:
    .asciz "Yggdrasil.Models.Group"
.Ltype_Yggdrasil_Models_Message:
    .asciz "Yggdrasil.Models.Message"
.Ltype_Yggdrasil_Models_Metadata:
    .asciz "Yggdrasil.Models.Metadata"
.Ltype_Yggdrasil_Models_Participant:
    .asciz "Yggdrasil.Models.Participant"
.Ltype_Yggdrasil_Models_Role:
    .asciz "Yggdrasil.Models.Role"
.Ltype_Yggdrasil_Models_SavedCredential:
    .asciz "Yggdrasil.Models.SavedCredential"
.Ltype_Yggdrasil_Models_Server:
    .asciz "Yggdrasil.Models.Server"
.Ltype_Yggdrasil_Models_ServerChannel:
    .asciz "Yggdrasil.Models.ServerChannel"
.Ltype_Yggdrasil_Models_ServerMember:
    .asciz "Yggdrasil.Models.ServerMember"
.Ltype_Yggdrasil_Models_User:
    .asciz "Yggdrasil.Models.User"
.Ltype_Yggdrasil_Tools_Windows_LibraryHelper:
    .asciz "Yggdrasil.Tools.Windows.LibraryHelper"
.Ltype_string:
    .asciz "string>"
    .section .rodata
.LSTUB_m_Yggdrasil_ICore_add_DialogTube_ref:
    .asciz "Yggdrasil.ICore::add_DialogTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_remove_DialogTube_ref:
    .asciz "Yggdrasil.ICore::remove_DialogTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_add_MessageTube_ref:
    .asciz "Yggdrasil.ICore::add_MessageTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_remove_MessageTube_ref:
    .asciz "Yggdrasil.ICore::remove_MessageTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_add_ListTube_ref:
    .asciz "Yggdrasil.ICore::add_ListTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_remove_ListTube_ref:
    .asciz "Yggdrasil.ICore::remove_ListTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_get_Name_void:
    .asciz "Yggdrasil.ICore::get_Name  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_get_InternalName_void:
    .asciz "Yggdrasil.ICore::get_InternalName  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_get_AuthenticationTypes_void:
    .asciz "Yggdrasil.ICore::get_AuthenticationTypes  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_get_SupportsServers_void:
    .asciz "Yggdrasil.ICore::get_SupportsServers  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_get_TypingTimeout_void:
    .asciz "Yggdrasil.ICore::get_TypingTimeout  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_get_TypingRepeat_void:
    .asciz "Yggdrasil.ICore::get_TypingRepeat  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_StoreCredential_void:
    .asciz "Yggdrasil.ICore::StoreCredential  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_GetQRCode_void:
    .asciz "Yggdrasil.ICore::GetQRCode  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_Authenticate_v_ref_ref:
    .asciz "Yggdrasil.ICore::Authenticate  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_Authenticate_ref:
    .asciz "Yggdrasil.ICore::Authenticate  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_AuthenticateTwoFA_ref:
    .asciz "Yggdrasil.ICore::AuthenticateTwoFA  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_SendMessage_ref_ref_ref_ref_ref:
    .asciz "Yggdrasil.ICore::SendMessage  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_EditMessage_ref_ref_ref:
    .asciz "Yggdrasil.ICore::EditMessage  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_DeleteMessage_ref_ref:
    .asciz "Yggdrasil.ICore::DeleteMessage  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_GetUserInfo_void:
    .asciz "Yggdrasil.ICore::GetUserInfo  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_FetchContacts_void:
    .asciz "Yggdrasil.ICore::FetchContacts  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_FetchConversations_void:
    .asciz "Yggdrasil.ICore::FetchConversations  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_FetchServers_void:
    .asciz "Yggdrasil.ICore::FetchServers  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_FetchMessages_ref_ref_ref_ref:
    .asciz "Yggdrasil.ICore::FetchMessages  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_Dispose_void:
    .asciz "Yggdrasil.ICore::Dispose  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_get_ClickableConfigurations_void:
    .asciz "Yggdrasil.ICore::get_ClickableConfigurations  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_get_TypingUsersList_void:
    .asciz "Yggdrasil.ICore::get_TypingUsersList  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_SetConnectionStatus_v:
    .asciz "Yggdrasil.ICore::SetConnectionStatus  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_SetMood_ref:
    .asciz "Yggdrasil.ICore::SetMood  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICore_SetTyping_ref_b:
    .asciz "Yggdrasil.ICore::SetTyping  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_get_SupportsVideoCalls_void:
    .asciz "Yggdrasil.ICall::get_SupportsVideoCalls  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_add_IncomingCallTube_ref:
    .asciz "Yggdrasil.ICall::add_IncomingCallTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_remove_IncomingCallTube_ref:
    .asciz "Yggdrasil.ICall::remove_IncomingCallTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_add_CallStateChangedTube_ref:
    .asciz "Yggdrasil.ICall::add_CallStateChangedTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_remove_CallStateChangedTube_ref:
    .asciz "Yggdrasil.ICall::remove_CallStateChangedTube  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_StartCall_ref_b_b:
    .asciz "Yggdrasil.ICall::StartCall  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_AnswerCall_ref:
    .asciz "Yggdrasil.ICall::AnswerCall  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_DeclineCall_ref:
    .asciz "Yggdrasil.ICall::DeclineCall  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_EndCall_ref:
    .asciz "Yggdrasil.ICall::EndCall  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_SetMuted_ref_b:
    .asciz "Yggdrasil.ICall::SetMuted  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_ICall_SetVideoEnabled_ref_b:
    .asciz "Yggdrasil.ICall::SetVideoEnabled  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_IListManagement_FindNewContact_ref:
    .asciz "Yggdrasil.IListManagement::FindNewContact  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_IListManagement_AddContact_ref_ref:
    .asciz "Yggdrasil.IListManagement::AddContact  [no IL body (abstract or extern)]"
.LSTUB_m_Yggdrasil_IExtras_get_ExtraConfigurations_void:
    .asciz "Yggdrasil.IExtras::get_ExtraConfigurations  [no IL body (abstract or extern)]"
.LN_0_m_Yggdrasil_Models_Metadata_get_Identifier_void:
    .asciz "<Identifier>k__BackingField"
.LN_0_m_Yggdrasil_Models_Metadata_set_Identifier_ref:
    .asciz "<Identifier>k__BackingField"
.LN_0_m_Yggdrasil_Models_Metadata_get_DisplayName_void:
    .asciz "_displayName"
.LN_0_m_Yggdrasil_Models_Metadata_set_DisplayName_ref:
    .asciz "_displayName"
.LS_1_m_Yggdrasil_Models_Metadata_set_DisplayName_ref:
    .short 68, 105, 115, 112, 108, 97, 121, 78, 97, 109, 101
.LN_0_m_Yggdrasil_Models_Metadata_get_Avatar_void:
    .asciz "_avatar"
.LN_0_m_Yggdrasil_Models_Metadata_set_Avatar_v:
    .asciz "_avatar"
.LS_1_m_Yggdrasil_Models_Metadata_set_Avatar_v:
    .short 65, 118, 97, 116, 97, 114
.LN_0_m_Yggdrasil_Models_Metadata_get_Description_void:
    .asciz "_description"
.LN_0_m_Yggdrasil_Models_Metadata_set_Description_ref:
    .asciz "_description"
.LS_1_m_Yggdrasil_Models_Metadata_set_Description_ref:
    .short 68, 101, 115, 99, 114, 105, 112, 116, 105, 111, 110
.LN_0_m_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref:
    .asciz "_displayName"
.LN_1_m_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref:
    .asciz "_avatar"
.LN_2_m_Yggdrasil_Models_Metadata_ctor_ref_ref_arr_ref:
    .asciz "_description"
.LN_0_m_Yggdrasil_Models_Metadata_add_PropertyChanged_ref:
    .asciz "PropertyChanged"
.LN_1_m_Yggdrasil_Models_Metadata_add_PropertyChanged_ref:
    .asciz "PropertyChanged"
.LN_0_m_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref:
    .asciz "PropertyChanged"
.LN_1_m_Yggdrasil_Models_Metadata_remove_PropertyChanged_ref:
    .asciz "PropertyChanged"
.LN_0_m_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref:
    .asciz "!!T"
.LN_1_m_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref:
    .asciz "!!T"
.LN_2_m_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref:
    .asciz "PropertyChanged"
.LN_3_m_Yggdrasil_Models_Metadata_Set_T_gen_gen_ref:
    .asciz "System.ComponentModel.PropertyChangedEventArgs"
.LN_0_m_Yggdrasil_Models_Role_get_HexColor_void:
    .asciz "_hex_color"
.LN_0_m_Yggdrasil_Models_Role_set_HexColor_v:
    .asciz "_hex_color"
.LS_1_m_Yggdrasil_Models_Role_set_HexColor_v:
    .short 72, 101, 120, 67, 111, 108, 111, 114
.LN_0_m_Yggdrasil_Models_Role_get_Hoist_void:
    .asciz "_hoist"
.LN_0_m_Yggdrasil_Models_Role_set_Hoist_v:
    .asciz "_hoist"
.LS_1_m_Yggdrasil_Models_Role_set_Hoist_v:
    .short 72, 111, 105, 115, 116
.LN_0_m_Yggdrasil_Models_Role_get_Mentionable_void:
    .asciz "_mentionable"
.LN_0_m_Yggdrasil_Models_Role_set_Mentionable_v:
    .asciz "_mentionable"
.LS_1_m_Yggdrasil_Models_Role_set_Mentionable_v:
    .short 77, 101, 110, 116, 105, 111, 110, 97, 98, 108, 101
.LN_0_m_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref:
    .asciz "_hex_color"
.LN_1_m_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref:
    .asciz "_hoist"
.LN_2_m_Yggdrasil_Models_Role_ctor_ref_ref_ref_arr_ref_ref:
    .asciz "_mentionable"
.LN_0_m_Yggdrasil_Models_User_get_Status_void:
    .asciz "_status"
.LN_0_m_Yggdrasil_Models_User_set_Status_ref:
    .asciz "_status"
.LS_1_m_Yggdrasil_Models_User_set_Status_ref:
    .short 83, 116, 97, 116, 117, 115
.LN_0_m_Yggdrasil_Models_User_get_Username_void:
    .asciz "_username"
.LN_0_m_Yggdrasil_Models_User_set_Username_ref:
    .asciz "_username"
.LS_1_m_Yggdrasil_Models_User_set_Username_ref:
    .short 85, 115, 101, 114, 110, 97, 109, 101
.LN_0_m_Yggdrasil_Models_User_get_ConnectionStatus_void:
    .asciz "_presence_status"
.LN_0_m_Yggdrasil_Models_User_set_ConnectionStatus_v:
    .asciz "_presence_status"
.LS_1_m_Yggdrasil_Models_User_set_ConnectionStatus_v:
    .short 67, 111, 110, 110, 101, 99, 116, 105, 111, 110, 83, 116, 97, 116, 117, 115
.LN_0_m_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr:
    .asciz "_username"
.LN_1_m_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr:
    .asciz "_status"
.LN_2_m_Yggdrasil_Models_User_ctor_ref_ref_ref_ref_ref_arr:
    .asciz "_presence_status"
.LN_0_m_Yggdrasil_Models_Conversation_get_UnreadCount_void:
    .asciz "_unreadCount"
.LN_0_m_Yggdrasil_Models_Conversation_set_UnreadCount_i4:
    .asciz "_unreadCount"
.LS_1_m_Yggdrasil_Models_Conversation_set_UnreadCount_i4:
    .short 85, 110, 114, 101, 97, 100, 67, 111, 117, 110, 116
.LN_0_m_Yggdrasil_Models_Conversation_get_LastMessageTime_void:
    .asciz "_lastMessageTime"
.LN_0_m_Yggdrasil_Models_Conversation_set_LastMessageTime_v:
    .asciz "_lastMessageTime"
.LS_1_m_Yggdrasil_Models_Conversation_set_LastMessageTime_v:
    .short 76, 97, 115, 116, 77, 101, 115, 115, 97, 103, 101, 84, 105, 109, 101
.LN_0_m_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref:
    .asciz "_unreadCount"
.LN_1_m_Yggdrasil_Models_Conversation_ctor_ref_ref_i4_arr_gen_ref:
    .asciz "_lastMessageTime"
.LN_0_m_Yggdrasil_Models_DirectMessage_get_Partner_void:
    .asciz "<Partner>k__BackingField"
.LSTUB_m_Yggdrasil_Models_DirectMessage_ctor_ref_i4_ref_gen:
    .asciz "Yggdrasil.Models.DirectMessage::.ctor  [call with 7 stack arguments]"
.LN_0_m_Yggdrasil_Models_Group_get_Members_void:
    .asciz "_members"
.LN_0_m_Yggdrasil_Models_Group_set_Members_ref:
    .asciz "_members"
.LS_1_m_Yggdrasil_Models_Group_set_Members_ref:
    .short 77, 101, 109, 98, 101, 114, 115
.LSTUB_m_Yggdrasil_Models_Group_ctor_ref_ref_i4_arr_arr_gen:
    .asciz "Yggdrasil.Models.Group::.ctor  [call with 7 stack arguments]"
.LN_0_m_Yggdrasil_Models_Server_get_Members_void:
    .asciz "_members"
.LN_0_m_Yggdrasil_Models_Server_set_Members_ref:
    .asciz "_members"
.LS_1_m_Yggdrasil_Models_Server_set_Members_ref:
    .short 77, 101, 109, 98, 101, 114, 115
.LN_0_m_Yggdrasil_Models_Server_get_Roles_void:
    .asciz "_roles"
.LN_0_m_Yggdrasil_Models_Server_set_Roles_ref:
    .asciz "_roles"
.LS_1_m_Yggdrasil_Models_Server_set_Roles_ref:
    .short 82, 111, 108, 101, 115
.LN_0_m_Yggdrasil_Models_Server_get_Channels_void:
    .asciz "_channels"
.LN_0_m_Yggdrasil_Models_Server_set_Channels_ref:
    .asciz "_channels"
.LS_1_m_Yggdrasil_Models_Server_set_Channels_ref:
    .short 67, 104, 97, 110, 110, 101, 108, 115
.LN_0_m_Yggdrasil_Models_Server_get_GroupedChannels_void:
    .asciz "_groupedChannels"
.LN_0_m_Yggdrasil_Models_Server_set_GroupedChannels_ref:
    .asciz "_groupedChannels"
.LS_1_m_Yggdrasil_Models_Server_set_GroupedChannels_ref:
    .short 71, 114, 111, 117, 112, 101, 100, 67, 104, 97, 110, 110, 101, 108, 115
.LN_0_m_Yggdrasil_Models_Server_get_MemberCount_void:
    .asciz "_memberCount"
.LN_0_m_Yggdrasil_Models_Server_set_MemberCount_i4:
    .asciz "_memberCount"
.LS_1_m_Yggdrasil_Models_Server_set_MemberCount_i4:
    .short 77, 101, 109, 98, 101, 114, 67, 111, 117, 110, 116
.LN_0_m_Yggdrasil_Models_Server_get_Position_void:
    .asciz "_position"
.LN_0_m_Yggdrasil_Models_Server_set_Position_i4:
    .asciz "_position"
.LS_1_m_Yggdrasil_Models_Server_set_Position_i4:
    .short 80, 111, 115, 105, 116, 105, 111, 110
.LN_0_m_Yggdrasil_Models_Server_get_Invite_void:
    .asciz "_invite"
.LN_0_m_Yggdrasil_Models_Server_set_Invite_ref:
    .asciz "_invite"
.LS_1_m_Yggdrasil_Models_Server_set_Invite_ref:
    .short 73, 110, 118, 105, 116, 101
.LN_0_m_Yggdrasil_Models_Server_get_CategoryMap_void:
    .asciz "<CategoryMap>k__BackingField"
.LN_0_m_Yggdrasil_Models_Server_set_CategoryMap_ref:
    .asciz "<CategoryMap>k__BackingField"
.LN_0_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "_members"
.LN_1_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "_roles"
.LN_2_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "_channels"
.LN_3_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "string>"
.LN_4_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "System.Collections.ObjectModel.ObservableCollection`1<object>"
.LN_5_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "_groupedChannels"
.LN_6_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "_memberCount"
.LN_7_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "_invite"
.LN_8_m_Yggdrasil_Models_Server_ctor_ref_ref_gen_gen_gen_arr_gen_ref_ref_ref_ref:
    .asciz "_position"
.LN_0_m_Yggdrasil_Models_ServerChannel_get_ParentServerID_void:
    .asciz "<ParentServerID>k__BackingField"
.LN_0_m_Yggdrasil_Models_ServerChannel_get_ChannelType_void:
    .asciz "<ChannelType>k__BackingField"
.LN_0_m_Yggdrasil_Models_ServerChannel_get_CategoryID_void:
    .asciz "<CategoryID>k__BackingField"
.LN_0_m_Yggdrasil_Models_ServerChannel_get_Position_void:
    .asciz "<Position>k__BackingField"
.LSTUB_m_Yggdrasil_Models_ServerChannel_ctor_ref_ref_ref_i4_v_ref_ref_ref:
    .asciz "Yggdrasil.Models.ServerChannel::.ctor  [call with 7 stack arguments]"
.LN_0_m_Yggdrasil_Models_ServerMember_get_User_void:
    .asciz "<User>k__BackingField"
.LN_0_m_Yggdrasil_Models_ServerMember_get_Roles_void:
    .asciz "<Roles>k__BackingField"
.LN_0_m_Yggdrasil_Models_ServerMember_get_Nickname_void:
    .asciz "<Nickname>k__BackingField"
.LN_0_m_Yggdrasil_Models_ServerMember_set_Nickname_ref:
    .asciz "<Nickname>k__BackingField"
.LN_0_m_Yggdrasil_Models_ServerMember_get_JoinDate_void:
    .asciz "<JoinDate>k__BackingField"
.LN_0_m_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen:
    .asciz "<User>k__BackingField"
.LN_1_m_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen:
    .asciz "Yggdrasil.Models.Role>"
.LN_2_m_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen:
    .asciz "<Roles>k__BackingField"
.LN_3_m_Yggdrasil_Models_ServerMember_ctor_ref_gen_ref_gen:
    .asciz "<JoinDate>k__BackingField"
.LN_0_m_Yggdrasil_Models_Attachment_get_Name_void:
    .asciz "<Name>k__BackingField"
.LN_0_m_Yggdrasil_Models_Attachment_set_Name_ref:
    .asciz "<Name>k__BackingField"
.LN_0_m_Yggdrasil_Models_Attachment_get_File_void:
    .asciz "<File>k__BackingField"
.LN_0_m_Yggdrasil_Models_Attachment_set_File_v:
    .asciz "<File>k__BackingField"
.LN_0_m_Yggdrasil_Models_Attachment_get_Url_void:
    .asciz "<Url>k__BackingField"
.LN_0_m_Yggdrasil_Models_Attachment_set_Url_ref:
    .asciz "<Url>k__BackingField"
.LN_0_m_Yggdrasil_Models_Attachment_get_Type_void:
    .asciz "<Type>k__BackingField"
.LN_0_m_Yggdrasil_Models_Attachment_set_Type_v:
    .asciz "<Type>k__BackingField"
.LSTUB_m_Yggdrasil_Models_Attachment_ctor_arr_ref_ref_v:
    .asciz "Yggdrasil.Models.Attachment::.ctor  [argument ''type'' not found in signature of Yggdrasil.Models.Attachment::.ctor]"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_AuthType_void:
    .asciz "<AuthType>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_AuthType_v:
    .asciz "<AuthType>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextUsername_void:
    .asciz "<CustomTextUsername>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextUsername_ref:
    .asciz "<CustomTextUsername>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextPassword_void:
    .asciz "<CustomTextPassword>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextPassword_ref:
    .asciz "<CustomTextPassword>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_CustomTextAuthType_void:
    .asciz "<CustomTextAuthType>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_CustomTextAuthType_ref:
    .asciz "<CustomTextAuthType>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_get_Url_void:
    .asciz "<Url>k__BackingField"
.LN_0_m_Yggdrasil_Models_AuthTypeInfo_set_Url_ref:
    .asciz "<Url>k__BackingField"
.LN_0_m_Yggdrasil_Models_SavedCredential_get_User_void:
    .asciz "<User>k__BackingField"
.LN_0_m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken_void:
    .asciz "<PasswordOrToken>k__BackingField"
.LN_0_m_Yggdrasil_Models_SavedCredential_get_Plugin_void:
    .asciz "<Plugin>k__BackingField"
.LN_0_m_Yggdrasil_Models_SavedCredential_get_AutoLogin_void:
    .asciz "<AutoLogin>k__BackingField"
.LN_0_m_Yggdrasil_Models_SavedCredential_set_AutoLogin_v:
    .asciz "<AutoLogin>k__BackingField"
.LN_0_m_Yggdrasil_Models_SavedCredential_get_AuthenticationType_void:
    .asciz "<AuthenticationType>k__BackingField"
.LN_0_m_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref:
    .asciz "<User>k__BackingField"
.LN_1_m_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref:
    .asciz "<PasswordOrToken>k__BackingField"
.LN_2_m_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref:
    .asciz "<AuthenticationType>k__BackingField"
.LN_3_m_Yggdrasil_Models_SavedCredential_ctor_ref_ref_v_ref_ref:
    .asciz "<Plugin>k__BackingField"
.LN_0_m_Yggdrasil_Models_ConversationItem_get_Time_void:
    .asciz "<Time>k__BackingField"
.LN_0_m_Yggdrasil_Models_ConversationItem_set_Time_v:
    .asciz "<Time>k__BackingField"
.LN_0_m_Yggdrasil_Models_ConversationItem_get_Identifier_void:
    .asciz "<Identifier>k__BackingField"
.LN_0_m_Yggdrasil_Models_ConversationItem_set_Identifier_ref:
    .asciz "<Identifier>k__BackingField"
.LN_0_m_Yggdrasil_Models_ConversationItem_get_ConversationId_void:
    .asciz "<ConversationId>k__BackingField"
.LN_0_m_Yggdrasil_Models_ConversationItem_set_ConversationId_ref:
    .asciz "<ConversationId>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_get_Author_void:
    .asciz "<Author>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_set_Author_ref:
    .asciz "<Author>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_get_Text_void:
    .asciz "<Text>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_set_Text_ref:
    .asciz "<Text>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_get_Attachments_void:
    .asciz "<Attachments>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_set_Attachments_ref:
    .asciz "<Attachments>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_get_ParentMessage_void:
    .asciz "<ParentMessage>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_set_ParentMessage_ref:
    .asciz "<ParentMessage>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_get_IsForwarded_void:
    .asciz "<IsForwarded>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_set_IsForwarded_v:
    .asciz "<IsForwarded>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_get_PreviousMessageIdentifier_void:
    .asciz "<PreviousMessageIdentifier>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_set_PreviousMessageIdentifier_ref:
    .asciz "<PreviousMessageIdentifier>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_get_PreviousMessageIsAction_void:
    .asciz "<PreviousMessageIsAction>k__BackingField"
.LN_0_m_Yggdrasil_Models_Message_set_PreviousMessageIsAction_v:
    .asciz "<PreviousMessageIsAction>k__BackingField"
.LSTUB_m_Yggdrasil_Models_ActionMessage_ctor_ref_ref_v_ref_arr_ref_ref:
    .asciz "Yggdrasil.Models.ActionMessage::.ctor  [call with 8 stack arguments]"
.LN_0_m_Yggdrasil_Models_CallStartedNotice_get_StartedBy_void:
    .asciz "<StartedBy>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallStartedNotice_set_StartedBy_ref:
    .asciz "<StartedBy>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallStartedNotice_get_IsVideoCall_void:
    .asciz "<IsVideoCall>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallStartedNotice_set_IsVideoCall_v:
    .asciz "<IsVideoCall>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallEndedNotice_get_StartedBy_void:
    .asciz "<StartedBy>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallEndedNotice_set_StartedBy_ref:
    .asciz "<StartedBy>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallEndedNotice_get_Duration_void:
    .asciz "<Duration>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallEndedNotice_set_Duration_v:
    .asciz "<Duration>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallEndedNotice_get_IsVideoCall_void:
    .asciz "<IsVideoCall>k__BackingField"
.LN_0_m_Yggdrasil_Models_CallEndedNotice_set_IsVideoCall_v:
    .asciz "<IsVideoCall>k__BackingField"
.LN_0_m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterLeft_void:
    .asciz "<DelimiterLeft>k__BackingField"
.LN_0_m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterLeft_ref:
    .asciz "<DelimiterLeft>k__BackingField"
.LN_0_m_Yggdrasil_Models_ClickableConfiguration_get_DelimiterRight_void:
    .asciz "<DelimiterRight>k__BackingField"
.LN_0_m_Yggdrasil_Models_ClickableConfiguration_set_DelimiterRight_ref:
    .asciz "<DelimiterRight>k__BackingField"
.LN_0_m_Yggdrasil_Models_ClickableConfiguration_get_Type_void:
    .asciz "<Type>k__BackingField"
.LN_0_m_Yggdrasil_Models_ClickableConfiguration_set_Type_v:
    .asciz "<Type>k__BackingField"
.LN_0_m_Yggdrasil_Models_ExtraConfiguration_get_title_void:
    .asciz "<title>k__BackingField"
.LN_0_m_Yggdrasil_Models_ExtraConfiguration_set_title_ref:
    .asciz "<title>k__BackingField"
.LN_0_m_Yggdrasil_Models_ExtraConfiguration_get_description_void:
    .asciz "<description>k__BackingField"
.LN_0_m_Yggdrasil_Models_ExtraConfiguration_set_description_ref:
    .asciz "<description>k__BackingField"
.LN_0_m_Yggdrasil_Models_ExtraConfiguration_get_onRun_void:
    .asciz "<onRun>k__BackingField"
.LN_0_m_Yggdrasil_Models_ExtraConfiguration_set_onRun_ref:
    .asciz "<onRun>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_get_CallId_void:
    .asciz "<CallId>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_get_Conversation_void:
    .asciz "<Conversation>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_get_IsVideo_void:
    .asciz "<IsVideo>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_get_State_void:
    .asciz "<State>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_set_State_v:
    .asciz "<State>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_get_StartedAt_void:
    .asciz "<StartedAt>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_get_Participants_void:
    .asciz "<Participants>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_set_Participants_ref:
    .asciz "<Participants>k__BackingField"
.LN_0_m_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr:
    .asciz "<CallId>k__BackingField"
.LN_1_m_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr:
    .asciz "<Conversation>k__BackingField"
.LN_2_m_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr:
    .asciz "<IsVideo>k__BackingField"
.LN_3_m_Yggdrasil_Models_ActiveCall_ctor_ref_ref_b_arr:
    .asciz "<StartedAt>k__BackingField"
.LSTUB_m_Yggdrasil_Tools_Windows_LibraryHelper_LoadLibraryEx_ref_i8_u4:
    .asciz "Yggdrasil.Tools.Windows.LibraryHelper::LoadLibraryEx  [P/Invoke declaration (native import, no IL body)]"
.LN_0_m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref:
    .asciz "System.PlatformNotSupportedException"
.LN_1_m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref:
    .asciz "Zero"
.LN_2_m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref:
    .asciz "Zero"
.LN_3_m_Yggdrasil_Tools_Windows_LibraryHelper_ImportDllFromArchedFolder_ref_ref_ref_ref_ref:
    .asciz "System.DllNotFoundException"
.LN_0_m_Yggdrasil_Bottles_DialogBottle_get_Type_void:
    .asciz "<Type>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_DialogBottle_get_Message_void:
    .asciz "<Message>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText_void:
    .asciz "<CopyToClipboardText>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_DialogBottle_get_Action_void:
    .asciz "<Action>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref:
    .asciz "<Type>k__BackingField"
.LN_1_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref:
    .asciz "<Message>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref:
    .asciz "<Type>k__BackingField"
.LN_1_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref:
    .asciz "<Message>k__BackingField"
.LN_2_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_ref:
    .asciz "<CopyToClipboardText>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen:
    .asciz "<Type>k__BackingField"
.LN_1_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen:
    .asciz "<Message>k__BackingField"
.LN_2_m_Yggdrasil_Bottles_DialogBottle_ctor_v_ref_gen:
    .asciz "<Action>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_ListBottle_get_List_void:
    .asciz "<List>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_ListBottle_ctor_v:
    .asciz "<List>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_ListItemUpdatedBottle_get_Item_void:
    .asciz "<Item>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_ListItemUpdatedBottle_ctor_v_ref:
    .asciz "<Item>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_ListItemRemovedBottle_get_Identifier_void:
    .asciz "<Identifier>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_ListItemRemovedBottle_ctor_v_ref:
    .asciz "<Identifier>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageBottle_get_ConversationId_void:
    .asciz "<ConversationId>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageBottle_ctor_ref:
    .asciz "<ConversationId>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageRecievedBottle_get_Item_void:
    .asciz "<Item>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageRecievedBottle_get_SentInServerChannel_void:
    .asciz "<SentInServerChannel>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b:
    .asciz "<Item>k__BackingField"
.LN_1_m_Yggdrasil_Bottles_MessageRecievedBottle_ctor_ref_ref_b:
    .asciz "<SentInServerChannel>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageEditedBottle_get_OldItemId_void:
    .asciz "<OldItemId>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageEditedBottle_get_NewItem_void:
    .asciz "<NewItem>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref:
    .asciz "<OldItemId>k__BackingField"
.LN_1_m_Yggdrasil_Bottles_MessageEditedBottle_ctor_ref_ref_ref:
    .asciz "<NewItem>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageDeletedBottle_get_DeletedItemId_void:
    .asciz "<DeletedItemId>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_MessageDeletedBottle_ctor_ref_ref:
    .asciz "<DeletedItemId>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_CallBottle_get_State_void:
    .asciz "<State>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_CallBottle_get_FailReason_void:
    .asciz "<FailReason>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_CallBottle_get_Caller_void:
    .asciz "<Caller>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v:
    .asciz "<Caller>k__BackingField"
.LN_1_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v:
    .asciz "<State>k__BackingField"
.LN_0_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref:
    .asciz "<Caller>k__BackingField"
.LN_1_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref:
    .asciz "<State>k__BackingField"
.LN_2_m_Yggdrasil_Bottles_CallBottle_ctor_ref_v_ref:
    .asciz "<FailReason>k__BackingField"

    .section .note.GNU-stack,"",@progbits