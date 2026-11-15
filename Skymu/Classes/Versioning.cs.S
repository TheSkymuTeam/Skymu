# Classes/Versioning.cs
    .text

.globl m_Skymu_Versioning_BuildInfo_get_Major__void
.type m_Skymu_Versioning_BuildInfo_get_Major__void, @function
m_Skymu_Versioning_BuildInfo_get_Major__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Major_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Major_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_get_Major_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Major_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_get_Major_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_get_Major__void, .-m_Skymu_Versioning_BuildInfo_get_Major__void

.globl m_Skymu_Versioning_BuildInfo_set_Major__i4
.type m_Skymu_Versioning_BuildInfo_set_Major__i4, @function
m_Skymu_Versioning_BuildInfo_set_Major__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Major_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Major_i4_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Major_i4_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_set_Major_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Versioning_BuildInfo_set_Major_i4_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_set_Major_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_set_Major__i4, .-m_Skymu_Versioning_BuildInfo_set_Major__i4

.globl m_Skymu_Versioning_BuildInfo_get_Minor__void
.type m_Skymu_Versioning_BuildInfo_get_Minor__void, @function
m_Skymu_Versioning_BuildInfo_get_Minor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Minor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Minor_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_get_Minor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Minor_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_get_Minor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_get_Minor__void, .-m_Skymu_Versioning_BuildInfo_get_Minor__void

.globl m_Skymu_Versioning_BuildInfo_set_Minor__i4
.type m_Skymu_Versioning_BuildInfo_set_Minor__i4, @function
m_Skymu_Versioning_BuildInfo_set_Minor__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Minor_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Minor_i4_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Minor_i4_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_set_Minor_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Versioning_BuildInfo_set_Minor_i4_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_set_Minor_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_set_Minor__i4, .-m_Skymu_Versioning_BuildInfo_set_Minor__i4

.globl m_Skymu_Versioning_BuildInfo_get_Patch__void
.type m_Skymu_Versioning_BuildInfo_get_Patch__void, @function
m_Skymu_Versioning_BuildInfo_get_Patch__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Patch_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Patch_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_get_Patch_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_Patch_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_get_Patch_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_get_Patch__void, .-m_Skymu_Versioning_BuildInfo_get_Patch__void

.globl m_Skymu_Versioning_BuildInfo_set_Patch__i4
.type m_Skymu_Versioning_BuildInfo_set_Patch__i4, @function
m_Skymu_Versioning_BuildInfo_set_Patch__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Patch_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Patch_i4_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_Patch_i4_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_set_Patch_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Versioning_BuildInfo_set_Patch_i4_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_set_Patch_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_set_Patch__i4, .-m_Skymu_Versioning_BuildInfo_set_Patch__i4

.globl m_Skymu_Versioning_BuildInfo_get_MajorName__void
.type m_Skymu_Versioning_BuildInfo_get_MajorName__void, @function
m_Skymu_Versioning_BuildInfo_get_MajorName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_MajorName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_MajorName_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_get_MajorName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_MajorName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_get_MajorName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_get_MajorName__void, .-m_Skymu_Versioning_BuildInfo_get_MajorName__void

.globl m_Skymu_Versioning_BuildInfo_set_MajorName__ref
.type m_Skymu_Versioning_BuildInfo_set_MajorName__ref, @function
m_Skymu_Versioning_BuildInfo_set_MajorName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_MajorName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_MajorName_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_MajorName_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_set_MajorName_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Versioning_BuildInfo_set_MajorName_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_set_MajorName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_set_MajorName__ref, .-m_Skymu_Versioning_BuildInfo_set_MajorName__ref

.globl m_Skymu_Versioning_BuildInfo_get_MinorName__void
.type m_Skymu_Versioning_BuildInfo_get_MinorName__void, @function
m_Skymu_Versioning_BuildInfo_get_MinorName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_MinorName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_MinorName_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_get_MinorName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_MinorName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_get_MinorName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_get_MinorName__void, .-m_Skymu_Versioning_BuildInfo_get_MinorName__void

.globl m_Skymu_Versioning_BuildInfo_set_MinorName__ref
.type m_Skymu_Versioning_BuildInfo_set_MinorName__ref, @function
m_Skymu_Versioning_BuildInfo_set_MinorName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_MinorName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_MinorName_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_MinorName_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_set_MinorName_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Versioning_BuildInfo_set_MinorName_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_set_MinorName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_set_MinorName__ref, .-m_Skymu_Versioning_BuildInfo_set_MinorName__ref

.globl m_Skymu_Versioning_BuildInfo_get_IsBeta__void
.type m_Skymu_Versioning_BuildInfo_get_IsBeta__void, @function
m_Skymu_Versioning_BuildInfo_get_IsBeta__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_IsBeta_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_IsBeta_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_get_IsBeta_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_IsBeta_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_get_IsBeta_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_get_IsBeta__void, .-m_Skymu_Versioning_BuildInfo_get_IsBeta__void

.globl m_Skymu_Versioning_BuildInfo_set_IsBeta__v
.type m_Skymu_Versioning_BuildInfo_set_IsBeta__v, @function
m_Skymu_Versioning_BuildInfo_set_IsBeta__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_IsBeta_v_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_IsBeta_v_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_IsBeta_v_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_set_IsBeta_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Versioning_BuildInfo_set_IsBeta_v_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_set_IsBeta_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_set_IsBeta__v, .-m_Skymu_Versioning_BuildInfo_set_IsBeta__v

.globl m_Skymu_Versioning_BuildInfo_get_BetaNumber__void
.type m_Skymu_Versioning_BuildInfo_get_BetaNumber__void, @function
m_Skymu_Versioning_BuildInfo_get_BetaNumber__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_BetaNumber_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_BetaNumber_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_get_BetaNumber_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_get_BetaNumber_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_get_BetaNumber_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_get_BetaNumber__void, .-m_Skymu_Versioning_BuildInfo_get_BetaNumber__void

.globl m_Skymu_Versioning_BuildInfo_set_BetaNumber__i4
.type m_Skymu_Versioning_BuildInfo_set_BetaNumber__i4, @function
m_Skymu_Versioning_BuildInfo_set_BetaNumber__i4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_BetaNumber_i4_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_BetaNumber_i4_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_set_BetaNumber_i4_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Versioning_BuildInfo_set_BetaNumber_i4(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Versioning_BuildInfo_set_BetaNumber_i4_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_set_BetaNumber_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_set_BetaNumber__i4, .-m_Skymu_Versioning_BuildInfo_set_BetaNumber__i4

.globl m_Skymu_Versioning_BuildInfo_ctor__i4_i4_i4_ref_ref_ref_ref
.type m_Skymu_Versioning_BuildInfo_ctor__i4_i4_i4_ref_ref_ref_ref, @function
m_Skymu_Versioning_BuildInfo_ctor__i4_i4_i4_ref_ref_ref_ref:
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
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0001:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0008:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_Major__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_000f:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_Minor__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0014:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0016:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_Patch__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_001e:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_MajorName__ref
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0023:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0024:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0026:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_MinorName__ref
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_002c:
    mov 16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_002e:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_IsBeta__b
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0033:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0034:
    mov 24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_0036:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_BetaNumber__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_003b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_ctor_i4_i4_i4_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_ctor__i4_i4_i4_ref_ref_ref_ref, .-m_Skymu_Versioning_BuildInfo_ctor__i4_i4_i4_ref_ref_ref_ref

.globl m_Skymu_Versioning_BuildInfo_ctor__ref_ref_ref
.type m_Skymu_Versioning_BuildInfo_ctor__ref_ref_ref, @function
m_Skymu_Versioning_BuildInfo_ctor__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0001:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0007:
    lea .LS_0_m_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_000c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0011:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0059
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0014:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0015:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_IsBeta__b
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_001a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_001b:
    lea .LS_1_m_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0020:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Contains__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0025:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0050
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0027:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0028:
    mov $58, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_002a:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_IndexOf__c
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_002f:
    mov -64(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0030:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0031:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0032:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0033:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0034:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0035:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_003a:
    mov -72(%rbp), %rdi
    call m_System_Int32_Parse__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_003f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_BetaNumber__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0044:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0045:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0046:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0047:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4_i4
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_004c:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_004e:
    jmp .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0060
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0050:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0051:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0052:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_BetaNumber__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0057:
    jmp .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0060
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0059:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_005a:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_005b:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_IsBeta__b
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0060:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0061:
    lea .LS_2_m_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0066:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_006b:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_007a
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_006d:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_006e:
    lea .LS_3_m_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0073:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0078:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0083
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_007a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_007b:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_007c:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0081:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0083:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0084:
    mov $46, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0086:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0087:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_008c:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_008d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_008e:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_008f:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0090:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0091:
    mov -72(%rbp), %rdi
    call m_System_Int32_Parse__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_0096:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_Major__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_009b:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_009c:
    mov -64(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_009d:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_009e:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_009f:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00b1
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00a1:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00a2:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00a3:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00a4:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00a5:
    mov -88(%rbp), %rdi
    call m_System_Int32_Parse__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00aa:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_Minor__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00af:
    jmp .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00b8
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00b1:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00b2:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00b3:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_Minor__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00b8:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00b9:
    mov -80(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00ba:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00bb:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00bc:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00ce
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00be:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00bf:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00c0:
    mov $2, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00c1:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00c2:
    mov -104(%rbp), %rdi
    call m_System_Int32_Parse__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00c7:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_Patch__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00cc:
    jmp .Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00d5
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00ce:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00cf:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00d0:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_Patch__i4
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00d5:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00d6:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00d7:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_MajorName__ref
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00dc:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00dd:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00de:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_set_MinorName__ref
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_00e3:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_ctor__ref_ref_ref, .-m_Skymu_Versioning_BuildInfo_ctor__ref_ref_ref

.globl m_Skymu_Versioning_BuildInfo_GetVersionString__ref
.type m_Skymu_Versioning_BuildInfo_GetVersionString__ref, @function
m_Skymu_Versioning_BuildInfo_GetVersionString__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0000:
    lea .LN_0_m_Skymu_Versioning_BuildInfo_GetVersionString_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0005:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0006:
    lea .LN_1_m_Skymu_Versioning_BuildInfo_GetVersionString_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_000b:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_000c:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_000d:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_004a
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_000f:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0010:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_IsBeta__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0015:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_003e
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0017:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0018:
    lea .LS_2_m_Skymu_Versioning_BuildInfo_GetVersionString_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_001d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0022:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0023:
    lea .LS_3_m_Skymu_Versioning_BuildInfo_GetVersionString_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0028:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0029:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_BetaNumber__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_002e:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_002f:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0031:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0036:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_003b:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_003c:
    jmp .Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_004a
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_003e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_003f:
    lea .LS_4_m_Skymu_Versioning_BuildInfo_GetVersionString_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0044:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0049:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_004a:
    mov $7, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_004b:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0050:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0051:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0052:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0053:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0054:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0055:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0056:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0057:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Major__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_005c:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_005d:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_005f:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0064:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0065:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0066:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0067:
    lea .LS_5_m_Skymu_Versioning_BuildInfo_GetVersionString_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_006c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_006d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_006e:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_006f:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0070:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Minor__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0075:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0076:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0078:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_007d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_007e:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_007f:
    mov $4, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0080:
    lea .LS_6_m_Skymu_Versioning_BuildInfo_GetVersionString_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0085:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0086:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0087:
    mov $5, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0088:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0089:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Patch__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_008e:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_008f:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0091:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0096:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0097:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0098:
    mov $6, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_0099:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_009a:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_009b:
    mov -48(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -48(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_00a0:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_GetVersionString_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_GetVersionString__ref, .-m_Skymu_Versioning_BuildInfo_GetVersionString__ref

.globl m_Skymu_Versioning_BuildInfo_GetCodeName__void
.type m_Skymu_Versioning_BuildInfo_GetCodeName__void, @function
m_Skymu_Versioning_BuildInfo_GetCodeName__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetCodeName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetCodeName_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_MajorName__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetCodeName_void_0006:
    lea .LS_0_m_Skymu_Versioning_BuildInfo_GetCodeName_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetCodeName_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetCodeName_void_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_MinorName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetCodeName_void_0011:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_GetCodeName_void_0016:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_GetCodeName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_GetCodeName__void, .-m_Skymu_Versioning_BuildInfo_GetCodeName__void

.globl m_Skymu_Versioning_BuildInfo_IsNewerThan__ref
.type m_Skymu_Versioning_BuildInfo_IsNewerThan__ref, @function
m_Skymu_Versioning_BuildInfo_IsNewerThan__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0005
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0003:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0004:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Major__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_000b:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_000c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Major__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0011:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0022
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0014:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Major__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0019:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_001a:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Major__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_001f:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    setg %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0021:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0022:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0023:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Minor__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0028:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0029:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Minor__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_002e:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_003f
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0030:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Minor__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0036:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0037:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Minor__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_003c:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    setg %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_003e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_003f:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0040:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Patch__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0045:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0046:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Patch__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_004b:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_005c
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_004d:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_004e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Patch__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0053:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0054:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_Patch__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0059:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    setg %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_005b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_005c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_005d:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_IsBeta__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0062:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0063:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_IsBeta__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0068:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0074
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_006a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_006b:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_IsBeta__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0070:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0071:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0073:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0074:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0075:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_IsBeta__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_007a:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_008b
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_007c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_007d:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_BetaNumber__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0082:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0083:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_get_BetaNumber__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_0088:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    setg %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_008a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_008b:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_008c:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_BuildInfo_IsNewerThan_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_BuildInfo_IsNewerThan__ref, .-m_Skymu_Versioning_BuildInfo_IsNewerThan__ref

.globl m_Skymu_Versioning_VersionTools_Validate__ref
.type m_Skymu_Versioning_VersionTools_Validate__ref, @function
m_Skymu_Versioning_VersionTools_Validate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0001:
    mov -56(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0006:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_VersionTools_Validate_ref_000a
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0008:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0009:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_VersionTools_Validate_ref_000a:
    lea .LN_0_m_Skymu_Versioning_VersionTools_Validate_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_000f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0010:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Regex_Match__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0015:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0017:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Group_get_Success__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_001c:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Versioning_VersionTools_Validate_ref_0020
.Lm_Skymu_Versioning_VersionTools_Validate_ref_001e:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_001f:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0020:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0021:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Match_get_Groups__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0026:
    lea .LS_1_m_Skymu_Versioning_VersionTools_Validate_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_002b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_GroupCollection_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0030:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Group_get_Success__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0035:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_VersionTools_Validate_ref_005a
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0037:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0038:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Match_get_Groups__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_003d:
    lea .LS_2_m_Skymu_Versioning_VersionTools_Validate_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0042:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_GroupCollection_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0047:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Capture_get_Value__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_004c:
    lea .LS_3_m_Skymu_Versioning_VersionTools_Validate_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0051:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_op_Inequality__ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0056:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_VersionTools_Validate_ref_005a
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0058:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0059:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_VersionTools_Validate_ref_005a:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_005b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Match_get_Groups__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0060:
    lea .LS_4_m_Skymu_Versioning_VersionTools_Validate_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0065:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_GroupCollection_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_006a:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Capture_get_Value__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_006f:
    mov $46, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0071:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0072:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0077:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0078:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0079:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_007a:
    jmp .Lm_Skymu_Versioning_VersionTools_Validate_ref_0094
.Lm_Skymu_Versioning_VersionTools_Validate_ref_007c:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_007d:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_007e:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_007f:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0080:
    call m_System_Globalization_CultureInfo_get_InvariantCulture__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0085:
    lea -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0087:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_Int32_TryParse__ref_v_ref_v
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_008c:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Versioning_VersionTools_Validate_ref_0090
.Lm_Skymu_Versioning_VersionTools_Validate_ref_008e:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_008f:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0090:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0091:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0092:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0093:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0094:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0095:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0096:
    mov -64(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0097:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_0098:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Versioning_VersionTools_Validate_ref_007c
.Lm_Skymu_Versioning_VersionTools_Validate_ref_009a:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_009b:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Match_get_Groups__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00a0:
    lea .LS_5_m_Skymu_Versioning_VersionTools_Validate_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00a5:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_GroupCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00aa:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Group_get_Success__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00af:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Versioning_VersionTools_Validate_ref_00d7
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00b1:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00b2:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Match_get_Groups__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00b7:
    lea .LS_6_m_Skymu_Versioning_VersionTools_Validate_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00bc:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_GroupCollection_get_Item__ref
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00c1:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_RegularExpressions_Capture_get_Value__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00c6:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00c7:
    call m_System_Globalization_CultureInfo_get_InvariantCulture__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00cc:
    lea -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00ce:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_Int32_TryParse__ref_v_ref_v
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00d3:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Versioning_VersionTools_Validate_ref_00d7
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00d5:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00d6:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00d7:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Versioning_VersionTools_Validate_ref_00d8:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_VersionTools_Validate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_VersionTools_Validate__ref, .-m_Skymu_Versioning_VersionTools_Validate__ref

.globl m_Skymu_Versioning_VersionTools_cctor__void
.type m_Skymu_Versioning_VersionTools_cctor__void, @function
m_Skymu_Versioning_VersionTools_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Versioning_VersionTools_cctor_void_0000:
    lea .LS_0_m_Skymu_Versioning_VersionTools_cctor_void(%rip), %rdi
    mov $72, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Versioning_VersionTools_cctor_void_0005:
    mov $8, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Versioning_VersionTools_cctor_void_0006:
    lea .LN_1_m_Skymu_Versioning_VersionTools_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rdx
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Text_RegularExpressions_Regex_ctor__ref_v
    mov %r12, -16(%rbp)
.Lm_Skymu_Versioning_VersionTools_cctor_void_000b:
    lea .LN_2_m_Skymu_Versioning_VersionTools_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Versioning_VersionTools_cctor_void_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Versioning_VersionTools_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Versioning_VersionTools_cctor__void, .-m_Skymu_Versioning_VersionTools_cctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Versioning_BuildInfo_get_Major_void:
    .asciz "<Major>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_set_Major_i4:
    .asciz "<Major>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_get_Minor_void:
    .asciz "<Minor>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_set_Minor_i4:
    .asciz "<Minor>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_get_Patch_void:
    .asciz "<Patch>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_set_Patch_i4:
    .asciz "<Patch>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_get_MajorName_void:
    .asciz "<MajorName>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_set_MajorName_ref:
    .asciz "<MajorName>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_get_MinorName_void:
    .asciz "<MinorName>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_set_MinorName_ref:
    .asciz "<MinorName>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_get_IsBeta_void:
    .asciz "<IsBeta>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_set_IsBeta_v:
    .asciz "<IsBeta>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_get_BetaNumber_void:
    .asciz "<BetaNumber>k__BackingField"

.LN_0_m_Skymu_Versioning_BuildInfo_set_BetaNumber_i4:
    .asciz "<BetaNumber>k__BackingField"

.LS_0_m_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref:
    .short 98

.LS_1_m_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref:
    .short 58

.LS_2_m_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref:
    .short 98

.LS_3_m_Skymu_Versioning_BuildInfo_ctor_ref_ref_ref:
    .short 118

.LN_0_m_Skymu_Versioning_BuildInfo_GetVersionString_ref:
    .asciz "Empty"

.LN_1_m_Skymu_Versioning_BuildInfo_GetVersionString_ref:
    .asciz "Empty"

.LS_2_m_Skymu_Versioning_BuildInfo_GetVersionString_ref:
    .short 98

.LS_3_m_Skymu_Versioning_BuildInfo_GetVersionString_ref:
    .short 58

.LS_4_m_Skymu_Versioning_BuildInfo_GetVersionString_ref:
    .short 118

.LS_5_m_Skymu_Versioning_BuildInfo_GetVersionString_ref:
    .short 46

.LS_6_m_Skymu_Versioning_BuildInfo_GetVersionString_ref:
    .short 46

.LS_0_m_Skymu_Versioning_BuildInfo_GetCodeName_void:
    .short 32

.LN_0_m_Skymu_Versioning_VersionTools_Validate_ref:
    .asciz "ValidBuildPattern"

.LS_1_m_Skymu_Versioning_VersionTools_Validate_ref:
    .short 98, 101, 116, 97

.LS_2_m_Skymu_Versioning_VersionTools_Validate_ref:
    .short 112, 114, 101, 102, 105, 120

.LS_3_m_Skymu_Versioning_VersionTools_Validate_ref:
    .short 98

.LS_4_m_Skymu_Versioning_VersionTools_Validate_ref:
    .short 110, 117, 109, 115

.LS_5_m_Skymu_Versioning_VersionTools_Validate_ref:
    .short 98, 101, 116, 97

.LS_6_m_Skymu_Versioning_VersionTools_Validate_ref:
    .short 98, 101, 116, 97

.LS_0_m_Skymu_Versioning_VersionTools_cctor_void:
    .short 94, 40, 63, 60, 112, 114, 101, 102, 105, 120, 62, 91, 118, 98, 93, 63, 41, 40, 63, 60, 110, 117, 109, 115, 62, 91, 48, 45, 57, 93, 43, 40, 63, 58, 92, 46, 91, 48, 45, 57, 93, 43, 41, 123, 48, 44, 50, 125, 41, 40, 63, 58, 58, 40, 63, 60, 98, 101, 116, 97, 62, 91, 48, 45, 57, 93, 43, 41, 41, 63, 92, 122

.LN_1_m_Skymu_Versioning_VersionTools_cctor_void:
    .asciz "System.Text.RegularExpressions.Regex"

.LN_2_m_Skymu_Versioning_VersionTools_cctor_void:
    .asciz "ValidBuildPattern"

    .section .note.GNU-stack,"",@progbits
