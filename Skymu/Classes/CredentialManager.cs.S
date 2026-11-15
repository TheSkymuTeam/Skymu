# Classes/CredentialManager.cs
    .text

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor__void
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor__void, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor__void, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor__void

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0__ref
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0__ref, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0008:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_000d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_000e:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0014
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0010:
    mov -40(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0011:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0012:
    jmp .Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0019
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0014:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_0019:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0__ref, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0__ref

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor__void
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor__void, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor__void, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor__void

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0__ref
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0__ref, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0008:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_000d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_000e:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0014
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0010:
    mov -40(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0011:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0012:
    jmp .Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0019
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0014:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_0019:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0__ref, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0__ref

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor__void
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor__void, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor__void, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor__void

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0__ref
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0__ref, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_0001:
    lea .LS_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_0006:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_000b:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_0010:
    mov -32(%rbp), %rdi
    call m_System_Xml_Linq_XElement_op_Explicit__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_0015:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_0016:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_001b:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_0020:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0__ref, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0__ref

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor__void
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor__void, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor__void, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor__void

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0__ref
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0__ref, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0007:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_Plugin__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_000d:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0012:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0017:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0018:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_001e
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_001a:
    mov -40(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_001b:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_001c:
    jmp .Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0023
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_001e:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0023:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_0028:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0__ref, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0__ref

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor__void
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor__void, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor__void, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor__void

.globl m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0__ref
.type m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0__ref, @function
m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0008:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_000d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_000e:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0014
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0010:
    mov -40(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0011:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0012:
    jmp .Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0019
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0014:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_0019:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0__ref, .-m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0__ref

.globl m_Skymu_Credentials_CredentialManager_ReadFile__void
.type m_Skymu_Credentials_CredentialManager_ReadFile__void, @function
m_Skymu_Credentials_CredentialManager_ReadFile__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0000:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_ReadFile_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0005:
    mov -24(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_000a:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_ReadFile_void_002a
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_000c:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_000d:
    mov -24(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0012:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0013:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0014:
    lea .LS_1_m_Skymu_Credentials_CredentialManager_ReadFile_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0019:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_001e:
    lea .LN_2_m_Skymu_Credentials_CredentialManager_ReadFile_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0023:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0024:
    lea .LN_3_m_Skymu_Credentials_CredentialManager_ReadFile_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XDocument_ctor__arr
    mov %r12, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0029:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_002a:
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_002b:
    lea .LN_4_m_Skymu_Credentials_CredentialManager_ReadFile_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0030:
    mov -24(%rbp), %rdi
    call m_System_Xml_Linq_XDocument_Load__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0035:
    mov -24(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0036:
    jmp .Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0059
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_005a:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_ReadFile_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_ReadFile__void, .-m_Skymu_Credentials_CredentialManager_ReadFile__void

.globl m_Skymu_Credentials_CredentialManager_WriteFile__ref
.type m_Skymu_Credentials_CredentialManager_WriteFile__ref, @function
m_Skymu_Credentials_CredentialManager_WriteFile__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_0000:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_WriteFile_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_0005:
    mov -24(%rbp), %rdi
    call m_System_IO_Path_GetDirectoryName__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_000a:
    mov -24(%rbp), %rdi
    call m_System_IO_Directory_CreateDirectory__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_000f:
    mov -24(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_0011:
    lea .LN_1_m_Skymu_Credentials_CredentialManager_WriteFile_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_0016:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_Save__ref
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_WriteFile_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_WriteFile__ref, .-m_Skymu_Credentials_CredentialManager_WriteFile__ref

.globl m_Skymu_Credentials_CredentialManager_ToElement__ref
.type m_Skymu_Credentials_CredentialManager_ToElement__ref, @function
m_Skymu_Credentials_CredentialManager_ToElement__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0000:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0001:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0002:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0003:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0008:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0027
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_000a:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_000f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0010:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0015:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Encoding_GetBytes__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_001a:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_001b:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_001c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Security_Cryptography_ProtectedData_Protect__arr_arr_v
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0021:
    mov -48(%rbp), %rdi
    call m_System_Convert_ToBase64String__arr
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0026:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0027:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0028:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_002d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_002e:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0034
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0030:
    mov -40(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0031:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0032:
    jmp .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0039
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0034:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0039:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_003e
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_003b:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_003c:
    jmp .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_004e
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_003e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_003f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0044:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Avatar__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0049:
    mov -48(%rbp), %rdi
    call m_System_Convert_ToBase64String__arr
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_004e:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_004f:
    lea .LS_0_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0054:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0059:
    mov $8, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_005a:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_005f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0060:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0061:
    lea .LS_1_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0066:
    mov -72(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_006b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_006c:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_Plugin__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0071:
    lea .LN_2_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0076:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0077:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0078:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0079:
    lea .LS_3_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_007e:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0083:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0084:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0089:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_008a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0090
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_008c:
    mov -64(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_008d:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_008e:
    jmp .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0095
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0090:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0095:
    lea .LN_4_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_009a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_009b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_009c:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_009d:
    lea .LS_5_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00a2:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00a7:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00a8:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00ad:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00ae:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00b4
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00b0:
    mov -64(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00b1:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00b2:
    jmp .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00b9
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00b4:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00b9:
    lea .LN_6_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00be:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00bf:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00c0:
    mov $3, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00c1:
    lea .LS_7_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00c6:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00cb:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00cc:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00d1:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00d2:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00d8
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00d4:
    mov -64(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00d5:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00d6:
    jmp .Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00dd
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00d8:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_DisplayName__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00dd:
    lea .LN_8_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00e2:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00e3:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00e4:
    mov $4, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00e5:
    lea .LS_9_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00ea:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00ef:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00f0:
    lea .LN_10_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00f5:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00f6:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00f7:
    mov $5, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00f8:
    lea .LS_11_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_00fd:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0102:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0103:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_AuthenticationType__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0108:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0109:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_010b:
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0111:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0116:
    lea .LN_12_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_011b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_011c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_011d:
    mov $6, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_011e:
    lea .LS_13_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0123:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0128:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0129:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_AutoLogin__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_012e:
    mov -72(%rbp), %rdi
    lea .LN_14_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0133:
    lea .LN_15_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0138:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0139:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_013a:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_013b:
    lea .LS_16_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0140:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0145:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0146:
    lea .LN_17_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_014b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_014c:
    lea .LN_18_m_Skymu_Credentials_CredentialManager_ToElement_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_arr
    mov %r12, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_0151:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_ToElement_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_ToElement__ref, .-m_Skymu_Credentials_CredentialManager_ToElement__ref

.globl m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref
.type m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref, @function
m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0001:
    lea .LS_0_m_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0006:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0010:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_XElement_op_Explicit__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0015:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0016:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_001b:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0039
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_001d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_001e:
    lea .LS_1_m_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0023:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0028:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_002d:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_XElement_op_Explicit__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0032:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0033:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0038:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_0039:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_003a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref, .-m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref

.globl m_Skymu_Credentials_CredentialManager_Save__ref
.type m_Skymu_Credentials_CredentialManager_Save__ref, @function
m_Skymu_Credentials_CredentialManager_Save__ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0000:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_Save_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_ctor__void
    mov %r12, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0005:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0008:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_Save_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_000d:
    call m_Skymu_Credentials_CredentialManager_ReadFile__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0012:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0013:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0014:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0019:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_001a:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_001b:
    mov -72(%rbp), %rdi
    lea .LN_2_m_Skymu_Credentials_CredentialManager_Save_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0020:
    mov -72(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_ToElement__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0025:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0026:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0027:
    lea .LS_3_m_Skymu_Credentials_CredentialManager_Save_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_002c:
    mov -80(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0031:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Elements__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0036:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0037:
    lea m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0__ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_003d:
    lea .LN_4_m_Skymu_Credentials_CredentialManager_Save_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0042:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_Where_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen_gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0047:
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_004c:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_004e:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0050:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Count__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0055:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0056:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_Credentials_CredentialManager_Save_ref_00cf
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0058:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0059:
    lea .LS_5_m_Skymu_Credentials_CredentialManager_Save_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_005e:
    mov -80(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0063:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0065:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0066:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Item__i4
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_006b:
    lea .LS_6_m_Skymu_Credentials_CredentialManager_Save_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0070:
    mov -96(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0075:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_007a:
    mov -88(%rbp), %rdi
    call m_System_Xml_Linq_XElement_op_Explicit__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_007f:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0080:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_Save_ref_0088
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0082:
    mov -80(%rbp), %rax
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0083:
    lea .LS_7_m_Skymu_Credentials_CredentialManager_Save_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0088:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_SetElementValue__ref_ref
.Lm_Skymu_Credentials_CredentialManager_Save_ref_008d:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_008f:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0090:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Item__i4
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0095:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_0096:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XNode_ReplaceWith__ref
.Lm_Skymu_Credentials_CredentialManager_Save_ref_009b:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_009d:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_009e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_Skip_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen_i4
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00a3:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_GetEnumerator__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00a8:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00aa:
    jmp .Lm_Skymu_Credentials_CredentialManager_Save_ref_00b8
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00ac:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00ae:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Current__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00b3:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XNode_Remove__void
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00b8:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00ba:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00bf:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_Save_ref_00ac
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00c1:
    jmp .Lm_Skymu_Credentials_CredentialManager_Save_ref_00d6
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00cf:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00d0:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00d1:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Add__ref
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00d6:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00d7:
    mov -72(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_WriteFile__ref
.Lm_Skymu_Credentials_CredentialManager_Save_ref_00dc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Save_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_Save__ref, .-m_Skymu_Credentials_CredentialManager_Save__ref

.globl m_Skymu_Credentials_CredentialManager_SetAutoLogin__ref_ref_b
.type m_Skymu_Credentials_CredentialManager_SetAutoLogin__ref_ref_b, @function
m_Skymu_Credentials_CredentialManager_SetAutoLogin__ref_ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0000:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_ctor__void
    mov %r12, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0005:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0006:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0007:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0008:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_000d:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_000f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_2_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0014:
    call m_Skymu_Credentials_CredentialManager_ReadFile__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0019:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_001a:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_001b:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0020:
    lea .LS_3_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0025:
    mov -72(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_002a:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Elements__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_002f:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0030:
    lea m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0__ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0036:
    lea .LN_4_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_003b:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0040:
    mov -64(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0041:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0042:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0045
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0044:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0045:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0046:
    lea .LS_5_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_004b:
    mov -72(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0050:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0051:
    mov -80(%rbp), %rdi
    lea .LN_6_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0056:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_SetElementValue__ref_ref
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_005b:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_005c:
    mov -64(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_WriteFile__ref
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_0061:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_SetAutoLogin__ref_ref_b, .-m_Skymu_Credentials_CredentialManager_SetAutoLogin__ref_ref_b

.globl m_Skymu_Credentials_CredentialManager_MoveUp__ref_ref
.type m_Skymu_Credentials_CredentialManager_MoveUp__ref_ref, @function
m_Skymu_Credentials_CredentialManager_MoveUp__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveUp_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveUp_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveUp_ref_ref_0002:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveUp_ref_ref_0003:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Move__ref_ref_b
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveUp_ref_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_MoveUp_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_MoveUp__ref_ref, .-m_Skymu_Credentials_CredentialManager_MoveUp__ref_ref

.globl m_Skymu_Credentials_CredentialManager_MoveDown__ref_ref
.type m_Skymu_Credentials_CredentialManager_MoveDown__ref_ref, @function
m_Skymu_Credentials_CredentialManager_MoveDown__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveDown_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveDown_ref_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveDown_ref_ref_0002:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveDown_ref_ref_0003:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Move__ref_ref_b
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_MoveDown_ref_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_MoveDown_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_MoveDown__ref_ref, .-m_Skymu_Credentials_CredentialManager_MoveDown__ref_ref

.globl m_Skymu_Credentials_CredentialManager_Move__ref_ref_b
.type m_Skymu_Credentials_CredentialManager_Move__ref_ref_b, @function
m_Skymu_Credentials_CredentialManager_Move__ref_ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0000:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_ctor__void
    mov %r12, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0005:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0006:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0007:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0008:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_000d:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_000f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_2_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0014:
    call m_Skymu_Credentials_CredentialManager_ReadFile__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0019:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_001a:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_001b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0020:
    lea .LS_3_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0025:
    mov -80(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_002a:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Elements__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_002f:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0030:
    lea m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0__ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0036:
    lea .LN_4_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_003b:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen_gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0040:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0041:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0042:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0046
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0044:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0045:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0046:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0047:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0060
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0049:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_004a:
    lea .LS_5_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_004f:
    mov -80(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0054:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XNode_ElementsAfterSelf__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0059:
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_005e:
    jmp .Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0075
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0060:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0061:
    lea .LS_6_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0066:
    mov -80(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_006b:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XNode_ElementsBeforeSelf__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0070:
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_LastOrDefault_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0075:
    mov -72(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0076:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0077:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_007b
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0079:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_007a:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_007b:
    mov -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_007c:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XNode_Remove__void
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0081:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0082:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_008d
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0084:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0085:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0086:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XNode_AddBeforeSelf__ref
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_008b:
    jmp .Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0094
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_008d:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_008e:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_008f:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XNode_AddAfterSelf__ref
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0094:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_0095:
    mov -72(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_WriteFile__ref
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_009a:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_009b:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Move_ref_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_Move__ref_ref_b, .-m_Skymu_Credentials_CredentialManager_Move__ref_ref_b

.globl m_Skymu_Credentials_CredentialManager_Get__ref_ref
.type m_Skymu_Credentials_CredentialManager_Get__ref_ref, @function
m_Skymu_Credentials_CredentialManager_Get__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0000:
    call m_Skymu_Credentials_CredentialManager_ReadFile__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0005:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_000a:
    lea .LS_0_m_Skymu_Credentials_CredentialManager_Get_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_000f:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0014:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Elements__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0019:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_GetEnumerator__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_001e:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_001f:
    jmp .Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0046
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0021:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0022:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Current__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0027:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0028:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0029:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_002a:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_002b:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0030
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_002d:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_002e:
    jmp .Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0036
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0030:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0031:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0036:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_Matches__ref_ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_003b:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0046
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_003d:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_003e:
    mov -56(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_FromElement__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0043:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0044:
    jmp .Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_005c
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0046:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0047:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_004c:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_0021
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_004e:
    jmp .Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_005a
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_005a:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_005b:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_005c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_005d:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Get_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_Get__ref_ref, .-m_Skymu_Credentials_CredentialManager_Get__ref_ref

.globl m_Skymu_Credentials_CredentialManager_GetFirst__ref
.type m_Skymu_Credentials_CredentialManager_GetFirst__ref, @function
m_Skymu_Credentials_CredentialManager_GetFirst__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0000:
    call m_Skymu_Credentials_CredentialManager_ReadFile__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0005:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_000a:
    lea .LS_0_m_Skymu_Credentials_CredentialManager_GetFirst_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_000f:
    mov -56(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0014:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Elements__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0019:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_GetEnumerator__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_001e:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_001f:
    jmp .Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_004e
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0021:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0022:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Current__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0027:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0028:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0029:
    lea .LS_1_m_Skymu_Credentials_CredentialManager_GetFirst_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_002e:
    mov -56(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0033:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0038:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XElement_op_Explicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_003d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_003e:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0043:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_004e
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0045:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0046:
    mov -48(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_FromElement__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_004b:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_004c:
    jmp .Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0064
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_004e:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_004f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0054:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0021
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0056:
    jmp .Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0062
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0062:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0063:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0064:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_0065:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_GetFirst_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_GetFirst__ref, .-m_Skymu_Credentials_CredentialManager_GetFirst__ref

.globl m_Skymu_Credentials_CredentialManager_GetAll__void
.type m_Skymu_Credentials_CredentialManager_GetAll__void, @function
m_Skymu_Credentials_CredentialManager_GetAll__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0000:
    call m_Skymu_Credentials_CredentialManager_ReadFile__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0005:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_GetAll_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_SavedCredential_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_000a:
    mov -48(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_000b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0010:
    lea .LS_1_m_Skymu_Credentials_CredentialManager_GetAll_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0015:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_001a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Elements__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_001f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_GetEnumerator__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0024:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0025:
    jmp .Lm_Skymu_Credentials_CredentialManager_GetAll_void_003a
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0027:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0028:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Current__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_002d:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_002e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_002f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0030:
    mov -48(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_FromElement__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0035:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_Add__gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_003a:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_003b:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0040:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Credentials_CredentialManager_GetAll_void_0027
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0042:
    jmp .Lm_Skymu_Credentials_CredentialManager_GetAll_void_004e
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_004e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_004f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_ToArray__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_0054:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_GetAll_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_GetAll__void, .-m_Skymu_Credentials_CredentialManager_GetAll__void

.globl m_Skymu_Credentials_CredentialManager_Purge__ref_ref
.type m_Skymu_Credentials_CredentialManager_Purge__ref_ref, @function
m_Skymu_Credentials_CredentialManager_Purge__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0000:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_Purge_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0005:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_Purge_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_000d:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Credentials_CredentialManager_Purge_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0014:
    call m_Skymu_Credentials_CredentialManager_ReadFile__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0019:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_001a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_001f:
    lea .LS_3_m_Skymu_Credentials_CredentialManager_Purge_ref_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0024:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0029:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Elements__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_002e:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_002f:
    lea m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0__ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0035:
    lea .LN_4_m_Skymu_Credentials_CredentialManager_Purge_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_003a:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Linq_Enumerable_Where_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen_gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_003f:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_Extensions_Remove_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0044:
    mov -32(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_WriteFile__ref
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_0049:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_Purge_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_Purge__ref_ref, .-m_Skymu_Credentials_CredentialManager_Purge__ref_ref

.globl m_Skymu_Credentials_CredentialManager_PurgePlugin__ref
.type m_Skymu_Credentials_CredentialManager_PurgePlugin__ref, @function
m_Skymu_Credentials_CredentialManager_PurgePlugin__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0000:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_PurgePlugin_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0005:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Credentials_CredentialManager_PurgePlugin_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_000d:
    call m_Skymu_Credentials_CredentialManager_ReadFile__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0012:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0013:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0018:
    lea .LS_2_m_Skymu_Credentials_CredentialManager_PurgePlugin_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_001d:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0022:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Elements__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0027:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0028:
    lea m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_002e:
    lea .LN_3_m_Skymu_Credentials_CredentialManager_PurgePlugin_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0033:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_Where_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen_gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0038:
    mov -32(%rbp), %rdi
    call m_System_Xml_Linq_Extensions_Remove_class_System_Xml_XDocument_System_Xml_Linq_XElement__gen
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_003d:
    mov -24(%rbp), %rdi
    call m_Skymu_Credentials_CredentialManager_WriteFile__ref
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_0042:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_PurgePlugin_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_PurgePlugin__ref, .-m_Skymu_Credentials_CredentialManager_PurgePlugin__ref

.globl m_Skymu_Credentials_CredentialManager_PurgeAll__void
.type m_Skymu_Credentials_CredentialManager_PurgeAll__void, @function
m_Skymu_Credentials_CredentialManager_PurgeAll__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgeAll_void_0000:
    lea .LN_0_m_Skymu_Credentials_CredentialManager_PurgeAll_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgeAll_void_0005:
    mov -16(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgeAll_void_000a:
    mov -16(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Credentials_CredentialManager_PurgeAll_void_0016
.Lm_Skymu_Credentials_CredentialManager_PurgeAll_void_000c:
    lea .LN_1_m_Skymu_Credentials_CredentialManager_PurgeAll_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_PurgeAll_void_0011:
    mov -16(%rbp), %rdi
    call m_System_IO_File_Delete__ref
.Lm_Skymu_Credentials_CredentialManager_PurgeAll_void_0016:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_PurgeAll_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_PurgeAll__void, .-m_Skymu_Credentials_CredentialManager_PurgeAll__void

.globl m_Skymu_Credentials_CredentialManager_cctor__void
.type m_Skymu_Credentials_CredentialManager_cctor__void, @function
m_Skymu_Credentials_CredentialManager_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Credentials_CredentialManager_cctor_void_0000:
    mov $26, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_cctor_void_0002:
    mov -16(%rbp), %rdi
    call m_System_Environment_GetFolderPath__v
    mov %rax, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_cctor_void_0007:
    lea .LS_0_m_Skymu_Credentials_CredentialManager_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Credentials_CredentialManager_cctor_void_000c:
    lea .LS_1_m_Skymu_Credentials_CredentialManager_cctor_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Credentials_CredentialManager_cctor_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Credentials_CredentialManager_cctor_void_0016:
    lea .LN_2_m_Skymu_Credentials_CredentialManager_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Credentials_CredentialManager_cctor_void_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Credentials_CredentialManager_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Credentials_CredentialManager_cctor__void, .-m_Skymu_Credentials_CredentialManager_cctor__void

    .globl m_Skymu_Credentials_CredentialManager_FromElement__ref
    .type m_Skymu_Credentials_CredentialManager_FromElement__ref, @function
m_Skymu_Credentials_CredentialManager_FromElement__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Credentials_CredentialManager_FromElement_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Credentials_CredentialManager_FromElement__ref, .-m_Skymu_Credentials_CredentialManager_FromElement__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref:
    .asciz "plugin"

.LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass10_0_Move_b_0_ref:
    .asciz "user"

.LN_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref:
    .asciz "plugin"

.LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass14_0_Purge_b_0_ref:
    .asciz "user"

.LS_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref:
    .short 80, 108, 117, 103, 105, 110

.LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass15_0_PurgePlugin_b_0_ref:
    .asciz "plugin"

.LN_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref:
    .asciz "credential"

.LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass6_0_Save_b_0_ref:
    .asciz "credential"

.LN_0_m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref:
    .asciz "plugin"

.LN_1_m_Skymu_Credentials_CredentialManager_c_DisplayClass7_0_SetAutoLogin_b_0_ref:
    .asciz "user"

.LN_0_m_Skymu_Credentials_CredentialManager_ReadFile_void:
    .asciz "FilePath"

.LS_1_m_Skymu_Credentials_CredentialManager_ReadFile_void:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115

.LN_2_m_Skymu_Credentials_CredentialManager_ReadFile_void:
    .asciz "System.Xml.Linq.XElement"

.LN_3_m_Skymu_Credentials_CredentialManager_ReadFile_void:
    .asciz "System.Xml.Linq.XDocument"

.LN_4_m_Skymu_Credentials_CredentialManager_ReadFile_void:
    .asciz "FilePath"

.LN_0_m_Skymu_Credentials_CredentialManager_WriteFile_ref:
    .asciz "FilePath"

.LN_1_m_Skymu_Credentials_CredentialManager_WriteFile_ref:
    .asciz "FilePath"

.LS_0_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LS_1_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 80, 108, 117, 103, 105, 110

.LN_2_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LS_3_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 73, 100, 101, 110, 116, 105, 102, 105, 101, 114

.LN_4_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LS_5_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 85, 115, 101, 114, 110, 97, 109, 101

.LN_6_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LS_7_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 68, 105, 115, 112, 108, 97, 121, 78, 97, 109, 101

.LN_8_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LS_9_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 80, 97, 115, 115, 119, 111, 114, 100, 79, 114, 84, 111, 107, 101, 110

.LN_10_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LS_11_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 65, 117, 116, 104, 101, 110, 116, 105, 99, 97, 116, 105, 111, 110, 84, 121, 112, 101

.LN_12_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LS_13_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 65, 117, 116, 111, 76, 111, 103, 105, 110

.LN_14_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Boolean"

.LN_15_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LS_16_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .short 65, 118, 97, 116, 97, 114

.LN_17_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LN_18_m_Skymu_Credentials_CredentialManager_ToElement_ref:
    .asciz "System.Xml.Linq.XElement"

.LS_0_m_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref:
    .short 80, 108, 117, 103, 105, 110

.LS_1_m_Skymu_Credentials_CredentialManager_Matches_ref_ref_ref:
    .short 73, 100, 101, 110, 116, 105, 102, 105, 101, 114

.LN_0_m_Skymu_Credentials_CredentialManager_Save_ref:
    .asciz "Skymu.Credentials.CredentialManager/'<>c__DisplayClass6_0'"

.LN_1_m_Skymu_Credentials_CredentialManager_Save_ref:
    .asciz "credential"

.LN_2_m_Skymu_Credentials_CredentialManager_Save_ref:
    .asciz "credential"

.LS_3_m_Skymu_Credentials_CredentialManager_Save_ref:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LN_4_m_Skymu_Credentials_CredentialManager_Save_ref:
    .asciz "bool>"

.LS_5_m_Skymu_Credentials_CredentialManager_Save_ref:
    .short 65, 117, 116, 111, 76, 111, 103, 105, 110

.LS_6_m_Skymu_Credentials_CredentialManager_Save_ref:
    .short 65, 117, 116, 111, 76, 111, 103, 105, 110

.LS_7_m_Skymu_Credentials_CredentialManager_Save_ref:
    .short 116, 114, 117, 101

.LN_0_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b:
    .asciz "Skymu.Credentials.CredentialManager/'<>c__DisplayClass7_0'"

.LN_1_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b:
    .asciz "plugin"

.LN_2_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b:
    .asciz "user"

.LS_3_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LN_4_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b:
    .asciz "bool>"

.LS_5_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b:
    .short 65, 117, 116, 111, 76, 111, 103, 105, 110

.LN_6_m_Skymu_Credentials_CredentialManager_SetAutoLogin_ref_ref_b:
    .asciz "System.Boolean"

.LN_0_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b:
    .asciz "Skymu.Credentials.CredentialManager/'<>c__DisplayClass10_0'"

.LN_1_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b:
    .asciz "plugin"

.LN_2_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b:
    .asciz "user"

.LS_3_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LN_4_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b:
    .asciz "bool>"

.LS_5_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LS_6_m_Skymu_Credentials_CredentialManager_Move_ref_ref_b:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LS_0_m_Skymu_Credentials_CredentialManager_Get_ref_ref:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LS_0_m_Skymu_Credentials_CredentialManager_GetFirst_ref:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LS_1_m_Skymu_Credentials_CredentialManager_GetFirst_ref:
    .short 80, 108, 117, 103, 105, 110

.LN_0_m_Skymu_Credentials_CredentialManager_GetAll_void:
    .asciz "Yggdrasil.Models.SavedCredential>"

.LS_1_m_Skymu_Credentials_CredentialManager_GetAll_void:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LN_0_m_Skymu_Credentials_CredentialManager_Purge_ref_ref:
    .asciz "Skymu.Credentials.CredentialManager/'<>c__DisplayClass14_0'"

.LN_1_m_Skymu_Credentials_CredentialManager_Purge_ref_ref:
    .asciz "plugin"

.LN_2_m_Skymu_Credentials_CredentialManager_Purge_ref_ref:
    .asciz "user"

.LS_3_m_Skymu_Credentials_CredentialManager_Purge_ref_ref:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LN_4_m_Skymu_Credentials_CredentialManager_Purge_ref_ref:
    .asciz "bool>"

.LN_0_m_Skymu_Credentials_CredentialManager_PurgePlugin_ref:
    .asciz "Skymu.Credentials.CredentialManager/'<>c__DisplayClass15_0'"

.LN_1_m_Skymu_Credentials_CredentialManager_PurgePlugin_ref:
    .asciz "plugin"

.LS_2_m_Skymu_Credentials_CredentialManager_PurgePlugin_ref:
    .short 67, 114, 101, 100, 101, 110, 116, 105, 97, 108

.LN_3_m_Skymu_Credentials_CredentialManager_PurgePlugin_ref:
    .asciz "bool>"

.LN_0_m_Skymu_Credentials_CredentialManager_PurgeAll_void:
    .asciz "FilePath"

.LN_1_m_Skymu_Credentials_CredentialManager_PurgeAll_void:
    .asciz "FilePath"

.LS_0_m_Skymu_Credentials_CredentialManager_cctor_void:
    .short 83, 107, 121, 109, 117

.LS_1_m_Skymu_Credentials_CredentialManager_cctor_void:
    .short 99, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115, 46, 120, 109, 108

.LN_2_m_Skymu_Credentials_CredentialManager_cctor_void:
    .asciz "FilePath"

.LSTUB_m_Skymu_Credentials_CredentialManager_FromElement_ref:
    .asciz "Skymu.Credentials.CredentialManager::FromElement  [constructor with 6 arguments (limit 5)]"

    .section .note.GNU-stack,"",@progbits
