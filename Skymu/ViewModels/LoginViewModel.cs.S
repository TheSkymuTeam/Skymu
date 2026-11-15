# ViewModels/LoginViewModel.cs
    .text

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_ctor__ref_i4_ref_v_ref_ref
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_ctor__ref_i4_ref_v_ref_ref, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_ctor__ref_i4_ref_v_ref_ref:
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
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0001:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0008:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName__ref
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_000f:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex__i4
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0015:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0016:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName__ref
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_001e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType__v
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0023:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0024:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0026:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername__ref
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_002c:
    mov 16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_002e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword__ref
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_0033:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_ctor_ref_i4_ref_v_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_ctor__ref_i4_ref_v_ref_ref, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_ctor__ref_i4_ref_v_ref_ref

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName__void
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName__void, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName__void, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName__void

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName__ref
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName__ref, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName__ref, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName__ref

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex__void
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex__void, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex__void, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex__void

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex__i4
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex__i4, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex_i4_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex_i4_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex_i4_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex__i4, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex__i4

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName__void
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName__void, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName__void, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName__void

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName__ref
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName__ref, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName__ref, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName__ref

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType__v
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType__v, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType__v, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType__v

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername__void
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername__void, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername__void, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername__void

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername__ref
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername__ref, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername__ref, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername__ref

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword__void
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword__void, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword__void, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword__void

.globl m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword__ref
.type m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword__ref, @function
m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword__ref, .-m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword__ref

.globl m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext__void
.type m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext__void, @function
m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0050
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0011:
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0016:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0017:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_001c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_Authenticate__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0021:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0026:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0027:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0029:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_IsCompleted__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_002e:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_006c
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0030:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0031:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0032:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0033:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0034:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0039:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_003a:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_003b:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0041:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0046:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0048:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0049:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult_valuetype_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d__gen_gen
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_004e:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_00a3
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0050:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0051:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0056:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0057:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0058:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_005d:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0063:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0064:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0065:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0066:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0067:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_006c:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_006e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0073:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0074:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_008f
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_008f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0090:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0092:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0097:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_0098:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_009d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_009e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetResult__gen
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_00a3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext__void, .-m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext__void

.globl m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine__ref
.type m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine__ref, @function
m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine__ref, .-m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine__ref

.globl m_Skymu_ViewModels_LoginViewModel_c_cctor__void
.type m_Skymu_ViewModels_LoginViewModel_c_cctor__void, @function
m_Skymu_ViewModels_LoginViewModel_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_cctor_void_0000:
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_LoginViewModel_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_cctor_void_0005:
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_cctor__void, .-m_Skymu_ViewModels_LoginViewModel_c_cctor__void

.globl m_Skymu_ViewModels_LoginViewModel_c_ctor__void
.type m_Skymu_ViewModels_LoginViewModel_c_ctor__void, @function
m_Skymu_ViewModels_LoginViewModel_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_LoginViewModel_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_ctor__void, .-m_Skymu_ViewModels_LoginViewModel_c_ctor__void

.globl m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0__ref
.type m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0__ref, @function
m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0000:
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0005:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_000d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_000e:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0013:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_AutoLogin__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0018:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0031
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_001a:
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_001f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0020:
    lea m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1__ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0026:
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_002b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Linq_Enumerable_Any_class_Yggdrasil_Yggdrasil_ICore__gen_gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0030:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0031:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_0032:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0__ref, .-m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0__ref

.globl m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0__ref
.type m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0__ref, @function
m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref_0006:
    lea .LS_0_m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref_000b:
    mov $5, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref_000c:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_Equals__ref_ref_v
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref_0011:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0__ref, .-m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0__ref

.globl m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1__ref
.type m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1__ref, @function
m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1_ref_0006:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1_ref_0007:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1_ref_0009:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1__ref, .-m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1__ref

.globl m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2__ref
.type m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2__ref, @function
m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2_ref_0006:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2_ref_0007:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2_ref_0009:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2__ref, .-m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2__ref

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_0000:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_0001:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_SWSOptOutShown__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_0006:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_0007:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_Anonymize__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_000c:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_000d:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_DisableSWS__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_0012:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_0018:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_001d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_0000:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_0001:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_SWSOptOutShown__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_0006:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_0007:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_Anonymize__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_000c:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_000d:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_DisableSWS__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_0012:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_0018:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_001d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_0000:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_0001:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_SWSOptOutShown__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_0006:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_0007:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_Anonymize__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_000c:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_000d:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_DisableSWS__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_0012:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_0018:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_001d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_ctor__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1__ref
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1__ref, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_get_InternalName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_Plugin__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1__ref, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1__ref

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_ctor__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_IsCheckBoxTicked__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_000b:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_0010:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_0015:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_0016:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_001b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_0020:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_IsCheckBoxTicked__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_000b:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0010:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0015:
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Diagnostics_ProcessStartInfo_ctor__void
    mov %r12, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_001a:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_001c:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0021:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_ProcessStartInfo_set_FileName__ref
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0026:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0027:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0028:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_ProcessStartInfo_set_UseShellExecute__b
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_002d:
    mov -16(%rbp), %rdi
    call m_System_Diagnostics_Process_Start__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0032:
    mov -24(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0033:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0034:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_0039:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_003e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor__void
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor__void, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor__void, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor__void

.globl m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0__ref_ref
.type m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0__ref_ref, @function
m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_0006:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_000b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_000c:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_0010
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_000e:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_000f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_0011:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_IMainWindowHolder_Invoke__gen
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0__ref_ref, .-m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0__ref_ref

.globl m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine__ref
.type m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine__ref, @function
m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine__ref, .-m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine__ref

.globl m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext__void
.type m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext__void, @function
m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0070
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0012:
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_ctor__void
    mov %r12, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0017:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_001d:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0022:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0023:
    mov -72(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0028:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_002d:
    call m_Skymu_Preferences_Settings_get_SaveCredentials__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0032:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_009d
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0034:
    lea .LN_7_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0039:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_StoreCredential__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_003e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0043:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0044:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0046:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_IsCompleted__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_004b:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_008c
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_004e:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_004f:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0050:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0051:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0056:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0057:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0058:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_005d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_005e:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0063:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0066:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_class_Yggdrasil_Yggdrasil_Models_SavedCredential_valuetype_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48__gen_gen
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_006b:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0137
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0070:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0071:
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0076:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0077:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0078:
    mov -64(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_007d:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0083:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0084:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0085:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0086:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0087:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_008c:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_008e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0093:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0094:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0095:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_009d
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0097:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0098:
    mov -64(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Save__ref
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_009d:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_009e:
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00a3:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00a4:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00a9
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00a6:
    mov -56(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00a7:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00b3
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00a9:
    lea .LS_15_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00ae:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_string_Invoke__gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00b3:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00b4:
    mov -64(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00b9:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00ba:
    mov -72(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00bf:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_IMainWindowHolder_Invoke__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00c4:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00c9:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00ca:
    mov -64(%rbp), %rdi
    lea .LN_19_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00cf:
    mov -64(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00d4:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00d5:
    mov -72(%rbp), %rdi
    lea .LN_21_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00da:
    lea m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00e0:
    lea .LN_22_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_EventHandler_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00e5:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_IMainWindowHolder_add_Ready__ref
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00ea:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00eb:
    mov -64(%rbp), %rdi
    lea .LN_23_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00f0:
    mov -64(%rbp), %rdi
    lea .LN_24_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00f5:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_IMainWindowHolder_BeginLoading__void
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00fa:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_00fb:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_011d
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_011d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_011e:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0120:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_25_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0125:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0126:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0127:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_26_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_012c:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_012d:
    mov -64(%rbp), %rdi
    lea .LN_27_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0132:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_0137:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext__void, .-m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext__void

.globl m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine__ref
.type m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine__ref, @function
m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine__ref, .-m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine__ref

.globl m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext__void
.type m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext__void, @function
m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0006:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0008:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_000d:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_000f:
    mov -72(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0097
    cmp $1, %eax
    je .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00f8
    cmp $2, %eax
    je .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_015f
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0020:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0021:
    mov -72(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0026:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_002d
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0028:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01d8
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_002d:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_002e:
    mov -72(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0033:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0034:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0039
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0036:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0037:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_003f
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0039:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_003a:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_bool_Invoke__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_003f:
    call m_Skymu_Native_Windows_Tray_SetConnecting__void
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0044:
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0049:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_004a:
    mov -80(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_004f:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0054:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0055:
    mov -88(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_005a:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_005b:
    mov -96(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0060:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_Authenticate__v_ref_ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0065:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_006a:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_006b:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_006d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_IsCompleted__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0072:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00b3
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0074:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0075:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0076:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0077:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0078:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_007d:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_007e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_007f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0084:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0085:
    mov -72(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_008a:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_008c:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_008d:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult_valuetype_Skymu_ViewModels_LoginViewModel_Login_d_46__gen_gen
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0092:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01eb
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0097:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0098:
    mov -72(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_009d:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_009e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_009f:
    mov -72(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00a4:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00aa:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00ab:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00ac:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00ad:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00ae:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00b3:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00b5:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetResult__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00ba:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00bb:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00bc:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0121
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00be:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00bf:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_InitiateMain__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00c4:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00c9:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00cb:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00cd:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00d2:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0115
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00d4:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00d5:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00d6:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00d7:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00d8:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00dd:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00de:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00e0:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00e5:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00e6:
    mov -72(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00eb:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00ed:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00ee:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_LoginViewModel_Login_d_46__gen_gen
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00f3:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01eb
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00f8:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00f9:
    mov -72(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_00fe:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0100:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0101:
    mov -72(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0106:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_010c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_010d:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_010e:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_010f:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0110:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_19_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0115:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0117:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_011c:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01d8
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0121:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0122:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0123:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0185
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0125:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0126:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_Handle2FA__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_012b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0130:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0132:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0134:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0139:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_017c
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_013b:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_013c:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_013d:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_013e:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_013f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0144:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0145:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0147:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_21_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_014c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_014d:
    mov -72(%rbp), %rdi
    lea .LN_22_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0152:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0154:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0155:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_LoginViewModel_Login_d_46__gen_gen
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_015a:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01eb
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_015f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0160:
    mov -72(%rbp), %rdi
    lea .LN_23_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0165:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0167:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0168:
    mov -72(%rbp), %rdi
    lea .LN_24_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_016d:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0173:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0174:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0175:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0176:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0177:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_25_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_017c:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_017e:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0183:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01d8
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0185:
    mov $8, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0186:
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetStatus__v
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_018b:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_018c:
    mov -72(%rbp), %rdi
    lea .LN_26_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0191:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0192:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0197
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0194:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0195:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_019d
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0197:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_0198:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_bool_Invoke__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_019d:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_019e:
    mov -72(%rbp), %rdi
    lea .LN_27_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01a3:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01a4:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01a9
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01a6:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01a7:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01bd
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01a9:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01ae:
    lea .LS_28_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01b3:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01b8:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_string_Invoke__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01bd:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01d8
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01d8:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01d9:
    mov $-2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01db:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_29_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01e0:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01e1:
    mov -72(%rbp), %rdi
    lea .LN_30_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01e6:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_01eb:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext__void, .-m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext__void

.globl m_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine__ref
.type m_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine__ref, @function
m_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine__ref, .-m_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine__ref

.globl m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext__void
.type m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext__void, @function
m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0006:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0008:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_000d:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_000f:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0086
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0012:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0013:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00e7
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0018:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0019:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_001e:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0037
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0020:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0021:
    mov -72(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0026:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0027:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_002c
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0029:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_002a:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0032
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_002c:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_002d:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_bool_Invoke__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0032:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_018e
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0037:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0038:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0039:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_003e:
    call m_Skymu_Native_Windows_Tray_SetConnecting__void
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0043:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0044:
    lea m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0__void(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_004a:
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Enumerations_LoginResult_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_004f:
    mov -72(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0054:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0059:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_005a:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_005c:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_IsCompleted__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0061:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00a2
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0063:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0064:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0065:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0066:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0067:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_006c:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_006d:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_006e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0073:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0074:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0079:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_007b:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_007c:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_1_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult_valuetype_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45__gen_gen
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0081:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_01a1
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0087:
    mov -72(%rbp), %rdi
    lea .LN_8_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_008c:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_008e:
    mov -72(%rbp), %rdi
    lea .LN_9_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0093:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0099:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_009a:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_009b:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_009c:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_009d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_10_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00a2:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00a4:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetResult__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00a9:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00aa:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00ab:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_010d
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00ad:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00ae:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_InitiateMain__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00b3:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00b8:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00ba:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00bc:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00c1:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0104
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00c3:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00c4:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00c5:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00c6:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00c7:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_11_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00cc:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00cd:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00cf:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_12_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00d4:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00d5:
    mov -72(%rbp), %rdi
    lea .LN_13_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00da:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00dc:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00dd:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_System_Runtime_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45__gen_gen
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00e2:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_01a1
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00e7:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00e8:
    mov -72(%rbp), %rdi
    lea .LN_14_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00ed:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00ef:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00f0:
    mov -72(%rbp), %rdi
    lea .LN_15_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00f5:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00fb:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00fc:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00fd:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00fe:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_00ff:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_16_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0104:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0106:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_010b:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0173
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_010d:
    mov $8, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_010e:
    mov -72(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetStatus__v
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0113:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0114:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0115:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin__ref
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_011a:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_011b:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_011c:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0121:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_17_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0126:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0127:
    mov -72(%rbp), %rdi
    lea .LN_18_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_012c:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_012d:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0132
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_012f:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0130:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_013d
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0132:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0133:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0138:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_Invoke__gen
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_013d:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_013e:
    mov -72(%rbp), %rdi
    lea .LN_19_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0143:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0144:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0149
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0146:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0147:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_014f
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0149:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_014a:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_bool_Invoke__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_014f:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0150:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0151:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0173
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0153:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0154:
    mov -72(%rbp), %rdi
    lea .LN_20_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0159:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_015a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_015f
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_015c:
    mov -64(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_015d:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0173
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_015f:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0164:
    lea .LS_21_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0169:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_016e:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_string_Invoke__gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0173:
    jmp .Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_018e
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_018e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_018f:
    mov $-2, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0191:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_22_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0196:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_0197:
    mov -72(%rbp), %rdi
    lea .LN_23_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_019c:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_01a1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext__void, .-m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext__void

.globl m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine__ref
.type m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine__ref, @function
m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine__ref, .-m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine__ref

.globl m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested__ref
.type m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested__ref, @function
m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0010:
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_bool__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0007
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested__ref, .-m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested__ref

.globl m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested__ref
.type m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested__ref, @function
m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0010:
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_bool__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0007
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested__ref, .-m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested__ref

.globl m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested__ref
.type m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested__ref, @function
m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0010:
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_string__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0007
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested__ref, .-m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested__ref

.globl m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested__ref
.type m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested__ref, @function
m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0010:
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_string__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0007
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested__ref, .-m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested__ref

.globl m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated__ref
.type m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated__ref, @function
m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0010:
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_class_Skymu_ViewModels_LoginViewModel_PluginListing__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0007
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated__ref, .-m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated__ref

.globl m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated__ref
.type m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated__ref, @function
m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0010:
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_class_Skymu_ViewModels_LoginViewModel_PluginListing__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0007
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated__ref, .-m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated__ref

.globl m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady__ref
.type m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady__ref, @function
m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0010:
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_class_Skymu_ViewModels_IMainWindowHolder__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0007
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady__ref, .-m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady__ref

.globl m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady__ref
.type m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady__ref, @function
m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0010:
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action_1_class_Skymu_ViewModels_IMainWindowHolder__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0007
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady__ref, .-m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady__ref

.globl m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void
.type m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void, @function
m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PluginItems_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PluginItems_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_get_PluginItems_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PluginItems_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_get_PluginItems_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void, .-m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void

.globl m_Skymu_ViewModels_LoginViewModel_set_PluginItems__ref
.type m_Skymu_ViewModels_LoginViewModel_set_PluginItems__ref, @function
m_Skymu_ViewModels_LoginViewModel_set_PluginItems__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_0008:
    lea .LS_1_m_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_SetProperty_class_System_ObjectModel_System_Collections_ObjectModel_ObservableCollection_1_class_Skymu_ViewModels_LoginViewModel_PluginListing__gen_gen_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_0012:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_0013:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_set_PluginItems__ref, .-m_Skymu_ViewModels_LoginViewModel_set_PluginItems__ref

.globl m_Skymu_ViewModels_LoginViewModel_get_SelectedListing__void
.type m_Skymu_ViewModels_LoginViewModel_get_SelectedListing__void, @function
m_Skymu_ViewModels_LoginViewModel_get_SelectedListing__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_SelectedListing_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_SelectedListing_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_get_SelectedListing_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_SelectedListing_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_get_SelectedListing_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_get_SelectedListing__void, .-m_Skymu_ViewModels_LoginViewModel_get_SelectedListing__void

.globl m_Skymu_ViewModels_LoginViewModel_set_SelectedListing__ref
.type m_Skymu_ViewModels_LoginViewModel_set_SelectedListing__ref, @function
m_Skymu_ViewModels_LoginViewModel_set_SelectedListing__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0008:
    lea .LS_1_m_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_000d:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_CommunityToolkit_Mvvm_ComponentModel_ObservableObject_SetProperty_class_Skymu_ViewModels_LoginViewModel_PluginListing__gen_gen_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0012:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_001b
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0015:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_set_SelectedListing__ref, .-m_Skymu_ViewModels_LoginViewModel_set_SelectedListing__ref

.globl m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
.type m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void, @function
m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void, .-m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void

.globl m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin__ref
.type m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin__ref, @function
m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin__ref, .-m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin__ref

.globl m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void
.type m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void, @function
m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void, .-m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing__void

.globl m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing__ref
.type m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing__ref, @function
m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing__ref, .-m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing__ref

.globl m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials__void
.type m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials__void, @function
m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_SavedCredentials_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_SavedCredentials_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_SavedCredentials_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_get_SavedCredentials_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials__void, .-m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials__void

.globl m_Skymu_ViewModels_LoginViewModel_set_SavedCredentials__ref
.type m_Skymu_ViewModels_LoginViewModel_set_SavedCredentials__ref, @function
m_Skymu_ViewModels_LoginViewModel_set_SavedCredentials__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SavedCredentials_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SavedCredentials_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_SavedCredentials_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_set_SavedCredentials_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_set_SavedCredentials_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_set_SavedCredentials_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_set_SavedCredentials__ref, .-m_Skymu_ViewModels_LoginViewModel_set_SavedCredentials__ref

.globl m_Skymu_ViewModels_LoginViewModel_get_ForcedLogin__void
.type m_Skymu_ViewModels_LoginViewModel_get_ForcedLogin__void, @function
m_Skymu_ViewModels_LoginViewModel_get_ForcedLogin__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_ForcedLogin_void_0000:
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_get_ForcedLogin_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_get_ForcedLogin_void_0005:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_get_ForcedLogin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_get_ForcedLogin__void, .-m_Skymu_ViewModels_LoginViewModel_get_ForcedLogin__void

.globl m_Skymu_ViewModels_LoginViewModel_set_ForcedLogin__ref
.type m_Skymu_ViewModels_LoginViewModel_set_ForcedLogin__ref, @function
m_Skymu_ViewModels_LoginViewModel_set_ForcedLogin__ref:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_ForcedLogin_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_set_ForcedLogin_ref_0001:
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_set_ForcedLogin_ref(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_set_ForcedLogin_ref_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_set_ForcedLogin_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_set_ForcedLogin__ref, .-m_Skymu_ViewModels_LoginViewModel_set_ForcedLogin__ref

.globl m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref
.type m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref, @function
m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_000b
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0003:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0004:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0009:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_000c
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_000d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_000e:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0013:
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0018:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0019:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_001e:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_001f:
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref(%rip), %rdi
    call shim_global_slot
    mov -32(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0024:
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0029:
    mov -32(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_002e:
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0033:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0034:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0039:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_003a:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_003e
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_003c:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_003d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_003e:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_003f:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_Invoke__gen
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_0044:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref, .-m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected__ref

.globl m_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin__void
.type m_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin__void, @function
m_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0009
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_000a:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_000b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin__ref
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0011:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0012:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing__ref
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin__void, .-m_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin__void

.globl m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing__void
.type m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing__void, @function
m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0006:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0015
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0008:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0009:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_000e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_Count__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0013:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0017
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0015:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0016:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0018:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_001d:
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0022:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0023:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_003c
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0025:
    mov -48(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0026:
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_002b:
    lea m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0__ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0031:
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0036:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0037:
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov -48(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_003c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Linq_Enumerable_Where_class_Skymu_ViewModels_LoginViewModel_PluginListing__gen_gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0041:
    mov -48(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Skymu_ViewModels_LoginViewModel_PluginListing__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0046:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0047:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0048:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_Count__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_004d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_004e:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00ae
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0050:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0051:
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0056:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0057:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0070
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0059:
    mov -48(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_005a:
    lea .LN_5_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_005f:
    lea m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_1__ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0065:
    lea .LN_6_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_006a:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_006b:
    lea .LN_7_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov -48(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0070:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Skymu_ViewModels_LoginViewModel_PluginListing__gen_gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0075:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0076:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0077:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_007b
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0079:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_007a:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_007b:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_007c:
    lea .LN_8_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0081:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0082:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_009b
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0084:
    mov -48(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0085:
    lea .LN_9_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_008a:
    lea m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_2__ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0090:
    lea .LN_10_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0095:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_0096:
    lea .LN_11_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void(%rip), %rdi
    call shim_global_slot
    mov -48(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_009b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_Skymu_ViewModels_LoginViewModel_PluginListing__gen_gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a0:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a1:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a2:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a6
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a4:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a5:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a6:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a7:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00a8:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_Item__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00ad:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00ae:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00af:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_get_PluginItems__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00b4:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00b5:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_LoginViewModel_PluginListing_get_Item__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_00ba:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing__void, .-m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing__void

.globl m_Skymu_ViewModels_LoginViewModel_TryAutoLogin__void
.type m_Skymu_ViewModels_LoginViewModel_TryAutoLogin__void, @function
m_Skymu_ViewModels_LoginViewModel_TryAutoLogin__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45__gen
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_TryAutoLogin__void, .-m_Skymu_ViewModels_LoginViewModel_TryAutoLogin__void

.globl m_Skymu_ViewModels_LoginViewModel_Login__ref_ref
.type m_Skymu_ViewModels_LoginViewModel_Login__ref_ref, @function
m_Skymu_ViewModels_LoginViewModel_Login__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_LoginViewModel_Login_d_46__gen
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_003a:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_003c:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0041:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_0046:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_Login_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_Login__ref_ref, .-m_Skymu_ViewModels_LoginViewModel_Login__ref_ref

.globl m_Skymu_ViewModels_LoginViewModel_Handle2FA__void
.type m_Skymu_ViewModels_LoginViewModel_Handle2FA__void, @function
m_Skymu_ViewModels_LoginViewModel_Handle2FA__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47__gen
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_Handle2FA__void, .-m_Skymu_ViewModels_LoginViewModel_Handle2FA__void

.globl m_Skymu_ViewModels_LoginViewModel_InitiateMain__void
.type m_Skymu_ViewModels_LoginViewModel_InitiateMain__void, @function
m_Skymu_ViewModels_LoginViewModel_InitiateMain__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48__gen
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_InitiateMain_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_InitiateMain__void, .-m_Skymu_ViewModels_LoginViewModel_InitiateMain__void

.globl m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0__void
.type m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0__void, @function
m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0002:
    call m_Yggdrasil_Enumerations_LoginResult_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_Start_valuetype_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d__gen
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_002c:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0__void, .-m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0__void

.globl m_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0__ref_ref
.type m_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0__ref_ref, @function
m_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_000b
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_0009:
    mov -32(%rbp), %rax
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_000b:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_000c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_1_bool_Invoke__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0__ref_ref, .-m_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0__ref_ref

    .globl m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_MoveNext__void
    .type m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_MoveNext__void, @function
m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_MoveNext__void, .-m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_MoveNext__void

    .globl m_Skymu_ViewModels_LoginViewModel_ctor__gen
    .type m_Skymu_ViewModels_LoginViewModel_ctor__gen, @function
m_Skymu_ViewModels_LoginViewModel_ctor__gen:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_ViewModels_LoginViewModel_ctor_gen(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_ViewModels_LoginViewModel_ctor__gen, .-m_Skymu_ViewModels_LoginViewModel_ctor__gen

    .globl m_Skymu_ViewModels_LoginViewModel_LoadPlugins__void
    .type m_Skymu_ViewModels_LoginViewModel_LoadPlugins__void, @function
m_Skymu_ViewModels_LoginViewModel_LoadPlugins__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_ViewModels_LoginViewModel_LoadPlugins_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_ViewModels_LoginViewModel_LoadPlugins__void, .-m_Skymu_ViewModels_LoginViewModel_LoadPlugins__void

    .globl m_Skymu_ViewModels_LoginViewModel_RunPostLogin__ref
    .type m_Skymu_ViewModels_LoginViewModel_RunPostLogin__ref, @function
m_Skymu_ViewModels_LoginViewModel_RunPostLogin__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_ViewModels_LoginViewModel_RunPostLogin_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_ViewModels_LoginViewModel_RunPostLogin__ref, .-m_Skymu_ViewModels_LoginViewModel_RunPostLogin__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_DisplayName_void:
    .asciz "<DisplayName>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_DisplayName_ref:
    .asciz "<DisplayName>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_PluginIndex_void:
    .asciz "<PluginIndex>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_PluginIndex_i4:
    .asciz "<PluginIndex>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_InternalName_void:
    .asciz "<InternalName>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_InternalName_ref:
    .asciz "<InternalName>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_AuthenticationType_void:
    .asciz "<AuthenticationType>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_AuthenticationType_v:
    .asciz "<AuthenticationType>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextUsername_void:
    .asciz "<TextUsername>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextUsername_ref:
    .asciz "<TextUsername>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_get_TextPassword_void:
    .asciz "<TextPassword>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_PluginListing_set_TextPassword_ref:
    .asciz "<TextPassword>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "Plugin"

.LN_3_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_4_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_5_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_6_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>u__1"

.LN_8_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>1__state"

.LN_10_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_cctor_void:
    .asciz "Skymu.ViewModels.LoginViewModel/'<>c'"

.LN_1_m_Skymu_ViewModels_LoginViewModel_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref:
    .asciz "Skymu.ViewModels.LoginViewModel/'<>c__DisplayClass40_0'"

.LN_1_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref:
    .asciz "c"

.LN_2_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref:
    .asciz "c"

.LN_3_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref:
    .asciz "PluginList"

.LN_4_m_Skymu_ViewModels_LoginViewModel_c_LoadPlugins_b_40_0_ref:
    .asciz "bool>"

.LS_0_m_Skymu_ViewModels_LoginViewModel_c_GetPreferredDefaultListing_b_44_0_ref:
    .short 100, 105, 115, 99, 111, 114, 100

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_0_void:
    .asciz "dlg"

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_1_void:
    .asciz "dlg"

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass39_0_ctor_b_2_void:
    .asciz "dlg"

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass40_0_LoadPlugins_b_1_ref:
    .asciz "c"

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void:
    .asciz "dlg"

.LN_1_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_0_void:
    .asciz "dlg"

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void:
    .asciz "dlg"

.LN_1_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void:
    .asciz "System.Diagnostics.ProcessStartInfo"

.LN_2_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void:
    .asciz "newNetLink"

.LN_3_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass43_0_RunPostLogin_b_1_void:
    .asciz "dlg"

.LN_0_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref:
    .asciz "<>4__this"

.LN_1_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref:
    .asciz "MainWindowReady"

.LN_2_m_Skymu_ViewModels_LoginViewModel_c_DisplayClass48_0_InitiateMain_b_0_ref_ref:
    .asciz "mainWindow"

.LN_0_m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "Skymu.ViewModels.LoginViewModel/'<>c__DisplayClass48_0'"

.LN_3_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>8__1"

.LN_4_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>8__1"

.LN_5_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>4__this"

.LN_6_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>4__this"

.LN_7_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "Plugin"

.LN_8_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>t__builder"

.LN_11_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "HeaderTextRequested"

.LS_15_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .short 76, 111, 97, 100, 105, 110, 103, 32, 117, 115, 101, 114, 32, 100, 97, 116, 97

.LN_16_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>8__1"

.LN_17_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "_createMainWindow"

.LN_18_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "mainWindow"

.LN_19_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>8__1"

.LN_20_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "mainWindow"

.LN_21_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>8__1"

.LN_22_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "System.EventHandler"

.LN_23_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>8__1"

.LN_24_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "mainWindow"

.LN_25_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>1__state"

.LN_26_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>8__1"

.LN_27_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_InitiateMain_d_48_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "_selectedListing"

.LN_3_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "AnimationToggleRequested"

.LN_4_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "Plugin"

.LN_5_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "_selectedListing"

.LN_6_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "username"

.LN_7_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "password"

.LN_8_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>1__state"

.LN_9_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>t__builder"

.LN_11_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__1"

.LN_12_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__1"

.LN_13_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>1__state"

.LN_14_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>1__state"

.LN_15_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__2"

.LN_16_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>t__builder"

.LN_17_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__2"

.LN_18_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__2"

.LN_19_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>1__state"

.LN_20_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>1__state"

.LN_21_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__2"

.LN_22_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>t__builder"

.LN_23_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__2"

.LN_24_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>u__2"

.LN_25_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>1__state"

.LN_26_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "AnimationToggleRequested"

.LN_27_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "HeaderTextRequested"

.LS_28_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .short 115, 70, 95, 85, 83, 69, 82, 69, 78, 84, 82, 89, 95, 69, 82, 82, 79, 82, 95, 49, 49, 48, 49

.LN_29_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>1__state"

.LN_30_m_Skymu_ViewModels_LoginViewModel_Login_d_46_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_Login_d_46_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>1__state"

.LN_1_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "AnimationToggleRequested"

.LN_3_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "_forcedLoginPending"

.LN_4_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "Yggdrasil.Enumerations.LoginResult>>"

.LN_5_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>1__state"

.LN_6_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>u__1"

.LN_7_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>t__builder"

.LN_8_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>u__1"

.LN_9_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>u__1"

.LN_10_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>1__state"

.LN_11_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>1__state"

.LN_12_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>u__2"

.LN_13_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>t__builder"

.LN_14_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>u__2"

.LN_15_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>u__2"

.LN_16_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>1__state"

.LN_17_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "_selectedListing"

.LN_18_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "PluginSelectionUpdated"

.LN_19_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "AnimationToggleRequested"

.LN_20_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "HeaderTextRequested"

.LS_21_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .short 115, 70, 95, 85, 83, 69, 82, 69, 78, 84, 82, 89, 95, 69, 82, 82, 79, 82, 95, 49, 49, 48, 49

.LN_22_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>1__state"

.LN_23_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_MoveNext_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_d_45_SetStateMachine_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref:
    .asciz "AnimationToggleRequested"

.LN_1_m_Skymu_ViewModels_LoginViewModel_add_AnimationToggleRequested_ref:
    .asciz "AnimationToggleRequested"

.LN_0_m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref:
    .asciz "AnimationToggleRequested"

.LN_1_m_Skymu_ViewModels_LoginViewModel_remove_AnimationToggleRequested_ref:
    .asciz "AnimationToggleRequested"

.LN_0_m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref:
    .asciz "HeaderTextRequested"

.LN_1_m_Skymu_ViewModels_LoginViewModel_add_HeaderTextRequested_ref:
    .asciz "HeaderTextRequested"

.LN_0_m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref:
    .asciz "HeaderTextRequested"

.LN_1_m_Skymu_ViewModels_LoginViewModel_remove_HeaderTextRequested_ref:
    .asciz "HeaderTextRequested"

.LN_0_m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref:
    .asciz "PluginSelectionUpdated"

.LN_1_m_Skymu_ViewModels_LoginViewModel_add_PluginSelectionUpdated_ref:
    .asciz "PluginSelectionUpdated"

.LN_0_m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref:
    .asciz "PluginSelectionUpdated"

.LN_1_m_Skymu_ViewModels_LoginViewModel_remove_PluginSelectionUpdated_ref:
    .asciz "PluginSelectionUpdated"

.LN_0_m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref:
    .asciz "MainWindowReady"

.LN_1_m_Skymu_ViewModels_LoginViewModel_add_MainWindowReady_ref:
    .asciz "MainWindowReady"

.LN_0_m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref:
    .asciz "MainWindowReady"

.LN_1_m_Skymu_ViewModels_LoginViewModel_remove_MainWindowReady_ref:
    .asciz "MainWindowReady"

.LN_0_m_Skymu_ViewModels_LoginViewModel_get_PluginItems_void:
    .asciz "_pluginItems"

.LN_0_m_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref:
    .asciz "_pluginItems"

.LS_1_m_Skymu_ViewModels_LoginViewModel_set_PluginItems_ref:
    .short 80, 108, 117, 103, 105, 110, 73, 116, 101, 109, 115

.LN_0_m_Skymu_ViewModels_LoginViewModel_get_SelectedListing_void:
    .asciz "_selectedListing"

.LN_0_m_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref:
    .asciz "_selectedListing"

.LS_1_m_Skymu_ViewModels_LoginViewModel_set_SelectedListing_ref:
    .short 83, 101, 108, 101, 99, 116, 101, 100, 76, 105, 115, 116, 105, 110, 103

.LN_0_m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLogin_void:
    .asciz "<PendingAutoLogin>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLogin_ref:
    .asciz "<PendingAutoLogin>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_get_PendingAutoLoginListing_void:
    .asciz "<PendingAutoLoginListing>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_set_PendingAutoLoginListing_ref:
    .asciz "<PendingAutoLoginListing>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_get_SavedCredentials_void:
    .asciz "<SavedCredentials>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_set_SavedCredentials_ref:
    .asciz "<SavedCredentials>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_get_ForcedLogin_void:
    .asciz "<ForcedLogin>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_set_ForcedLogin_ref:
    .asciz "<ForcedLogin>k__BackingField"

.LN_0_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref:
    .asciz "_selectedListing"

.LN_1_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref:
    .asciz "PluginList"

.LN_2_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref:
    .asciz "Plugin"

.LN_3_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref:
    .asciz "Plugin"

.LN_4_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref:
    .asciz "CallPlugin"

.LN_5_m_Skymu_ViewModels_LoginViewModel_HandleProtocolSelected_ref:
    .asciz "PluginSelectionUpdated"

.LN_0_m_Skymu_ViewModels_LoginViewModel_ClearPendingAutoLogin_void:
    .asciz "_forcedLoginPending"

.LN_0_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9__44_0"

.LN_1_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9"

.LN_2_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "bool>"

.LN_3_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9__44_0"

.LN_4_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9__44_1"

.LN_5_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9"

.LN_6_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "bool>"

.LN_7_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9__44_1"

.LN_8_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9__44_2"

.LN_9_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9"

.LN_10_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "bool>"

.LN_11_m_Skymu_ViewModels_LoginViewModel_GetPreferredDefaultListing_void:
    .asciz "<>9__44_2"

.LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref:
    .asciz "username"

.LN_3_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref:
    .asciz "password"

.LN_4_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref:
    .asciz "<>1__state"

.LN_5_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref:
    .asciz "<>t__builder"

.LN_6_m_Skymu_ViewModels_LoginViewModel_Login_ref_ref:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_LoginViewModel_Handle2FA_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_LoginViewModel_InitiateMain_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void:
    .asciz "<>t__builder"

.LN_1_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void:
    .asciz "<>4__this"

.LN_2_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void:
    .asciz "<>1__state"

.LN_3_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void:
    .asciz "<>t__builder"

.LN_4_m_Skymu_ViewModels_LoginViewModel_TryAutoLogin_b_45_0_void:
    .asciz "<>t__builder"

.LN_0_m_Skymu_ViewModels_LoginViewModel_Handle2FA_b_47_0_ref_ref:
    .asciz "AnimationToggleRequested"

.LSTUB_m_Skymu_ViewModels_LoginViewModel_Handle2FA_d_47_MoveNext_void:
    .asciz "Skymu.ViewModels.LoginViewModel/<Handle2FA>d__47::MoveNext  [call with 7 stack arguments]"

.LSTUB_m_Skymu_ViewModels_LoginViewModel_ctor_gen:
    .asciz "Skymu.ViewModels.LoginViewModel::.ctor  [constructor with 17 arguments (limit 5)]"

.LSTUB_m_Skymu_ViewModels_LoginViewModel_LoadPlugins_void:
    .asciz "Skymu.ViewModels.LoginViewModel::LoadPlugins  [inconsistent stack depth at IL_0081: 1 vs 0]"

.LSTUB_m_Skymu_ViewModels_LoginViewModel_RunPostLogin_ref:
    .asciz "Skymu.ViewModels.LoginViewModel::RunPostLogin  [constructor with 17 arguments (limit 5)]"

    .section .note.GNU-stack,"",@progbits
