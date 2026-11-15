    .text

.globl m_password_j_TPar_get_type__void
.type m_password_j_TPar_get_type__void, @function
m_password_j_TPar_get_type__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_password_j_TPar_get_type_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_get_type_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_password_j_TPar_get_type_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_get_type_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_get_type_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_password_j_TPar_get_type__void, .-m_password_j_TPar_get_type__void
.globl m_password_j_TPar_get_identifier__void
.type m_password_j_TPar_get_identifier__void, @function
m_password_j_TPar_get_identifier__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_password_j_TPar_get_identifier_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_get_identifier_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_password_j_TPar_get_identifier_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_get_identifier_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_get_identifier_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_password_j_TPar_get_identifier__void, .-m_password_j_TPar_get_identifier__void
.globl m_password_j_TPar_get_password__void
.type m_password_j_TPar_get_password__void, @function
m_password_j_TPar_get_password__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_password_j_TPar_get_password_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_get_password_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_password_j_TPar_get_password_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_get_password_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_get_password_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_password_j_TPar_get_password__void, .-m_password_j_TPar_get_password__void
.globl m_password_j_TPar_ctor__gen_gen_gen
.type m_password_j_TPar_ctor__gen_gen_gen, @function
m_password_j_TPar_ctor__gen_gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_password_j_TPar_ctor_gen_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_ctor_gen_gen_gen_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_password_j_TPar_ctor_gen_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_ctor_gen_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ctor_gen_gen_gen_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_password_j_TPar_ctor_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_password_j_TPar_ctor_gen_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_ctor_gen_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ctor_gen_gen_gen_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_password_j_TPar_ctor_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_password_j_TPar_ctor_gen_gen_gen_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_ctor_gen_gen_gen_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ctor_gen_gen_gen_0016:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_password_j_TPar_ctor_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_password_j_TPar_ctor_gen_gen_gen_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_ctor_gen_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_password_j_TPar_ctor__gen_gen_gen, .-m_password_j_TPar_ctor__gen_gen_gen
.globl m_password_j_TPar_Equals__ref
.type m_password_j_TPar_Equals__ref, @function
m_password_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_password_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_password_j_TPar_Equals_ref_0057
.Lm_password_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_password_j_TPar_Equals_ref_0055
.Lm_password_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_password_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_password_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_password_j_TPar_Equals_ref_0055
.Lm_password_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_identifier_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_password_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_password_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_identifier_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_password_j_TPar_Equals_ref_0055
.Lm_password_j_TPar_Equals_ref_003e:
    call m_System_Collections_Generic_EqualityComparer_1_password_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_0043:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_Equals_ref_0044:
    mov -56(%rbp), %rdi
    lea .LN_4_m_password_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_Equals_ref_0049:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_Equals_ref_004a:
    mov -64(%rbp), %rdi
    lea .LN_5_m_password_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_Equals_ref_004f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_password_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_0054:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_Equals_ref_0055:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_0056:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_Equals_ref_0057:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_Equals_ref_0058:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_password_j_TPar_Equals__ref, .-m_password_j_TPar_Equals__ref
.globl m_password_j_TPar_GetHashCode__void
.type m_password_j_TPar_GetHashCode__void, @function
m_password_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0000:
    mov $141136940, %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_password_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_identifier_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_password_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_identifier_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0033:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0038:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0039:
    call m_System_Collections_Generic_EqualityComparer_1_password_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_GetHashCode_void_003f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_password_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0044:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_password_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_GetHashCode_void_0049:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_GetHashCode_void_004a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_password_j_TPar_GetHashCode__void, .-m_password_j_TPar_GetHashCode__void
.globl m_password_j_TPar_ToString__void
.type m_password_j_TPar_ToString__void, @function
m_password_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_password_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_ToString_void_0001:
    lea .LS_0_m_password_j_TPar_ToString_void(%rip), %rdi
    mov $50, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ToString_void_0006:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_0007:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_000c:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_password_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_password_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_password_j_TPar_ToString_void_000f:
    mov -80(%rbp), %rdi
    lea .LN_1_m_password_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_password_j_TPar_ToString_void_0014:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_password_j_TPar_ToString_void_0017:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_password_j_TPar_ToString_void_0018:
    mov -80(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_password_j_TPar_ToString_void_001d:
    mov -80(%rbp), %rdi
    lea .LN_2_m_password_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_password_j_TPar_ToString_void_0022:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_password_j_TPar_ToString_void_0028
.Lm_password_j_TPar_ToString_void_0024:
    mov -72(%rbp), %rax
.Lm_password_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_password_j_TPar_ToString_void_0026:
    jmp .Lm_password_j_TPar_ToString_void_0033
.Lm_password_j_TPar_ToString_void_0028:
.Lm_password_j_TPar_ToString_void_002e:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -72(%rbp)
.Lm_password_j_TPar_ToString_void_0033:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_password_j_TPar_ToString_void_0034:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_0037:
    mov -64(%rbp), %rdi
    lea .LN_3_m_password_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_003c:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_password_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_003f:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_password_j_TPar_ToString_void_0040:
    mov -64(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_0045:
    mov -64(%rbp), %rdi
    lea .LN_4_m_password_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_004a:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_password_j_TPar_ToString_void_0050
.Lm_password_j_TPar_ToString_void_004c:
    mov -56(%rbp), %rax
.Lm_password_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ToString_void_004e:
    jmp .Lm_password_j_TPar_ToString_void_005b
.Lm_password_j_TPar_ToString_void_0050:
.Lm_password_j_TPar_ToString_void_0056:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ToString_void_005b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_password_j_TPar_ToString_void_005c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_password_j_TPar_ToString_void_005d:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ToString_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_005f:
    mov -64(%rbp), %rdi
    lea .LN_5_m_password_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_0064:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_password_j_TPar_ToString_void_0065:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_0067:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_password_j_TPar_ToString_void_0068:
    mov -64(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_006d:
    mov -64(%rbp), %rdi
    lea .LN_6_m_password_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_password_j_TPar_ToString_void_0072:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_password_j_TPar_ToString_void_0078
.Lm_password_j_TPar_ToString_void_0074:
    mov -56(%rbp), %rax
.Lm_password_j_TPar_ToString_void_0075:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ToString_void_0076:
    jmp .Lm_password_j_TPar_ToString_void_0083
.Lm_password_j_TPar_ToString_void_0078:
.Lm_password_j_TPar_ToString_void_007e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_password_j_TPar_ToString_void_0083:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_password_j_TPar_ToString_void_0084:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -24(%rbp)
.Lm_password_j_TPar_ToString_void_0089:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_password_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_password_j_TPar_ToString__void, .-m_password_j_TPar_ToString__void
.globl m_user_j_TPar_get_type__void
.type m_user_j_TPar_get_type__void, @function
m_user_j_TPar_get_type__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_user_j_TPar_get_type_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_get_type_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_user_j_TPar_get_type_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_get_type_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_user_j_TPar_get_type_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_user_j_TPar_get_type__void, .-m_user_j_TPar_get_type__void
.globl m_user_j_TPar_get_user__void
.type m_user_j_TPar_get_user__void, @function
m_user_j_TPar_get_user__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_user_j_TPar_get_user_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_get_user_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_user_j_TPar_get_user_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_get_user_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_user_j_TPar_get_user_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_user_j_TPar_get_user__void, .-m_user_j_TPar_get_user__void
.globl m_user_j_TPar_ctor__gen_gen
.type m_user_j_TPar_ctor__gen_gen, @function
m_user_j_TPar_ctor__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_user_j_TPar_ctor_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_ctor_gen_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_user_j_TPar_ctor_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_ctor_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_ctor_gen_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_user_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_user_j_TPar_ctor_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_ctor_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_ctor_gen_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_user_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_user_j_TPar_ctor_gen_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_user_j_TPar_ctor_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_user_j_TPar_ctor__gen_gen, .-m_user_j_TPar_ctor__gen_gen
.globl m_user_j_TPar_Equals__ref
.type m_user_j_TPar_Equals__ref, @function
m_user_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_user_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_user_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_user_j_TPar_Equals_ref_003f
.Lm_user_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_user_j_TPar_Equals_ref_003d
.Lm_user_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_user_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_user_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_user_j_TPar_Equals_ref_003d
.Lm_user_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_user_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_user_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_user_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_user_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_user_j_TPar_Equals_ref_003d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_Equals_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_user_j_TPar_Equals_ref_003f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_Equals_ref_0040:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_user_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_user_j_TPar_Equals__ref, .-m_user_j_TPar_Equals__ref
.globl m_user_j_TPar_GetHashCode__void
.type m_user_j_TPar_GetHashCode__void, @function
m_user_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0000:
    mov $1234796925, %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_user_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_user_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_user_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_user_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_user_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_user_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_GetHashCode_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_user_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_user_j_TPar_GetHashCode__void, .-m_user_j_TPar_GetHashCode__void
.globl m_user_j_TPar_ToString__void
.type m_user_j_TPar_ToString__void, @function
m_user_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_user_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_user_j_TPar_ToString_void_0001:
    lea .LS_0_m_user_j_TPar_ToString_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_ToString_void_0006:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_ToString_void_0007:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_ToString_void_000c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_user_j_TPar_ToString_void_000f:
    mov -72(%rbp), %rdi
    lea .LN_1_m_user_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_user_j_TPar_ToString_void_0014:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_user_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_user_j_TPar_ToString_void_0017:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_user_j_TPar_ToString_void_0018:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_user_j_TPar_ToString_void_001d:
    mov -72(%rbp), %rdi
    lea .LN_2_m_user_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_user_j_TPar_ToString_void_0022:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_user_j_TPar_ToString_void_0028
.Lm_user_j_TPar_ToString_void_0024:
    mov -64(%rbp), %rax
.Lm_user_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_ToString_void_0026:
    jmp .Lm_user_j_TPar_ToString_void_0033
.Lm_user_j_TPar_ToString_void_0028:
.Lm_user_j_TPar_ToString_void_002e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_ToString_void_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_user_j_TPar_ToString_void_0034:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_ToString_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_3_m_user_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_ToString_void_003c:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_user_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_ToString_void_003f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_user_j_TPar_ToString_void_0040:
    mov -56(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_ToString_void_0045:
    mov -56(%rbp), %rdi
    lea .LN_4_m_user_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_user_j_TPar_ToString_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_user_j_TPar_ToString_void_0050
.Lm_user_j_TPar_ToString_void_004c:
    mov -48(%rbp), %rax
.Lm_user_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_ToString_void_004e:
    jmp .Lm_user_j_TPar_ToString_void_005b
.Lm_user_j_TPar_ToString_void_0050:
.Lm_user_j_TPar_ToString_void_0056:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_user_j_TPar_ToString_void_005b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_user_j_TPar_ToString_void_005c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_user_j_TPar_ToString_void_0061:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_user_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_user_j_TPar_ToString__void, .-m_user_j_TPar_ToString__void
.globl m_email_j_TPar_get_request__void
.type m_email_j_TPar_get_request__void, @function
m_email_j_TPar_get_request__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_email_j_TPar_get_request_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_get_request_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_email_j_TPar_get_request_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_get_request_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_email_j_TPar_get_request_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_email_j_TPar_get_request__void, .-m_email_j_TPar_get_request__void
.globl m_email_j_TPar_get_email__void
.type m_email_j_TPar_get_email__void, @function
m_email_j_TPar_get_email__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_email_j_TPar_get_email_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_get_email_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_email_j_TPar_get_email_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_get_email_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_email_j_TPar_get_email_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_email_j_TPar_get_email__void, .-m_email_j_TPar_get_email__void
.globl m_email_j_TPar_ctor__gen_gen
.type m_email_j_TPar_ctor__gen_gen, @function
m_email_j_TPar_ctor__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_email_j_TPar_ctor_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_ctor_gen_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_email_j_TPar_ctor_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_ctor_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_ctor_gen_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_email_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_email_j_TPar_ctor_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_ctor_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_ctor_gen_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_email_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_email_j_TPar_ctor_gen_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_email_j_TPar_ctor_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_email_j_TPar_ctor__gen_gen, .-m_email_j_TPar_ctor__gen_gen
.globl m_email_j_TPar_Equals__ref
.type m_email_j_TPar_Equals__ref, @function
m_email_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_email_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_email_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_email_j_TPar_Equals_ref_003f
.Lm_email_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_email_j_TPar_Equals_ref_003d
.Lm_email_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_request_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_email_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_email_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_request_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_email_j_TPar_Equals_ref_003d
.Lm_email_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_email_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_email_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_email_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_email_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_email_j_TPar_Equals_ref_003d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_Equals_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_email_j_TPar_Equals_ref_003f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_Equals_ref_0040:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_email_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_email_j_TPar_Equals__ref, .-m_email_j_TPar_Equals__ref
.globl m_email_j_TPar_GetHashCode__void
.type m_email_j_TPar_GetHashCode__void, @function
m_email_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0000:
    mov $-1396181869, %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_email_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_request_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_email_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_request_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_email_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_email_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_email_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_email_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_GetHashCode_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_email_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_email_j_TPar_GetHashCode__void, .-m_email_j_TPar_GetHashCode__void
.globl m_email_j_TPar_ToString__void
.type m_email_j_TPar_ToString__void, @function
m_email_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_email_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_email_j_TPar_ToString_void_0001:
    lea .LS_0_m_email_j_TPar_ToString_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_ToString_void_0006:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_ToString_void_0007:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_ToString_void_000c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_email_j_TPar_ToString_void_000f:
    mov -72(%rbp), %rdi
    lea .LN_1_m_email_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_email_j_TPar_ToString_void_0014:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_email_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_email_j_TPar_ToString_void_0017:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_email_j_TPar_ToString_void_0018:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_email_j_TPar_ToString_void_001d:
    mov -72(%rbp), %rdi
    lea .LN_2_m_email_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_email_j_TPar_ToString_void_0022:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_email_j_TPar_ToString_void_0028
.Lm_email_j_TPar_ToString_void_0024:
    mov -64(%rbp), %rax
.Lm_email_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_ToString_void_0026:
    jmp .Lm_email_j_TPar_ToString_void_0033
.Lm_email_j_TPar_ToString_void_0028:
.Lm_email_j_TPar_ToString_void_002e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_ToString_void_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_email_j_TPar_ToString_void_0034:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_ToString_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_3_m_email_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_ToString_void_003c:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_email_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_ToString_void_003f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_email_j_TPar_ToString_void_0040:
    mov -56(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_ToString_void_0045:
    mov -56(%rbp), %rdi
    lea .LN_4_m_email_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_email_j_TPar_ToString_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_email_j_TPar_ToString_void_0050
.Lm_email_j_TPar_ToString_void_004c:
    mov -48(%rbp), %rax
.Lm_email_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_ToString_void_004e:
    jmp .Lm_email_j_TPar_ToString_void_005b
.Lm_email_j_TPar_ToString_void_0050:
.Lm_email_j_TPar_ToString_void_0056:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_email_j_TPar_ToString_void_005b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_email_j_TPar_ToString_void_005c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_email_j_TPar_ToString_void_0061:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_email_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_email_j_TPar_ToString__void, .-m_email_j_TPar_ToString__void
.globl m_response_j_TPar_get_request__void
.type m_response_j_TPar_get_request__void, @function
m_response_j_TPar_get_request__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_response_j_TPar_get_request_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_get_request_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_response_j_TPar_get_request_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_get_request_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_response_j_TPar_get_request_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_response_j_TPar_get_request__void, .-m_response_j_TPar_get_request__void
.globl m_response_j_TPar_get_response__void
.type m_response_j_TPar_get_response__void, @function
m_response_j_TPar_get_response__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_response_j_TPar_get_response_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_get_response_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_response_j_TPar_get_response_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_get_response_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_response_j_TPar_get_response_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_response_j_TPar_get_response__void, .-m_response_j_TPar_get_response__void
.globl m_response_j_TPar_ctor__gen_gen
.type m_response_j_TPar_ctor__gen_gen, @function
m_response_j_TPar_ctor__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_response_j_TPar_ctor_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_ctor_gen_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_response_j_TPar_ctor_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_ctor_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_ctor_gen_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_response_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_response_j_TPar_ctor_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_ctor_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_ctor_gen_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_response_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_response_j_TPar_ctor_gen_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_response_j_TPar_ctor_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_response_j_TPar_ctor__gen_gen, .-m_response_j_TPar_ctor__gen_gen
.globl m_response_j_TPar_Equals__ref
.type m_response_j_TPar_Equals__ref, @function
m_response_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_response_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_response_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_response_j_TPar_Equals_ref_003f
.Lm_response_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_response_j_TPar_Equals_ref_003d
.Lm_response_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_request_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_response_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_response_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_request_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_response_j_TPar_Equals_ref_003d
.Lm_response_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_response_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_response_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_response_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_response_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_response_j_TPar_Equals_ref_003d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_Equals_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_response_j_TPar_Equals_ref_003f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_Equals_ref_0040:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_response_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_response_j_TPar_Equals__ref, .-m_response_j_TPar_Equals__ref
.globl m_response_j_TPar_GetHashCode__void
.type m_response_j_TPar_GetHashCode__void, @function
m_response_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0000:
    mov $-64887914, %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_response_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_request_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_response_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_request_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_response_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_response_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_response_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_response_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_GetHashCode_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_response_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_response_j_TPar_GetHashCode__void, .-m_response_j_TPar_GetHashCode__void
.globl m_response_j_TPar_ToString__void
.type m_response_j_TPar_ToString__void, @function
m_response_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_response_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_response_j_TPar_ToString_void_0001:
    lea .LS_0_m_response_j_TPar_ToString_void(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_ToString_void_0006:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_ToString_void_0007:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_ToString_void_000c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_response_j_TPar_ToString_void_000f:
    mov -72(%rbp), %rdi
    lea .LN_1_m_response_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_response_j_TPar_ToString_void_0014:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_response_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_response_j_TPar_ToString_void_0017:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_response_j_TPar_ToString_void_0018:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_response_j_TPar_ToString_void_001d:
    mov -72(%rbp), %rdi
    lea .LN_2_m_response_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_response_j_TPar_ToString_void_0022:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_response_j_TPar_ToString_void_0028
.Lm_response_j_TPar_ToString_void_0024:
    mov -64(%rbp), %rax
.Lm_response_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_ToString_void_0026:
    jmp .Lm_response_j_TPar_ToString_void_0033
.Lm_response_j_TPar_ToString_void_0028:
.Lm_response_j_TPar_ToString_void_002e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_ToString_void_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_response_j_TPar_ToString_void_0034:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_ToString_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_3_m_response_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_ToString_void_003c:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_response_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_ToString_void_003f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_response_j_TPar_ToString_void_0040:
    mov -56(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_ToString_void_0045:
    mov -56(%rbp), %rdi
    lea .LN_4_m_response_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_response_j_TPar_ToString_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_response_j_TPar_ToString_void_0050
.Lm_response_j_TPar_ToString_void_004c:
    mov -48(%rbp), %rax
.Lm_response_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_ToString_void_004e:
    jmp .Lm_response_j_TPar_ToString_void_005b
.Lm_response_j_TPar_ToString_void_0050:
.Lm_response_j_TPar_ToString_void_0056:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_response_j_TPar_ToString_void_005b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_response_j_TPar_ToString_void_005c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_response_j_TPar_ToString_void_0061:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_response_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_response_j_TPar_ToString__void, .-m_response_j_TPar_ToString__void
.globl m_initial_device_display_name_j_TPar_get_type__void
.type m_initial_device_display_name_j_TPar_get_type__void, @function
m_initial_device_display_name_j_TPar_get_type__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_initial_device_display_name_j_TPar_get_type_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_get_type_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_initial_device_display_name_j_TPar_get_type_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_get_type_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_get_type_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_initial_device_display_name_j_TPar_get_type__void, .-m_initial_device_display_name_j_TPar_get_type__void
.globl m_initial_device_display_name_j_TPar_get_token__void
.type m_initial_device_display_name_j_TPar_get_token__void, @function
m_initial_device_display_name_j_TPar_get_token__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_initial_device_display_name_j_TPar_get_token_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_get_token_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_initial_device_display_name_j_TPar_get_token_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_get_token_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_get_token_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_initial_device_display_name_j_TPar_get_token__void, .-m_initial_device_display_name_j_TPar_get_token__void
.globl m_initial_device_display_name_j_TPar_get_initial_device_display_name__void
.type m_initial_device_display_name_j_TPar_get_initial_device_display_name__void, @function
m_initial_device_display_name_j_TPar_get_initial_device_display_name__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_initial_device_display_name_j_TPar_get_initial_device_display_name_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_get_initial_device_display_name_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_initial_device_display_name_j_TPar_get_initial_device_display_name_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_get_initial_device_display_name_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_get_initial_device_display_name_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_initial_device_display_name_j_TPar_get_initial_device_display_name__void, .-m_initial_device_display_name_j_TPar_get_initial_device_display_name__void
.globl m_initial_device_display_name_j_TPar_ctor__gen_gen_gen
.type m_initial_device_display_name_j_TPar_ctor__gen_gen_gen, @function
m_initial_device_display_name_j_TPar_ctor__gen_gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_initial_device_display_name_j_TPar_ctor_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_initial_device_display_name_j_TPar_ctor_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_0014:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_0016:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_initial_device_display_name_j_TPar_ctor_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_ctor_gen_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_initial_device_display_name_j_TPar_ctor__gen_gen_gen, .-m_initial_device_display_name_j_TPar_ctor__gen_gen_gen
.globl m_initial_device_display_name_j_TPar_Equals__ref
.type m_initial_device_display_name_j_TPar_Equals__ref, @function
m_initial_device_display_name_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_initial_device_display_name_j_TPar_Equals_ref_0057
.Lm_initial_device_display_name_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_initial_device_display_name_j_TPar_Equals_ref_0055
.Lm_initial_device_display_name_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_initial_device_display_name_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_initial_device_display_name_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_initial_device_display_name_j_TPar_Equals_ref_0055
.Lm_initial_device_display_name_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_token_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_initial_device_display_name_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_initial_device_display_name_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_token_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_initial_device_display_name_j_TPar_Equals_ref_0055
.Lm_initial_device_display_name_j_TPar_Equals_ref_003e:
    call m_System_Collections_Generic_EqualityComparer_1_initial_device_display_name_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0043:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0044:
    mov -56(%rbp), %rdi
    lea .LN_4_m_initial_device_display_name_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0049:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_004a:
    mov -64(%rbp), %rdi
    lea .LN_5_m_initial_device_display_name_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_004f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_initial_device_display_name_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0054:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_Equals_ref_0055:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0056:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_Equals_ref_0057:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_Equals_ref_0058:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_initial_device_display_name_j_TPar_Equals__ref, .-m_initial_device_display_name_j_TPar_Equals__ref
.globl m_initial_device_display_name_j_TPar_GetHashCode__void
.type m_initial_device_display_name_j_TPar_GetHashCode__void, @function
m_initial_device_display_name_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0000:
    mov $314579763, %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_initial_device_display_name_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_type_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_token_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_initial_device_display_name_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_token_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0033:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0038:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0039:
    call m_System_Collections_Generic_EqualityComparer_1_initial_device_display_name_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_003f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_initial_device_display_name_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0044:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_initial_device_display_name_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_0049:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_004a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_initial_device_display_name_j_TPar_GetHashCode__void, .-m_initial_device_display_name_j_TPar_GetHashCode__void
.globl m_initial_device_display_name_j_TPar_ToString__void
.type m_initial_device_display_name_j_TPar_ToString__void, @function
m_initial_device_display_name_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0001:
    lea .LS_0_m_initial_device_display_name_j_TPar_ToString_void(%rip), %rdi
    mov $64, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0006:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0007:
    mov -64(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_000c:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_000f:
    mov -80(%rbp), %rdi
    lea .LN_1_m_initial_device_display_name_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0014:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0017:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0018:
    mov -80(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_001d:
    mov -80(%rbp), %rdi
    lea .LN_2_m_initial_device_display_name_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -80(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0022:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_initial_device_display_name_j_TPar_ToString_void_0028
.Lm_initial_device_display_name_j_TPar_ToString_void_0024:
    mov -72(%rbp), %rax
.Lm_initial_device_display_name_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0026:
    jmp .Lm_initial_device_display_name_j_TPar_ToString_void_0033
.Lm_initial_device_display_name_j_TPar_ToString_void_0028:
.Lm_initial_device_display_name_j_TPar_ToString_void_002e:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -72(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0033:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_initial_device_display_name_j_TPar_ToString_void_0034:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0037:
    mov -64(%rbp), %rdi
    lea .LN_3_m_initial_device_display_name_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_003c:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_003f:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0040:
    mov -64(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0045:
    mov -64(%rbp), %rdi
    lea .LN_4_m_initial_device_display_name_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_004a:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_initial_device_display_name_j_TPar_ToString_void_0050
.Lm_initial_device_display_name_j_TPar_ToString_void_004c:
    mov -56(%rbp), %rax
.Lm_initial_device_display_name_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_004e:
    jmp .Lm_initial_device_display_name_j_TPar_ToString_void_005b
.Lm_initial_device_display_name_j_TPar_ToString_void_0050:
.Lm_initial_device_display_name_j_TPar_ToString_void_0056:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_005b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_initial_device_display_name_j_TPar_ToString_void_005c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_005d:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_005f:
    mov -64(%rbp), %rdi
    lea .LN_5_m_initial_device_display_name_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0064:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0065:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0067:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0068:
    mov -64(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_006d:
    mov -64(%rbp), %rdi
    lea .LN_6_m_initial_device_display_name_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0072:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_initial_device_display_name_j_TPar_ToString_void_0078
.Lm_initial_device_display_name_j_TPar_ToString_void_0074:
    mov -56(%rbp), %rax
.Lm_initial_device_display_name_j_TPar_ToString_void_0075:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0076:
    jmp .Lm_initial_device_display_name_j_TPar_ToString_void_0083
.Lm_initial_device_display_name_j_TPar_ToString_void_0078:
.Lm_initial_device_display_name_j_TPar_ToString_void_007e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0083:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_initial_device_display_name_j_TPar_ToString_void_0084:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -24(%rbp)
.Lm_initial_device_display_name_j_TPar_ToString_void_0089:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_initial_device_display_name_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_initial_device_display_name_j_TPar_ToString__void, .-m_initial_device_display_name_j_TPar_ToString__void
.globl m_presence_j_TPar_get_room__void
.type m_presence_j_TPar_get_room__void, @function
m_presence_j_TPar_get_room__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_presence_j_TPar_get_room_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_get_room_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_presence_j_TPar_get_room_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_get_room_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_presence_j_TPar_get_room_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_presence_j_TPar_get_room__void, .-m_presence_j_TPar_get_room__void
.globl m_presence_j_TPar_get_presence__void
.type m_presence_j_TPar_get_presence__void, @function
m_presence_j_TPar_get_presence__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_presence_j_TPar_get_presence_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_get_presence_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_presence_j_TPar_get_presence_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_get_presence_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_presence_j_TPar_get_presence_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_presence_j_TPar_get_presence__void, .-m_presence_j_TPar_get_presence__void
.globl m_presence_j_TPar_ctor__gen_gen
.type m_presence_j_TPar_ctor__gen_gen, @function
m_presence_j_TPar_ctor__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_presence_j_TPar_ctor_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_ctor_gen_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_presence_j_TPar_ctor_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_ctor_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_ctor_gen_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_presence_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_presence_j_TPar_ctor_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_ctor_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_ctor_gen_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_presence_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_presence_j_TPar_ctor_gen_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_presence_j_TPar_ctor_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_presence_j_TPar_ctor__gen_gen, .-m_presence_j_TPar_ctor__gen_gen
.globl m_presence_j_TPar_Equals__ref
.type m_presence_j_TPar_Equals__ref, @function
m_presence_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_presence_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_presence_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_presence_j_TPar_Equals_ref_003f
.Lm_presence_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_presence_j_TPar_Equals_ref_003d
.Lm_presence_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_room_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_presence_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_presence_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_room_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_presence_j_TPar_Equals_ref_003d
.Lm_presence_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_presence_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_presence_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_presence_j_TPar_Equals_ref_003d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_Equals_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_presence_j_TPar_Equals_ref_003f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_Equals_ref_0040:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_presence_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_presence_j_TPar_Equals__ref, .-m_presence_j_TPar_Equals__ref
.globl m_presence_j_TPar_GetHashCode__void
.type m_presence_j_TPar_GetHashCode__void, @function
m_presence_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0000:
    mov $1690689276, %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_room_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_presence_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_room_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_presence_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_GetHashCode_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_presence_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_presence_j_TPar_GetHashCode__void, .-m_presence_j_TPar_GetHashCode__void
.globl m_presence_j_TPar_ToString__void
.type m_presence_j_TPar_ToString__void, @function
m_presence_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_presence_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_presence_j_TPar_ToString_void_0001:
    lea .LS_0_m_presence_j_TPar_ToString_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_ToString_void_0006:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_ToString_void_0007:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_ToString_void_000c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_presence_j_TPar_ToString_void_000f:
    mov -72(%rbp), %rdi
    lea .LN_1_m_presence_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_presence_j_TPar_ToString_void_0014:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_presence_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_presence_j_TPar_ToString_void_0017:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_presence_j_TPar_ToString_void_0018:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_presence_j_TPar_ToString_void_001d:
    mov -72(%rbp), %rdi
    lea .LN_2_m_presence_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_presence_j_TPar_ToString_void_0022:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_presence_j_TPar_ToString_void_0028
.Lm_presence_j_TPar_ToString_void_0024:
    mov -64(%rbp), %rax
.Lm_presence_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_ToString_void_0026:
    jmp .Lm_presence_j_TPar_ToString_void_0033
.Lm_presence_j_TPar_ToString_void_0028:
.Lm_presence_j_TPar_ToString_void_002e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_ToString_void_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_presence_j_TPar_ToString_void_0034:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_ToString_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_3_m_presence_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_ToString_void_003c:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_presence_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_ToString_void_003f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_presence_j_TPar_ToString_void_0040:
    mov -56(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_ToString_void_0045:
    mov -56(%rbp), %rdi
    lea .LN_4_m_presence_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_presence_j_TPar_ToString_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_presence_j_TPar_ToString_void_0050
.Lm_presence_j_TPar_ToString_void_004c:
    mov -48(%rbp), %rax
.Lm_presence_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_ToString_void_004e:
    jmp .Lm_presence_j_TPar_ToString_void_005b
.Lm_presence_j_TPar_ToString_void_0050:
.Lm_presence_j_TPar_ToString_void_0056:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_presence_j_TPar_ToString_void_005b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_presence_j_TPar_ToString_void_005c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_presence_j_TPar_ToString_void_0061:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_presence_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_presence_j_TPar_ToString__void, .-m_presence_j_TPar_ToString__void
.globl m_account_data_j_TPar_get_state__void
.type m_account_data_j_TPar_get_state__void, @function
m_account_data_j_TPar_get_state__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_account_data_j_TPar_get_state_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_get_state_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_account_data_j_TPar_get_state_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_get_state_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_get_state_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_account_data_j_TPar_get_state__void, .-m_account_data_j_TPar_get_state__void
.globl m_account_data_j_TPar_get_timeline__void
.type m_account_data_j_TPar_get_timeline__void, @function
m_account_data_j_TPar_get_timeline__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_account_data_j_TPar_get_timeline_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_get_timeline_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_account_data_j_TPar_get_timeline_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_get_timeline_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_get_timeline_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_account_data_j_TPar_get_timeline__void, .-m_account_data_j_TPar_get_timeline__void
.globl m_account_data_j_TPar_get_ephemeral__void
.type m_account_data_j_TPar_get_ephemeral__void, @function
m_account_data_j_TPar_get_ephemeral__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_account_data_j_TPar_get_ephemeral_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_get_ephemeral_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_account_data_j_TPar_get_ephemeral_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_get_ephemeral_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_get_ephemeral_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_account_data_j_TPar_get_ephemeral__void, .-m_account_data_j_TPar_get_ephemeral__void
.globl m_account_data_j_TPar_get_account_data__void
.type m_account_data_j_TPar_get_account_data__void, @function
m_account_data_j_TPar_get_account_data__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_account_data_j_TPar_get_account_data_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_get_account_data_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_account_data_j_TPar_get_account_data_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_get_account_data_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_get_account_data_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_account_data_j_TPar_get_account_data__void, .-m_account_data_j_TPar_get_account_data__void
.globl m_account_data_j_TPar_ctor__gen_gen_gen_gen
.type m_account_data_j_TPar_ctor__gen_gen_gen_gen, @function
m_account_data_j_TPar_ctor__gen_gen_gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_account_data_j_TPar_ctor_gen_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_account_data_j_TPar_ctor_gen_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0016:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_account_data_j_TPar_ctor_gen_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_001b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_001e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_account_data_j_TPar_ctor_gen_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_ctor_gen_gen_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_account_data_j_TPar_ctor__gen_gen_gen_gen, .-m_account_data_j_TPar_ctor__gen_gen_gen_gen
.globl m_account_data_j_TPar_Equals__ref
.type m_account_data_j_TPar_Equals__ref, @function
m_account_data_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_account_data_j_TPar_Equals_ref_006f
.Lm_account_data_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_account_data_j_TPar_Equals_ref_006d
.Lm_account_data_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_state_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_account_data_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_account_data_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_state_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_account_data_j_TPar_Equals_ref_006d
.Lm_account_data_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_timeline_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_account_data_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_account_data_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_timeline_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_account_data_j_TPar_Equals_ref_006d
.Lm_account_data_j_TPar_Equals_ref_003e:
    call m_System_Collections_Generic_EqualityComparer_1_ephemeral_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0043:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0044:
    mov -56(%rbp), %rdi
    lea .LN_4_m_account_data_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0049:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_Equals_ref_004a:
    mov -64(%rbp), %rdi
    lea .LN_5_m_account_data_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_Equals_ref_004f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_ephemeral_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0054:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_account_data_j_TPar_Equals_ref_006d
.Lm_account_data_j_TPar_Equals_ref_0056:
    call m_System_Collections_Generic_EqualityComparer_1_account_data_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_005b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_005c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_account_data_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0061:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0062:
    mov -64(%rbp), %rdi
    lea .LN_7_m_account_data_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0067:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_account_data_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_006c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_Equals_ref_006d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_006e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_Equals_ref_006f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_Equals_ref_0070:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_account_data_j_TPar_Equals__ref, .-m_account_data_j_TPar_Equals__ref
.globl m_account_data_j_TPar_GetHashCode__void
.type m_account_data_j_TPar_GetHashCode__void, @function
m_account_data_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0000:
    mov $941921017, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_state_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_account_data_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_state_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_timeline_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_account_data_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_timeline_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0033:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0038:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0039:
    call m_System_Collections_Generic_EqualityComparer_1_ephemeral_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_003f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_account_data_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0044:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_ephemeral_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0049:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_004a:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_004f:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0050:
    call m_System_Collections_Generic_EqualityComparer_1_account_data_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0056:
    mov -40(%rbp), %rdi
    lea .LN_3_m_account_data_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_005b:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_account_data_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0060:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_GetHashCode_void_0061:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_account_data_j_TPar_GetHashCode__void, .-m_account_data_j_TPar_GetHashCode__void
.globl m_account_data_j_TPar_ToString__void
.type m_account_data_j_TPar_ToString__void, @function
m_account_data_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_account_data_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_ToString_void_0001:
    lea .LS_0_m_account_data_j_TPar_ToString_void(%rip), %rdi
    mov $70, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_0006:
    mov $4, %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_0007:
    mov -72(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_000c:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_account_data_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_account_data_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_account_data_j_TPar_ToString_void_000f:
    mov -88(%rbp), %rdi
    lea .LN_1_m_account_data_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_account_data_j_TPar_ToString_void_0014:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_account_data_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_account_data_j_TPar_ToString_void_0017:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_account_data_j_TPar_ToString_void_0018:
    mov -88(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_account_data_j_TPar_ToString_void_001d:
    mov -88(%rbp), %rdi
    lea .LN_2_m_account_data_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -88(%rbp)
.Lm_account_data_j_TPar_ToString_void_0022:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_account_data_j_TPar_ToString_void_0028
.Lm_account_data_j_TPar_ToString_void_0024:
    mov -80(%rbp), %rax
.Lm_account_data_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_account_data_j_TPar_ToString_void_0026:
    jmp .Lm_account_data_j_TPar_ToString_void_0033
.Lm_account_data_j_TPar_ToString_void_0028:
.Lm_account_data_j_TPar_ToString_void_002e:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -80(%rbp)
.Lm_account_data_j_TPar_ToString_void_0033:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_account_data_j_TPar_ToString_void_0034:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_0037:
    mov -72(%rbp), %rdi
    lea .LN_3_m_account_data_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_003c:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_003f:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_account_data_j_TPar_ToString_void_0040:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_0045:
    mov -72(%rbp), %rdi
    lea .LN_4_m_account_data_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_004a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_account_data_j_TPar_ToString_void_0050
.Lm_account_data_j_TPar_ToString_void_004c:
    mov -64(%rbp), %rax
.Lm_account_data_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_004e:
    jmp .Lm_account_data_j_TPar_ToString_void_005b
.Lm_account_data_j_TPar_ToString_void_0050:
.Lm_account_data_j_TPar_ToString_void_0056:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_005b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_account_data_j_TPar_ToString_void_005c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_ToString_void_005d:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_005f:
    mov -72(%rbp), %rdi
    lea .LN_5_m_account_data_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_0064:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_account_data_j_TPar_ToString_void_0065:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_0067:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_account_data_j_TPar_ToString_void_0068:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_006d:
    mov -72(%rbp), %rdi
    lea .LN_6_m_account_data_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_0072:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_account_data_j_TPar_ToString_void_0078
.Lm_account_data_j_TPar_ToString_void_0074:
    mov -64(%rbp), %rax
.Lm_account_data_j_TPar_ToString_void_0075:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_0076:
    jmp .Lm_account_data_j_TPar_ToString_void_0083
.Lm_account_data_j_TPar_ToString_void_0078:
.Lm_account_data_j_TPar_ToString_void_007e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_0083:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_account_data_j_TPar_ToString_void_0084:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_account_data_j_TPar_ToString_void_0085:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_0087:
    mov -72(%rbp), %rdi
    lea .LN_7_m_account_data_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_008c:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_account_data_j_TPar_ToString_void_008d:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_008f:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_account_data_j_TPar_ToString_void_0090:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_0095:
    mov -72(%rbp), %rdi
    lea .LN_8_m_account_data_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_account_data_j_TPar_ToString_void_009a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_account_data_j_TPar_ToString_void_00a0
.Lm_account_data_j_TPar_ToString_void_009c:
    mov -64(%rbp), %rax
.Lm_account_data_j_TPar_ToString_void_009d:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_009e:
    jmp .Lm_account_data_j_TPar_ToString_void_00ab
.Lm_account_data_j_TPar_ToString_void_00a0:
.Lm_account_data_j_TPar_ToString_void_00a6:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_account_data_j_TPar_ToString_void_00ab:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_account_data_j_TPar_ToString_void_00ac:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -32(%rbp)
.Lm_account_data_j_TPar_ToString_void_00b1:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_account_data_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_account_data_j_TPar_ToString__void, .-m_account_data_j_TPar_ToString__void
.globl m_f_AnonymousType7_1_types_j_TPar_get_types__void
.type m_f_AnonymousType7_1_types_j_TPar_get_types__void, @function
m_f_AnonymousType7_1_types_j_TPar_get_types__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_get_types_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_get_types_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType7_1_types_j_TPar_get_types_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_get_types_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType7_1_types_j_TPar_get_types_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType7_1_types_j_TPar_get_types__void, .-m_f_AnonymousType7_1_types_j_TPar_get_types__void
.globl m_f_AnonymousType7_1_types_j_TPar_ctor__gen
.type m_f_AnonymousType7_1_types_j_TPar_ctor__gen, @function
m_f_AnonymousType7_1_types_j_TPar_ctor__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ctor_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ctor_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_f_AnonymousType7_1_types_j_TPar_ctor_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ctor_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ctor_gen_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType7_1_types_j_TPar_ctor_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_f_AnonymousType7_1_types_j_TPar_ctor_gen_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType7_1_types_j_TPar_ctor_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType7_1_types_j_TPar_ctor__gen, .-m_f_AnonymousType7_1_types_j_TPar_ctor__gen
.globl m_f_AnonymousType7_1_types_j_TPar_Equals__ref
.type m_f_AnonymousType7_1_types_j_TPar_Equals__ref, @function
m_f_AnonymousType7_1_types_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0027
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0025
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_types_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType7_1_types_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_f_AnonymousType7_1_types_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_types_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0025:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0026:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0027:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_0028:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType7_1_types_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType7_1_types_j_TPar_Equals__ref, .-m_f_AnonymousType7_1_types_j_TPar_Equals__ref
.globl m_f_AnonymousType7_1_types_j_TPar_GetHashCode__void
.type m_f_AnonymousType7_1_types_j_TPar_GetHashCode__void, @function
m_f_AnonymousType7_1_types_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_0000:
    mov $-97509591, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_types_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType7_1_types_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_types_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_001c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType7_1_types_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType7_1_types_j_TPar_GetHashCode__void, .-m_f_AnonymousType7_1_types_j_TPar_GetHashCode__void
.globl m_f_AnonymousType7_1_types_j_TPar_ToString__void
.type m_f_AnonymousType7_1_types_j_TPar_ToString__void, @function
m_f_AnonymousType7_1_types_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0001:
    lea .LS_0_m_f_AnonymousType7_1_types_j_TPar_ToString_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0006:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0007:
    mov -48(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_000c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_000f:
    mov -64(%rbp), %rdi
    lea .LN_1_m_f_AnonymousType7_1_types_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0014:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0017:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0018:
    mov -64(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_001d:
    mov -64(%rbp), %rdi
    lea .LN_2_m_f_AnonymousType7_1_types_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0022:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0028
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0024:
    mov -56(%rbp), %rax
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0026:
    jmp .Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0033
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0028:
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_002e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0033:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0034:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_0039:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType7_1_types_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType7_1_types_j_TPar_ToString__void, .-m_f_AnonymousType7_1_types_j_TPar_ToString__void
.globl m_f_AnonymousType8_1_limit_j_TPar_get_limit__void
.type m_f_AnonymousType8_1_limit_j_TPar_get_limit__void, @function
m_f_AnonymousType8_1_limit_j_TPar_get_limit__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_get_limit_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_get_limit_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType8_1_limit_j_TPar_get_limit_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_get_limit_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType8_1_limit_j_TPar_get_limit_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType8_1_limit_j_TPar_get_limit__void, .-m_f_AnonymousType8_1_limit_j_TPar_get_limit__void
.globl m_f_AnonymousType8_1_limit_j_TPar_ctor__gen
.type m_f_AnonymousType8_1_limit_j_TPar_ctor__gen, @function
m_f_AnonymousType8_1_limit_j_TPar_ctor__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ctor_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ctor_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_f_AnonymousType8_1_limit_j_TPar_ctor_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ctor_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ctor_gen_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType8_1_limit_j_TPar_ctor_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_f_AnonymousType8_1_limit_j_TPar_ctor_gen_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType8_1_limit_j_TPar_ctor_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType8_1_limit_j_TPar_ctor__gen, .-m_f_AnonymousType8_1_limit_j_TPar_ctor__gen
.globl m_f_AnonymousType8_1_limit_j_TPar_Equals__ref
.type m_f_AnonymousType8_1_limit_j_TPar_Equals__ref, @function
m_f_AnonymousType8_1_limit_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0027
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0025
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_limit_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType8_1_limit_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_f_AnonymousType8_1_limit_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_limit_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0025:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0026:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0027:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_0028:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType8_1_limit_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType8_1_limit_j_TPar_Equals__ref, .-m_f_AnonymousType8_1_limit_j_TPar_Equals__ref
.globl m_f_AnonymousType8_1_limit_j_TPar_GetHashCode__void
.type m_f_AnonymousType8_1_limit_j_TPar_GetHashCode__void, @function
m_f_AnonymousType8_1_limit_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_0000:
    mov $1231120875, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_limit_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_limit_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_001c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType8_1_limit_j_TPar_GetHashCode__void, .-m_f_AnonymousType8_1_limit_j_TPar_GetHashCode__void
.globl m_f_AnonymousType8_1_limit_j_TPar_ToString__void
.type m_f_AnonymousType8_1_limit_j_TPar_ToString__void, @function
m_f_AnonymousType8_1_limit_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0001:
    lea .LS_0_m_f_AnonymousType8_1_limit_j_TPar_ToString_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0006:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0007:
    mov -48(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_000c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_000f:
    mov -64(%rbp), %rdi
    lea .LN_1_m_f_AnonymousType8_1_limit_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0014:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0017:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0018:
    mov -64(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_001d:
    mov -64(%rbp), %rdi
    lea .LN_2_m_f_AnonymousType8_1_limit_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0022:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0028
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0024:
    mov -56(%rbp), %rax
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0026:
    jmp .Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0033
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0028:
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_002e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0033:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0034:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_0039:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType8_1_limit_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType8_1_limit_j_TPar_ToString__void, .-m_f_AnonymousType8_1_limit_j_TPar_ToString__void
.globl m_body_j_TPar_get_msgtype__void
.type m_body_j_TPar_get_msgtype__void, @function
m_body_j_TPar_get_msgtype__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_body_j_TPar_get_msgtype_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_get_msgtype_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_body_j_TPar_get_msgtype_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_get_msgtype_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_body_j_TPar_get_msgtype_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_body_j_TPar_get_msgtype__void, .-m_body_j_TPar_get_msgtype__void
.globl m_body_j_TPar_get_body__void
.type m_body_j_TPar_get_body__void, @function
m_body_j_TPar_get_body__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_body_j_TPar_get_body_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_get_body_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_body_j_TPar_get_body_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_get_body_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_body_j_TPar_get_body_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_body_j_TPar_get_body__void, .-m_body_j_TPar_get_body__void
.globl m_body_j_TPar_ctor__gen_gen
.type m_body_j_TPar_ctor__gen_gen, @function
m_body_j_TPar_ctor__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_body_j_TPar_ctor_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_ctor_gen_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_body_j_TPar_ctor_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_ctor_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_ctor_gen_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_body_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_body_j_TPar_ctor_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_ctor_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_ctor_gen_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_body_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_body_j_TPar_ctor_gen_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_body_j_TPar_ctor_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_body_j_TPar_ctor__gen_gen, .-m_body_j_TPar_ctor__gen_gen
.globl m_body_j_TPar_Equals__ref
.type m_body_j_TPar_Equals__ref, @function
m_body_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_body_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_body_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_body_j_TPar_Equals_ref_003f
.Lm_body_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_body_j_TPar_Equals_ref_003d
.Lm_body_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_msgtype_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_body_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_body_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_msgtype_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_body_j_TPar_Equals_ref_003d
.Lm_body_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_body_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_body_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_body_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_body_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_body_j_TPar_Equals_ref_003d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_Equals_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_body_j_TPar_Equals_ref_003f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_Equals_ref_0040:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_body_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_body_j_TPar_Equals__ref, .-m_body_j_TPar_Equals__ref
.globl m_body_j_TPar_GetHashCode__void
.type m_body_j_TPar_GetHashCode__void, @function
m_body_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0000:
    mov $111509089, %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_body_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_msgtype_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_body_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_msgtype_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_body_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_body_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_body_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_body_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_GetHashCode_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_body_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_body_j_TPar_GetHashCode__void, .-m_body_j_TPar_GetHashCode__void
.globl m_body_j_TPar_ToString__void
.type m_body_j_TPar_ToString__void, @function
m_body_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_body_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_body_j_TPar_ToString_void_0001:
    lea .LS_0_m_body_j_TPar_ToString_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_ToString_void_0006:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_ToString_void_0007:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_ToString_void_000c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_body_j_TPar_ToString_void_000f:
    mov -72(%rbp), %rdi
    lea .LN_1_m_body_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_body_j_TPar_ToString_void_0014:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_body_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_body_j_TPar_ToString_void_0017:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_body_j_TPar_ToString_void_0018:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_body_j_TPar_ToString_void_001d:
    mov -72(%rbp), %rdi
    lea .LN_2_m_body_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_body_j_TPar_ToString_void_0022:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_body_j_TPar_ToString_void_0028
.Lm_body_j_TPar_ToString_void_0024:
    mov -64(%rbp), %rax
.Lm_body_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_ToString_void_0026:
    jmp .Lm_body_j_TPar_ToString_void_0033
.Lm_body_j_TPar_ToString_void_0028:
.Lm_body_j_TPar_ToString_void_002e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_ToString_void_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_body_j_TPar_ToString_void_0034:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_ToString_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_3_m_body_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_ToString_void_003c:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_body_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_ToString_void_003f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_body_j_TPar_ToString_void_0040:
    mov -56(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_ToString_void_0045:
    mov -56(%rbp), %rdi
    lea .LN_4_m_body_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_body_j_TPar_ToString_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_body_j_TPar_ToString_void_0050
.Lm_body_j_TPar_ToString_void_004c:
    mov -48(%rbp), %rax
.Lm_body_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_ToString_void_004e:
    jmp .Lm_body_j_TPar_ToString_void_005b
.Lm_body_j_TPar_ToString_void_0050:
.Lm_body_j_TPar_ToString_void_0056:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_body_j_TPar_ToString_void_005b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_body_j_TPar_ToString_void_005c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_body_j_TPar_ToString_void_0061:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_body_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_body_j_TPar_ToString__void, .-m_body_j_TPar_ToString__void
.globl m_info_j_TPar_get_msgtype__void
.type m_info_j_TPar_get_msgtype__void, @function
m_info_j_TPar_get_msgtype__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_info_j_TPar_get_msgtype_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_get_msgtype_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_info_j_TPar_get_msgtype_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_get_msgtype_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_get_msgtype_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_info_j_TPar_get_msgtype__void, .-m_info_j_TPar_get_msgtype__void
.globl m_info_j_TPar_get_body__void
.type m_info_j_TPar_get_body__void, @function
m_info_j_TPar_get_body__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_info_j_TPar_get_body_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_get_body_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_info_j_TPar_get_body_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_get_body_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_get_body_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_info_j_TPar_get_body__void, .-m_info_j_TPar_get_body__void
.globl m_info_j_TPar_get_url__void
.type m_info_j_TPar_get_url__void, @function
m_info_j_TPar_get_url__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_info_j_TPar_get_url_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_get_url_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_info_j_TPar_get_url_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_get_url_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_get_url_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_info_j_TPar_get_url__void, .-m_info_j_TPar_get_url__void
.globl m_info_j_TPar_get_info__void
.type m_info_j_TPar_get_info__void, @function
m_info_j_TPar_get_info__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_info_j_TPar_get_info_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_get_info_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_info_j_TPar_get_info_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_get_info_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_get_info_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_info_j_TPar_get_info__void, .-m_info_j_TPar_get_info__void
.globl m_info_j_TPar_ctor__gen_gen_gen_gen
.type m_info_j_TPar_ctor__gen_gen_gen_gen, @function
m_info_j_TPar_ctor__gen_gen_gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0001:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_info_j_TPar_ctor_gen_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_info_j_TPar_ctor_gen_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0015:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0016:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_info_j_TPar_ctor_gen_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_001b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_001e:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_info_j_TPar_ctor_gen_gen_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_ctor_gen_gen_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_info_j_TPar_ctor__gen_gen_gen_gen, .-m_info_j_TPar_ctor__gen_gen_gen_gen
.globl m_info_j_TPar_Equals__ref
.type m_info_j_TPar_Equals__ref, @function
m_info_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_info_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_info_j_TPar_Equals_ref_006f
.Lm_info_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_info_j_TPar_Equals_ref_006d
.Lm_info_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_msgtype_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_info_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_info_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_msgtype_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_info_j_TPar_Equals_ref_006d
.Lm_info_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_body_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_info_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_info_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_body_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_info_j_TPar_Equals_ref_006d
.Lm_info_j_TPar_Equals_ref_003e:
    call m_System_Collections_Generic_EqualityComparer_1_url_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_0043:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_0044:
    mov -56(%rbp), %rdi
    lea .LN_4_m_info_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_0049:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_Equals_ref_004a:
    mov -64(%rbp), %rdi
    lea .LN_5_m_info_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_Equals_ref_004f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_url_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_0054:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_info_j_TPar_Equals_ref_006d
.Lm_info_j_TPar_Equals_ref_0056:
    call m_System_Collections_Generic_EqualityComparer_1_info_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_005b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_005c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_info_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_Equals_ref_0061:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_Equals_ref_0062:
    mov -64(%rbp), %rdi
    lea .LN_7_m_info_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_Equals_ref_0067:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_info_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_006c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_Equals_ref_006d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_006e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_Equals_ref_006f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_Equals_ref_0070:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_info_j_TPar_Equals__ref, .-m_info_j_TPar_Equals__ref
.globl m_info_j_TPar_GetHashCode__void
.type m_info_j_TPar_GetHashCode__void, @function
m_info_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0000:
    mov $-664662794, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_msgtype_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_info_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_msgtype_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_body_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_info_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_body_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0033:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0038:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0039:
    call m_System_Collections_Generic_EqualityComparer_1_url_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_GetHashCode_void_003f:
    mov -40(%rbp), %rdi
    lea .LN_2_m_info_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0044:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_url_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0049:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_004a:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_004f:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0050:
    call m_System_Collections_Generic_EqualityComparer_1_info_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0056:
    mov -40(%rbp), %rdi
    lea .LN_3_m_info_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_GetHashCode_void_005b:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_info_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0060:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_GetHashCode_void_0061:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_info_j_TPar_GetHashCode__void, .-m_info_j_TPar_GetHashCode__void
.globl m_info_j_TPar_ToString__void
.type m_info_j_TPar_ToString__void, @function
m_info_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_info_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_ToString_void_0001:
    lea .LS_0_m_info_j_TPar_ToString_void(%rip), %rdi
    mov $54, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_0006:
    mov $4, %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_0007:
    mov -72(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_000c:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_info_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_info_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_info_j_TPar_ToString_void_000f:
    mov -88(%rbp), %rdi
    lea .LN_1_m_info_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_info_j_TPar_ToString_void_0014:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_info_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_info_j_TPar_ToString_void_0017:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_info_j_TPar_ToString_void_0018:
    mov -88(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_info_j_TPar_ToString_void_001d:
    mov -88(%rbp), %rdi
    lea .LN_2_m_info_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -88(%rbp)
.Lm_info_j_TPar_ToString_void_0022:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_info_j_TPar_ToString_void_0028
.Lm_info_j_TPar_ToString_void_0024:
    mov -80(%rbp), %rax
.Lm_info_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -80(%rbp)
.Lm_info_j_TPar_ToString_void_0026:
    jmp .Lm_info_j_TPar_ToString_void_0033
.Lm_info_j_TPar_ToString_void_0028:
.Lm_info_j_TPar_ToString_void_002e:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -80(%rbp)
.Lm_info_j_TPar_ToString_void_0033:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_info_j_TPar_ToString_void_0034:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_0037:
    mov -72(%rbp), %rdi
    lea .LN_3_m_info_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_003c:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_003f:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_info_j_TPar_ToString_void_0040:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_0045:
    mov -72(%rbp), %rdi
    lea .LN_4_m_info_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_004a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_info_j_TPar_ToString_void_0050
.Lm_info_j_TPar_ToString_void_004c:
    mov -64(%rbp), %rax
.Lm_info_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_004e:
    jmp .Lm_info_j_TPar_ToString_void_005b
.Lm_info_j_TPar_ToString_void_0050:
.Lm_info_j_TPar_ToString_void_0056:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_005b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_info_j_TPar_ToString_void_005c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_ToString_void_005d:
    mov $2, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_005e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_005f:
    mov -72(%rbp), %rdi
    lea .LN_5_m_info_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_0064:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_info_j_TPar_ToString_void_0065:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_0067:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_info_j_TPar_ToString_void_0068:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_006d:
    mov -72(%rbp), %rdi
    lea .LN_6_m_info_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_0072:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_info_j_TPar_ToString_void_0078
.Lm_info_j_TPar_ToString_void_0074:
    mov -64(%rbp), %rax
.Lm_info_j_TPar_ToString_void_0075:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_0076:
    jmp .Lm_info_j_TPar_ToString_void_0083
.Lm_info_j_TPar_ToString_void_0078:
.Lm_info_j_TPar_ToString_void_007e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_0083:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_info_j_TPar_ToString_void_0084:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_info_j_TPar_ToString_void_0085:
    mov $3, %rax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_0087:
    mov -72(%rbp), %rdi
    lea .LN_7_m_info_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_008c:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_info_j_TPar_ToString_void_008d:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_008f:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_info_j_TPar_ToString_void_0090:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_0095:
    mov -72(%rbp), %rdi
    lea .LN_8_m_info_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_info_j_TPar_ToString_void_009a:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_info_j_TPar_ToString_void_00a0
.Lm_info_j_TPar_ToString_void_009c:
    mov -64(%rbp), %rax
.Lm_info_j_TPar_ToString_void_009d:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_009e:
    jmp .Lm_info_j_TPar_ToString_void_00ab
.Lm_info_j_TPar_ToString_void_00a0:
.Lm_info_j_TPar_ToString_void_00a6:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_info_j_TPar_ToString_void_00ab:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_info_j_TPar_ToString_void_00ac:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -32(%rbp)
.Lm_info_j_TPar_ToString_void_00b1:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_info_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_info_j_TPar_ToString__void, .-m_info_j_TPar_ToString__void
.globl m_size_j_TPar_get_mimetype__void
.type m_size_j_TPar_get_mimetype__void, @function
m_size_j_TPar_get_mimetype__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_size_j_TPar_get_mimetype_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_get_mimetype_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_size_j_TPar_get_mimetype_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_get_mimetype_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_size_j_TPar_get_mimetype_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_size_j_TPar_get_mimetype__void, .-m_size_j_TPar_get_mimetype__void
.globl m_size_j_TPar_get_size__void
.type m_size_j_TPar_get_size__void, @function
m_size_j_TPar_get_size__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_size_j_TPar_get_size_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_get_size_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_size_j_TPar_get_size_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_get_size_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_size_j_TPar_get_size_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_size_j_TPar_get_size__void, .-m_size_j_TPar_get_size__void
.globl m_size_j_TPar_ctor__gen_gen
.type m_size_j_TPar_ctor__gen_gen, @function
m_size_j_TPar_ctor__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_size_j_TPar_ctor_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_ctor_gen_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_size_j_TPar_ctor_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_ctor_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_ctor_gen_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_size_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_size_j_TPar_ctor_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_ctor_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_ctor_gen_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_size_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_size_j_TPar_ctor_gen_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_size_j_TPar_ctor_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_size_j_TPar_ctor__gen_gen, .-m_size_j_TPar_ctor__gen_gen
.globl m_size_j_TPar_Equals__ref
.type m_size_j_TPar_Equals__ref, @function
m_size_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_size_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_size_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_size_j_TPar_Equals_ref_003f
.Lm_size_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_size_j_TPar_Equals_ref_003d
.Lm_size_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_mimetype_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_size_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_size_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_mimetype_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_size_j_TPar_Equals_ref_003d
.Lm_size_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_size_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_size_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_size_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_size_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_size_j_TPar_Equals_ref_003d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_Equals_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_size_j_TPar_Equals_ref_003f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_Equals_ref_0040:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_size_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_size_j_TPar_Equals__ref, .-m_size_j_TPar_Equals__ref
.globl m_size_j_TPar_GetHashCode__void
.type m_size_j_TPar_GetHashCode__void, @function
m_size_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0000:
    mov $-643336381, %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_size_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_mimetype_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_size_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_mimetype_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_size_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_size_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_size_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_size_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_GetHashCode_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_size_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_size_j_TPar_GetHashCode__void, .-m_size_j_TPar_GetHashCode__void
.globl m_size_j_TPar_ToString__void
.type m_size_j_TPar_ToString__void, @function
m_size_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_size_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_size_j_TPar_ToString_void_0001:
    lea .LS_0_m_size_j_TPar_ToString_void(%rip), %rdi
    mov $32, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_ToString_void_0006:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_ToString_void_0007:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_ToString_void_000c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_size_j_TPar_ToString_void_000f:
    mov -72(%rbp), %rdi
    lea .LN_1_m_size_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_size_j_TPar_ToString_void_0014:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_size_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_size_j_TPar_ToString_void_0017:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_size_j_TPar_ToString_void_0018:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_size_j_TPar_ToString_void_001d:
    mov -72(%rbp), %rdi
    lea .LN_2_m_size_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_size_j_TPar_ToString_void_0022:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_size_j_TPar_ToString_void_0028
.Lm_size_j_TPar_ToString_void_0024:
    mov -64(%rbp), %rax
.Lm_size_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_ToString_void_0026:
    jmp .Lm_size_j_TPar_ToString_void_0033
.Lm_size_j_TPar_ToString_void_0028:
.Lm_size_j_TPar_ToString_void_002e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_ToString_void_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_size_j_TPar_ToString_void_0034:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_ToString_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_3_m_size_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_ToString_void_003c:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_size_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_ToString_void_003f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_size_j_TPar_ToString_void_0040:
    mov -56(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_ToString_void_0045:
    mov -56(%rbp), %rdi
    lea .LN_4_m_size_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_size_j_TPar_ToString_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_size_j_TPar_ToString_void_0050
.Lm_size_j_TPar_ToString_void_004c:
    mov -48(%rbp), %rax
.Lm_size_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_ToString_void_004e:
    jmp .Lm_size_j_TPar_ToString_void_005b
.Lm_size_j_TPar_ToString_void_0050:
.Lm_size_j_TPar_ToString_void_0056:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_size_j_TPar_ToString_void_005b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_size_j_TPar_ToString_void_005c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_size_j_TPar_ToString_void_0061:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_size_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_size_j_TPar_ToString__void, .-m_size_j_TPar_ToString__void
.globl m_timeout_j_TPar_get_typing__void
.type m_timeout_j_TPar_get_typing__void, @function
m_timeout_j_TPar_get_typing__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_timeout_j_TPar_get_typing_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_get_typing_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_timeout_j_TPar_get_typing_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_get_typing_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_timeout_j_TPar_get_typing_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_timeout_j_TPar_get_typing__void, .-m_timeout_j_TPar_get_typing__void
.globl m_timeout_j_TPar_get_timeout__void
.type m_timeout_j_TPar_get_timeout__void, @function
m_timeout_j_TPar_get_timeout__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_timeout_j_TPar_get_timeout_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_get_timeout_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_timeout_j_TPar_get_timeout_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_get_timeout_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_timeout_j_TPar_get_timeout_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_timeout_j_TPar_get_timeout__void, .-m_timeout_j_TPar_get_timeout__void
.globl m_timeout_j_TPar_ctor__gen_gen
.type m_timeout_j_TPar_ctor__gen_gen, @function
m_timeout_j_TPar_ctor__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_timeout_j_TPar_ctor_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_ctor_gen_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_timeout_j_TPar_ctor_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_ctor_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_ctor_gen_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_timeout_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_timeout_j_TPar_ctor_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_ctor_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_ctor_gen_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_timeout_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_timeout_j_TPar_ctor_gen_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_timeout_j_TPar_ctor_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_timeout_j_TPar_ctor__gen_gen, .-m_timeout_j_TPar_ctor__gen_gen
.globl m_timeout_j_TPar_Equals__ref
.type m_timeout_j_TPar_Equals__ref, @function
m_timeout_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_timeout_j_TPar_Equals_ref_003f
.Lm_timeout_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_timeout_j_TPar_Equals_ref_003d
.Lm_timeout_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_typing_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_timeout_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_timeout_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_typing_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_timeout_j_TPar_Equals_ref_003d
.Lm_timeout_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_timeout_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_timeout_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_timeout_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_timeout_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_timeout_j_TPar_Equals_ref_003d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_Equals_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_timeout_j_TPar_Equals_ref_003f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_Equals_ref_0040:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_timeout_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_timeout_j_TPar_Equals__ref, .-m_timeout_j_TPar_Equals__ref
.globl m_timeout_j_TPar_GetHashCode__void
.type m_timeout_j_TPar_GetHashCode__void, @function
m_timeout_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0000:
    mov $1780956048, %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_typing_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_timeout_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_typing_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_timeout_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_timeout_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_timeout_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_GetHashCode_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_timeout_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_timeout_j_TPar_GetHashCode__void, .-m_timeout_j_TPar_GetHashCode__void
.globl m_timeout_j_TPar_ToString__void
.type m_timeout_j_TPar_ToString__void, @function
m_timeout_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_timeout_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_timeout_j_TPar_ToString_void_0001:
    lea .LS_0_m_timeout_j_TPar_ToString_void(%rip), %rdi
    mov $33, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_ToString_void_0006:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_ToString_void_0007:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_ToString_void_000c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_timeout_j_TPar_ToString_void_000f:
    mov -72(%rbp), %rdi
    lea .LN_1_m_timeout_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_timeout_j_TPar_ToString_void_0014:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_timeout_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_timeout_j_TPar_ToString_void_0017:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_timeout_j_TPar_ToString_void_0018:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_timeout_j_TPar_ToString_void_001d:
    mov -72(%rbp), %rdi
    lea .LN_2_m_timeout_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_timeout_j_TPar_ToString_void_0022:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_timeout_j_TPar_ToString_void_0028
.Lm_timeout_j_TPar_ToString_void_0024:
    mov -64(%rbp), %rax
.Lm_timeout_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_ToString_void_0026:
    jmp .Lm_timeout_j_TPar_ToString_void_0033
.Lm_timeout_j_TPar_ToString_void_0028:
.Lm_timeout_j_TPar_ToString_void_002e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_ToString_void_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_timeout_j_TPar_ToString_void_0034:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_ToString_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_3_m_timeout_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_ToString_void_003c:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_timeout_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_ToString_void_003f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_timeout_j_TPar_ToString_void_0040:
    mov -56(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_ToString_void_0045:
    mov -56(%rbp), %rdi
    lea .LN_4_m_timeout_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_timeout_j_TPar_ToString_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_timeout_j_TPar_ToString_void_0050
.Lm_timeout_j_TPar_ToString_void_004c:
    mov -48(%rbp), %rax
.Lm_timeout_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_ToString_void_004e:
    jmp .Lm_timeout_j_TPar_ToString_void_005b
.Lm_timeout_j_TPar_ToString_void_0050:
.Lm_timeout_j_TPar_ToString_void_0056:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_timeout_j_TPar_ToString_void_005b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_timeout_j_TPar_ToString_void_005c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_timeout_j_TPar_ToString_void_0061:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_timeout_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_timeout_j_TPar_ToString__void, .-m_timeout_j_TPar_ToString__void
.globl m_f_AnonymousType13_1_presence_j_TPar_get_presence__void
.type m_f_AnonymousType13_1_presence_j_TPar_get_presence__void, @function
m_f_AnonymousType13_1_presence_j_TPar_get_presence__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_get_presence_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_get_presence_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType13_1_presence_j_TPar_get_presence_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_get_presence_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType13_1_presence_j_TPar_get_presence_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType13_1_presence_j_TPar_get_presence__void, .-m_f_AnonymousType13_1_presence_j_TPar_get_presence__void
.globl m_f_AnonymousType13_1_presence_j_TPar_ctor__gen
.type m_f_AnonymousType13_1_presence_j_TPar_ctor__gen, @function
m_f_AnonymousType13_1_presence_j_TPar_ctor__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ctor_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ctor_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_f_AnonymousType13_1_presence_j_TPar_ctor_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ctor_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ctor_gen_0008:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType13_1_presence_j_TPar_ctor_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_f_AnonymousType13_1_presence_j_TPar_ctor_gen_000d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType13_1_presence_j_TPar_ctor_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType13_1_presence_j_TPar_ctor__gen, .-m_f_AnonymousType13_1_presence_j_TPar_ctor__gen
.globl m_f_AnonymousType13_1_presence_j_TPar_Equals__ref
.type m_f_AnonymousType13_1_presence_j_TPar_Equals__ref, @function
m_f_AnonymousType13_1_presence_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0027
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0025
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType13_1_presence_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_f_AnonymousType13_1_presence_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0025:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0026:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0027:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_0028:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType13_1_presence_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType13_1_presence_j_TPar_Equals__ref, .-m_f_AnonymousType13_1_presence_j_TPar_Equals__ref
.globl m_f_AnonymousType13_1_presence_j_TPar_GetHashCode__void
.type m_f_AnonymousType13_1_presence_j_TPar_GetHashCode__void, @function
m_f_AnonymousType13_1_presence_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_0000:
    mov $-1134217585, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_001c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType13_1_presence_j_TPar_GetHashCode__void, .-m_f_AnonymousType13_1_presence_j_TPar_GetHashCode__void
.globl m_f_AnonymousType13_1_presence_j_TPar_ToString__void
.type m_f_AnonymousType13_1_presence_j_TPar_ToString__void, @function
m_f_AnonymousType13_1_presence_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0001:
    lea .LS_0_m_f_AnonymousType13_1_presence_j_TPar_ToString_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0006:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0007:
    mov -48(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -48(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_000c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_000f:
    mov -64(%rbp), %rdi
    lea .LN_1_m_f_AnonymousType13_1_presence_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0014:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0017:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0018:
    mov -64(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_001d:
    mov -64(%rbp), %rdi
    lea .LN_2_m_f_AnonymousType13_1_presence_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -64(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0022:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0028
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0024:
    mov -56(%rbp), %rax
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0026:
    jmp .Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0033
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0028:
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_002e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0033:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0034:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_0039:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_f_AnonymousType13_1_presence_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_f_AnonymousType13_1_presence_j_TPar_ToString__void, .-m_f_AnonymousType13_1_presence_j_TPar_ToString__void
.globl m_status_msg_j_TPar_get_presence__void
.type m_status_msg_j_TPar_get_presence__void, @function
m_status_msg_j_TPar_get_presence__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_status_msg_j_TPar_get_presence_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_get_presence_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_status_msg_j_TPar_get_presence_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_get_presence_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_status_msg_j_TPar_get_presence_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_status_msg_j_TPar_get_presence__void, .-m_status_msg_j_TPar_get_presence__void
.globl m_status_msg_j_TPar_get_status_msg__void
.type m_status_msg_j_TPar_get_status_msg__void, @function
m_status_msg_j_TPar_get_status_msg__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_status_msg_j_TPar_get_status_msg_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_get_status_msg_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_status_msg_j_TPar_get_status_msg_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_get_status_msg_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_status_msg_j_TPar_get_status_msg_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_status_msg_j_TPar_get_status_msg__void, .-m_status_msg_j_TPar_get_status_msg__void
.globl m_status_msg_j_TPar_ctor__gen_gen
.type m_status_msg_j_TPar_ctor__gen_gen, @function
m_status_msg_j_TPar_ctor__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_status_msg_j_TPar_ctor_gen_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_ctor_gen_gen_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_status_msg_j_TPar_ctor_gen_gen_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_ctor_gen_gen_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_ctor_gen_gen_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_status_msg_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_status_msg_j_TPar_ctor_gen_gen_000d:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_ctor_gen_gen_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_ctor_gen_gen_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_status_msg_j_TPar_ctor_gen_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_status_msg_j_TPar_ctor_gen_gen_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_status_msg_j_TPar_ctor_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_status_msg_j_TPar_ctor__gen_gen, .-m_status_msg_j_TPar_ctor__gen_gen
.globl m_status_msg_j_TPar_Equals__ref
.type m_status_msg_j_TPar_Equals__ref, @function
m_status_msg_j_TPar_Equals__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0001:
    mov -40(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0008:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0009:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %rcx, %rax
    je .Lm_status_msg_j_TPar_Equals_ref_003f
.Lm_status_msg_j_TPar_Equals_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_000c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_status_msg_j_TPar_Equals_ref_003d
.Lm_status_msg_j_TPar_Equals_ref_000e:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0013:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0014:
    mov -56(%rbp), %rdi
    lea .LN_0_m_status_msg_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0019:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_001a:
    mov -64(%rbp), %rdi
    lea .LN_1_m_status_msg_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0024:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_status_msg_j_TPar_Equals_ref_003d
.Lm_status_msg_j_TPar_Equals_ref_0026:
    call m_System_Collections_Generic_EqualityComparer_1_status_msg_j_TPar_get_Default__void
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_002c:
    mov -56(%rbp), %rdi
    lea .LN_2_m_status_msg_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0031:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0032:
    mov -64(%rbp), %rdi
    lea .LN_3_m_status_msg_j_TPar_Equals_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0037:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_status_msg_j_TPar_Equals__gen_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_003c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_status_msg_j_TPar_Equals_ref_003d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_status_msg_j_TPar_Equals_ref_003f:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_Equals_ref_0040:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_status_msg_j_TPar_Equals_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_status_msg_j_TPar_Equals__ref, .-m_status_msg_j_TPar_Equals__ref
.globl m_status_msg_j_TPar_GetHashCode__void
.type m_status_msg_j_TPar_GetHashCode__void, @function
m_status_msg_j_TPar_GetHashCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0000:
    mov $330530787, %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0005:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_000a:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_000b:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0011:
    mov -40(%rbp), %rdi
    lea .LN_0_m_status_msg_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0016:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_presence_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_001b:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_001c:
    mov $-1521134295, %rax
    mov %rax, -32(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0021:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    imul %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0022:
    call m_System_Collections_Generic_EqualityComparer_1_status_msg_j_TPar_get_Default__void
    mov %rax, -32(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0028:
    mov -40(%rbp), %rdi
    lea .LN_1_m_status_msg_j_TPar_GetHashCode_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_EqualityComparer_1_status_msg_j_TPar_GetHashCode__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0032:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_GetHashCode_void_0033:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_status_msg_j_TPar_GetHashCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_status_msg_j_TPar_GetHashCode__void, .-m_status_msg_j_TPar_GetHashCode__void
.globl m_status_msg_j_TPar_ToString__void
.type m_status_msg_j_TPar_ToString__void, @function
m_status_msg_j_TPar_ToString__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0000:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0001:
    lea .LS_0_m_status_msg_j_TPar_ToString_void(%rip), %rdi
    mov $38, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0006:
    mov $2, %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0007:
    mov -56(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_ToString_void_000c:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_ToString_void_000d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_ToString_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_status_msg_j_TPar_ToString_void_000f:
    mov -72(%rbp), %rdi
    lea .LN_1_m_status_msg_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0014:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0015:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0017:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0018:
    mov -72(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_status_msg_j_TPar_ToString_void_001d:
    mov -72(%rbp), %rdi
    lea .LN_2_m_status_msg_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0022:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_status_msg_j_TPar_ToString_void_0028
.Lm_status_msg_j_TPar_ToString_void_0024:
    mov -64(%rbp), %rax
.Lm_status_msg_j_TPar_ToString_void_0025:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0026:
    jmp .Lm_status_msg_j_TPar_ToString_void_0033
.Lm_status_msg_j_TPar_ToString_void_0028:
.Lm_status_msg_j_TPar_ToString_void_002e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_status_msg_j_TPar_ToString_void_0034:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0035:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0037:
    mov -56(%rbp), %rdi
    lea .LN_3_m_status_msg_j_TPar_ToString_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_ToString_void_003c:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_status_msg_j_TPar_ToString_void_003d:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_ToString_void_003f:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0040:
    mov -56(%rbp), %rax
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0045:
    mov -56(%rbp), %rdi
    lea .LN_4_m_status_msg_j_TPar_ToString_void(%rip), %rsi
    call shim_box
    mov %rax, -56(%rbp)
.Lm_status_msg_j_TPar_ToString_void_004a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_status_msg_j_TPar_ToString_void_0050
.Lm_status_msg_j_TPar_ToString_void_004c:
    mov -48(%rbp), %rax
.Lm_status_msg_j_TPar_ToString_void_004d:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_ToString_void_004e:
    jmp .Lm_status_msg_j_TPar_ToString_void_005b
.Lm_status_msg_j_TPar_ToString_void_0050:
.Lm_status_msg_j_TPar_ToString_void_0056:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_status_msg_j_TPar_ToString_void_005b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_status_msg_j_TPar_ToString_void_005c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_String_Format__ref_ref_arr
    mov %rax, -16(%rbp)
.Lm_status_msg_j_TPar_ToString_void_0061:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_status_msg_j_TPar_ToString_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_status_msg_j_TPar_ToString__void, .-m_status_msg_j_TPar_ToString__void
.globl m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext__void
.type m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext__void, @function
m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0001:
    mov -72(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0006:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0008:
    mov -72(%rbp), %rax
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0009:
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_000b:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00c1
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0011:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0016:
    lea .LS_2_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_001b:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0020:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0029
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0022:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0023:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0024:
    jmp .Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0106
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0029:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_002a:
    mov -72(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_002f:
    mov $6, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0030:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0035:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0036:
    mov -80(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_003b:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_003c:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_003d:
    mov $47, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_003f:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0040:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__arr
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0045:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0046:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0047:
    mov -72(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0048:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0049:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_004a:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    cmp %ecx, %eax
    jge .Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0053
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_004c:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_004d:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_004e:
    jmp .Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0106
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0053:
    mov $5, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0054:
    mov -88(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0059:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_005a:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_005b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_005c:
    mov -104(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0061:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0062:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0063:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0064:
    lea .LS_5_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0069:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_006a:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_006b:
    mov $2, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_006c:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_006d:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_006e:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_006f:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0070:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0071:
    mov $3, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0072:
    lea .LS_6_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0077:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0078:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0079:
    mov $4, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_007a:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_007b:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_007c:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_007d:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_007e:
    mov -64(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0083:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0084:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0085:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_008a:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_008b:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetByteArrayAsync__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0090:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_uint8_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0095:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0097:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0099:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_uint8_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_009e:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00de
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00a0:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00a1:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00a2:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00a3:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00a4:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00a9:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00aa:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00ac:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00b1:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00b2:
    mov -72(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00b7:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00b9:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00ba:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_uint8_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_uint8_valuetype_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0__gen_gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00bf:
    jmp .Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_011a
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00c1:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00c2:
    mov -72(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00c7:
    mov -72(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00c9:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00ca:
    mov -72(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00cf:
    mov -72(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00d5:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00d6:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00d7:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00d8:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00d9:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_13_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00de:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00e0:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_uint8_GetResult__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00e5:
    mov -72(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_00e6:
    jmp .Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0106
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0106:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0107:
    mov $-2, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0109:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_010e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_010f:
    mov -72(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0114:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_0115:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_uint8_SetResult__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_011a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext__void, .-m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext__void
.globl m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine__ref
.type m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine__ref, @function
m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_uint8_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine__ref, .-m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine__ref
.globl m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent__ref_ref_ref
.type m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent__ref_ref_ref, @function
m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_uint8_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_uint8_Start_valuetype_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_003a:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_003c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_uint8_get_Task__void
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_0046:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent__ref_ref_ref, .-m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent__ref_ref_ref
.globl m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext__void
.type m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext__void, @function
m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0051
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0012:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0013:
    mov -64(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0018:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_get_Token__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_001d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_SyncLoop__v
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0022:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0027:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0028:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_002a:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_002f:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_006d
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0032:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0033:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0034:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0035:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_003a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_003b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_003c:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0041:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0042:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0047:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0049:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_004a:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Matrix_Core_StartSyncLoop_b_60_0_d__gen_gen
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_004f:
    jmp .Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_00a0
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0051:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0052:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0057:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0058:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0059:
    mov -56(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_005e:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0064:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0065:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0066:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0067:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0068:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_006d:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_006f:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0074:
    jmp .Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_008d
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_008d:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_008e:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0090:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0095:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_0096:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_009b:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_00a0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext__void, .-m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext__void
.globl m_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine__ref
.type m_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine__ref, @function
m_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine__ref, .-m_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine__ref
.globl m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext__void
.type m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext__void, @function
m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0006:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0008:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_000d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_000f:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_005b
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0012:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0017:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0018:
    mov -64(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_001d:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0022:
    lea .LN_5_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0027:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent__ref_ref_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_002c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_uint8_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0031:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0032:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0034:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_uint8_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0039:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0077
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_003b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_003c:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_003d:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_003e:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_003f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0045:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0046:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_004b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_004c:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0051:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0053:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0054:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_uint8_valuetype_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d__gen_gen
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0059:
    jmp .Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_00ab
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_005b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_005c:
    mov -56(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0061:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0062:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0063:
    mov -56(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0068:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_006e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_006f:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0070:
    mov -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0071:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0072:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0077:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0079:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_uint8_GetResult__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_007e:
    mov -56(%rbp), %rax
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_007f:
    jmp .Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0098
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0098:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_0099:
    mov $-2, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_009b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_00a0:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_00a1:
    mov -56(%rbp), %rdi
    lea .LN_13_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_00a6:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_00ab:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext__void, .-m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext__void
.globl m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine__ref
.type m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine__ref, @function
m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine__ref, .-m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine__ref
.globl m_Matrix_Core_c_DisplayClass47_0_ctor__void
.type m_Matrix_Core_c_DisplayClass47_0_ctor__void, @function
m_Matrix_Core_c_DisplayClass47_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Matrix_Core_c_DisplayClass47_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass47_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass47_0_ctor__void, .-m_Matrix_Core_c_DisplayClass47_0_ctor__void
.globl m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0__void
.type m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0__void, @function
m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d__gen
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0__void, .-m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0__void
.globl m_Matrix_Core_c_DisplayClass62_0_ctor__void
.type m_Matrix_Core_c_DisplayClass62_0_ctor__void, @function
m_Matrix_Core_c_DisplayClass62_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Matrix_Core_c_DisplayClass62_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass62_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass62_0_ctor__void, .-m_Matrix_Core_c_DisplayClass62_0_ctor__void
.globl m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0__ref
.type m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0__ref, @function
m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0006:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_000b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_000c:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0010
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_000e:
    mov -24(%rbp), %rax
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_000f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0011:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0017:
    mov -40(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_001c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_001d:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0022:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0023:
    lea .LN_5_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_MessageRecievedBottle_ctor__ref_ref_b
    mov %r12, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_0028:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_Invoke__ref_gen
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_002d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0__ref, .-m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0__ref
.globl m_Matrix_Core_c_DisplayClass62_1_ctor__void
.type m_Matrix_Core_c_DisplayClass62_1_ctor__void, @function
m_Matrix_Core_c_DisplayClass62_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Matrix_Core_c_DisplayClass62_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass62_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass62_1_ctor__void, .-m_Matrix_Core_c_DisplayClass62_1_ctor__void
.globl m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1__ref
.type m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1__ref, @function
m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0006:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_000b:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0010:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0011:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0015
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0013:
    mov -24(%rbp), %rax
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0014:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0015:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0016:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_001b:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0021:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_002c:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0031:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0032:
    lea .LN_8_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_MessageRecievedBottle_ctor__ref_ref_b
    mov %r12, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_0037:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_MessageBottle_Invoke__ref_gen
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_003c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1__ref, .-m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1__ref
.globl m_Matrix_Core_c_DisplayClass63_0_ctor__void
.type m_Matrix_Core_c_DisplayClass63_0_ctor__void, @function
m_Matrix_Core_c_DisplayClass63_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Matrix_Core_c_DisplayClass63_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass63_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass63_0_ctor__void, .-m_Matrix_Core_c_DisplayClass63_0_ctor__void
.globl m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0__ref
.type m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0__ref, @function
m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0006:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_000b:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_Clear__void
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0011:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0016:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_001b:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_001c:
    jmp .Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0037
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_001e:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0020:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Current__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0025:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0027:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_002c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0031:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0032:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_Add__gen
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0037:
    lea -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0039:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_MoveNext__void
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_003e:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_001e
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0040:
    jmp .Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0050
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_0050:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0__ref, .-m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0__ref
.globl m_Matrix_Core_Authenticate_d_38_SetStateMachine__ref
.type m_Matrix_Core_Authenticate_d_38_SetStateMachine__ref, @function
m_Matrix_Core_Authenticate_d_38_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_Authenticate_d_38_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Authenticate_d_38_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_Authenticate_d_38_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Authenticate_d_38_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_d_38_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Authenticate_d_38_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_Authenticate_d_38_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_Authenticate_d_38_SetStateMachine__ref, .-m_Matrix_Core_Authenticate_d_38_SetStateMachine__ref
.globl m_Matrix_Core_Authenticate_d_40_MoveNext__void
.type m_Matrix_Core_Authenticate_d_40_MoveNext__void, @function
m_Matrix_Core_Authenticate_d_40_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0001:
    mov -88(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0006:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0008:
    mov -88(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_000d:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_000f:
    mov -88(%rbp), %rax
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0010:
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0012:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00fd
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0017:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0019:
    mov -96(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_001e:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_PasswordOrToken__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0023:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0028:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0029:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_002a:
    mov -96(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_002f:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_SavedCredential_get_User__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0034:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0039:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_003a:
    mov -88(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_003f:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0044:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0045:
    mov -96(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_004a:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_004b:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_004c:
    mov $64, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_004e:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_004f:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_TrimStart__arr
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0054:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0055:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0056:
    lea .LS_7_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_005b:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Contains__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0060:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0092
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0062:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0063:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0064:
    mov -96(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0069:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_006a:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_006b:
    mov $58, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_006d:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_006e:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_006f:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0070:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__arr_i4_v
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0075:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0077:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0079:
    mov -88(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_007a:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_007b:
    mov $2, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_007c:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0092
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_007e:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_007f:
    lea .LS_8_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0084:
    mov -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0086:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0087:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0088:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_008d:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0092:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0093:
    mov -104(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0098:
    mov -104(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_009d:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00c3
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_009f:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00a0:
    mov -104(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00a5:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00a6:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00ab
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00a8:
    mov -96(%rbp), %rax
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00a9:
    jmp .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00bc
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00ab:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00ac:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00ad:
    lea .LS_12_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rdi
    mov $51, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00b2:
    lea .LN_13_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00b7:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00bc:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00bd:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00be:
    jmp .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_016c
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00c3:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00c4:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_StartClient__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00c9:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00ce:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00d0:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00d2:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_IsCompleted__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00d7:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_011a
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00d9:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00da:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00db:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00dc:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00dd:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00e2:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00e3:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00e5:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00ea:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00eb:
    mov -96(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00f0:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00f2:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00f3:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_valuetype_Yggdrasil_Yggdrasil_Enumerations_LoginResult_valuetype_Matrix_Core_Authenticate_d_40__gen_gen
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00f8:
    jmp .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0180
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00fd:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_00fe:
    mov -88(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0103:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0105:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0106:
    mov -88(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_010b:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0111:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0112:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0113:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0114:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0115:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_011a:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_011c:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_GetResult__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0121:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0122:
    jmp .Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_016c
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_016c:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_016d:
    mov $-2, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_016f:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0174:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0175:
    mov -96(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_Authenticate_d_40_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_017a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_017b:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetResult__gen
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_0180:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_Authenticate_d_40_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_Authenticate_d_40_MoveNext__void, .-m_Matrix_Core_Authenticate_d_40_MoveNext__void
.globl m_Matrix_Core_Authenticate_d_40_SetStateMachine__ref
.type m_Matrix_Core_Authenticate_d_40_SetStateMachine__ref, @function
m_Matrix_Core_Authenticate_d_40_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_Authenticate_d_40_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Authenticate_d_40_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_Authenticate_d_40_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_Authenticate_d_40_SetStateMachine__ref, .-m_Matrix_Core_Authenticate_d_40_SetStateMachine__ref
.globl m_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine__ref
.type m_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine__ref, @function
m_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine__ref, .-m_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine__ref
.globl m_Matrix_Core_FetchContacts_d_43_MoveNext__void
.type m_Matrix_Core_FetchContacts_d_43_MoveNext__void, @function
m_Matrix_Core_FetchContacts_d_43_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0046
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0012:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_FetchFromInitialSync__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0017:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_001c:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_001d:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_001f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_IsCompleted__void
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0024:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0062
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0026:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0027:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0028:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0029:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_002a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_002f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0030:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0031:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0037:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_003c:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_003f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_valuetype_netstandard_System_ValueTuple_2_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_DirectMessage_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Conversation_valuetype_Matrix_Core_FetchContacts_d_43__gen_gen
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0044:
    jmp .Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_009e
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0046:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0047:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_004c:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_004e:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0053:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_005a:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_005b:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_005c:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_005d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0062:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0064:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0069:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_006e:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_006f:
    jmp .Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_008a
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_008a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_008b:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_008d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0092:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0093:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_FetchContacts_d_43_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0098:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_0099:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_SetResult__gen
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_009e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchContacts_d_43_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchContacts_d_43_MoveNext__void, .-m_Matrix_Core_FetchContacts_d_43_MoveNext__void
.globl m_Matrix_Core_FetchContacts_d_43_SetStateMachine__ref
.type m_Matrix_Core_FetchContacts_d_43_SetStateMachine__ref, @function
m_Matrix_Core_FetchContacts_d_43_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchContacts_d_43_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_d_43_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchContacts_d_43_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchContacts_d_43_SetStateMachine__ref, .-m_Matrix_Core_FetchContacts_d_43_SetStateMachine__ref
.globl m_Matrix_Core_FetchConversations_d_44_MoveNext__void
.type m_Matrix_Core_FetchConversations_d_44_MoveNext__void, @function
m_Matrix_Core_FetchConversations_d_44_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0001:
    mov -64(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0006:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0008:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_000d:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_000f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0046
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0011:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0012:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_FetchFromInitialSync__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0017:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_001c:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_001d:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_001f:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_IsCompleted__void
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0024:
    mov -64(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0062
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0026:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0027:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0028:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0029:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_002a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_002f:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0030:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0031:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0036:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0037:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_003c:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_003f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_valuetype_netstandard_System_ValueTuple_2_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_DirectMessage_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Conversation_valuetype_Matrix_Core_FetchConversations_d_44__gen_gen
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0044:
    jmp .Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_009e
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0046:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0047:
    mov -64(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_004c:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_004e:
    mov -64(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0053:
    mov -64(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0059:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_005a:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_005b:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_005c:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_005d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0062:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0064:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetResult__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0069:
    mov -64(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_006e:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_006f:
    jmp .Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_008a
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_008a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_008b:
    mov $-2, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_008d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0092:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0093:
    mov -64(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_FetchConversations_d_44_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0098:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_0099:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_SetResult__gen
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_009e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchConversations_d_44_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchConversations_d_44_MoveNext__void, .-m_Matrix_Core_FetchConversations_d_44_MoveNext__void
.globl m_Matrix_Core_FetchConversations_d_44_SetStateMachine__ref
.type m_Matrix_Core_FetchConversations_d_44_SetStateMachine__ref, @function
m_Matrix_Core_FetchConversations_d_44_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchConversations_d_44_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_d_44_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchConversations_d_44_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchConversations_d_44_SetStateMachine__ref, .-m_Matrix_Core_FetchConversations_d_44_SetStateMachine__ref
.globl m_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine__ref
.type m_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine__ref, @function
m_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine__ref, .-m_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine__ref
.globl m_Matrix_Core_FetchMessages_d_57_SetStateMachine__ref
.type m_Matrix_Core_FetchMessages_d_57_SetStateMachine__ref, @function
m_Matrix_Core_FetchMessages_d_57_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_FetchMessages_d_57_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchMessages_d_57_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchMessages_d_57_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchMessages_d_57_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchMessages_d_57_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchMessages_d_57_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchMessages_d_57_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchMessages_d_57_SetStateMachine__ref, .-m_Matrix_Core_FetchMessages_d_57_SetStateMachine__ref
.globl m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext__void
.type m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext__void, @function
m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0001:
    mov -104(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0006:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0008:
    mov -104(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_000d:
    mov -104(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_000f:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0010:
    mov -112(%rbp), %rax
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0011:
    mov -104(%rbp), %rax
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0012:
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0013:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0014:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00aa
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0019:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_001a:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_001b:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00d6
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0020:
    lea .LN_2_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0025:
    mov $7, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0026:
    mov -112(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_002b:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_002c:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_002d:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_002e:
    mov -128(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0033:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0034:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0035:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0036:
    lea .LS_4_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_003b:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_003c:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_003d:
    mov $2, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_003e:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_003f:
    mov -120(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0044:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0045:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0046:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0047:
    lea .LS_6_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_004c:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_004d:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_004e:
    mov $4, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_004f:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0050:
    mov -120(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0055:
    mov -120(%rbp), %rdi
    call m_System_Uri_EscapeDataString__ref
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_005a:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_005b:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_005c:
    mov $5, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_005d:
    lea .LS_8_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0062:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0063:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0064:
    mov $6, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0065:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0066:
    mov -120(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_006b:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_006c:
    mov -96(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0071:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetAsync__ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0076:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_007b:
    mov -104(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_007d:
    lea -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_007f:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0084:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00c7
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0086:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0087:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0088:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0089:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_008a:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_008f:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0090:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0092:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0097:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0098:
    mov -104(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_009d:
    lea -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_009f:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00a0:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_GetDisplayNameForUser_d_66__gen_gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00a5:
    jmp .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01ef
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00aa:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00ab:
    mov -104(%rbp), %rdi
    lea .LN_13_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00b0:
    mov -104(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00b2:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00b3:
    mov -104(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00b8:
    mov -104(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00be:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00bf:
    mov $-1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00c0:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00c1:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00c2:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00c7:
    lea -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00c9:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00ce:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00cf:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00d0:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00d1:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00d6:
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00d7:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00d8:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00d9:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_012f
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00db:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00dc:
    mov -104(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00e1:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00e6:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0193
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00eb:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00ec:
    mov -104(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00f1:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00f6:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_00fb:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0100:
    mov -104(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0102:
    lea -88(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0104:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0109:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_014c
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_010b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_010c:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_010d:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_010e:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_010f:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0114:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0115:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0117:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_011c:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_011d:
    mov -104(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0122:
    lea -88(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0124:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0125:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Matrix_Core_GetDisplayNameForUser_d_66__gen_gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_012a:
    jmp .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01ef
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_012f:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0130:
    mov -104(%rbp), %rdi
    lea .LN_22_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0135:
    mov -104(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0137:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0138:
    mov -104(%rbp), %rdi
    lea .LN_23_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_013d:
    mov -104(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0143:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0144:
    mov $-1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0145:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0146:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0147:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_24_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_014c:
    lea -88(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_014e:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0153:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0154:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Deserialize_valuetype_System_Text_Json_System_Text_Json_JsonElement__ref_ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0159:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_015b:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_015d:
    lea .LS_25_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0162:
    lea -72(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0164:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0169:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0193
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_016b:
    lea -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_016d:
    lea .LS_26_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0172:
    lea -80(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0174:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0179:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0193
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_017b:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_017d:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0182:
    mov -104(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0187:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0193
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0189:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_018b:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0190:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0191:
    jmp .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01db
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_0193:
    jmp .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01ad
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01ad:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01ae:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01af:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_27_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01b4:
    jmp .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01b9
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01b9:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01ba:
    mov -104(%rbp), %rdi
    lea .LN_28_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01bf:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01c0:
    jmp .Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01db
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01db:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01dc:
    mov $-2, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01de:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_29_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01e3:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01e4:
    mov -104(%rbp), %rdi
    lea .LN_30_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01e9:
    mov -40(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01ea:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_SetResult__gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_01ef:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext__void, .-m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext__void
.globl m_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine__ref
.type m_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine__ref, @function
m_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine__ref, .-m_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine__ref
.globl m_Matrix_Core_GetMessageById_d_64_SetStateMachine__ref
.type m_Matrix_Core_GetMessageById_d_64_SetStateMachine__ref, @function
m_Matrix_Core_GetMessageById_d_64_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_GetMessageById_d_64_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetMessageById_d_64_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetMessageById_d_64_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetMessageById_d_64_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetMessageById_d_64_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetMessageById_d_64_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetMessageById_d_64_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetMessageById_d_64_SetStateMachine__ref, .-m_Matrix_Core_GetMessageById_d_64_SetStateMachine__ref
.globl m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext__void
.type m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext__void, @function
m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $192, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0001:
    mov -160(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0006:
    mov -160(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0008:
    mov -160(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_000d:
    mov -160(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_000f:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0010:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_001d
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0013:
    lea .LN_2_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0018:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_001d:
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_001e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_001f:
    mov -160(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_009c
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0021:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0022:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0023:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00ca
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0028:
    lea .LN_4_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_002d:
    mov $5, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_002e:
    mov -168(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0033:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0034:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0035:
    mov -32(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0036:
    mov -184(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_003b:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_003c:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_003d:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_003e:
    lea .LS_6_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0043:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0044:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0045:
    mov $2, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0046:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0047:
    mov -176(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_004c:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_004d:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_004e:
    mov $3, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_004f:
    lea .LS_8_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0054:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0055:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0056:
    mov $4, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0057:
    mov -32(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0058:
    mov -176(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_005d:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_005e:
    mov -152(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0063:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetAsync__ref
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0068:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_006d:
    mov -160(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_006f:
    lea -80(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0071:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0076:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00b9
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0078:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0079:
    mov $0, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_007a:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_007b:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_007c:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0081:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0082:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0084:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0089:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_008a:
    mov -160(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_008f:
    lea -80(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0091:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0092:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_GetRoomMemberDisplayNames_d_65__gen_gen
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0097:
    jmp .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_025d
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_009c:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_009d:
    mov -160(%rbp), %rdi
    lea .LN_13_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00a2:
    mov -160(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00a4:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00a5:
    mov -160(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00aa:
    mov -160(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00b0:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00b1:
    mov $-1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00b2:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00b3:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00b4:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00b9:
    lea -80(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00bb:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00c0:
    mov -160(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00c2:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00c3:
    mov -72(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00c5:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00ca:
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00cb:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00cc:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00cd:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_012c
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00cf:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00d0:
    mov -160(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00d5:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00da:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00e8
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00dc:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00dd:
    mov -160(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00e2:
    mov -160(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00e3:
    jmp .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0242
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00e8:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00e9:
    mov -160(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00ee:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00f3:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00f8:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00fd:
    mov -160(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_00ff:
    lea -88(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0101:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0106:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0149
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0108:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0109:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_010a:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_010b:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_010c:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0111:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0112:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0114:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0119:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_011a:
    mov -160(%rbp), %rdi
    lea .LN_22_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_011f:
    lea -88(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0121:
    mov -16(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0122:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Matrix_Core_GetRoomMemberDisplayNames_d_65__gen_gen
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0127:
    jmp .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_025d
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_012c:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_012d:
    mov -160(%rbp), %rdi
    lea .LN_23_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0132:
    mov -160(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0134:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0135:
    mov -160(%rbp), %rdi
    lea .LN_24_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_013a:
    mov -160(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0140:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0141:
    mov $-1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0142:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0143:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0144:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_25_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0149:
    lea -88(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_014b:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0150:
    mov -160(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0151:
    jmp .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_016b
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_016b:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_016c:
    xor %eax, %eax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_016d:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_26_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0172:
    mov -48(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0173:
    xor %eax, %eax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0174:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Deserialize_valuetype_System_Text_Json_System_Text_Json_JsonElement__ref_ref
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0179:
    mov -160(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_017b:
    lea -56(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_017d:
    lea .LS_27_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0182:
    lea -64(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0184:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0189:
    mov -160(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0214
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_018e:
    lea -64(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0190:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_EnumerateObject__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0195:
    mov -160(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0197:
    lea -104(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0199:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ObjectEnumerator_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_019e:
    mov -160(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01a0:
    jmp .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01f7
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01a2:
    lea -96(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01a4:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ObjectEnumerator_get_Current__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01a9:
    mov -160(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01ab:
    lea -112(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01ad:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonProperty_get_Name__void
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01b2:
    mov -160(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01b4:
    mov -120(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01b6:
    mov -160(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01b8:
    lea -112(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01ba:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonProperty_get_Value__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01bf:
    mov -160(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01c1:
    lea -144(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01c3:
    lea .LS_28_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01c8:
    lea -136(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01ca:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01cf:
    mov -160(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01e8
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01d1:
    lea -136(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01d3:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01d8:
    mov -160(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01dd:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01e8
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01df:
    lea -136(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01e1:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01e6:
    mov -160(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01e8:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01e9:
    mov -160(%rbp), %rdi
    lea .LN_29_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01ee:
    mov -120(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01f0:
    mov -128(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01f2:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_set_Item__gen_gen
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01f7:
    lea -96(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01f9:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ObjectEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01fe:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_01a2
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0200:
    jmp .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0214
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0214:
    jmp .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0219
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0219:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_021a:
    mov -160(%rbp), %rdi
    lea .LN_30_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_021f:
    mov -160(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0220:
    jmp .Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0242
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0242:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0243:
    mov $-2, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0245:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_31_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_024a:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_024b:
    xor %eax, %eax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_024c:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_32_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0251:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0252:
    mov -160(%rbp), %rdi
    lea .LN_33_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0257:
    mov -40(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_0258:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_SetResult__gen
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_025d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext__void, .-m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext__void
.globl m_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine__ref
.type m_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine__ref, @function
m_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine__ref, .-m_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine__ref
.globl m_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine__ref
.type m_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine__ref, @function
m_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine__ref, .-m_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine__ref
.globl m_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine__ref
.type m_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine__ref, @function
m_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine__ref, .-m_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine__ref
.globl m_Matrix_Core_SendImageMessage_d_50_MoveNext__void
.type m_Matrix_Core_SendImageMessage_d_50_MoveNext__void, @function
m_Matrix_Core_SendImageMessage_d_50_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $224, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0001:
    mov -152(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0006:
    mov -152(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0008:
    mov -152(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_000d:
    mov -152(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_000f:
    mov $2, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0010:
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0037
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0013:
    mov -152(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0018:
    mov -152(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_001d:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0030
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0020:
    mov -152(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0025:
    mov -152(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0030
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0027:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0028:
    mov -152(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_002d:
    mov -152(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_002e:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0037
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0030:
    mov $0, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0031:
    mov -160(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0032:
    jmp .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0348
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0037:
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0038:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0039:
    mov -160(%rbp), %rax
    cmp $0, %eax
    je .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00e0
    cmp $1, %eax
    je .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_010e
    cmp $2, %eax
    je .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02c0
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_004a:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_004b:
    mov -160(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0050:
    lea .LN_6_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -160(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_ByteArrayContent_ctor__arr
    mov %r12, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0055:
    mov -160(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0056:
    mov -48(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0057:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_get_Headers__void
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_005c:
    lea .LS_7_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0061:
    lea .LN_8_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -168(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_Headers_MediaTypeHeaderValue_ctor__ref
    mov %r12, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0066:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_HttpContentHeaders_set_ContentType__ref
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_006b:
    lea .LN_9_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0070:
    mov $5, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0071:
    mov -168(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0076:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0077:
    mov $0, %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0078:
    mov -32(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0079:
    mov -184(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_007e:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_007f:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0080:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0081:
    lea .LS_11_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $34, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0086:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0087:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0088:
    mov $2, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0089:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_008a:
    mov -168(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_008f:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0090:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0091:
    mov $3, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0092:
    lea .LS_13_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0097:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0098:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0099:
    mov $4, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_009a:
    mov -32(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_009b:
    mov -168(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00a0:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00a1:
    mov -144(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -144(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00a6:
    mov -48(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00a7:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_PostAsync__ref_ref
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00ac:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00b1:
    mov -152(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00b3:
    lea -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00b5:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00ba:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00fd
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00bc:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00bd:
    mov $0, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00be:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00bf:
    mov -160(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00c0:
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00c5:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00c6:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00c8:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00cd:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00ce:
    mov -152(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00d3:
    lea -88(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00d5:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00d6:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_SendImageMessage_d_50__gen_gen
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00db:
    jmp .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_035c
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00e0:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00e1:
    mov -160(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00e6:
    mov -160(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00e8:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00e9:
    mov -160(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00ee:
    mov -160(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00f4:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00f5:
    mov $-1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00f6:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00f7:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00f8:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00fd:
    lea -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_00ff:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0104:
    mov -152(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0106:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0107:
    mov -80(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0109:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_010e:
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_010f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0110:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0111:
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0188
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0113:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0114:
    mov -160(%rbp), %rdi
    lea .LN_22_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0119:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_011e:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0144
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0120:
    mov -32(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0121:
    mov -160(%rbp), %rdi
    lea .LN_23_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0126:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0127:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_012c
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0129:
    mov -152(%rbp), %rax
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_012a:
    jmp .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_013d
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_012c:
    mov -32(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_012d:
    mov $0, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_012e:
    lea .LS_24_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0133:
    lea .LN_25_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0138:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_013d:
    mov $0, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_013e:
    mov -152(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_013f:
    jmp .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0348
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0144:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0145:
    mov -160(%rbp), %rdi
    lea .LN_26_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_014a:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_014f:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0154:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0159:
    mov -160(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_015b:
    lea -104(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_015d:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0162:
    mov -160(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01a5
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0164:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0165:
    mov $1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0166:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0167:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0168:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_27_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_016d:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_016e:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0170:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_28_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0175:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0176:
    mov -152(%rbp), %rdi
    lea .LN_29_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_017b:
    lea -104(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_017d:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_017e:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Matrix_Core_SendImageMessage_d_50__gen_gen
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0183:
    jmp .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_035c
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0188:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0189:
    mov -160(%rbp), %rdi
    lea .LN_30_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_018e:
    mov -160(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0190:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0191:
    mov -160(%rbp), %rdi
    lea .LN_31_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0196:
    mov -160(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_019c:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_019d:
    mov $-1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_019e:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_019f:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01a0:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_32_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01a5:
    lea -104(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01a7:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01ac:
    xor %eax, %eax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01ad:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Deserialize_valuetype_System_Text_Json_System_Text_Json_JsonElement__ref_ref
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01b2:
    mov -160(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01b4:
    lea -96(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01b6:
    lea .LS_33_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01bb:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01c0:
    mov -160(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01c2:
    lea -112(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01c4:
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01c9:
    mov -160(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01cb:
    jmp .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01e5
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01e5:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01e6:
    xor %eax, %eax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01e7:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_34_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01ec:
    lea .LS_35_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01f1:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01f2:
    mov -168(%rbp), %rdi
    lea .LN_36_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01f7:
    mov -56(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01f9:
    lea .LS_37_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01fe:
    mov -16(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_01ff:
    mov -192(%rbp), %rdi
    lea .LN_38_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -192(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0204:
    mov -192(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -192(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0205:
    mov -200(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -200(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0206:
    lea .LN_39_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__gen_gen
    mov %r12, -200(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_020b:
    lea .LN_40_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -200(%rbp), %r8
    mov -192(%rbp), %rcx
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__gen_gen_gen_gen
    mov %r12, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0210:
    xor %eax, %eax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0211:
    mov -184(%rbp), %rsi
    mov -176(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Serialize_class_f_AnonymousType10_4_string_string_string_class_f_AnonymousType11_2_string_int32__gen_ref
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0216:
    mov -176(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0218:
    call m_System_Guid_NewGuid__void
    movslq %eax, %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_021d:
    mov -176(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_021f:
    lea -120(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0221:
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0227:
    mov -176(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_022c:
    mov -176(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_022e:
    lea .LN_41_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0233:
    mov $7, %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0234:
    mov -184(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0239:
    mov -184(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_023a:
    mov $0, %rax
    mov %rax, -192(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_023b:
    mov -32(%rbp), %rax
    mov %rax, -200(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_023c:
    mov -200(%rbp), %rdi
    lea .LN_42_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -200(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0241:
    mov -200(%rbp), %rdx
    mov -192(%rbp), %rcx
    mov -184(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0242:
    mov -176(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0243:
    mov $1, %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0244:
    lea .LS_43_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -192(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0249:
    mov -192(%rbp), %rdx
    mov -184(%rbp), %rcx
    mov -176(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_024a:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_024b:
    mov $2, %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_024c:
    mov -16(%rbp), %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_024d:
    mov -184(%rbp), %rdi
    lea .LN_44_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -184(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0252:
    mov -184(%rbp), %rdx
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0253:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0254:
    mov $3, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0255:
    lea .LS_45_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_025a:
    mov -176(%rbp), %rdx
    mov -168(%rbp), %rcx
    mov -160(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_025b:
    mov -152(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_025c:
    mov $4, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_025d:
    mov -72(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_025f:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0260:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0261:
    mov $5, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0262:
    lea .LS_46_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0267:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0268:
    mov -144(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0269:
    mov $6, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_026a:
    mov -32(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_026b:
    mov -168(%rbp), %rdi
    lea .LN_47_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0270:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rcx
    mov -152(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0271:
    mov -144(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -144(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0276:
    mov -64(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0278:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_027d:
    lea .LS_48_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0282:
    lea .LN_49_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -176(%rbp), %rcx
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0287:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rsi
    mov -144(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_PutAsync__ref_ref
    movslq %eax, %rax
    mov %rax, -144(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_028c:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0291:
    mov -152(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0293:
    lea -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0295:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_029a:
    mov -152(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02dd
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_029c:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_029d:
    mov $2, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_029e:
    mov -160(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_029f:
    mov -160(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02a0:
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rdi
    lea .LN_50_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02a5:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02a6:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02a8:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_51_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02ad:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02ae:
    mov -152(%rbp), %rdi
    lea .LN_52_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02b3:
    lea -88(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02b5:
    mov -16(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02b6:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_SendImageMessage_d_50__gen_gen
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02bb:
    jmp .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_035c
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02c0:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02c1:
    mov -160(%rbp), %rdi
    lea .LN_53_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02c6:
    mov -160(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02c8:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02c9:
    mov -160(%rbp), %rdi
    lea .LN_54_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02ce:
    mov -160(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02d4:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02d5:
    mov $-1, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02d6:
    mov -168(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02d7:
    mov -168(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02d8:
    mov -160(%rbp), %rdx
    mov -152(%rbp), %rdi
    lea .LN_55_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02dd:
    lea -88(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02df:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02e4:
    mov -152(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02e6:
    mov -128(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02e8:
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02ed:
    mov -152(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_02ee:
    jmp .Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0348
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0348:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0349:
    mov $-2, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_034b:
    mov -168(%rbp), %rdx
    mov -160(%rbp), %rdi
    lea .LN_56_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0350:
    mov -16(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0351:
    mov -160(%rbp), %rdi
    lea .LN_57_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0356:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_0357:
    mov -168(%rbp), %rsi
    mov -160(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_035c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendImageMessage_d_50_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendImageMessage_d_50_MoveNext__void, .-m_Matrix_Core_SendImageMessage_d_50_MoveNext__void
.globl m_Matrix_Core_SendImageMessage_d_50_SetStateMachine__ref
.type m_Matrix_Core_SendImageMessage_d_50_SetStateMachine__ref, @function
m_Matrix_Core_SendImageMessage_d_50_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendImageMessage_d_50_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendImageMessage_d_50_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendImageMessage_d_50_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendImageMessage_d_50_SetStateMachine__ref, .-m_Matrix_Core_SendImageMessage_d_50_SetStateMachine__ref
.globl m_Matrix_Core_SendMessage_d_48_MoveNext__void
.type m_Matrix_Core_SendMessage_d_48_MoveNext__void, @function
m_Matrix_Core_SendMessage_d_48_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0001:
    mov -88(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0006:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0008:
    mov -88(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_000d:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_000f:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0010:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_002b
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0012:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0013:
    mov -88(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0018:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_001d:
    mov -88(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0022:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_002b
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0024:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0025:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0026:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02b3
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_002b:
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_002c:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_002d:
    mov -88(%rbp), %rax
    cmp $0, %eax
    je .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00bf
    cmp $1, %eax
    je .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01cb
    cmp $2, %eax
    je .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_023e
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_003e:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_003f:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0040:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0041:
    mov -88(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0046:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0162
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_004b:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_004c:
    mov -88(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0051:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0056:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00e6
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_005b:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_005d:
    mov -96(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0062:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0067:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0068:
    mov -104(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_006d:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_File__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0072:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0073:
    mov -112(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0078:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Name__void
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_007d:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_007e:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0086
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0080:
    mov -104(%rbp), %rax
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0081:
    lea .LS_8_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0086:
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_SendImageMessage__ref_arr_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_008b:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0090:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0092:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0094:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0099:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00dc
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_009b:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_009c:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_009d:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_009e:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_009f:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00a4:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00a5:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00a7:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00ac:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00ad:
    mov -88(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00b2:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00b4:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00b5:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Matrix_Core_SendMessage_d_48__gen_gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00ba:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02c7
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00bf:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00c0:
    mov -88(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00c5:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00c7:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00c8:
    mov -88(%rbp), %rdi
    lea .LN_13_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00cd:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00d3:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00d4:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00d5:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00d6:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00d7:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00dc:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00de:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00e3:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00e4:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0162
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00e6:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00e7:
    mov -88(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00ec:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00ed:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00f2
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00ef:
    mov -80(%rbp), %rax
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00f0:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0118
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00f2:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00f3:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00f4:
    lea .LS_16_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rdi
    mov $72, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00f9:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00fa:
    mov -112(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_00ff:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0104:
    mov -112(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_box
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0109:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_String_Format__ref_ref
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_010e:
    lea .LN_19_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0113:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0118:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0119:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_011a:
    mov -96(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_011f:
    mov -96(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0124:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0148
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0126:
    lea .LS_21_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_012b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_012c:
    mov -104(%rbp), %rdi
    lea .LN_22_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0131:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Name__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0136:
    lea .LS_23_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_013b:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_013c:
    mov -120(%rbp), %rdi
    lea .LN_24_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0141:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0146:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_015d
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0148:
    lea .LS_25_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_014d:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_014e:
    mov -104(%rbp), %rdi
    lea .LN_26_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0153:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Name__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0158:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_015d:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_27_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0162:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0163:
    mov -88(%rbp), %rdi
    lea .LN_28_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0168:
    mov -88(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_016d:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0267
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0172:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0173:
    mov -88(%rbp), %rdi
    lea .LN_29_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0178:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01f3
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_017a:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_017b:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_017c:
    mov -96(%rbp), %rdi
    lea .LN_30_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0181:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0186:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0187:
    mov -104(%rbp), %rdi
    lea .LN_31_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_018c:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_018d:
    mov -112(%rbp), %rdi
    lea .LN_32_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0192:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_SendReplyMessage__ref_ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0197:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_019c:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_019e:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01a0:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01a5:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01e8
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01a7:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01a8:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01a9:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01aa:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01ab:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_33_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01b0:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01b1:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01b3:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_34_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01b8:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01b9:
    mov -88(%rbp), %rdi
    lea .LN_35_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01be:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01c0:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01c1:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Matrix_Core_SendMessage_d_48__gen_gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01c6:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02c7
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01cb:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01cc:
    mov -88(%rbp), %rdi
    lea .LN_36_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01d1:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01d3:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01d4:
    mov -88(%rbp), %rdi
    lea .LN_37_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01d9:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01df:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01e0:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01e1:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01e2:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01e3:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_38_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01e8:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01ea:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01ef:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01f1:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0264
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01f3:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01f4:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01f5:
    mov -96(%rbp), %rdi
    lea .LN_39_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01fa:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_01ff:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0200:
    mov -104(%rbp), %rdi
    lea .LN_40_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0205:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_SendTextMessage__ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_020a:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_bool_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_020f:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0211:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0213:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0218:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_025b
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_021a:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_021b:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_021c:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_021d:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_021e:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_41_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0223:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0224:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0226:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_42_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_022b:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_022c:
    mov -88(%rbp), %rdi
    lea .LN_43_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0231:
    lea -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0233:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0234:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_bool_valuetype_Matrix_Core_SendMessage_d_48__gen_gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0239:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02c7
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_023e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_023f:
    mov -88(%rbp), %rdi
    lea .LN_44_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0244:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0246:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0247:
    mov -88(%rbp), %rdi
    lea .LN_45_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_024c:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0252:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0253:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0254:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0255:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0256:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_46_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_025b:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_025d:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_bool_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0262:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0264:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0266:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0267:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0268:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_0269:
    jmp .Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02b3
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02b3:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02b4:
    mov $-2, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02b6:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_47_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02bb:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02bc:
    mov -88(%rbp), %rdi
    lea .LN_48_m_Matrix_Core_SendMessage_d_48_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02c1:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02c2:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_02c7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendMessage_d_48_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendMessage_d_48_MoveNext__void, .-m_Matrix_Core_SendMessage_d_48_MoveNext__void
.globl m_Matrix_Core_SendMessage_d_48_SetStateMachine__ref
.type m_Matrix_Core_SendMessage_d_48_SetStateMachine__ref, @function
m_Matrix_Core_SendMessage_d_48_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendMessage_d_48_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendMessage_d_48_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendMessage_d_48_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendMessage_d_48_SetStateMachine__ref, .-m_Matrix_Core_SendMessage_d_48_SetStateMachine__ref
.globl m_Matrix_Core_SendReplyMessage_d_51_MoveNext__void
.type m_Matrix_Core_SendReplyMessage_d_51_MoveNext__void, @function
m_Matrix_Core_SendReplyMessage_d_51_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $160, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0001:
    mov -104(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0006:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0008:
    mov -104(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_000d:
    mov -104(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_000f:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_003f
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0012:
    mov -104(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0017:
    mov -104(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_001c:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0038
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_001f:
    mov -104(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0024:
    mov -104(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0029:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0038
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_002c:
    mov -104(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0031:
    mov -104(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0036:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_003f
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0038:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0039:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_003a:
    jmp .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01d3
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_003f:
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0040:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0041:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_014b
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0046:
    lea .LN_5_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_object_ctor__void
    mov %r12, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_004b:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_004c:
    lea .LS_6_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0051:
    lea .LS_7_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0056:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_object_set_Item__gen_gen
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_005b:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_005c:
    lea .LS_8_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0062:
    mov -120(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0067:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_object_set_Item__gen_gen
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_006c:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_006d:
    lea .LS_10_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0072:
    lea .LN_11_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_object_ctor__void
    mov %r12, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0077:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0078:
    lea .LS_12_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_007d:
    lea .LN_13_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_object_ctor__void
    mov %r12, -136(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0082:
    mov -136(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0083:
    lea .LS_14_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -144(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0088:
    mov -16(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0089:
    mov -152(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -152(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_008e:
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_object_set_Item__gen_gen
    mov %rax, -136(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0093:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_object_set_Item__gen_gen
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0098:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_object_set_Item__gen_gen
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_009d:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_009e:
    call m_System_Guid_NewGuid__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00a3:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00a5:
    lea -64(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00a7:
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00ad:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00b2:
    mov -104(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00b4:
    lea .LN_16_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00b9:
    mov $7, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00ba:
    mov -112(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00bf:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00c0:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00c1:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00c2:
    mov -128(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00c7:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00c8:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00c9:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00ca:
    lea .LS_18_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00cf:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00d0:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00d1:
    mov $2, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00d2:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00d3:
    mov -120(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00d8:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00d9:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00da:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00db:
    lea .LS_20_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00e0:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00e1:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00e2:
    mov $4, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00e3:
    mov -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00e5:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00e6:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00e7:
    mov $5, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00e8:
    lea .LS_21_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00ed:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00ee:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00ef:
    mov $6, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00f0:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00f1:
    mov -120(%rbp), %rdi
    lea .LN_22_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00f6:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00f7:
    mov -96(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00fc:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00fd:
    xor %eax, %eax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_00fe:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Serialize_class_netstandard_System_Collections_Generic_Dictionary_2_string_object__gen_ref
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0103:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0108:
    lea .LS_23_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_010d:
    lea .LN_24_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0112:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_PutAsync__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0117:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_011c:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_011e:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0120:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0125:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0168
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0127:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0128:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0129:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_012a:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_012b:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_25_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0130:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0131:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0133:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_26_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0138:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0139:
    mov -104(%rbp), %rdi
    lea .LN_27_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_013e:
    lea -80(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0140:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0141:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_SendReplyMessage_d_51__gen_gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0146:
    jmp .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01e7
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_014b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_014c:
    mov -104(%rbp), %rdi
    lea .LN_28_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0151:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0153:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0154:
    mov -104(%rbp), %rdi
    lea .LN_29_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0159:
    mov -104(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_015f:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0160:
    mov $-1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0161:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0162:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0163:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_30_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0168:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_016a:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_016f:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0171:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0173:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0178:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_0179:
    jmp .Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01d3
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01d3:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01d4:
    mov $-2, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01d6:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_31_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01db:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01dc:
    mov -104(%rbp), %rdi
    lea .LN_32_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01e1:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01e2:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_01e7:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendReplyMessage_d_51_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendReplyMessage_d_51_MoveNext__void, .-m_Matrix_Core_SendReplyMessage_d_51_MoveNext__void
.globl m_Matrix_Core_SendReplyMessage_d_51_SetStateMachine__ref
.type m_Matrix_Core_SendReplyMessage_d_51_SetStateMachine__ref, @function
m_Matrix_Core_SendReplyMessage_d_51_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendReplyMessage_d_51_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendReplyMessage_d_51_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendReplyMessage_d_51_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendReplyMessage_d_51_SetStateMachine__ref, .-m_Matrix_Core_SendReplyMessage_d_51_SetStateMachine__ref
.globl m_Matrix_Core_SendTextMessage_d_49_MoveNext__void
.type m_Matrix_Core_SendTextMessage_d_49_MoveNext__void, @function
m_Matrix_Core_SendTextMessage_d_49_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0001:
    mov -96(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0006:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0008:
    mov -96(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_000d:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_000f:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00cf
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0014:
    lea .LS_2_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0019:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_001a:
    mov -104(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_001f:
    lea .LN_4_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__gen_gen
    mov %r12, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0024:
    xor %eax, %eax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0025:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Serialize_class_f_AnonymousType9_2_string_string__gen_ref
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_002a:
    mov -96(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_002b:
    call m_System_Guid_NewGuid__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0030:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0032:
    lea -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0034:
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_003a:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_003f:
    mov -96(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0041:
    lea .LN_5_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0046:
    mov $7, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0047:
    mov -104(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_004c:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_004d:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_004e:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_004f:
    mov -120(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0054:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0055:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0056:
    mov $1, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0057:
    lea .LS_7_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_005c:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_005d:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_005e:
    mov $2, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_005f:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0060:
    mov -112(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0065:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0066:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0067:
    mov $3, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0068:
    lea .LS_9_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_006d:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_006e:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_006f:
    mov $4, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0070:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0072:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0073:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0074:
    mov $5, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0075:
    lea .LS_10_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_007a:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_007b:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_007c:
    mov $6, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_007d:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_007e:
    mov -112(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0083:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0084:
    mov -88(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0089:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_008a:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_008f:
    lea .LS_12_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0094:
    lea .LN_13_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0099:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_PutAsync__ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_009e:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00a3:
    mov -96(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00a5:
    lea -80(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00a7:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00ac:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00ec
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00ae:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00af:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00b0:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00b1:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00b2:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00b7:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00b8:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00ba:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00bf:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00c0:
    mov -96(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00c5:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00c7:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00c8:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_SendTextMessage_d_49__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00cd:
    jmp .Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_013c
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00cf:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00d0:
    mov -96(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00d5:
    mov -96(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00d7:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00d8:
    mov -96(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00dd:
    mov -96(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00e3:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00e4:
    mov $-1, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00e5:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00e6:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00e7:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00ec:
    lea -80(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00ee:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00f3:
    mov -96(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00f5:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00f7:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00fc:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_00fd:
    jmp .Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0128
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0128:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0129:
    mov $-2, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_012b:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0130:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0131:
    mov -96(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0136:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_0137:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_013c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendTextMessage_d_49_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendTextMessage_d_49_MoveNext__void, .-m_Matrix_Core_SendTextMessage_d_49_MoveNext__void
.globl m_Matrix_Core_SendTextMessage_d_49_SetStateMachine__ref
.type m_Matrix_Core_SendTextMessage_d_49_SetStateMachine__ref, @function
m_Matrix_Core_SendTextMessage_d_49_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendTextMessage_d_49_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendTextMessage_d_49_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendTextMessage_d_49_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendTextMessage_d_49_SetStateMachine__ref, .-m_Matrix_Core_SendTextMessage_d_49_SetStateMachine__ref
.globl m_Matrix_Core_SendTypingIndicator_d_54_MoveNext__void
.type m_Matrix_Core_SendTypingIndicator_d_54_MoveNext__void, @function
m_Matrix_Core_SendTypingIndicator_d_54_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_000f:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0025
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0012:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0017:
    mov -80(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_001c:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0025
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_001e:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_001f:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0020:
    jmp .Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_013d
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0025:
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0026:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0027:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00df
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_002d:
    mov -80(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0032:
    mov $30000, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0037:
    lea .LN_4_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_003c:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_003d:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Serialize_class_f_AnonymousType12_2_bool_int32__gen_ref
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0042:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0043:
    lea .LN_5_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0048:
    mov $7, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0049:
    mov -88(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_004e:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_004f:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0050:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0051:
    mov -104(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0056:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0057:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0058:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0059:
    lea .LS_7_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_005e:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_005f:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0060:
    mov $2, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0061:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0062:
    mov -96(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0067:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0068:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0069:
    mov $3, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_006a:
    lea .LS_9_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_006f:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0070:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0071:
    mov $4, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0072:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0073:
    mov -96(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0078:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_007d:
    mov -96(%rbp), %rdi
    call m_System_Uri_EscapeDataString__ref
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0082:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0083:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0084:
    mov $5, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0085:
    lea .LS_11_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_008a:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_008b:
    mov -72(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_008c:
    mov $6, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_008d:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_008e:
    mov -96(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0093:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0094:
    mov -72(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0099:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_009a:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_009f:
    lea .LS_13_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00a4:
    lea .LN_14_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00a9:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_PutAsync__ref_ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00ae:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00b3:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00b5:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00b7:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00bc:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00fc
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00be:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00bf:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00c0:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00c1:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00c2:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00c7:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00c8:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00ca:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00cf:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00d0:
    mov -80(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00d5:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00d7:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00d8:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_SendTypingIndicator_d_54__gen_gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00dd:
    jmp .Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0151
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00df:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00e0:
    mov -80(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00e5:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00e7:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00e8:
    mov -80(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00ed:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00f3:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00f4:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00f5:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00f6:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00f7:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00fc:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_00fe:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0103:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0105:
    mov -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0107:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_010c:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_010d:
    jmp .Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_013d
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_013d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_013e:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0140:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0145:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0146:
    mov -80(%rbp), %rdi
    lea .LN_22_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_014b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_014c:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_0151:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendTypingIndicator_d_54_MoveNext__void, .-m_Matrix_Core_SendTypingIndicator_d_54_MoveNext__void
.globl m_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine__ref
.type m_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine__ref, @function
m_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine__ref, .-m_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine__ref
.globl m_Matrix_Core_SetConnectionStatus_d_55_MoveNext__void
.type m_Matrix_Core_SetConnectionStatus_d_55_MoveNext__void, @function
m_Matrix_Core_SetConnectionStatus_d_55_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0001:
    mov -104(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0006:
    mov -104(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0008:
    mov -104(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_000d:
    mov -104(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_000f:
    mov -104(%rbp), %rax
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0010:
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0012:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0107
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0018:
    mov -104(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_001d:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_001f:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0021:
    mov -104(%rbp), %rax
    cmp $0, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_004c
    cmp $1, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_005c
    cmp $2, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_005c
    cmp $3, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_004c
    cmp $4, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_005c
    cmp $5, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_005c
    cmp $6, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0054
    cmp $7, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0064
    cmp $8, %eax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0054
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_004a:
    jmp .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0064
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_004c:
    lea .LS_3_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0051:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0052:
    jmp .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_006a
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0054:
    lea .LS_4_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0059:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_005a:
    jmp .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_006a
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_005c:
    lea .LS_5_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0061:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0062:
    jmp .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_006a
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0064:
    lea .LS_6_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0069:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_006a:
    mov -48(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_006b:
    lea .LN_7_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_f_AnonymousType13_1_string_ctor__gen
    mov %r12, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0070:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0071:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Serialize_class_f_AnonymousType13_1_string__gen_ref
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0076:
    mov -104(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0078:
    lea .LN_8_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_007d:
    mov $5, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_007e:
    mov -112(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0083:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0084:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0085:
    mov -32(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0086:
    mov -128(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_008b:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_008c:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_008d:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_008e:
    lea .LS_10_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0093:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0094:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0095:
    mov $2, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0096:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0097:
    mov -120(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_009c:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00a1:
    mov -120(%rbp), %rdi
    call m_System_Uri_EscapeDataString__ref
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00a6:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00a7:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00a8:
    mov $3, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00a9:
    lea .LS_12_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00ae:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00af:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00b0:
    mov $4, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00b1:
    mov -32(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00b2:
    mov -120(%rbp), %rdi
    lea .LN_13_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00b7:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00b8:
    mov -96(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00bd:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00bf:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00c4:
    lea .LS_14_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00c9:
    lea .LN_15_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00ce:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_PutAsync__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00d3:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00d8:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00da:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00dc:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00e1:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0124
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00e3:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00e4:
    mov $0, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00e5:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00e6:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00e7:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00ec:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00ed:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00ef:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00f4:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00f5:
    mov -104(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00fa:
    lea -80(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00fc:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_00fd:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_SetConnectionStatus_d_55__gen_gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0102:
    jmp .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01bd
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0107:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0108:
    mov -104(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_010d:
    mov -104(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_010f:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0110:
    mov -104(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0115:
    mov -104(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_011b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_011c:
    mov $-1, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_011d:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_011e:
    mov -112(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_011f:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0124:
    lea -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0126:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_012b:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_012d:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_012f:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0134:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0147
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0136:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0137:
    mov -104(%rbp), %rdi
    lea .LN_22_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_013c:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_013d:
    mov -112(%rbp), %rdi
    lea .LN_23_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0142:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_set_ConnectionStatus__v
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0147:
    mov -72(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_0149:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_014e:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_014f:
    jmp .Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01a9
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01a9:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01aa:
    mov $-2, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01ac:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rdi
    lea .LN_24_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01b1:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01b2:
    mov -104(%rbp), %rdi
    lea .LN_25_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01b7:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01b8:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_01bd:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SetConnectionStatus_d_55_MoveNext__void, .-m_Matrix_Core_SetConnectionStatus_d_55_MoveNext__void
.globl m_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine__ref
.type m_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine__ref, @function
m_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine__ref, .-m_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine__ref
.globl m_Matrix_Core_SetMood_d_56_MoveNext__void
.type m_Matrix_Core_SetMood_d_56_MoveNext__void, @function
m_Matrix_Core_SetMood_d_56_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0001:
    mov -88(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0006:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0008:
    mov -88(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_000d:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_000f:
    mov -88(%rbp), %rax
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0010:
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0012:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00c5
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0017:
    lea .LS_2_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_001d:
    mov -96(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0022:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0023:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SetMood_d_56_MoveNext_void_002b
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0025:
    mov -88(%rbp), %rax
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0026:
    lea .LN_4_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_002b:
    lea .LN_5_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__gen_gen
    mov %r12, -80(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0030:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0031:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Serialize_class_f_AnonymousType14_2_string_string__gen_ref
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0036:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0037:
    lea .LN_6_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_003c:
    mov $5, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_003d:
    mov -96(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0042:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0043:
    mov $0, %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0044:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0045:
    mov -112(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_004a:
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rcx
    mov -96(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_004b:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_004c:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_004d:
    lea .LS_8_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0052:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0053:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0054:
    mov $2, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0055:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0056:
    mov -104(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_005b:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Metadata_get_Identifier__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0060:
    mov -104(%rbp), %rdi
    call m_System_Uri_EscapeDataString__ref
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0065:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0066:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0067:
    mov $3, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0068:
    lea .LS_10_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_006d:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_006e:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_006f:
    mov $4, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0070:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0071:
    mov -104(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0076:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0077:
    mov -80(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_007c:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_007d:
    call m_System_Text_Encoding_get_UTF8__void
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0082:
    lea .LS_12_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0087:
    lea .LN_13_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_StringContent_ctor__ref_ref_ref
    mov %r12, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_008c:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_PutAsync__ref_ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0091:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0096:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0098:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_009a:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_009f:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00e2
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00a1:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00a2:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00a3:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00a4:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00a5:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00aa:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00ab:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00ad:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00b2:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00b3:
    mov -88(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00b8:
    lea -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00ba:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00bb:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_SetMood_d_56__gen_gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00c0:
    jmp .Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0161
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00c5:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00c6:
    mov -88(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00cb:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00cd:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00ce:
    mov -88(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00d3:
    mov -88(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00d9:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00da:
    mov $-1, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00db:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00dc:
    mov -96(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00dd:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00e2:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00e4:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00e9:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00eb:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00ed:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00f2:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_00f3:
    jmp .Lm_Matrix_Core_SetMood_d_56_MoveNext_void_014d
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_014d:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_014e:
    mov $-2, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0150:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0155:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0156:
    mov -88(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_SetMood_d_56_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_015b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_015c:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetResult__gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_0161:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SetMood_d_56_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SetMood_d_56_MoveNext__void, .-m_Matrix_Core_SetMood_d_56_MoveNext__void
.globl m_Matrix_Core_SetMood_d_56_SetStateMachine__ref
.type m_Matrix_Core_SetMood_d_56_SetStateMachine__ref, @function
m_Matrix_Core_SetMood_d_56_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SetMood_d_56_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SetMood_d_56_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SetMood_d_56_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SetMood_d_56_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_d_56_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_SetStateMachine__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SetMood_d_56_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SetMood_d_56_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SetMood_d_56_SetStateMachine__ref, .-m_Matrix_Core_SetMood_d_56_SetStateMachine__ref
.globl m_Matrix_Core_StartClient_d_41_MoveNext__void
.type m_Matrix_Core_StartClient_d_41_MoveNext__void, @function
m_Matrix_Core_StartClient_d_41_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0001:
    mov -80(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0006:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0008:
    mov -80(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_000d:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_000f:
    mov -80(%rbp), %rax
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0010:
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0011:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0012:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0068
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0014:
    lea .LN_2_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0019:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_001a:
    mov -88(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_001f:
    lea .LS_4_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rdi
    mov $47, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0024:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0025:
    mov -104(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_002a:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_002f:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetAsync__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0034:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0039:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_003b:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_003d:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0042:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0085
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0045:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0046:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0047:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0048:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_004d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_004e:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0050:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0055:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0056:
    mov -80(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_005b:
    lea -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_005d:
    mov -16(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_005e:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_StartClient_d_41__gen_gen
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0063:
    jmp .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0126
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0068:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0069:
    mov -80(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_006e:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0070:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0071:
    mov -80(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0076:
    mov -80(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_007c:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_007d:
    mov $-1, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_007e:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_007f:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0080:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0085:
    lea -56(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0087:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_008c:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_008d:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_008e:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0093:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00b6
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0095:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0096:
    mov -80(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_009b:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_009c:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00a1
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_009e:
    mov -72(%rbp), %rax
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_009f:
    jmp .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00b2
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00a1:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00a2:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00a3:
    lea .LS_13_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rdi
    mov $43, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00a8:
    lea .LN_14_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00ad:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00b2:
    mov $2, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00b3:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00b4:
    jmp .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0112
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00b6:
    jmp .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00c6
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00c6:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00c7:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_00c8:
    jmp .Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0112
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0112:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0113:
    mov $-2, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0115:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_011a:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_011b:
    mov -80(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_StartClient_d_41_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0120:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0121:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetResult__gen
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_0126:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_StartClient_d_41_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_StartClient_d_41_MoveNext__void, .-m_Matrix_Core_StartClient_d_41_MoveNext__void
.globl m_Matrix_Core_StartClient_d_41_SetStateMachine__ref
.type m_Matrix_Core_StartClient_d_41_SetStateMachine__ref, @function
m_Matrix_Core_StartClient_d_41_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_StartClient_d_41_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_d_41_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_StartClient_d_41_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_d_41_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_d_41_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_SetStateMachine__ref
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_d_41_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_StartClient_d_41_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_StartClient_d_41_SetStateMachine__ref, .-m_Matrix_Core_StartClient_d_41_SetStateMachine__ref
.globl m_Matrix_Core_SyncLoop_d_61_MoveNext__void
.type m_Matrix_Core_SyncLoop_d_61_MoveNext__void, @function
m_Matrix_Core_SyncLoop_d_61_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    sub $240, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0001:
    mov -208(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0006:
    mov -208(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0007:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0008:
    mov -208(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_000d:
    mov -208(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_000e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_000f:
    mov $4, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0010:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0025
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0012:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0013:
    mov $5, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0014:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0535
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0019:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0560
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_001f:
    mov $0, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0020:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0025:
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0026:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0027:
    mov -208(%rbp), %rax
    cmp $0, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00c0
    cmp $1, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00ee
    cmp $2, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00ee
    cmp $3, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_025e
    cmp $4, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_025e
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0040:
    mov -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0041:
    mov -208(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0046:
    lea .LS_4_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $37, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_004b:
    mov -32(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_004c:
    mov -224(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0051:
    lea .LS_6_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -232(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0056:
    mov -232(%rbp), %rcx
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_005b:
    mov -208(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_005c:
    mov -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_005d:
    mov -208(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0062:
    mov -208(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0067:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_007b
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0069:
    mov -40(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_006a:
    lea .LS_8_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_006f:
    mov -32(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0070:
    mov -224(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0075:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_007a:
    mov -208(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_007b:
    lea .LN_10_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0080:
    mov -40(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0081:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0082:
    mov -224(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0087:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_GetAsync__ref_v
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_008c:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0091:
    mov -208(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0093:
    lea -88(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0095:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsCompleted__void
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_009a:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00dd
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_009c:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_009d:
    mov $0, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_009e:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_009f:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00a0:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00a5:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00a6:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00a8:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_13_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00ad:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00ae:
    mov -208(%rbp), %rdi
    lea .LN_14_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00b3:
    lea -88(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00b5:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00b6:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_class_netstandard_System_Net_Http_HttpResponseMessage_valuetype_Matrix_Core_SyncLoop_d_61__gen_gen
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00bb:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_059e
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00c0:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00c1:
    mov -208(%rbp), %rdi
    lea .LN_15_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00c6:
    mov -208(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00c8:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00c9:
    mov -208(%rbp), %rdi
    lea .LN_16_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00ce:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00d4:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00d5:
    mov $-1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00d6:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00d7:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00d8:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_17_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00dd:
    lea -88(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00df:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_GetResult__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00e4:
    mov -208(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00e6:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00e7:
    mov -80(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00e9:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_18_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00ee:
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00ef:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00f0:
    mov $1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00f1:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_014b
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00f3:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00f4:
    mov $2, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00f5:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01b8
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00fa:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_00fb:
    mov -208(%rbp), %rdi
    lea .LN_19_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0100:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_IsSuccessStatusCode__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0105:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0174
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0107:
    mov $5000, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_010c:
    mov -16(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_010d:
    mov -216(%rbp), %rdi
    lea .LN_20_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0112:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Delay__i4_v
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0117:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_011c:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_011e:
    lea -96(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0120:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0125:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0168
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0127:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0128:
    mov $1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0129:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_012a:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_012b:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_21_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0130:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0131:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0133:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_22_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0138:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0139:
    mov -208(%rbp), %rdi
    lea .LN_23_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_013e:
    lea -96(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0140:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0141:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Matrix_Core_SyncLoop_d_61__gen_gen
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0146:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_059e
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_014b:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_014c:
    mov -208(%rbp), %rdi
    lea .LN_24_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0151:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0153:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0154:
    mov -208(%rbp), %rdi
    lea .LN_25_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0159:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_015f:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0160:
    mov $-1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0161:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0162:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0163:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_26_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0168:
    lea -96(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_016a:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_016f:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0560
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0174:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0175:
    mov -208(%rbp), %rdi
    lea .LN_27_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_017a:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpResponseMessage_get_Content__void
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_017f:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpContent_ReadAsStringAsync__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0184:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_1_string_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0189:
    mov -208(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_018b:
    lea -104(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_018d:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0192:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01d5
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0194:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0195:
    mov $2, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0196:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0197:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0198:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_28_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_019d:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_019e:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01a0:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_29_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01a5:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01a6:
    mov -208(%rbp), %rdi
    lea .LN_30_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01ab:
    lea -104(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01ad:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01ae:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_1_string_valuetype_Matrix_Core_SyncLoop_d_61__gen_gen
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01b3:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_059e
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01b8:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01b9:
    mov -208(%rbp), %rdi
    lea .LN_31_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01be:
    mov -208(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01c0:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01c1:
    mov -208(%rbp), %rdi
    lea .LN_32_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01c6:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01cc:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01cd:
    mov $-1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01ce:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01cf:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01d0:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_33_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01d5:
    lea -104(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01d7:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_1_string_GetResult__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01dc:
    mov -208(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01dd:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01f7
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01f7:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01f8:
    xor %eax, %eax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01f9:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_34_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01fe:
    mov -48(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_01ff:
    xor %eax, %eax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0200:
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    call m_System_Text_Json_JsonSerializer_Deserialize_valuetype_System_Text_Json_System_Text_Json_JsonElement__ref_ref
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0205:
    mov -208(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0207:
    mov -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0208:
    lea -56(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_020a:
    lea .LS_35_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_020f:
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetProperty__ref
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0214:
    mov -216(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0216:
    lea -112(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0218:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_GetString__void
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_021d:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_36_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0222:
    lea -56(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0224:
    lea .LS_37_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0229:
    lea -64(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_022b:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0230:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04c0
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0235:
    lea -64(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0237:
    lea .LS_38_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_023c:
    lea -72(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_023e:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0243:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04c0
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0248:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0249:
    lea -72(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_024b:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_EnumerateObject__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0250:
    mov -216(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0252:
    lea -120(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0254:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ObjectEnumerator_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0259:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_39_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_025e:
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_025f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0260:
    mov $3, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0261:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02da
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0263:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0264:
    mov $4, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0265:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03ce
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_026a:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_048c
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_026f:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0270:
    mov -16(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0271:
    mov -216(%rbp), %rdi
    lea .LN_40_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0276:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ObjectEnumerator_get_Current__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_027b:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_41_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0280:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0281:
    mov -16(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0282:
    mov -216(%rbp), %rdi
    lea .LN_42_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0287:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonProperty_get_Name__void
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_028c:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_43_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0291:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0292:
    mov -208(%rbp), %rdi
    lea .LN_44_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0297:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonProperty_get_Value__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_029c:
    mov -208(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_029e:
    lea -112(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02a0:
    lea .LS_45_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02a5:
    lea -128(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02a7:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02ac:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0385
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02b1:
    lea -128(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02b3:
    lea .LS_46_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02b8:
    lea -136(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02ba:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02bf:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0385
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02c4:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02c5:
    lea -136(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02c7:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_EnumerateArray__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02cc:
    mov -216(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02ce:
    lea -160(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02d0:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02d5:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_47_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02da:
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02db:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02dc:
    mov $3, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02dd:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0330
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02df:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0354
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02e1:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02e2:
    mov -208(%rbp), %rdi
    lea .LN_48_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02e7:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_get_Current__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02ec:
    mov -208(%rbp), %rax
    mov %rax, -168(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02ee:
    mov -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02ef:
    mov -16(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02f0:
    mov -216(%rbp), %rdi
    lea .LN_49_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02f5:
    mov -168(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02f7:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_ProcessTimelineEvent__ref_v
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02fc:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0301:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0303:
    lea -96(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0305:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_030a:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_034d
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_030c:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_030d:
    mov $3, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_030e:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_030f:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0310:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_50_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0315:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0316:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0318:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_51_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_031d:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_031e:
    mov -208(%rbp), %rdi
    lea .LN_52_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0323:
    lea -96(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0325:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0326:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Matrix_Core_SyncLoop_d_61__gen_gen
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_032b:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_059e
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0330:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0331:
    mov -208(%rbp), %rdi
    lea .LN_53_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0336:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0338:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0339:
    mov -208(%rbp), %rdi
    lea .LN_54_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_033e:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0344:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0345:
    mov $-1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0346:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0347:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0348:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_55_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_034d:
    lea -96(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_034f:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0354:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0355:
    mov -208(%rbp), %rdi
    lea .LN_56_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_035a:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_035f:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_02e1
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0361:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0379
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0379:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_037a:
    mov -208(%rbp), %rdi
    lea .LN_57_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_037f:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0385:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0386:
    mov -208(%rbp), %rdi
    lea .LN_58_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_038b:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonProperty_get_Value__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0390:
    mov -208(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0392:
    lea -112(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0394:
    lea .LS_59_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0399:
    lea -144(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_039b:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03a0:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0479
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03a5:
    lea -144(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03a7:
    lea .LS_60_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03ac:
    lea -152(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03ae:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_TryGetProperty__ref_v
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03b3:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0479
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03b8:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03b9:
    lea -152(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03bb:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_EnumerateArray__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03c0:
    mov -216(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03c2:
    lea -160(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03c4:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03c9:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_61_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03ce:
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03cf:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03d0:
    mov $4, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03d1:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0424
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03d3:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0448
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03d5:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03d6:
    mov -208(%rbp), %rdi
    lea .LN_62_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03db:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_get_Current__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03e0:
    mov -208(%rbp), %rax
    mov %rax, -176(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03e2:
    mov -32(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03e3:
    mov -16(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03e4:
    mov -216(%rbp), %rdi
    lea .LN_63_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03e9:
    mov -176(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03eb:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_ProcessEphemeralEvent__ref_v
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03f0:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03f5:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03f7:
    lea -96(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03f9:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03fe:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0441
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0400:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0401:
    mov $4, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0402:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0403:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0404:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_64_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0409:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_040a:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_040c:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_65_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0411:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0412:
    mov -208(%rbp), %rdi
    lea .LN_66_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0417:
    lea -96(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0419:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_041a:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Matrix_Core_SyncLoop_d_61__gen_gen
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_041f:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_059e
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0424:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0425:
    mov -208(%rbp), %rdi
    lea .LN_67_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_042a:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_042c:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_042d:
    mov -208(%rbp), %rdi
    lea .LN_68_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0432:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0438:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0439:
    mov $-1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_043a:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_043b:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_043c:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_69_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0441:
    lea -96(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0443:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0448:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0449:
    mov -208(%rbp), %rdi
    lea .LN_70_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_044e:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ArrayEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0453:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_03d5
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0455:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_046d
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_046d:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_046e:
    mov -208(%rbp), %rdi
    lea .LN_71_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0473:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0479:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_047a:
    xor %eax, %eax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_047b:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_72_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0480:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0481:
    mov -208(%rbp), %rdi
    lea .LN_73_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0486:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_048c:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_048d:
    mov -208(%rbp), %rdi
    lea .LN_74_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0492:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Text_Json_JsonElement_ObjectEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0497:
    mov -208(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_026f
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_049c:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04b4
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04b4:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04b5:
    mov -208(%rbp), %rdi
    lea .LN_75_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04ba:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04c0:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04db
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04db:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04dc:
    mov -208(%rbp), %rdi
    lea .LN_76_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04e1:
    mov -208(%rbp), %rax
    mov %rax, -192(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04e3:
    mov -192(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04e5:
    mov $1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04e6:
    mov -216(%rbp), %rcx
    mov -208(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0559
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04e8:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04e9:
    mov -208(%rbp), %rdi
    lea .LN_77_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04ee:
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04f3:
    mov -216(%rbp), %rax
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04f4:
    mov $5000, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04f9:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04fa:
    mov -224(%rbp), %rdi
    lea .LN_78_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_04ff:
    mov -224(%rbp), %rsi
    mov -216(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Delay__i4_v
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0504:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_Tasks_Task_GetAwaiter__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0509:
    mov -216(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_050b:
    lea -96(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_050d:
    mov -216(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted__void
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0512:
    mov -216(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0552
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0514:
    mov -16(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0515:
    mov $5, %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0516:
    mov -224(%rbp), %rax
    mov %rax, -232(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0517:
    mov -224(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0518:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_79_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_051d:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_051e:
    mov -96(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0520:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_80_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0525:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0526:
    mov -208(%rbp), %rdi
    lea .LN_81_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_052b:
    lea -96(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_052d:
    mov -16(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_052e:
    mov -224(%rbp), %rdx
    mov -216(%rbp), %rsi
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_valuetype_netstandard_System_Runtime_CompilerServices_TaskAwaiter_valuetype_Matrix_Core_SyncLoop_d_61__gen_gen
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0533:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_059e
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0535:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0536:
    mov -208(%rbp), %rdi
    lea .LN_82_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_053b:
    mov -208(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_053d:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_053e:
    mov -208(%rbp), %rdi
    lea .LN_83_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0543:
    mov -208(%rbp), %rax
    movq $0, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0549:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_054a:
    mov $-1, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_054b:
    mov -216(%rbp), %rax
    mov %rax, -224(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_054c:
    mov -216(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_054d:
    mov -208(%rbp), %rdx
    mov -200(%rbp), %rdi
    lea .LN_84_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0552:
    lea -96(%rbp), %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0554:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_TaskAwaiter_GetResult__void
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0559:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_055a:
    xor %eax, %eax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_055b:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_85_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0560:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0561:
    mov -208(%rbp), %rdi
    lea .LN_86_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0566:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationToken_get_IsCancellationRequested__void
    movslq %eax, %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_056b:
    mov -208(%rbp), %rax
    test %rax, %rax
    je .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_001e
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0570:
    jmp .Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_058b
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_058b:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_058c:
    mov $-2, %rax
    mov %rax, -216(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_058e:
    mov -216(%rbp), %rdx
    mov -208(%rbp), %rdi
    lea .LN_87_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0593:
    mov -16(%rbp), %rax
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0594:
    mov -208(%rbp), %rdi
    lea .LN_88_m_Matrix_Core_SyncLoop_d_61_MoveNext_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -208(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_0599:
    mov -208(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetResult__void
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_059e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SyncLoop_d_61_MoveNext_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SyncLoop_d_61_MoveNext__void, .-m_Matrix_Core_SyncLoop_d_61_MoveNext__void
.globl m_Matrix_Core_SyncLoop_d_61_SetStateMachine__ref
.type m_Matrix_Core_SyncLoop_d_61_SetStateMachine__ref, @function
m_Matrix_Core_SyncLoop_d_61_SetStateMachine__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_SetStateMachine_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_SetStateMachine_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SyncLoop_d_61_SetStateMachine_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_SetStateMachine_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_d_61_SetStateMachine_ref_0007:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_SetStateMachine__ref
.Lm_Matrix_Core_SyncLoop_d_61_SetStateMachine_ref_000c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SyncLoop_d_61_SetStateMachine_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SyncLoop_d_61_SetStateMachine__ref, .-m_Matrix_Core_SyncLoop_d_61_SetStateMachine__ref
.globl m_Matrix_Core_add_DialogTube__ref
.type m_Matrix_Core_add_DialogTube__ref, @function
m_Matrix_Core_add_DialogTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_add_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0010:
.Lm_Matrix_Core_add_DialogTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_add_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_DialogBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_add_DialogTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Matrix_Core_add_DialogTube_ref_0007
.Lm_Matrix_Core_add_DialogTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_add_DialogTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_add_DialogTube__ref, .-m_Matrix_Core_add_DialogTube__ref
.globl m_Matrix_Core_remove_DialogTube__ref
.type m_Matrix_Core_remove_DialogTube__ref, @function
m_Matrix_Core_remove_DialogTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_remove_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0010:
.Lm_Matrix_Core_remove_DialogTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_remove_DialogTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_DialogBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_remove_DialogTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Matrix_Core_remove_DialogTube_ref_0007
.Lm_Matrix_Core_remove_DialogTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_remove_DialogTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_remove_DialogTube__ref, .-m_Matrix_Core_remove_DialogTube__ref
.globl m_Matrix_Core_add_MessageTube__ref
.type m_Matrix_Core_add_MessageTube__ref, @function
m_Matrix_Core_add_MessageTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_add_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0010:
.Lm_Matrix_Core_add_MessageTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_add_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_MessageBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_add_MessageTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Matrix_Core_add_MessageTube_ref_0007
.Lm_Matrix_Core_add_MessageTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_add_MessageTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_add_MessageTube__ref, .-m_Matrix_Core_add_MessageTube__ref
.globl m_Matrix_Core_remove_MessageTube__ref
.type m_Matrix_Core_remove_MessageTube__ref, @function
m_Matrix_Core_remove_MessageTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_remove_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0010:
.Lm_Matrix_Core_remove_MessageTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_remove_MessageTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_MessageBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_remove_MessageTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Matrix_Core_remove_MessageTube_ref_0007
.Lm_Matrix_Core_remove_MessageTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_remove_MessageTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_remove_MessageTube__ref, .-m_Matrix_Core_remove_MessageTube__ref
.globl m_Matrix_Core_add_ListTube__ref
.type m_Matrix_Core_add_ListTube__ref, @function
m_Matrix_Core_add_ListTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_add_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0010:
.Lm_Matrix_Core_add_ListTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_add_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_ListBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_add_ListTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Matrix_Core_add_ListTube_ref_0007
.Lm_Matrix_Core_add_ListTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_add_ListTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_add_ListTube__ref, .-m_Matrix_Core_add_ListTube__ref
.globl m_Matrix_Core_remove_ListTube__ref
.type m_Matrix_Core_remove_ListTube__ref, @function
m_Matrix_Core_remove_ListTube__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_remove_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0010:
.Lm_Matrix_Core_remove_ListTube_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_remove_ListTube_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_001c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_netstandard_System_EventHandler_1_class_Yggdrasil_Yggdrasil_Bottles_ListBottle__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_remove_ListTube_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Matrix_Core_remove_ListTube_ref_0007
.Lm_Matrix_Core_remove_ListTube_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_remove_ListTube_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_remove_ListTube__ref, .-m_Matrix_Core_remove_ListTube__ref
.globl m_Matrix_Core_get_Name__void
.type m_Matrix_Core_get_Name__void, @function
m_Matrix_Core_get_Name__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_get_Name_void_0000:
    lea .LS_0_m_Matrix_Core_get_Name_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_Name_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_get_Name_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_get_Name__void, .-m_Matrix_Core_get_Name__void
.globl m_Matrix_Core_get_InternalName__void
.type m_Matrix_Core_get_InternalName__void, @function
m_Matrix_Core_get_InternalName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_get_InternalName_void_0000:
    lea .LS_0_m_Matrix_Core_get_InternalName_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_InternalName_void_0005:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_get_InternalName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_get_InternalName__void, .-m_Matrix_Core_get_InternalName__void
.globl m_Matrix_Core_get_SupportsServers__void
.type m_Matrix_Core_get_SupportsServers__void, @function
m_Matrix_Core_get_SupportsServers__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_get_SupportsServers_void_0000:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_SupportsServers_void_0001:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_get_SupportsServers_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_get_SupportsServers__void, .-m_Matrix_Core_get_SupportsServers__void
.globl m_Matrix_Core_get_AuthenticationTypes__void
.type m_Matrix_Core_get_AuthenticationTypes__void, @function
m_Matrix_Core_get_AuthenticationTypes__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0000:
    mov $2, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0001:
    mov -24(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0007:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0008:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0009:
    lea .LS_0_m_Matrix_Core_get_AuthenticationTypes_void(%rip), %rdi
    mov $37, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_000e:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_000f:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0010:
    lea .LN_1_m_Matrix_Core_get_AuthenticationTypes_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %r8
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref
    mov %r12, -40(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0015:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0017:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0018:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0019:
    lea .LS_2_m_Matrix_Core_get_AuthenticationTypes_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_001e:
    lea .LS_3_m_Matrix_Core_get_AuthenticationTypes_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0023:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0024:
    lea .LN_4_m_Matrix_Core_get_AuthenticationTypes_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %r8
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_AuthTypeInfo_ctor__v_ref_ref_ref
    mov %r12, -40(%rbp)
.Lm_Matrix_Core_get_AuthenticationTypes_void_0029:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_get_AuthenticationTypes_void_002a:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_get_AuthenticationTypes_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_get_AuthenticationTypes__void, .-m_Matrix_Core_get_AuthenticationTypes__void
.globl m_Matrix_Core_get_TypingUsersList__void
.type m_Matrix_Core_get_TypingUsersList__void, @function
m_Matrix_Core_get_TypingUsersList__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_get_TypingUsersList_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_TypingUsersList_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_get_TypingUsersList_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_TypingUsersList_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_get_TypingUsersList_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_get_TypingUsersList__void, .-m_Matrix_Core_get_TypingUsersList__void
.globl m_Matrix_Core_set_TypingUsersList__ref
.type m_Matrix_Core_set_TypingUsersList__ref, @function
m_Matrix_Core_set_TypingUsersList__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_set_TypingUsersList_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_set_TypingUsersList_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_set_TypingUsersList_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_set_TypingUsersList_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_set_TypingUsersList_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_set_TypingUsersList_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_set_TypingUsersList__ref, .-m_Matrix_Core_set_TypingUsersList__ref
.globl m_Matrix_Core_get_ClickableConfigurations__void
.type m_Matrix_Core_get_ClickableConfigurations__void, @function
m_Matrix_Core_get_ClickableConfigurations__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0000:
    mov $2, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0001:
    mov -24(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0007:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0008:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0009:
    lea .LS_0_m_Matrix_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_000e:
    lea .LS_1_m_Matrix_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0013:
    lea .LN_2_m_Matrix_Core_get_ClickableConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref
    mov %r12, -40(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0018:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0019:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_001a:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_001b:
    mov $3, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_001c:
    lea .LS_3_m_Matrix_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0021:
    lea .LS_4_m_Matrix_Core_get_ClickableConfigurations_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_0026:
    lea .LN_5_m_Matrix_Core_get_ClickableConfigurations_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_ClickableConfiguration_ctor__v_ref_ref
    mov %r12, -40(%rbp)
.Lm_Matrix_Core_get_ClickableConfigurations_void_002b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Matrix_Core_get_ClickableConfigurations_void_002c:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_get_ClickableConfigurations_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_get_ClickableConfigurations__void, .-m_Matrix_Core_get_ClickableConfigurations__void
.globl m_Matrix_Core_GetQRCode__void
.type m_Matrix_Core_GetQRCode__void, @function
m_Matrix_Core_GetQRCode__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_GetQRCode_void_0000:
    lea .LN_0_m_Matrix_Core_GetQRCode_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetQRCode_void_0005:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_string__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetQRCode_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetQRCode_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetQRCode__void, .-m_Matrix_Core_GetQRCode__void
.globl m_Matrix_Core_Authenticate__v_ref_ref
.type m_Matrix_Core_Authenticate__v_ref_ref, @function
m_Matrix_Core_Authenticate__v_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0000:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0002:
    call m_Yggdrasil_Enumerations_LoginResult_Create__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0007:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_v_ref_ref_000c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0014:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0016:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0017:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_v_ref_ref_001c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0024:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0026:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0027:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_v_ref_ref_002c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_002e:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_002f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0034:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0036:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_003b:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_003d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_Start_valuetype_Matrix_Core_Authenticate_d_38__gen
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0042:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0044:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_Authenticate_v_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_0049:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_Task__void
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_Authenticate_v_ref_ref_004e:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_Authenticate_v_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_Authenticate__v_ref_ref, .-m_Matrix_Core_Authenticate__v_ref_ref
.globl m_Matrix_Core_AuthenticateTwoFA__ref
.type m_Matrix_Core_AuthenticateTwoFA__ref, @function
m_Matrix_Core_AuthenticateTwoFA__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0002:
    call m_Yggdrasil_Enumerations_LoginResult_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_AuthenticateTwoFA_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_AuthenticateTwoFA_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_AuthenticateTwoFA_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_AuthenticateTwoFA_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_AuthenticateTwoFA_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_Start_valuetype_Matrix_Core_AuthenticateTwoFA_d_39__gen
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_AuthenticateTwoFA_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_AuthenticateTwoFA_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_AuthenticateTwoFA_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_AuthenticateTwoFA__ref, .-m_Matrix_Core_AuthenticateTwoFA__ref
.globl m_Matrix_Core_Authenticate__ref
.type m_Matrix_Core_Authenticate__ref, @function
m_Matrix_Core_Authenticate__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0002:
    call m_Yggdrasil_Enumerations_LoginResult_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Authenticate_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_Start_valuetype_Matrix_Core_Authenticate_d_40__gen
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_Authenticate_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_Authenticate_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_Authenticate_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_Authenticate__ref, .-m_Matrix_Core_Authenticate__ref
.globl m_Matrix_Core_StartClient__void
.type m_Matrix_Core_StartClient__void, @function
m_Matrix_Core_StartClient__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_StartClient_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_void_0002:
    call m_Yggdrasil_Enumerations_LoginResult_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_StartClient_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartClient_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_StartClient_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartClient_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_StartClient_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartClient_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_StartClient_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_Start_valuetype_Matrix_Core_StartClient_d_41__gen
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartClient_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_void_002c:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_StartClient_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_void_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Enumerations_LoginResult_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartClient_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_StartClient_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_StartClient__void, .-m_Matrix_Core_StartClient__void
.globl m_Matrix_Core_GetUserInfo__void
.type m_Matrix_Core_GetUserInfo__void, @function
m_Matrix_Core_GetUserInfo__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_GetUserInfo_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetUserInfo_void_0001:
    call m_System_Threading_SynchronizationContext_get_Current__void
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_GetUserInfo_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetUserInfo_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetUserInfo_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetUserInfo_void_000c:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_GetUserInfo_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetUserInfo_void_0011:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_Yggdrasil_Yggdrasil_Models_User__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_GetUserInfo_void_0016:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetUserInfo_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetUserInfo__void, .-m_Matrix_Core_GetUserInfo__void
.globl m_Matrix_Core_FetchContacts__void
.type m_Matrix_Core_FetchContacts__void, @function
m_Matrix_Core_FetchContacts__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0002:
    call m_Yggdrasil_Models_DirectMessage_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchContacts_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchContacts_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_FetchContacts_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchContacts_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_FetchContacts_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchContacts_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_FetchContacts_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_Start_valuetype_Matrix_Core_FetchContacts_d_43__gen
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchContacts_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_void_002c:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_FetchContacts_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchContacts_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchContacts_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchContacts__void, .-m_Matrix_Core_FetchContacts__void
.globl m_Matrix_Core_FetchConversations__void
.type m_Matrix_Core_FetchConversations__void, @function
m_Matrix_Core_FetchConversations__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0002:
    call m_Yggdrasil_Models_Conversation_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchConversations_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchConversations_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_FetchConversations_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchConversations_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_FetchConversations_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchConversations_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_FetchConversations_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_Start_valuetype_Matrix_Core_FetchConversations_d_44__gen
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchConversations_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_void_002c:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_FetchConversations_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchConversations_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchConversations_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchConversations__void, .-m_Matrix_Core_FetchConversations__void
.globl m_Matrix_Core_FetchServers__void
.type m_Matrix_Core_FetchServers__void, @function
m_Matrix_Core_FetchServers__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_FetchServers_void_0000:
    lea .LN_0_m_Matrix_Core_FetchServers_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_Server_ctor__void
    mov %r12, -24(%rbp)
.Lm_Matrix_Core_FetchServers_void_0005:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_netstandard_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Server__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_FetchServers_void_000a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchServers_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchServers__void, .-m_Matrix_Core_FetchServers__void
.globl m_Matrix_Core_FetchFromInitialSync__void
.type m_Matrix_Core_FetchFromInitialSync__void, @function
m_Matrix_Core_FetchFromInitialSync__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0002:
    call m_Yggdrasil_Models_Conversation_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchFromInitialSync_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchFromInitialSync_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_FetchFromInitialSync_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchFromInitialSync_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_FetchFromInitialSync_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchFromInitialSync_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_FetchFromInitialSync_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_Start_valuetype_Matrix_Core_FetchFromInitialSync_d_47__gen
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_002c:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_FetchFromInitialSync_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0031:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_FetchFromInitialSync_void_0036:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchFromInitialSync_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchFromInitialSync__void, .-m_Matrix_Core_FetchFromInitialSync__void
.globl m_Matrix_Core_SendMessage__ref_ref_ref_ref_ref
.type m_Matrix_Core_SendMessage__ref_ref_ref_ref_ref, @function
m_Matrix_Core_SendMessage__ref_ref_ref_ref_ref:
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
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0000:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0007:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_000c:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_000f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0014:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0017:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_001c:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_001f:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0024:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0026:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0027:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_002c:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_002e:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0030:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0035:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0037:
    mov $-1, %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0038:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_003d:
    lea -64(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_003f:
    mov -72(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0044:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0046:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Matrix_Core_SendMessage_d_48__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_004b:
    lea -64(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_004d:
    mov -80(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0052:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -80(%rbp)
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_0057:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendMessage_ref_ref_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendMessage__ref_ref_ref_ref_ref, .-m_Matrix_Core_SendMessage__ref_ref_ref_ref_ref
.globl m_Matrix_Core_SendTextMessage__ref_ref
.type m_Matrix_Core_SendTextMessage__ref_ref, @function
m_Matrix_Core_SendTextMessage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendTextMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendTextMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendTextMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendTextMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SendTextMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTextMessage_ref_ref_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SendTextMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Matrix_Core_SendTextMessage_d_49__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_003a:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_003c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_SendTextMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTextMessage_ref_ref_0046:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendTextMessage_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendTextMessage__ref_ref, .-m_Matrix_Core_SendTextMessage__ref_ref
.globl m_Matrix_Core_SendImageMessage__ref_arr_ref
.type m_Matrix_Core_SendImageMessage__ref_arr_ref, @function
m_Matrix_Core_SendImageMessage__ref_arr_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0000:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0007:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendImageMessage_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_000c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendImageMessage_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0014:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0017:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendImageMessage_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_001c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendImageMessage_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0024:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0026:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0027:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SendImageMessage_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_002c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_002e:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_002f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SendImageMessage_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0034:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0036:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_SendImageMessage_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_003b:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_003d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Matrix_Core_SendImageMessage_d_50__gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0042:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0044:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_SendImageMessage_ref_arr_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_0049:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_004e:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendImageMessage_ref_arr_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendImageMessage__ref_arr_ref, .-m_Matrix_Core_SendImageMessage__ref_arr_ref
.globl m_Matrix_Core_SendReplyMessage__ref_ref_ref
.type m_Matrix_Core_SendReplyMessage__ref_ref_ref, @function
m_Matrix_Core_SendReplyMessage__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0000:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0007:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendReplyMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_000c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendReplyMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0014:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0017:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendReplyMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_001c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_001f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendReplyMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0024:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0026:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0027:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SendReplyMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_002c:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_002e:
    mov $-1, %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_002f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SendReplyMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0034:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0036:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_SendReplyMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_003b:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_003d:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Matrix_Core_SendReplyMessage_d_51__gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0042:
    lea -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0044:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_SendReplyMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_0049:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_004e:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendReplyMessage_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendReplyMessage__ref_ref_ref, .-m_Matrix_Core_SendReplyMessage__ref_ref_ref
.globl m_Matrix_Core_EditMessage__ref_ref_ref
.type m_Matrix_Core_EditMessage__ref_ref_ref, @function
m_Matrix_Core_EditMessage__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_0001:
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_EditMessage_ref_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_0006:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_0007:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_EditMessage_ref_ref_ref_000c
.Lm_Matrix_Core_EditMessage_ref_ref_ref_0009:
    mov -40(%rbp), %rax
.Lm_Matrix_Core_EditMessage_ref_ref_ref_000a:
    jmp .Lm_Matrix_Core_EditMessage_ref_ref_ref_001d
.Lm_Matrix_Core_EditMessage_ref_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_000d:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_000e:
    lea .LS_1_m_Matrix_Core_EditMessage_ref_ref_ref(%rip), %rdi
    mov $35, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_0013:
    lea .LN_2_m_Matrix_Core_EditMessage_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -56(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_0018:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_001d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_001e:
    mov -48(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_EditMessage_ref_ref_ref_0023:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_EditMessage_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_EditMessage__ref_ref_ref, .-m_Matrix_Core_EditMessage__ref_ref_ref
.globl m_Matrix_Core_DeleteMessage__ref_ref
.type m_Matrix_Core_DeleteMessage__ref_ref, @function
m_Matrix_Core_DeleteMessage__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_DeleteMessage_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_0006:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_0007:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_DeleteMessage_ref_ref_000c
.Lm_Matrix_Core_DeleteMessage_ref_ref_0009:
    mov -32(%rbp), %rax
.Lm_Matrix_Core_DeleteMessage_ref_ref_000a:
    jmp .Lm_Matrix_Core_DeleteMessage_ref_ref_001d
.Lm_Matrix_Core_DeleteMessage_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_000d:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_000e:
    lea .LS_1_m_Matrix_Core_DeleteMessage_ref_ref(%rip), %rdi
    mov $36, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_0013:
    lea .LN_2_m_Matrix_Core_DeleteMessage_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__v_ref
    mov %r12, -48(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_0018:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_Invoke__ref_gen
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_001d:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_001e:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_DeleteMessage_ref_ref_0023:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_DeleteMessage_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_DeleteMessage__ref_ref, .-m_Matrix_Core_DeleteMessage__ref_ref
.globl m_Matrix_Core_SendTypingIndicator__ref_b
.type m_Matrix_Core_SendTypingIndicator__ref_b, @function
m_Matrix_Core_SendTypingIndicator__ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SendTypingIndicator_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SendTypingIndicator_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SendTypingIndicator_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SendTypingIndicator_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SendTypingIndicator_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SendTypingIndicator_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Matrix_Core_SendTypingIndicator_d_54__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_003a:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_003c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_SendTypingIndicator_ref_b(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_SendTypingIndicator_ref_b_0046:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SendTypingIndicator_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SendTypingIndicator__ref_b, .-m_Matrix_Core_SendTypingIndicator__ref_b
.globl m_Matrix_Core_SetConnectionStatus__v
.type m_Matrix_Core_SetConnectionStatus__v, @function
m_Matrix_Core_SetConnectionStatus__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_v_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_v_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0016:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_v_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetConnectionStatus_v_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Matrix_Core_SetConnectionStatus_d_55__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SetConnectionStatus_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetConnectionStatus_v_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SetConnectionStatus_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SetConnectionStatus__v, .-m_Matrix_Core_SetConnectionStatus__v
.globl m_Matrix_Core_SetMood__ref
.type m_Matrix_Core_SetMood__ref, @function
m_Matrix_Core_SetMood__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SetMood_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SetMood_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetMood_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SetMood_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetMood_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SetMood_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetMood_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SetMood_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SetMood_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SetMood_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_Start_valuetype_Matrix_Core_SetMood_d_56__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetMood_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_ref_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SetMood_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_bool_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SetMood_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SetMood_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SetMood__ref, .-m_Matrix_Core_SetMood__ref
.globl m_Matrix_Core_FetchMessages__ref_v_i4_ref
.type m_Matrix_Core_FetchMessages__ref_v_i4_ref, @function
m_Matrix_Core_FetchMessages__ref_v_i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
    mov %r8, -48(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0000:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0002:
    call m_Yggdrasil_Models_ConversationItem_Create__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0007:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_000c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_000f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0014:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0017:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_001c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_001f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0024:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0026:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0027:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_002c:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_002e:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0030:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0035:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0037:
    mov $-1, %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0038:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_003d:
    lea -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_003f:
    mov -64(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0044:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0046:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_Start_valuetype_Matrix_Core_FetchMessages_d_57__gen
    mov %rax, -64(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_004b:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_004d:
    mov -72(%rbp), %rdi
    lea .LN_8_m_Matrix_Core_FetchMessages_ref_v_i4_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0052:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Task__void
    mov %rax, -72(%rbp)
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_0057:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_FetchMessages_ref_v_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_FetchMessages__ref_v_i4_ref, .-m_Matrix_Core_FetchMessages__ref_v_i4_ref
.globl m_Matrix_Core_StoreCredential__void
.type m_Matrix_Core_StoreCredential__void, @function
m_Matrix_Core_StoreCredential__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_StoreCredential_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StoreCredential_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_StoreCredential_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StoreCredential_void_0006:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_class_Yggdrasil_Yggdrasil_Models_SavedCredential__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StoreCredential_void_000b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_StoreCredential_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_StoreCredential__void, .-m_Matrix_Core_StoreCredential__void
.globl m_Matrix_Core_Dispose__void
.type m_Matrix_Core_Dispose__void, @function
m_Matrix_Core_Dispose__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_Dispose_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0007:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_Dispose_void_000c
.Lm_Matrix_Core_Dispose_void_0009:
    mov -16(%rbp), %rax
.Lm_Matrix_Core_Dispose_void_000a:
    jmp .Lm_Matrix_Core_Dispose_void_0011
.Lm_Matrix_Core_Dispose_void_000c:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_Cancel__void
.Lm_Matrix_Core_Dispose_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0012:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0017:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0018:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_Dispose_void_001d
.Lm_Matrix_Core_Dispose_void_001a:
    mov -16(%rbp), %rax
.Lm_Matrix_Core_Dispose_void_001b:
    jmp .Lm_Matrix_Core_Dispose_void_0022
.Lm_Matrix_Core_Dispose_void_001d:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_Dispose__void
.Lm_Matrix_Core_Dispose_void_0022:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0023:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0024:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_0029:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_002a:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Matrix_Core_get_TypingUsersList__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_002f:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0030:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_Dispose_void_0035
.Lm_Matrix_Core_Dispose_void_0032:
    mov -16(%rbp), %rax
.Lm_Matrix_Core_Dispose_void_0033:
    jmp .Lm_Matrix_Core_Dispose_void_003a
.Lm_Matrix_Core_Dispose_void_0035:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_Clear__void
    mov %rax, -16(%rbp)
.Lm_Matrix_Core_Dispose_void_003a:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_003b:
    mov -24(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0040:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0041:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_Dispose_void_0046
.Lm_Matrix_Core_Dispose_void_0043:
    mov -16(%rbp), %rax
.Lm_Matrix_Core_Dispose_void_0044:
    jmp .Lm_Matrix_Core_Dispose_void_004b
.Lm_Matrix_Core_Dispose_void_0046:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Clear__void
    mov %rax, -16(%rbp)
.Lm_Matrix_Core_Dispose_void_004b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_004c:
    mov -24(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0051:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0052:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_Dispose_void_0057
.Lm_Matrix_Core_Dispose_void_0054:
    mov -16(%rbp), %rax
.Lm_Matrix_Core_Dispose_void_0055:
    jmp .Lm_Matrix_Core_Dispose_void_005c
.Lm_Matrix_Core_Dispose_void_0057:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Clear__void
    mov %rax, -16(%rbp)
.Lm_Matrix_Core_Dispose_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_005d:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_005e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_0063:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0064:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0065:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_006a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_006b:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_006c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_0071:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0072:
    lea .LS_8_m_Matrix_Core_Dispose_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0077:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_9_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_007c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_007d:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_007e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_10_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_0083:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0084:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0085:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_11_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_008a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_008b:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_008c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_12_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_0091:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_Dispose_void_0092:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_Dispose_void_0093:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_13_m_Matrix_Core_Dispose_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_Dispose_void_0098:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_Dispose_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_Dispose__void, .-m_Matrix_Core_Dispose__void
.globl m_Matrix_Core_StartSyncLoop__void
.type m_Matrix_Core_StartSyncLoop__void, @function
m_Matrix_Core_StartSyncLoop__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_StartSyncLoop_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_0006:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_0007:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Matrix_Core_StartSyncLoop_void_000c
.Lm_Matrix_Core_StartSyncLoop_void_0009:
    mov -16(%rbp), %rax
.Lm_Matrix_Core_StartSyncLoop_void_000a:
    jmp .Lm_Matrix_Core_StartSyncLoop_void_0011
.Lm_Matrix_Core_StartSyncLoop_void_000c:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_CancellationTokenSource_Cancel__void
.Lm_Matrix_Core_StartSyncLoop_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_0012:
    lea .LN_1_m_Matrix_Core_StartSyncLoop_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Threading_CancellationTokenSource_ctor__void
    mov %r12, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_0017:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_StartSyncLoop_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartSyncLoop_void_001c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_001d:
    lea m_Matrix_Core_StartSyncLoop_b_60_0__void(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_0023:
    lea .LN_3_m_Matrix_Core_StartSyncLoop_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_0028:
    mov -24(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run__gen
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_StartSyncLoop_void_002d:
    mov -24(%rbp), %rax
.Lm_Matrix_Core_StartSyncLoop_void_002e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_StartSyncLoop_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_StartSyncLoop__void, .-m_Matrix_Core_StartSyncLoop__void
.globl m_Matrix_Core_SyncLoop__v
.type m_Matrix_Core_SyncLoop__v, @function
m_Matrix_Core_SyncLoop__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_SyncLoop_v_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SyncLoop_v_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_SyncLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_v_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SyncLoop_v_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_SyncLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_v_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_0016:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SyncLoop_v_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_SyncLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_v_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SyncLoop_v_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_SyncLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_SyncLoop_v_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_SyncLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_SyncLoop_v_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Matrix_Core_SyncLoop_d_61__gen
.Lm_Matrix_Core_SyncLoop_v_0032:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_0034:
    mov -40(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_SyncLoop_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_0039:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SyncLoop_v_003e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SyncLoop_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SyncLoop__v, .-m_Matrix_Core_SyncLoop__v
.globl m_Matrix_Core_ProcessTimelineEvent__ref_v
.type m_Matrix_Core_ProcessTimelineEvent__ref_v, @function
m_Matrix_Core_ProcessTimelineEvent__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_ProcessTimelineEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_ProcessTimelineEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_ProcessTimelineEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_ProcessTimelineEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_ProcessTimelineEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_ProcessTimelineEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Matrix_Core_ProcessTimelineEvent_d_62__gen
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_003a:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_003c:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_ProcessTimelineEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0041:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_0046:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_ProcessTimelineEvent_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_ProcessTimelineEvent__ref_v, .-m_Matrix_Core_ProcessTimelineEvent__ref_v
.globl m_Matrix_Core_ProcessEphemeralEvent__ref_v
.type m_Matrix_Core_ProcessEphemeralEvent__ref_v, @function
m_Matrix_Core_ProcessEphemeralEvent__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_ProcessEphemeralEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_ProcessEphemeralEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_ProcessEphemeralEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_001e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_ProcessEphemeralEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_ProcessEphemeralEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_ProcessEphemeralEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Matrix_Core_ProcessEphemeralEvent_d_63__gen
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_003a:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_003c:
    mov -48(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_ProcessEphemeralEvent_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0041:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_0046:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_ProcessEphemeralEvent_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_ProcessEphemeralEvent__ref_v, .-m_Matrix_Core_ProcessEphemeralEvent__ref_v
.globl m_Matrix_Core_GetMessageById__ref_ref
.type m_Matrix_Core_GetMessageById__ref_ref, @function
m_Matrix_Core_GetMessageById__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0002:
    call m_Yggdrasil_Models_Message_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetMessageById_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetMessageById_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_GetMessageById_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetMessageById_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_GetMessageById_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetMessageById_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_GetMessageById_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetMessageById_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_GetMessageById_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetMessageById_ref_ref_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_GetMessageById_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_Start_valuetype_Matrix_Core_GetMessageById_d_64__gen
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_003a:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_003c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_GetMessageById_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Task__void
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetMessageById_ref_ref_0046:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetMessageById_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetMessageById__ref_ref, .-m_Matrix_Core_GetMessageById__ref_ref
.globl m_Matrix_Core_GetRoomMemberDisplayNames__ref
.type m_Matrix_Core_GetRoomMemberDisplayNames__ref, @function
m_Matrix_Core_GetRoomMemberDisplayNames__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0000:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0002:
    call m_string_Create__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0007:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetRoomMemberDisplayNames_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_000c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_000f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_GetRoomMemberDisplayNames_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0017:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_GetRoomMemberDisplayNames_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_001c:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_001e:
    mov $-1, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_001f:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_GetRoomMemberDisplayNames_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0024:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0026:
    mov -40(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_GetRoomMemberDisplayNames_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_002b:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_002d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Start_valuetype_Matrix_Core_GetRoomMemberDisplayNames_d_65__gen
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0032:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0034:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_GetRoomMemberDisplayNames_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Task__void
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_003e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetRoomMemberDisplayNames_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetRoomMemberDisplayNames__ref, .-m_Matrix_Core_GetRoomMemberDisplayNames__ref
.globl m_Matrix_Core_GetDisplayNameForUser__ref_ref
.type m_Matrix_Core_GetDisplayNameForUser__ref_ref, @function
m_Matrix_Core_GetDisplayNameForUser__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0000:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_Create__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0007:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_GetDisplayNameForUser_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_000c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_GetDisplayNameForUser_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0014:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0017:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_GetDisplayNameForUser_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_001c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_001f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_GetDisplayNameForUser_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0024:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0026:
    mov $-1, %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0027:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_GetDisplayNameForUser_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_002c:
    lea -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_002e:
    mov -48(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_GetDisplayNameForUser_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0033:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_Start_valuetype_Matrix_Core_GetDisplayNameForUser_d_66__gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_003a:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_003c:
    mov -56(%rbp), %rdi
    lea .LN_6_m_Matrix_Core_GetDisplayNameForUser_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0041:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_string_get_Task__void
    mov %rax, -56(%rbp)
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_0046:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_GetDisplayNameForUser_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_GetDisplayNameForUser__ref_ref, .-m_Matrix_Core_GetDisplayNameForUser__ref_ref
.globl m_Matrix_Core_get_TypingTimeout__void
.type m_Matrix_Core_get_TypingTimeout__void, @function
m_Matrix_Core_get_TypingTimeout__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_get_TypingTimeout_void_0000:
    mov $5000, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_TypingTimeout_void_0005:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_get_TypingTimeout_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_get_TypingTimeout__void, .-m_Matrix_Core_get_TypingTimeout__void
.globl m_Matrix_Core_get_TypingRepeat__void
.type m_Matrix_Core_get_TypingRepeat__void, @function
m_Matrix_Core_get_TypingRepeat__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_get_TypingRepeat_void_0000:
    mov $9000, %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_get_TypingRepeat_void_0005:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_get_TypingRepeat_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_get_TypingRepeat__void, .-m_Matrix_Core_get_TypingRepeat__void
.globl m_Matrix_Core_SetTyping__ref_b
.type m_Matrix_Core_SetTyping__ref_b, @function
m_Matrix_Core_SetTyping__ref_b:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Matrix_Core_SetTyping_ref_b_0000:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetTyping_ref_b_0001:
    mov -40(%rbp), %rdi
    call m_System_Threading_Tasks_Task_FromResult_bool__gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_SetTyping_ref_b_0006:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_SetTyping_ref_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_SetTyping__ref_b, .-m_Matrix_Core_SetTyping__ref_b
.globl m_Matrix_Core_ctor__void
.type m_Matrix_Core_ctor__void, @function
m_Matrix_Core_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_ctor_void_0001:
    lea .LS_0_m_Matrix_Core_ctor_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_ctor_void_0006:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_ctor_void_000c:
    lea .LN_2_m_Matrix_Core_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Yggdrasil_Models_User_ctor__void
    mov %r12, -32(%rbp)
.Lm_Matrix_Core_ctor_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ctor_void_0016:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_ctor_void_0017:
    lea .LN_4_m_Matrix_Core_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -32(%rbp)
.Lm_Matrix_Core_ctor_void_001c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_5_m_Matrix_Core_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ctor_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_ctor_void_0022:
    lea .LN_6_m_Matrix_Core_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -32(%rbp)
.Lm_Matrix_Core_ctor_void_0027:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_7_m_Matrix_Core_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_ctor_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Matrix_Core_ctor_void_002d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Matrix_Core_ctor_void_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_ctor__void, .-m_Matrix_Core_ctor__void
.globl m_Matrix_Core_cctor__void
.type m_Matrix_Core_cctor__void, @function
m_Matrix_Core_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Matrix_Core_cctor_void_0000:
    mov $10, %rax
    mov %rax, -16(%rbp)
.Lm_Matrix_Core_cctor_void_0002:
    lea .LN_0_m_Matrix_Core_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_OmegaAOL_Bifrost_Http_BifrostEngine_ctor__i4
    mov %r12, -16(%rbp)
.Lm_Matrix_Core_cctor_void_0007:
    lea .LN_1_m_Matrix_Core_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Net_Http_HttpClient_ctor__ref
    mov %r12, -16(%rbp)
.Lm_Matrix_Core_cctor_void_000c:
    lea .LN_2_m_Matrix_Core_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Matrix_Core_cctor_void_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_cctor__void, .-m_Matrix_Core_cctor__void
.globl m_Matrix_Core_StartSyncLoop_b_60_0__void
.type m_Matrix_Core_StartSyncLoop_b_60_0__void, @function
m_Matrix_Core_StartSyncLoop_b_60_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0000:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0002:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Create__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0007:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Matrix_Core_StartSyncLoop_b_60_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_000c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Matrix_Core_StartSyncLoop_b_60_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0014:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0016:
    mov $-1, %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Matrix_Core_StartSyncLoop_b_60_0_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_001c:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_001e:
    mov -32(%rbp), %rdi
    lea .LN_3_m_Matrix_Core_StartSyncLoop_b_60_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0023:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0025:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_Start_valuetype_Matrix_Core_StartSyncLoop_b_60_0_d__gen
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_002a:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_002c:
    mov -32(%rbp), %rdi
    lea .LN_4_m_Matrix_Core_StartSyncLoop_b_60_0_void(%rip), %rsi
    call shim_field_slot
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0031:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_get_Task__void
    mov %rax, -32(%rbp)
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_0036:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Matrix_Core_StartSyncLoop_b_60_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Matrix_Core_StartSyncLoop_b_60_0__void, .-m_Matrix_Core_StartSyncLoop_b_60_0__void
    .globl m_Matrix_Core_Authenticate_d_38_MoveNext__void
    .type m_Matrix_Core_Authenticate_d_38_MoveNext__void, @function
m_Matrix_Core_Authenticate_d_38_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Matrix_Core_Authenticate_d_38_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Matrix_Core_Authenticate_d_38_MoveNext__void, .-m_Matrix_Core_Authenticate_d_38_MoveNext__void
    .globl m_Matrix_Core_AuthenticateTwoFA_d_39_MoveNext__void
    .type m_Matrix_Core_AuthenticateTwoFA_d_39_MoveNext__void, @function
m_Matrix_Core_AuthenticateTwoFA_d_39_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Matrix_Core_AuthenticateTwoFA_d_39_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Matrix_Core_AuthenticateTwoFA_d_39_MoveNext__void, .-m_Matrix_Core_AuthenticateTwoFA_d_39_MoveNext__void
    .globl m_Matrix_Core_FetchFromInitialSync_d_47_MoveNext__void
    .type m_Matrix_Core_FetchFromInitialSync_d_47_MoveNext__void, @function
m_Matrix_Core_FetchFromInitialSync_d_47_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Matrix_Core_FetchFromInitialSync_d_47_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Matrix_Core_FetchFromInitialSync_d_47_MoveNext__void, .-m_Matrix_Core_FetchFromInitialSync_d_47_MoveNext__void
    .globl m_Matrix_Core_FetchMessages_d_57_MoveNext__void
    .type m_Matrix_Core_FetchMessages_d_57_MoveNext__void, @function
m_Matrix_Core_FetchMessages_d_57_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Matrix_Core_FetchMessages_d_57_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Matrix_Core_FetchMessages_d_57_MoveNext__void, .-m_Matrix_Core_FetchMessages_d_57_MoveNext__void
    .globl m_Matrix_Core_GetMessageById_d_64_MoveNext__void
    .type m_Matrix_Core_GetMessageById_d_64_MoveNext__void, @function
m_Matrix_Core_GetMessageById_d_64_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Matrix_Core_GetMessageById_d_64_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Matrix_Core_GetMessageById_d_64_MoveNext__void, .-m_Matrix_Core_GetMessageById_d_64_MoveNext__void
    .globl m_Matrix_Core_ProcessEphemeralEvent_d_63_MoveNext__void
    .type m_Matrix_Core_ProcessEphemeralEvent_d_63_MoveNext__void, @function
m_Matrix_Core_ProcessEphemeralEvent_d_63_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Matrix_Core_ProcessEphemeralEvent_d_63_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Matrix_Core_ProcessEphemeralEvent_d_63_MoveNext__void, .-m_Matrix_Core_ProcessEphemeralEvent_d_63_MoveNext__void
    .globl m_Matrix_Core_ProcessTimelineEvent_d_62_MoveNext__void
    .type m_Matrix_Core_ProcessTimelineEvent_d_62_MoveNext__void, @function
m_Matrix_Core_ProcessTimelineEvent_d_62_MoveNext__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Matrix_Core_ProcessTimelineEvent_d_62_MoveNext_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Matrix_Core_ProcessTimelineEvent_d_62_MoveNext__void, .-m_Matrix_Core_ProcessTimelineEvent_d_62_MoveNext__void
.Lnullmsg:
    .asciz "null receiver"
.Ltype_Matrix_Core:
    .asciz "Matrix.Core"
.Ltype_Matrix_Core_AuthenticateTwoFA_d_39:
    .asciz "Matrix.Core/<AuthenticateTwoFA>d__39"
.Ltype_Matrix_Core_Authenticate_d_38:
    .asciz "Matrix.Core/<Authenticate>d__38"
.Ltype_Matrix_Core_Authenticate_d_40:
    .asciz "Matrix.Core/<Authenticate>d__40"
.Ltype_Matrix_Core_FetchContacts_d_43:
    .asciz "Matrix.Core/<FetchContacts>d__43"
.Ltype_Matrix_Core_FetchConversations_d_44:
    .asciz "Matrix.Core/<FetchConversations>d__44"
.Ltype_Matrix_Core_FetchFromInitialSync_d_47:
    .asciz "Matrix.Core/<FetchFromInitialSync>d__47"
.Ltype_Matrix_Core_FetchMessages_d_57:
    .asciz "Matrix.Core/<FetchMessages>d__57"
.Ltype_Matrix_Core_GetDisplayNameForUser_d_66:
    .asciz "Matrix.Core/<GetDisplayNameForUser>d__66"
.Ltype_Matrix_Core_GetMessageById_d_64:
    .asciz "Matrix.Core/<GetMessageById>d__64"
.Ltype_Matrix_Core_GetRoomMemberDisplayNames_d_65:
    .asciz "Matrix.Core/<GetRoomMemberDisplayNames>d__65"
.Ltype_Matrix_Core_MatrixOOTBStuff:
    .asciz "Matrix.Core/MatrixOOTBStuff"
.Ltype_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0:
    .asciz "Matrix.Core/MatrixOOTBStuff/<DownloadMatrixContent>d__0"
.Ltype_Matrix_Core_ProcessEphemeralEvent_d_63:
    .asciz "Matrix.Core/<ProcessEphemeralEvent>d__63"
.Ltype_Matrix_Core_ProcessTimelineEvent_d_62:
    .asciz "Matrix.Core/<ProcessTimelineEvent>d__62"
.Ltype_Matrix_Core_SendImageMessage_d_50:
    .asciz "Matrix.Core/<SendImageMessage>d__50"
.Ltype_Matrix_Core_SendMessage_d_48:
    .asciz "Matrix.Core/<SendMessage>d__48"
.Ltype_Matrix_Core_SendReplyMessage_d_51:
    .asciz "Matrix.Core/<SendReplyMessage>d__51"
.Ltype_Matrix_Core_SendTextMessage_d_49:
    .asciz "Matrix.Core/<SendTextMessage>d__49"
.Ltype_Matrix_Core_SendTypingIndicator_d_54:
    .asciz "Matrix.Core/<SendTypingIndicator>d__54"
.Ltype_Matrix_Core_SetConnectionStatus_d_55:
    .asciz "Matrix.Core/<SetConnectionStatus>d__55"
.Ltype_Matrix_Core_SetMood_d_56:
    .asciz "Matrix.Core/<SetMood>d__56"
.Ltype_Matrix_Core_StartClient_d_41:
    .asciz "Matrix.Core/<StartClient>d__41"
.Ltype_Matrix_Core_StartSyncLoop_b_60_0_d:
    .asciz "Matrix.Core/<<StartSyncLoop>b__60_0>d"
.Ltype_Matrix_Core_SyncLoop_d_61:
    .asciz "Matrix.Core/<SyncLoop>d__61"
.Ltype_Matrix_Core_c_DisplayClass47_0:
    .asciz "Matrix.Core/'<>c__DisplayClass47_0'"
.Ltype_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d:
    .asciz "Matrix.Core/<>c__DisplayClass47_0/<<FetchFromInitialSync>b__0>d"
.Ltype_Matrix_Core_c_DisplayClass62_0:
    .asciz "Matrix.Core/'<>c__DisplayClass62_0'"
.Ltype_Matrix_Core_c_DisplayClass62_1:
    .asciz "Matrix.Core/'<>c__DisplayClass62_1'"
.Ltype_Matrix_Core_c_DisplayClass63_0:
    .asciz "Matrix.Core/'<>c__DisplayClass63_0'"
.Ltype_OmegaAOL_Bifrost_Http_BifrostEngine:
    .asciz "OmegaAOL.Bifrost.Http.BifrostEngine"
.Ltype_System_DateTime:
    .asciz "System.DateTime>"
.Ltype_System_Net_Http_ByteArrayContent:
    .asciz "System.Net.Http.ByteArrayContent"
.Ltype_System_Net_Http_Headers_MediaTypeHeaderValue:
    .asciz "System.Net.Http.Headers.MediaTypeHeaderValue"
.Ltype_System_Net_Http_HttpClient:
    .asciz "System.Net.Http.HttpClient"
.Ltype_System_Net_Http_HttpRequestMessage:
    .asciz "System.Net.Http.HttpRequestMessage"
.Ltype_System_Net_Http_StringContent:
    .asciz "System.Net.Http.StringContent"
.Ltype_System_Text_Json_JsonElement:
    .asciz "System.Text.Json.JsonElement>"
.Ltype_System_Threading_CancellationTokenSource:
    .asciz "System.Threading.CancellationTokenSource"
.Ltype_System_Threading_SendOrPostCallback:
    .asciz "System.Threading.SendOrPostCallback"
.Ltype_System_Threading_Tasks_Task:
    .asciz "System.Threading.Tasks.Task>"
.Ltype_Yggdrasil_Bottles_DialogBottle:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.Ltype_Yggdrasil_Bottles_MessageRecievedBottle:
    .asciz "Yggdrasil.Bottles.MessageRecievedBottle"
.Ltype_Yggdrasil_Models_Attachment:
    .asciz "Yggdrasil.Models.Attachment"
.Ltype_Yggdrasil_Models_AuthTypeInfo:
    .asciz "Yggdrasil.Models.AuthTypeInfo"
.Ltype_Yggdrasil_Models_ClickableConfiguration:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.Ltype_Yggdrasil_Models_Conversation:
    .asciz "Yggdrasil.Models.Conversation>"
.Ltype_Yggdrasil_Models_ConversationItem:
    .asciz "Yggdrasil.Models.ConversationItem>"
.Ltype_Yggdrasil_Models_DirectMessage:
    .asciz "Yggdrasil.Models.DirectMessage"
.Ltype_Yggdrasil_Models_Group:
    .asciz "Yggdrasil.Models.Group"
.Ltype_Yggdrasil_Models_Message:
    .asciz "Yggdrasil.Models.Message"
.Ltype_Yggdrasil_Models_SavedCredential:
    .asciz "Yggdrasil.Models.SavedCredential"
.Ltype_Yggdrasil_Models_Server:
    .asciz "Yggdrasil.Models.Server>"
.Ltype_Yggdrasil_Models_User:
    .asciz "Yggdrasil.Models.User"
.Ltype_account_data_j_TPar:
    .asciz "'<account_data>j__TPar'>"
.Ltype_body_j_TPar:
    .asciz "'<body>j__TPar'>"
.Ltype_email_j_TPar:
    .asciz "'<email>j__TPar'>"
.Ltype_f_AnonymousType13_1_presence_j_TPar:
    .asciz "'<>f__AnonymousType13`1'<'<presence>j__TPar'>"
.Ltype_f_AnonymousType13_1_string:
    .asciz "'<>f__AnonymousType13`1'<string>"
.Ltype_f_AnonymousType7_1_string:
    .asciz "'<>f__AnonymousType7`1'<string[]>"
.Ltype_f_AnonymousType7_1_types_j_TPar:
    .asciz "'<>f__AnonymousType7`1'<'<types>j__TPar'>"
.Ltype_f_AnonymousType8_1_int32:
    .asciz "'<>f__AnonymousType8`1'<int32>"
.Ltype_f_AnonymousType8_1_limit_j_TPar:
    .asciz "'<>f__AnonymousType8`1'<'<limit>j__TPar'>"
.Ltype_info_j_TPar:
    .asciz "'<info>j__TPar'>"
.Ltype_initial_device_display_name_j_TPar:
    .asciz "'<initial_device_display_name>j__TPar'>"
.Ltype_int32:
    .asciz "int32>"
.Ltype_object:
    .asciz "object>"
.Ltype_password_j_TPar:
    .asciz "'<password>j__TPar'>"
.Ltype_presence_j_TPar:
    .asciz "'<presence>j__TPar'>"
.Ltype_response_j_TPar:
    .asciz "'<response>j__TPar'>"
.Ltype_size_j_TPar:
    .asciz "'<size>j__TPar'>"
.Ltype_status_msg_j_TPar:
    .asciz "'<status_msg>j__TPar'>"
.Ltype_string:
    .asciz "string>"
.Ltype_timeout_j_TPar:
    .asciz "'<timeout>j__TPar'>"
.Ltype_user_j_TPar:
    .asciz "'<user>j__TPar'>"
    .section .rodata
.LN_0_m_password_j_TPar_get_type_void:
    .asciz "<type>i__Field"
.LN_0_m_password_j_TPar_get_identifier_void:
    .asciz "<identifier>i__Field"
.LN_0_m_password_j_TPar_get_password_void:
    .asciz "<password>i__Field"
.LN_0_m_password_j_TPar_ctor_gen_gen_gen:
    .asciz "<type>i__Field"
.LN_1_m_password_j_TPar_ctor_gen_gen_gen:
    .asciz "<identifier>i__Field"
.LN_2_m_password_j_TPar_ctor_gen_gen_gen:
    .asciz "<password>i__Field"
.LN_0_m_password_j_TPar_Equals_ref:
    .asciz "<type>i__Field"
.LN_1_m_password_j_TPar_Equals_ref:
    .asciz "<type>i__Field"
.LN_2_m_password_j_TPar_Equals_ref:
    .asciz "<identifier>i__Field"
.LN_3_m_password_j_TPar_Equals_ref:
    .asciz "<identifier>i__Field"
.LN_4_m_password_j_TPar_Equals_ref:
    .asciz "<password>i__Field"
.LN_5_m_password_j_TPar_Equals_ref:
    .asciz "<password>i__Field"
.LN_0_m_password_j_TPar_GetHashCode_void:
    .asciz "<type>i__Field"
.LN_1_m_password_j_TPar_GetHashCode_void:
    .asciz "<identifier>i__Field"
.LN_2_m_password_j_TPar_GetHashCode_void:
    .asciz "<password>i__Field"
.LS_0_m_password_j_TPar_ToString_void:
    .short 123, 123, 32, 116, 121, 112, 101, 32, 61, 32, 123, 48, 125, 44, 32, 105, 100, 101, 110, 116, 105, 102, 105, 101, 114, 32, 61, 32, 123, 49, 125, 44, 32, 112, 97, 115, 115, 119, 111, 114, 100, 32, 61, 32, 123, 50, 125, 32, 125, 125
.LN_1_m_password_j_TPar_ToString_void:
    .asciz "<type>i__Field"
.LN_2_m_password_j_TPar_ToString_void:
    .asciz "!'<type>j__TPar'"
.LN_3_m_password_j_TPar_ToString_void:
    .asciz "<identifier>i__Field"
.LN_4_m_password_j_TPar_ToString_void:
    .asciz "!'<identifier>j__TPar'"
.LN_5_m_password_j_TPar_ToString_void:
    .asciz "<password>i__Field"
.LN_6_m_password_j_TPar_ToString_void:
    .asciz "!'<password>j__TPar'"
.LN_0_m_user_j_TPar_get_type_void:
    .asciz "<type>i__Field"
.LN_0_m_user_j_TPar_get_user_void:
    .asciz "<user>i__Field"
.LN_0_m_user_j_TPar_ctor_gen_gen:
    .asciz "<type>i__Field"
.LN_1_m_user_j_TPar_ctor_gen_gen:
    .asciz "<user>i__Field"
.LN_0_m_user_j_TPar_Equals_ref:
    .asciz "<type>i__Field"
.LN_1_m_user_j_TPar_Equals_ref:
    .asciz "<type>i__Field"
.LN_2_m_user_j_TPar_Equals_ref:
    .asciz "<user>i__Field"
.LN_3_m_user_j_TPar_Equals_ref:
    .asciz "<user>i__Field"
.LN_0_m_user_j_TPar_GetHashCode_void:
    .asciz "<type>i__Field"
.LN_1_m_user_j_TPar_GetHashCode_void:
    .asciz "<user>i__Field"
.LS_0_m_user_j_TPar_ToString_void:
    .short 123, 123, 32, 116, 121, 112, 101, 32, 61, 32, 123, 48, 125, 44, 32, 117, 115, 101, 114, 32, 61, 32, 123, 49, 125, 32, 125, 125
.LN_1_m_user_j_TPar_ToString_void:
    .asciz "<type>i__Field"
.LN_2_m_user_j_TPar_ToString_void:
    .asciz "!'<type>j__TPar'"
.LN_3_m_user_j_TPar_ToString_void:
    .asciz "<user>i__Field"
.LN_4_m_user_j_TPar_ToString_void:
    .asciz "!'<user>j__TPar'"
.LN_0_m_email_j_TPar_get_request_void:
    .asciz "<request>i__Field"
.LN_0_m_email_j_TPar_get_email_void:
    .asciz "<email>i__Field"
.LN_0_m_email_j_TPar_ctor_gen_gen:
    .asciz "<request>i__Field"
.LN_1_m_email_j_TPar_ctor_gen_gen:
    .asciz "<email>i__Field"
.LN_0_m_email_j_TPar_Equals_ref:
    .asciz "<request>i__Field"
.LN_1_m_email_j_TPar_Equals_ref:
    .asciz "<request>i__Field"
.LN_2_m_email_j_TPar_Equals_ref:
    .asciz "<email>i__Field"
.LN_3_m_email_j_TPar_Equals_ref:
    .asciz "<email>i__Field"
.LN_0_m_email_j_TPar_GetHashCode_void:
    .asciz "<request>i__Field"
.LN_1_m_email_j_TPar_GetHashCode_void:
    .asciz "<email>i__Field"
.LS_0_m_email_j_TPar_ToString_void:
    .short 123, 123, 32, 114, 101, 113, 117, 101, 115, 116, 32, 61, 32, 123, 48, 125, 44, 32, 101, 109, 97, 105, 108, 32, 61, 32, 123, 49, 125, 32, 125, 125
.LN_1_m_email_j_TPar_ToString_void:
    .asciz "<request>i__Field"
.LN_2_m_email_j_TPar_ToString_void:
    .asciz "!'<request>j__TPar'"
.LN_3_m_email_j_TPar_ToString_void:
    .asciz "<email>i__Field"
.LN_4_m_email_j_TPar_ToString_void:
    .asciz "!'<email>j__TPar'"
.LN_0_m_response_j_TPar_get_request_void:
    .asciz "<request>i__Field"
.LN_0_m_response_j_TPar_get_response_void:
    .asciz "<response>i__Field"
.LN_0_m_response_j_TPar_ctor_gen_gen:
    .asciz "<request>i__Field"
.LN_1_m_response_j_TPar_ctor_gen_gen:
    .asciz "<response>i__Field"
.LN_0_m_response_j_TPar_Equals_ref:
    .asciz "<request>i__Field"
.LN_1_m_response_j_TPar_Equals_ref:
    .asciz "<request>i__Field"
.LN_2_m_response_j_TPar_Equals_ref:
    .asciz "<response>i__Field"
.LN_3_m_response_j_TPar_Equals_ref:
    .asciz "<response>i__Field"
.LN_0_m_response_j_TPar_GetHashCode_void:
    .asciz "<request>i__Field"
.LN_1_m_response_j_TPar_GetHashCode_void:
    .asciz "<response>i__Field"
.LS_0_m_response_j_TPar_ToString_void:
    .short 123, 123, 32, 114, 101, 113, 117, 101, 115, 116, 32, 61, 32, 123, 48, 125, 44, 32, 114, 101, 115, 112, 111, 110, 115, 101, 32, 61, 32, 123, 49, 125, 32, 125, 125
.LN_1_m_response_j_TPar_ToString_void:
    .asciz "<request>i__Field"
.LN_2_m_response_j_TPar_ToString_void:
    .asciz "!'<request>j__TPar'"
.LN_3_m_response_j_TPar_ToString_void:
    .asciz "<response>i__Field"
.LN_4_m_response_j_TPar_ToString_void:
    .asciz "!'<response>j__TPar'"
.LN_0_m_initial_device_display_name_j_TPar_get_type_void:
    .asciz "<type>i__Field"
.LN_0_m_initial_device_display_name_j_TPar_get_token_void:
    .asciz "<token>i__Field"
.LN_0_m_initial_device_display_name_j_TPar_get_initial_device_display_name_void:
    .asciz "<initial_device_display_name>i__Field"
.LN_0_m_initial_device_display_name_j_TPar_ctor_gen_gen_gen:
    .asciz "<type>i__Field"
.LN_1_m_initial_device_display_name_j_TPar_ctor_gen_gen_gen:
    .asciz "<token>i__Field"
.LN_2_m_initial_device_display_name_j_TPar_ctor_gen_gen_gen:
    .asciz "<initial_device_display_name>i__Field"
.LN_0_m_initial_device_display_name_j_TPar_Equals_ref:
    .asciz "<type>i__Field"
.LN_1_m_initial_device_display_name_j_TPar_Equals_ref:
    .asciz "<type>i__Field"
.LN_2_m_initial_device_display_name_j_TPar_Equals_ref:
    .asciz "<token>i__Field"
.LN_3_m_initial_device_display_name_j_TPar_Equals_ref:
    .asciz "<token>i__Field"
.LN_4_m_initial_device_display_name_j_TPar_Equals_ref:
    .asciz "<initial_device_display_name>i__Field"
.LN_5_m_initial_device_display_name_j_TPar_Equals_ref:
    .asciz "<initial_device_display_name>i__Field"
.LN_0_m_initial_device_display_name_j_TPar_GetHashCode_void:
    .asciz "<type>i__Field"
.LN_1_m_initial_device_display_name_j_TPar_GetHashCode_void:
    .asciz "<token>i__Field"
.LN_2_m_initial_device_display_name_j_TPar_GetHashCode_void:
    .asciz "<initial_device_display_name>i__Field"
.LS_0_m_initial_device_display_name_j_TPar_ToString_void:
    .short 123, 123, 32, 116, 121, 112, 101, 32, 61, 32, 123, 48, 125, 44, 32, 116, 111, 107, 101, 110, 32, 61, 32, 123, 49, 125, 44, 32, 105, 110, 105, 116, 105, 97, 108, 95, 100, 101, 118, 105, 99, 101, 95, 100, 105, 115, 112, 108, 97, 121, 95, 110, 97, 109, 101, 32, 61, 32, 123, 50, 125, 32, 125, 125
.LN_1_m_initial_device_display_name_j_TPar_ToString_void:
    .asciz "<type>i__Field"
.LN_2_m_initial_device_display_name_j_TPar_ToString_void:
    .asciz "!'<type>j__TPar'"
.LN_3_m_initial_device_display_name_j_TPar_ToString_void:
    .asciz "<token>i__Field"
.LN_4_m_initial_device_display_name_j_TPar_ToString_void:
    .asciz "!'<token>j__TPar'"
.LN_5_m_initial_device_display_name_j_TPar_ToString_void:
    .asciz "<initial_device_display_name>i__Field"
.LN_6_m_initial_device_display_name_j_TPar_ToString_void:
    .asciz "!'<initial_device_display_name>j__TPar'"
.LN_0_m_presence_j_TPar_get_room_void:
    .asciz "<room>i__Field"
.LN_0_m_presence_j_TPar_get_presence_void:
    .asciz "<presence>i__Field"
.LN_0_m_presence_j_TPar_ctor_gen_gen:
    .asciz "<room>i__Field"
.LN_1_m_presence_j_TPar_ctor_gen_gen:
    .asciz "<presence>i__Field"
.LN_0_m_presence_j_TPar_Equals_ref:
    .asciz "<room>i__Field"
.LN_1_m_presence_j_TPar_Equals_ref:
    .asciz "<room>i__Field"
.LN_2_m_presence_j_TPar_Equals_ref:
    .asciz "<presence>i__Field"
.LN_3_m_presence_j_TPar_Equals_ref:
    .asciz "<presence>i__Field"
.LN_0_m_presence_j_TPar_GetHashCode_void:
    .asciz "<room>i__Field"
.LN_1_m_presence_j_TPar_GetHashCode_void:
    .asciz "<presence>i__Field"
.LS_0_m_presence_j_TPar_ToString_void:
    .short 123, 123, 32, 114, 111, 111, 109, 32, 61, 32, 123, 48, 125, 44, 32, 112, 114, 101, 115, 101, 110, 99, 101, 32, 61, 32, 123, 49, 125, 32, 125, 125
.LN_1_m_presence_j_TPar_ToString_void:
    .asciz "<room>i__Field"
.LN_2_m_presence_j_TPar_ToString_void:
    .asciz "!'<room>j__TPar'"
.LN_3_m_presence_j_TPar_ToString_void:
    .asciz "<presence>i__Field"
.LN_4_m_presence_j_TPar_ToString_void:
    .asciz "!'<presence>j__TPar'"
.LN_0_m_account_data_j_TPar_get_state_void:
    .asciz "<state>i__Field"
.LN_0_m_account_data_j_TPar_get_timeline_void:
    .asciz "<timeline>i__Field"
.LN_0_m_account_data_j_TPar_get_ephemeral_void:
    .asciz "<ephemeral>i__Field"
.LN_0_m_account_data_j_TPar_get_account_data_void:
    .asciz "<account_data>i__Field"
.LN_0_m_account_data_j_TPar_ctor_gen_gen_gen_gen:
    .asciz "<state>i__Field"
.LN_1_m_account_data_j_TPar_ctor_gen_gen_gen_gen:
    .asciz "<timeline>i__Field"
.LN_2_m_account_data_j_TPar_ctor_gen_gen_gen_gen:
    .asciz "<ephemeral>i__Field"
.LN_3_m_account_data_j_TPar_ctor_gen_gen_gen_gen:
    .asciz "<account_data>i__Field"
.LN_0_m_account_data_j_TPar_Equals_ref:
    .asciz "<state>i__Field"
.LN_1_m_account_data_j_TPar_Equals_ref:
    .asciz "<state>i__Field"
.LN_2_m_account_data_j_TPar_Equals_ref:
    .asciz "<timeline>i__Field"
.LN_3_m_account_data_j_TPar_Equals_ref:
    .asciz "<timeline>i__Field"
.LN_4_m_account_data_j_TPar_Equals_ref:
    .asciz "<ephemeral>i__Field"
.LN_5_m_account_data_j_TPar_Equals_ref:
    .asciz "<ephemeral>i__Field"
.LN_6_m_account_data_j_TPar_Equals_ref:
    .asciz "<account_data>i__Field"
.LN_7_m_account_data_j_TPar_Equals_ref:
    .asciz "<account_data>i__Field"
.LN_0_m_account_data_j_TPar_GetHashCode_void:
    .asciz "<state>i__Field"
.LN_1_m_account_data_j_TPar_GetHashCode_void:
    .asciz "<timeline>i__Field"
.LN_2_m_account_data_j_TPar_GetHashCode_void:
    .asciz "<ephemeral>i__Field"
.LN_3_m_account_data_j_TPar_GetHashCode_void:
    .asciz "<account_data>i__Field"
.LS_0_m_account_data_j_TPar_ToString_void:
    .short 123, 123, 32, 115, 116, 97, 116, 101, 32, 61, 32, 123, 48, 125, 44, 32, 116, 105, 109, 101, 108, 105, 110, 101, 32, 61, 32, 123, 49, 125, 44, 32, 101, 112, 104, 101, 109, 101, 114, 97, 108, 32, 61, 32, 123, 50, 125, 44, 32, 97, 99, 99, 111, 117, 110, 116, 95, 100, 97, 116, 97, 32, 61, 32, 123, 51, 125, 32, 125, 125
.LN_1_m_account_data_j_TPar_ToString_void:
    .asciz "<state>i__Field"
.LN_2_m_account_data_j_TPar_ToString_void:
    .asciz "!'<state>j__TPar'"
.LN_3_m_account_data_j_TPar_ToString_void:
    .asciz "<timeline>i__Field"
.LN_4_m_account_data_j_TPar_ToString_void:
    .asciz "!'<timeline>j__TPar'"
.LN_5_m_account_data_j_TPar_ToString_void:
    .asciz "<ephemeral>i__Field"
.LN_6_m_account_data_j_TPar_ToString_void:
    .asciz "!'<ephemeral>j__TPar'"
.LN_7_m_account_data_j_TPar_ToString_void:
    .asciz "<account_data>i__Field"
.LN_8_m_account_data_j_TPar_ToString_void:
    .asciz "!'<account_data>j__TPar'"
.LN_0_m_f_AnonymousType7_1_types_j_TPar_get_types_void:
    .asciz "<types>i__Field"
.LN_0_m_f_AnonymousType7_1_types_j_TPar_ctor_gen:
    .asciz "<types>i__Field"
.LN_0_m_f_AnonymousType7_1_types_j_TPar_Equals_ref:
    .asciz "<types>i__Field"
.LN_1_m_f_AnonymousType7_1_types_j_TPar_Equals_ref:
    .asciz "<types>i__Field"
.LN_0_m_f_AnonymousType7_1_types_j_TPar_GetHashCode_void:
    .asciz "<types>i__Field"
.LS_0_m_f_AnonymousType7_1_types_j_TPar_ToString_void:
    .short 123, 123, 32, 116, 121, 112, 101, 115, 32, 61, 32, 123, 48, 125, 32, 125, 125
.LN_1_m_f_AnonymousType7_1_types_j_TPar_ToString_void:
    .asciz "<types>i__Field"
.LN_2_m_f_AnonymousType7_1_types_j_TPar_ToString_void:
    .asciz "!'<types>j__TPar'"
.LN_0_m_f_AnonymousType8_1_limit_j_TPar_get_limit_void:
    .asciz "<limit>i__Field"
.LN_0_m_f_AnonymousType8_1_limit_j_TPar_ctor_gen:
    .asciz "<limit>i__Field"
.LN_0_m_f_AnonymousType8_1_limit_j_TPar_Equals_ref:
    .asciz "<limit>i__Field"
.LN_1_m_f_AnonymousType8_1_limit_j_TPar_Equals_ref:
    .asciz "<limit>i__Field"
.LN_0_m_f_AnonymousType8_1_limit_j_TPar_GetHashCode_void:
    .asciz "<limit>i__Field"
.LS_0_m_f_AnonymousType8_1_limit_j_TPar_ToString_void:
    .short 123, 123, 32, 108, 105, 109, 105, 116, 32, 61, 32, 123, 48, 125, 32, 125, 125
.LN_1_m_f_AnonymousType8_1_limit_j_TPar_ToString_void:
    .asciz "<limit>i__Field"
.LN_2_m_f_AnonymousType8_1_limit_j_TPar_ToString_void:
    .asciz "!'<limit>j__TPar'"
.LN_0_m_body_j_TPar_get_msgtype_void:
    .asciz "<msgtype>i__Field"
.LN_0_m_body_j_TPar_get_body_void:
    .asciz "<body>i__Field"
.LN_0_m_body_j_TPar_ctor_gen_gen:
    .asciz "<msgtype>i__Field"
.LN_1_m_body_j_TPar_ctor_gen_gen:
    .asciz "<body>i__Field"
.LN_0_m_body_j_TPar_Equals_ref:
    .asciz "<msgtype>i__Field"
.LN_1_m_body_j_TPar_Equals_ref:
    .asciz "<msgtype>i__Field"
.LN_2_m_body_j_TPar_Equals_ref:
    .asciz "<body>i__Field"
.LN_3_m_body_j_TPar_Equals_ref:
    .asciz "<body>i__Field"
.LN_0_m_body_j_TPar_GetHashCode_void:
    .asciz "<msgtype>i__Field"
.LN_1_m_body_j_TPar_GetHashCode_void:
    .asciz "<body>i__Field"
.LS_0_m_body_j_TPar_ToString_void:
    .short 123, 123, 32, 109, 115, 103, 116, 121, 112, 101, 32, 61, 32, 123, 48, 125, 44, 32, 98, 111, 100, 121, 32, 61, 32, 123, 49, 125, 32, 125, 125
.LN_1_m_body_j_TPar_ToString_void:
    .asciz "<msgtype>i__Field"
.LN_2_m_body_j_TPar_ToString_void:
    .asciz "!'<msgtype>j__TPar'"
.LN_3_m_body_j_TPar_ToString_void:
    .asciz "<body>i__Field"
.LN_4_m_body_j_TPar_ToString_void:
    .asciz "!'<body>j__TPar'"
.LN_0_m_info_j_TPar_get_msgtype_void:
    .asciz "<msgtype>i__Field"
.LN_0_m_info_j_TPar_get_body_void:
    .asciz "<body>i__Field"
.LN_0_m_info_j_TPar_get_url_void:
    .asciz "<url>i__Field"
.LN_0_m_info_j_TPar_get_info_void:
    .asciz "<info>i__Field"
.LN_0_m_info_j_TPar_ctor_gen_gen_gen_gen:
    .asciz "<msgtype>i__Field"
.LN_1_m_info_j_TPar_ctor_gen_gen_gen_gen:
    .asciz "<body>i__Field"
.LN_2_m_info_j_TPar_ctor_gen_gen_gen_gen:
    .asciz "<url>i__Field"
.LN_3_m_info_j_TPar_ctor_gen_gen_gen_gen:
    .asciz "<info>i__Field"
.LN_0_m_info_j_TPar_Equals_ref:
    .asciz "<msgtype>i__Field"
.LN_1_m_info_j_TPar_Equals_ref:
    .asciz "<msgtype>i__Field"
.LN_2_m_info_j_TPar_Equals_ref:
    .asciz "<body>i__Field"
.LN_3_m_info_j_TPar_Equals_ref:
    .asciz "<body>i__Field"
.LN_4_m_info_j_TPar_Equals_ref:
    .asciz "<url>i__Field"
.LN_5_m_info_j_TPar_Equals_ref:
    .asciz "<url>i__Field"
.LN_6_m_info_j_TPar_Equals_ref:
    .asciz "<info>i__Field"
.LN_7_m_info_j_TPar_Equals_ref:
    .asciz "<info>i__Field"
.LN_0_m_info_j_TPar_GetHashCode_void:
    .asciz "<msgtype>i__Field"
.LN_1_m_info_j_TPar_GetHashCode_void:
    .asciz "<body>i__Field"
.LN_2_m_info_j_TPar_GetHashCode_void:
    .asciz "<url>i__Field"
.LN_3_m_info_j_TPar_GetHashCode_void:
    .asciz "<info>i__Field"
.LS_0_m_info_j_TPar_ToString_void:
    .short 123, 123, 32, 109, 115, 103, 116, 121, 112, 101, 32, 61, 32, 123, 48, 125, 44, 32, 98, 111, 100, 121, 32, 61, 32, 123, 49, 125, 44, 32, 117, 114, 108, 32, 61, 32, 123, 50, 125, 44, 32, 105, 110, 102, 111, 32, 61, 32, 123, 51, 125, 32, 125, 125
.LN_1_m_info_j_TPar_ToString_void:
    .asciz "<msgtype>i__Field"
.LN_2_m_info_j_TPar_ToString_void:
    .asciz "!'<msgtype>j__TPar'"
.LN_3_m_info_j_TPar_ToString_void:
    .asciz "<body>i__Field"
.LN_4_m_info_j_TPar_ToString_void:
    .asciz "!'<body>j__TPar'"
.LN_5_m_info_j_TPar_ToString_void:
    .asciz "<url>i__Field"
.LN_6_m_info_j_TPar_ToString_void:
    .asciz "!'<url>j__TPar'"
.LN_7_m_info_j_TPar_ToString_void:
    .asciz "<info>i__Field"
.LN_8_m_info_j_TPar_ToString_void:
    .asciz "!'<info>j__TPar'"
.LN_0_m_size_j_TPar_get_mimetype_void:
    .asciz "<mimetype>i__Field"
.LN_0_m_size_j_TPar_get_size_void:
    .asciz "<size>i__Field"
.LN_0_m_size_j_TPar_ctor_gen_gen:
    .asciz "<mimetype>i__Field"
.LN_1_m_size_j_TPar_ctor_gen_gen:
    .asciz "<size>i__Field"
.LN_0_m_size_j_TPar_Equals_ref:
    .asciz "<mimetype>i__Field"
.LN_1_m_size_j_TPar_Equals_ref:
    .asciz "<mimetype>i__Field"
.LN_2_m_size_j_TPar_Equals_ref:
    .asciz "<size>i__Field"
.LN_3_m_size_j_TPar_Equals_ref:
    .asciz "<size>i__Field"
.LN_0_m_size_j_TPar_GetHashCode_void:
    .asciz "<mimetype>i__Field"
.LN_1_m_size_j_TPar_GetHashCode_void:
    .asciz "<size>i__Field"
.LS_0_m_size_j_TPar_ToString_void:
    .short 123, 123, 32, 109, 105, 109, 101, 116, 121, 112, 101, 32, 61, 32, 123, 48, 125, 44, 32, 115, 105, 122, 101, 32, 61, 32, 123, 49, 125, 32, 125, 125
.LN_1_m_size_j_TPar_ToString_void:
    .asciz "<mimetype>i__Field"
.LN_2_m_size_j_TPar_ToString_void:
    .asciz "!'<mimetype>j__TPar'"
.LN_3_m_size_j_TPar_ToString_void:
    .asciz "<size>i__Field"
.LN_4_m_size_j_TPar_ToString_void:
    .asciz "!'<size>j__TPar'"
.LN_0_m_timeout_j_TPar_get_typing_void:
    .asciz "<typing>i__Field"
.LN_0_m_timeout_j_TPar_get_timeout_void:
    .asciz "<timeout>i__Field"
.LN_0_m_timeout_j_TPar_ctor_gen_gen:
    .asciz "<typing>i__Field"
.LN_1_m_timeout_j_TPar_ctor_gen_gen:
    .asciz "<timeout>i__Field"
.LN_0_m_timeout_j_TPar_Equals_ref:
    .asciz "<typing>i__Field"
.LN_1_m_timeout_j_TPar_Equals_ref:
    .asciz "<typing>i__Field"
.LN_2_m_timeout_j_TPar_Equals_ref:
    .asciz "<timeout>i__Field"
.LN_3_m_timeout_j_TPar_Equals_ref:
    .asciz "<timeout>i__Field"
.LN_0_m_timeout_j_TPar_GetHashCode_void:
    .asciz "<typing>i__Field"
.LN_1_m_timeout_j_TPar_GetHashCode_void:
    .asciz "<timeout>i__Field"
.LS_0_m_timeout_j_TPar_ToString_void:
    .short 123, 123, 32, 116, 121, 112, 105, 110, 103, 32, 61, 32, 123, 48, 125, 44, 32, 116, 105, 109, 101, 111, 117, 116, 32, 61, 32, 123, 49, 125, 32, 125, 125
.LN_1_m_timeout_j_TPar_ToString_void:
    .asciz "<typing>i__Field"
.LN_2_m_timeout_j_TPar_ToString_void:
    .asciz "!'<typing>j__TPar'"
.LN_3_m_timeout_j_TPar_ToString_void:
    .asciz "<timeout>i__Field"
.LN_4_m_timeout_j_TPar_ToString_void:
    .asciz "!'<timeout>j__TPar'"
.LN_0_m_f_AnonymousType13_1_presence_j_TPar_get_presence_void:
    .asciz "<presence>i__Field"
.LN_0_m_f_AnonymousType13_1_presence_j_TPar_ctor_gen:
    .asciz "<presence>i__Field"
.LN_0_m_f_AnonymousType13_1_presence_j_TPar_Equals_ref:
    .asciz "<presence>i__Field"
.LN_1_m_f_AnonymousType13_1_presence_j_TPar_Equals_ref:
    .asciz "<presence>i__Field"
.LN_0_m_f_AnonymousType13_1_presence_j_TPar_GetHashCode_void:
    .asciz "<presence>i__Field"
.LS_0_m_f_AnonymousType13_1_presence_j_TPar_ToString_void:
    .short 123, 123, 32, 112, 114, 101, 115, 101, 110, 99, 101, 32, 61, 32, 123, 48, 125, 32, 125, 125
.LN_1_m_f_AnonymousType13_1_presence_j_TPar_ToString_void:
    .asciz "<presence>i__Field"
.LN_2_m_f_AnonymousType13_1_presence_j_TPar_ToString_void:
    .asciz "!'<presence>j__TPar'"
.LN_0_m_status_msg_j_TPar_get_presence_void:
    .asciz "<presence>i__Field"
.LN_0_m_status_msg_j_TPar_get_status_msg_void:
    .asciz "<status_msg>i__Field"
.LN_0_m_status_msg_j_TPar_ctor_gen_gen:
    .asciz "<presence>i__Field"
.LN_1_m_status_msg_j_TPar_ctor_gen_gen:
    .asciz "<status_msg>i__Field"
.LN_0_m_status_msg_j_TPar_Equals_ref:
    .asciz "<presence>i__Field"
.LN_1_m_status_msg_j_TPar_Equals_ref:
    .asciz "<presence>i__Field"
.LN_2_m_status_msg_j_TPar_Equals_ref:
    .asciz "<status_msg>i__Field"
.LN_3_m_status_msg_j_TPar_Equals_ref:
    .asciz "<status_msg>i__Field"
.LN_0_m_status_msg_j_TPar_GetHashCode_void:
    .asciz "<presence>i__Field"
.LN_1_m_status_msg_j_TPar_GetHashCode_void:
    .asciz "<status_msg>i__Field"
.LS_0_m_status_msg_j_TPar_ToString_void:
    .short 123, 123, 32, 112, 114, 101, 115, 101, 110, 99, 101, 32, 61, 32, 123, 48, 125, 44, 32, 115, 116, 97, 116, 117, 115, 95, 109, 115, 103, 32, 61, 32, 123, 49, 125, 32, 125, 125
.LN_1_m_status_msg_j_TPar_ToString_void:
    .asciz "<presence>i__Field"
.LN_2_m_status_msg_j_TPar_ToString_void:
    .asciz "!'<presence>j__TPar'"
.LN_3_m_status_msg_j_TPar_ToString_void:
    .asciz "<status_msg>i__Field"
.LN_4_m_status_msg_j_TPar_ToString_void:
    .asciz "!'<status_msg>j__TPar'"
.LN_0_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "mxcUrl"
.LS_2_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .short 109, 120, 99, 58, 47, 47
.LN_3_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "mxcUrl"
.LN_4_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "homeserver"
.LS_5_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 109, 101, 100, 105, 97, 47, 114, 48, 47, 100, 111, 119, 110, 108, 111, 97, 100, 47
.LS_6_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .short 47
.LN_7_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "client"
.LN_8_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>1__state"
.LN_9_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>u__1"
.LN_10_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>t__builder"
.LN_11_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>u__1"
.LN_12_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>u__1"
.LN_13_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>1__state"
.LN_14_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>1__state"
.LN_15_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_d_0_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref:
    .asciz "mxcUrl"
.LN_2_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref:
    .asciz "homeserver"
.LN_3_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref:
    .asciz "client"
.LN_4_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref:
    .asciz "<>1__state"
.LN_5_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref:
    .asciz "<>t__builder"
.LN_6_m_Matrix_Core_MatrixOOTBStuff_DownloadMatrixContent_ref_ref_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "_syncCancellationTokenSource"
.LN_3_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>1__state"
.LN_4_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>u__1"
.LN_5_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>t__builder"
.LN_6_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>u__1"
.LN_7_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>u__1"
.LN_8_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>1__state"
.LN_9_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>1__state"
.LN_10_m_Matrix_Core_StartSyncLoop_b_60_0_d_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_StartSyncLoop_b_60_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "capturedUrl"
.LN_3_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>4__this"
.LN_4_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "_homeserver"
.LN_5_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "_httpClient"
.LN_6_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>1__state"
.LN_7_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>u__1"
.LN_8_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>t__builder"
.LN_9_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>u__1"
.LN_10_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>u__1"
.LN_11_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>1__state"
.LN_12_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>1__state"
.LN_13_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_d_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void:
    .asciz "<>1__state"
.LN_3_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void:
    .asciz "<>t__builder"
.LN_4_m_Matrix_Core_c_DisplayClass47_0_FetchFromInitialSync_b_0_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref:
    .asciz "<>4__this"
.LN_1_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref:
    .asciz "MessageTube"
.LN_2_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref:
    .asciz "<>4__this"
.LN_3_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref:
    .asciz "roomId"
.LN_4_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref:
    .asciz "messageItem"
.LN_5_m_Matrix_Core_c_DisplayClass62_0_ProcessTimelineEvent_b_0_ref:
    .asciz "Yggdrasil.Bottles.MessageRecievedBottle"
.LN_0_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "CS$<>8__locals1"
.LN_1_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "MessageTube"
.LN_3_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "CS$<>8__locals1"
.LN_4_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "<>4__this"
.LN_5_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "CS$<>8__locals1"
.LN_6_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "roomId"
.LN_7_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "encItem"
.LN_8_m_Matrix_Core_c_DisplayClass62_1_ProcessTimelineEvent_b_1_ref:
    .asciz "Yggdrasil.Bottles.MessageRecievedBottle"
.LN_0_m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref:
    .asciz "<>4__this"
.LN_1_m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref:
    .asciz "typingUsers"
.LN_2_m_Matrix_Core_c_DisplayClass63_0_ProcessEphemeralEvent_b_0_ref:
    .asciz "<>4__this"
.LSTUB_m_Matrix_Core_Authenticate_d_38_MoveNext_void:
    .asciz "Matrix.Core/<Authenticate>d__38::MoveNext  [constructor with 6 arguments (limit 5)]"
.LN_0_m_Matrix_Core_Authenticate_d_38_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "credential"
.LN_3_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "_accessToken"
.LN_4_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "credential"
.LN_5_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "_user"
.LN_6_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "_user"
.LS_7_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .short 58
.LS_8_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .short 104, 116, 116, 112, 115, 58, 47, 47
.LN_9_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "_homeserver"
.LN_10_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "_accessToken"
.LN_11_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "DialogTube"
.LS_12_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .short 83, 97, 118, 101, 100, 32, 99, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115, 32, 97, 114, 101, 32, 105, 110, 118, 97, 108, 105, 100, 46, 32, 80, 108, 101, 97, 115, 101, 32, 108, 111, 103, 32, 105, 110, 32, 97, 103, 97, 105, 110, 46
.LN_13_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_14_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>1__state"
.LN_15_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>u__1"
.LN_16_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>t__builder"
.LN_17_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>u__1"
.LN_18_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>u__1"
.LN_19_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>1__state"
.LN_20_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>1__state"
.LN_21_m_Matrix_Core_Authenticate_d_40_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_Authenticate_d_40_SetStateMachine_ref:
    .asciz "<>t__builder"
.LSTUB_m_Matrix_Core_AuthenticateTwoFA_d_39_MoveNext_void:
    .asciz "Matrix.Core/<AuthenticateTwoFA>d__39::MoveNext  [constructor with 6 arguments (limit 5)]"
.LN_0_m_Matrix_Core_AuthenticateTwoFA_d_39_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>1__state"
.LN_3_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>u__1"
.LN_4_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>t__builder"
.LN_5_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>u__1"
.LN_6_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>u__1"
.LN_7_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>1__state"
.LN_8_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "Item1"
.LN_9_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>1__state"
.LN_10_m_Matrix_Core_FetchContacts_d_43_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_FetchContacts_d_43_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>1__state"
.LN_3_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>u__1"
.LN_4_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>t__builder"
.LN_5_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>u__1"
.LN_6_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>u__1"
.LN_7_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>1__state"
.LN_8_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "Item2"
.LN_9_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>1__state"
.LN_10_m_Matrix_Core_FetchConversations_d_44_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_FetchConversations_d_44_SetStateMachine_ref:
    .asciz "<>t__builder"
.LSTUB_m_Matrix_Core_FetchFromInitialSync_d_47_MoveNext_void:
    .asciz "Matrix.Core/<FetchFromInitialSync>d__47::MoveNext  [constructor with 6 arguments (limit 5)]"
.LN_0_m_Matrix_Core_FetchFromInitialSync_d_47_SetStateMachine_ref:
    .asciz "<>t__builder"
.LSTUB_m_Matrix_Core_FetchMessages_d_57_MoveNext_void:
    .asciz "Matrix.Core/<FetchMessages>d__57::MoveNext  [constructor with 6 arguments (limit 5)]"
.LN_0_m_Matrix_Core_FetchMessages_d_57_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "_httpClient"
.LN_3_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "_homeserver"
.LS_4_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 114, 111, 111, 109, 115, 47
.LN_5_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "roomId"
.LS_6_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .short 47, 115, 116, 97, 116, 101, 47, 109, 46, 114, 111, 111, 109, 46, 109, 101, 109, 98, 101, 114, 47
.LN_7_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "userId"
.LS_8_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .short 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_9_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "_accessToken"
.LN_10_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>1__state"
.LN_11_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>u__1"
.LN_12_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>t__builder"
.LN_13_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>u__1"
.LN_14_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>u__1"
.LN_15_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>1__state"
.LN_16_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<response>5__2"
.LN_17_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<response>5__2"
.LN_18_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<response>5__2"
.LN_19_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>1__state"
.LN_20_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>u__2"
.LN_21_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>t__builder"
.LN_22_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>u__2"
.LN_23_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>u__2"
.LN_24_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>1__state"
.LS_25_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .short 99, 111, 110, 116, 101, 110, 116
.LS_26_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .short 100, 105, 115, 112, 108, 97, 121, 110, 97, 109, 101
.LN_27_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<response>5__2"
.LN_28_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "userId"
.LN_29_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>1__state"
.LN_30_m_Matrix_Core_GetDisplayNameForUser_d_66_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_GetDisplayNameForUser_d_66_SetStateMachine_ref:
    .asciz "<>t__builder"
.LSTUB_m_Matrix_Core_GetMessageById_d_64_MoveNext_void:
    .asciz "Matrix.Core/<GetMessageById>d__64::MoveNext  [constructor with 6 arguments (limit 5)]"
.LN_0_m_Matrix_Core_GetMessageById_d_64_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "string>"
.LN_3_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<displayNames>5__2"
.LN_4_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "_httpClient"
.LN_5_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "_homeserver"
.LS_6_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 114, 111, 111, 109, 115, 47
.LN_7_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "roomId"
.LS_8_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .short 47, 106, 111, 105, 110, 101, 100, 95, 109, 101, 109, 98, 101, 114, 115, 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_9_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "_accessToken"
.LN_10_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>1__state"
.LN_11_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>u__1"
.LN_12_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>t__builder"
.LN_13_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>u__1"
.LN_14_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>u__1"
.LN_15_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>1__state"
.LN_16_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<response>5__3"
.LN_17_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<response>5__3"
.LN_18_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<displayNames>5__2"
.LN_19_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<response>5__3"
.LN_20_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>1__state"
.LN_21_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>u__2"
.LN_22_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>t__builder"
.LN_23_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>u__2"
.LN_24_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>u__2"
.LN_25_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>1__state"
.LN_26_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<response>5__3"
.LS_27_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .short 106, 111, 105, 110, 101, 100
.LS_28_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .short 100, 105, 115, 112, 108, 97, 121, 95, 110, 97, 109, 101
.LN_29_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<displayNames>5__2"
.LN_30_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<displayNames>5__2"
.LN_31_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>1__state"
.LN_32_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<displayNames>5__2"
.LN_33_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_GetRoomMemberDisplayNames_d_65_SetStateMachine_ref:
    .asciz "<>t__builder"
.LSTUB_m_Matrix_Core_ProcessEphemeralEvent_d_63_MoveNext_void:
    .asciz "Matrix.Core/<ProcessEphemeralEvent>d__63::MoveNext  [constructor with 6 arguments (limit 5)]"
.LN_0_m_Matrix_Core_ProcessEphemeralEvent_d_63_SetStateMachine_ref:
    .asciz "<>t__builder"
.LSTUB_m_Matrix_Core_ProcessTimelineEvent_d_62_MoveNext_void:
    .asciz "Matrix.Core/<ProcessTimelineEvent>d__62::MoveNext  [constructor with 6 arguments (limit 5)]"
.LN_0_m_Matrix_Core_ProcessTimelineEvent_d_62_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "identifier"
.LN_3_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "imageData"
.LN_4_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "imageData"
.LN_5_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "imageData"
.LN_6_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "System.Net.Http.ByteArrayContent"
.LS_7_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 105, 109, 97, 103, 101, 47, 106, 112, 101, 103
.LN_8_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "System.Net.Http.Headers.MediaTypeHeaderValue"
.LN_9_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "_httpClient"
.LN_10_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "_homeserver"
.LS_11_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 109, 101, 100, 105, 97, 47, 114, 48, 47, 117, 112, 108, 111, 97, 100, 63, 102, 105, 108, 101, 110, 97, 109, 101, 61
.LN_12_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "filename"
.LS_13_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 38, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_14_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "_accessToken"
.LN_15_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_16_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_17_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>t__builder"
.LN_18_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_19_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_20_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_21_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<uploadResponse>5__2"
.LN_22_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<uploadResponse>5__2"
.LN_23_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "DialogTube"
.LS_24_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 70, 97, 105, 108, 101, 100, 32, 116, 111, 32, 117, 112, 108, 111, 97, 100, 32, 105, 109, 97, 103, 101, 46
.LN_25_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_26_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<uploadResponse>5__2"
.LN_27_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_28_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__2"
.LN_29_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>t__builder"
.LN_30_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__2"
.LN_31_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__2"
.LN_32_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>1__state"
.LS_33_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 99, 111, 110, 116, 101, 110, 116, 95, 117, 114, 105
.LN_34_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<uploadResponse>5__2"
.LS_35_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 109, 46, 105, 109, 97, 103, 101
.LN_36_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "filename"
.LS_37_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 105, 109, 97, 103, 101, 47, 106, 112, 101, 103
.LN_38_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "imageData"
.LN_39_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "int32>"
.LN_40_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "int32>>"
.LN_41_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "_httpClient"
.LN_42_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "_homeserver"
.LS_43_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 114, 111, 111, 109, 115, 47
.LN_44_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "identifier"
.LS_45_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 47, 115, 101, 110, 100, 47, 109, 46, 114, 111, 111, 109, 46, 109, 101, 115, 115, 97, 103, 101, 47
.LS_46_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_47_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "_accessToken"
.LS_48_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_49_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "System.Net.Http.StringContent"
.LN_50_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_51_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_52_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>t__builder"
.LN_53_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_54_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>u__1"
.LN_55_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_56_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>1__state"
.LN_57_m_Matrix_Core_SendImageMessage_d_50_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendImageMessage_d_50_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "conversation"
.LN_3_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "attachment"
.LN_4_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "attachment"
.LN_5_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "conversation"
.LN_6_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "attachment"
.LN_7_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "attachment"
.LS_8_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .short 105, 109, 97, 103, 101, 46, 106, 112, 103
.LN_9_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>1__state"
.LN_10_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_11_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>t__builder"
.LN_12_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_13_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_14_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>1__state"
.LN_15_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "DialogTube"
.LS_16_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .short 65, 116, 116, 97, 99, 104, 109, 101, 110, 116, 32, 116, 121, 112, 101, 32, 39, 123, 48, 125, 39, 32, 105, 115, 32, 110, 111, 116, 32, 121, 101, 116, 32, 102, 117, 108, 108, 121, 32, 115, 117, 112, 112, 111, 114, 116, 101, 100, 59, 32, 115, 101, 110, 100, 105, 110, 103, 32, 102, 105, 108, 101, 110, 97, 109, 101, 32, 111, 110, 108, 121, 46
.LN_17_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "attachment"
.LN_18_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "Yggdrasil.Enumerations.AttachmentType"
.LN_19_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_20_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "text"
.LS_21_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .short 61, 61, 71, 101, 110, 101, 114, 105, 99, 32, 102, 105, 108, 101, 58, 61, 61, 32
.LN_22_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "attachment"
.LS_23_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .short 10
.LN_24_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "text"
.LS_25_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .short 61, 61, 71, 101, 110, 101, 114, 105, 99, 32, 102, 105, 108, 101, 58, 61, 61, 32
.LN_26_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "attachment"
.LN_27_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "text"
.LN_28_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "text"
.LN_29_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "parent_message_identifier"
.LN_30_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "conversation"
.LN_31_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "text"
.LN_32_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "parent_message_identifier"
.LN_33_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>1__state"
.LN_34_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_35_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>t__builder"
.LN_36_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_37_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_38_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>1__state"
.LN_39_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "conversation"
.LN_40_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "text"
.LN_41_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>1__state"
.LN_42_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_43_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>t__builder"
.LN_44_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_45_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>u__1"
.LN_46_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>1__state"
.LN_47_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>1__state"
.LN_48_m_Matrix_Core_SendMessage_d_48_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendMessage_d_48_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "identifier"
.LN_3_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "text"
.LN_4_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "replyToEventId"
.LN_5_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "object>"
.LS_6_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 109, 115, 103, 116, 121, 112, 101
.LS_7_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 109, 46, 116, 101, 120, 116
.LS_8_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 98, 111, 100, 121
.LN_9_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "text"
.LS_10_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 109, 46, 114, 101, 108, 97, 116, 101, 115, 95, 116, 111
.LN_11_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "object>"
.LS_12_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 109, 46, 105, 110, 95, 114, 101, 112, 108, 121, 95, 116, 111
.LN_13_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "object>"
.LS_14_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 101, 118, 101, 110, 116, 95, 105, 100
.LN_15_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "replyToEventId"
.LN_16_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "_httpClient"
.LN_17_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "_homeserver"
.LS_18_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 114, 111, 111, 109, 115, 47
.LN_19_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "identifier"
.LS_20_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 47, 115, 101, 110, 100, 47, 109, 46, 114, 111, 111, 109, 46, 109, 101, 115, 115, 97, 103, 101, 47
.LS_21_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_22_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "_accessToken"
.LS_23_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_24_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "System.Net.Http.StringContent"
.LN_25_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>1__state"
.LN_26_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>u__1"
.LN_27_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>t__builder"
.LN_28_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>u__1"
.LN_29_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>u__1"
.LN_30_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>1__state"
.LN_31_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>1__state"
.LN_32_m_Matrix_Core_SendReplyMessage_d_51_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendReplyMessage_d_51_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>4__this"
.LS_2_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .short 109, 46, 116, 101, 120, 116
.LN_3_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "text"
.LN_4_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "string>"
.LN_5_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "_httpClient"
.LN_6_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "_homeserver"
.LS_7_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 114, 111, 111, 109, 115, 47
.LN_8_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "roomId"
.LS_9_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .short 47, 115, 101, 110, 100, 47, 109, 46, 114, 111, 111, 109, 46, 109, 101, 115, 115, 97, 103, 101, 47
.LS_10_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .short 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_11_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "_accessToken"
.LS_12_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_13_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "System.Net.Http.StringContent"
.LN_14_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>1__state"
.LN_15_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>u__1"
.LN_16_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>t__builder"
.LN_17_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>u__1"
.LN_18_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>u__1"
.LN_19_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>1__state"
.LN_20_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>1__state"
.LN_21_m_Matrix_Core_SendTextMessage_d_49_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendTextMessage_d_49_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "identifier"
.LN_3_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "isTyping"
.LN_4_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "int32>"
.LN_5_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "_httpClient"
.LN_6_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "_homeserver"
.LS_7_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 114, 111, 111, 109, 115, 47
.LN_8_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "identifier"
.LS_9_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .short 47, 116, 121, 112, 105, 110, 103, 47
.LN_10_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "_user"
.LS_11_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .short 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_12_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "_accessToken"
.LS_13_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_14_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "System.Net.Http.StringContent"
.LN_15_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>1__state"
.LN_16_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>u__1"
.LN_17_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>t__builder"
.LN_18_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>u__1"
.LN_19_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>u__1"
.LN_20_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>1__state"
.LN_21_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>1__state"
.LN_22_m_Matrix_Core_SendTypingIndicator_d_54_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendTypingIndicator_d_54_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "status"
.LS_3_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .short 111, 110, 108, 105, 110, 101
.LS_4_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .short 111, 102, 102, 108, 105, 110, 101
.LS_5_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .short 117, 110, 97, 118, 97, 105, 108, 97, 98, 108, 101
.LS_6_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .short 111, 110, 108, 105, 110, 101
.LN_7_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "'<>f__AnonymousType13`1'<string>"
.LN_8_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "_httpClient"
.LN_9_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "_homeserver"
.LS_10_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 112, 114, 101, 115, 101, 110, 99, 101, 47
.LN_11_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "_user"
.LS_12_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .short 47, 115, 116, 97, 116, 117, 115, 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_13_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "_accessToken"
.LS_14_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_15_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "System.Net.Http.StringContent"
.LN_16_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>1__state"
.LN_17_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>u__1"
.LN_18_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>t__builder"
.LN_19_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>u__1"
.LN_20_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>u__1"
.LN_21_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>1__state"
.LN_22_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "_user"
.LN_23_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "status"
.LN_24_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>1__state"
.LN_25_m_Matrix_Core_SetConnectionStatus_d_55_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SetConnectionStatus_d_55_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>4__this"
.LS_2_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .short 111, 110, 108, 105, 110, 101
.LN_3_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "status"
.LN_4_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "Empty"
.LN_5_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "string>"
.LN_6_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "_httpClient"
.LN_7_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "_homeserver"
.LS_8_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 112, 114, 101, 115, 101, 110, 99, 101, 47
.LN_9_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "_user"
.LS_10_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .short 47, 115, 116, 97, 116, 117, 115, 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_11_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "_accessToken"
.LS_12_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .short 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 106, 115, 111, 110
.LN_13_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "System.Net.Http.StringContent"
.LN_14_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>1__state"
.LN_15_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>u__1"
.LN_16_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>t__builder"
.LN_17_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>u__1"
.LN_18_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>u__1"
.LN_19_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>1__state"
.LN_20_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>1__state"
.LN_21_m_Matrix_Core_SetMood_d_56_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SetMood_d_56_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "_httpClient"
.LN_3_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "_homeserver"
.LS_4_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 97, 99, 99, 111, 117, 110, 116, 47, 119, 104, 111, 97, 109, 105, 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_5_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "_accessToken"
.LN_6_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>1__state"
.LN_7_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>u__1"
.LN_8_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>t__builder"
.LN_9_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>u__1"
.LN_10_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>u__1"
.LN_11_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>1__state"
.LN_12_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "DialogTube"
.LS_13_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .short 65, 117, 116, 104, 101, 110, 116, 105, 99, 97, 116, 105, 111, 110, 32, 102, 97, 105, 108, 101, 100, 46, 32, 80, 108, 101, 97, 115, 101, 32, 108, 111, 103, 32, 105, 110, 32, 97, 103, 97, 105, 110, 46
.LN_14_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_15_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>1__state"
.LN_16_m_Matrix_Core_StartClient_d_41_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_StartClient_d_41_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_1_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap2"
.LN_3_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "_homeserver"
.LS_4_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 47, 95, 109, 97, 116, 114, 105, 120, 47, 99, 108, 105, 101, 110, 116, 47, 114, 48, 47, 115, 121, 110, 99, 63, 97, 99, 99, 101, 115, 115, 95, 116, 111, 107, 101, 110, 61
.LN_5_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "_accessToken"
.LS_6_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 38, 116, 105, 109, 101, 111, 117, 116, 61, 51, 48, 48, 48, 48
.LN_7_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "_nextBatch"
.LS_8_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 38, 115, 105, 110, 99, 101, 61
.LN_9_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "_nextBatch"
.LN_10_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "_httpClient"
.LN_11_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "cancellationToken"
.LN_12_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_13_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__1"
.LN_14_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>t__builder"
.LN_15_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__1"
.LN_16_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__1"
.LN_17_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_18_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<response>5__4"
.LN_19_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<response>5__4"
.LN_20_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "cancellationToken"
.LN_21_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_22_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_23_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>t__builder"
.LN_24_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_25_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_26_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_27_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<response>5__4"
.LN_28_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_29_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__3"
.LN_30_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>t__builder"
.LN_31_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__3"
.LN_32_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__3"
.LN_33_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_34_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<response>5__4"
.LS_35_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 110, 101, 120, 116, 95, 98, 97, 116, 99, 104
.LN_36_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "_nextBatch"
.LS_37_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 114, 111, 111, 109, 115
.LS_38_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 106, 111, 105, 110
.LN_39_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap4"
.LN_40_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap4"
.LN_41_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<room>5__6"
.LN_42_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<room>5__6"
.LN_43_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<roomId>5__7"
.LN_44_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<room>5__6"
.LS_45_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 116, 105, 109, 101, 108, 105, 110, 101
.LS_46_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 101, 118, 101, 110, 116, 115
.LN_47_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap7"
.LN_48_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap7"
.LN_49_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<roomId>5__7"
.LN_50_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_51_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_52_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>t__builder"
.LN_53_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_54_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_55_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_56_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap7"
.LN_57_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap7"
.LN_58_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<room>5__6"
.LS_59_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 101, 112, 104, 101, 109, 101, 114, 97, 108
.LS_60_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .short 101, 118, 101, 110, 116, 115
.LN_61_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap7"
.LN_62_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap7"
.LN_63_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<roomId>5__7"
.LN_64_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_65_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_66_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>t__builder"
.LN_67_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_68_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_69_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_70_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap7"
.LN_71_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap7"
.LN_72_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<roomId>5__7"
.LN_73_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<room>5__6"
.LN_74_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap4"
.LN_75_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap4"
.LN_76_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap2"
.LN_77_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap1"
.LN_78_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "cancellationToken"
.LN_79_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_80_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_81_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>t__builder"
.LN_82_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_83_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>u__2"
.LN_84_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_85_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>7__wrap1"
.LN_86_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "cancellationToken"
.LN_87_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>1__state"
.LN_88_m_Matrix_Core_SyncLoop_d_61_MoveNext_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SyncLoop_d_61_SetStateMachine_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_add_DialogTube_ref:
    .asciz "DialogTube"
.LN_1_m_Matrix_Core_add_DialogTube_ref:
    .asciz "DialogTube"
.LN_0_m_Matrix_Core_remove_DialogTube_ref:
    .asciz "DialogTube"
.LN_1_m_Matrix_Core_remove_DialogTube_ref:
    .asciz "DialogTube"
.LN_0_m_Matrix_Core_add_MessageTube_ref:
    .asciz "MessageTube"
.LN_1_m_Matrix_Core_add_MessageTube_ref:
    .asciz "MessageTube"
.LN_0_m_Matrix_Core_remove_MessageTube_ref:
    .asciz "MessageTube"
.LN_1_m_Matrix_Core_remove_MessageTube_ref:
    .asciz "MessageTube"
.LN_0_m_Matrix_Core_add_ListTube_ref:
    .asciz "ListTube"
.LN_1_m_Matrix_Core_add_ListTube_ref:
    .asciz "ListTube"
.LN_0_m_Matrix_Core_remove_ListTube_ref:
    .asciz "ListTube"
.LN_1_m_Matrix_Core_remove_ListTube_ref:
    .asciz "ListTube"
.LS_0_m_Matrix_Core_get_Name_void:
    .short 77, 97, 116, 114, 105, 120
.LS_0_m_Matrix_Core_get_InternalName_void:
    .short 109, 97, 116, 114, 105, 120
.LS_0_m_Matrix_Core_get_AuthenticationTypes_void:
    .short 73, 100, 101, 110, 116, 105, 102, 105, 101, 114, 32, 40, 64, 117, 115, 101, 114, 110, 97, 109, 101, 58, 104, 111, 109, 101, 115, 101, 114, 118, 101, 114, 46, 99, 111, 109, 41
.LN_1_m_Matrix_Core_get_AuthenticationTypes_void:
    .asciz "Yggdrasil.Models.AuthTypeInfo"
.LS_2_m_Matrix_Core_get_AuthenticationTypes_void:
    .short 69, 109, 97, 105, 108
.LS_3_m_Matrix_Core_get_AuthenticationTypes_void:
    .short 66, 101, 101, 112, 101, 114, 32, 40, 101, 120, 112, 101, 114, 105, 109, 101, 110, 116, 97, 108, 41
.LN_4_m_Matrix_Core_get_AuthenticationTypes_void:
    .asciz "Yggdrasil.Models.AuthTypeInfo"
.LN_0_m_Matrix_Core_get_TypingUsersList_void:
    .asciz "<TypingUsersList>k__BackingField"
.LN_0_m_Matrix_Core_set_TypingUsersList_ref:
    .asciz "<TypingUsersList>k__BackingField"
.LS_0_m_Matrix_Core_get_ClickableConfigurations_void:
    .short 64
.LS_1_m_Matrix_Core_get_ClickableConfigurations_void:
    .short 32
.LN_2_m_Matrix_Core_get_ClickableConfigurations_void:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.LS_3_m_Matrix_Core_get_ClickableConfigurations_void:
    .short 35
.LS_4_m_Matrix_Core_get_ClickableConfigurations_void:
    .short 32
.LN_5_m_Matrix_Core_get_ClickableConfigurations_void:
    .asciz "Yggdrasil.Models.ClickableConfiguration"
.LN_0_m_Matrix_Core_GetQRCode_void:
    .asciz "Empty"
.LN_0_m_Matrix_Core_Authenticate_v_ref_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_Authenticate_v_ref_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_Authenticate_v_ref_ref:
    .asciz "authType"
.LN_3_m_Matrix_Core_Authenticate_v_ref_ref:
    .asciz "username"
.LN_4_m_Matrix_Core_Authenticate_v_ref_ref:
    .asciz "password"
.LN_5_m_Matrix_Core_Authenticate_v_ref_ref:
    .asciz "<>1__state"
.LN_6_m_Matrix_Core_Authenticate_v_ref_ref:
    .asciz "<>t__builder"
.LN_7_m_Matrix_Core_Authenticate_v_ref_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_AuthenticateTwoFA_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_AuthenticateTwoFA_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_AuthenticateTwoFA_ref:
    .asciz "code"
.LN_3_m_Matrix_Core_AuthenticateTwoFA_ref:
    .asciz "<>1__state"
.LN_4_m_Matrix_Core_AuthenticateTwoFA_ref:
    .asciz "<>t__builder"
.LN_5_m_Matrix_Core_AuthenticateTwoFA_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_Authenticate_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_Authenticate_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_Authenticate_ref:
    .asciz "credential"
.LN_3_m_Matrix_Core_Authenticate_ref:
    .asciz "<>1__state"
.LN_4_m_Matrix_Core_Authenticate_ref:
    .asciz "<>t__builder"
.LN_5_m_Matrix_Core_Authenticate_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_StartClient_void:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_StartClient_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_StartClient_void:
    .asciz "<>1__state"
.LN_3_m_Matrix_Core_StartClient_void:
    .asciz "<>t__builder"
.LN_4_m_Matrix_Core_StartClient_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_GetUserInfo_void:
    .asciz "_uiContext"
.LN_1_m_Matrix_Core_GetUserInfo_void:
    .asciz "_user"
.LN_0_m_Matrix_Core_FetchContacts_void:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_FetchContacts_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_FetchContacts_void:
    .asciz "<>1__state"
.LN_3_m_Matrix_Core_FetchContacts_void:
    .asciz "<>t__builder"
.LN_4_m_Matrix_Core_FetchContacts_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_FetchConversations_void:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_FetchConversations_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_FetchConversations_void:
    .asciz "<>1__state"
.LN_3_m_Matrix_Core_FetchConversations_void:
    .asciz "<>t__builder"
.LN_4_m_Matrix_Core_FetchConversations_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_FetchServers_void:
    .asciz "Yggdrasil.Models.Server>"
.LN_0_m_Matrix_Core_FetchFromInitialSync_void:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_FetchFromInitialSync_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_FetchFromInitialSync_void:
    .asciz "<>1__state"
.LN_3_m_Matrix_Core_FetchFromInitialSync_void:
    .asciz "<>t__builder"
.LN_4_m_Matrix_Core_FetchFromInitialSync_void:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "conversation"
.LN_3_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "text"
.LN_4_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "attachment"
.LN_5_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "parent_message_identifier"
.LN_6_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "<>1__state"
.LN_7_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "<>t__builder"
.LN_8_m_Matrix_Core_SendMessage_ref_ref_ref_ref_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendTextMessage_ref_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_SendTextMessage_ref_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendTextMessage_ref_ref:
    .asciz "roomId"
.LN_3_m_Matrix_Core_SendTextMessage_ref_ref:
    .asciz "text"
.LN_4_m_Matrix_Core_SendTextMessage_ref_ref:
    .asciz "<>1__state"
.LN_5_m_Matrix_Core_SendTextMessage_ref_ref:
    .asciz "<>t__builder"
.LN_6_m_Matrix_Core_SendTextMessage_ref_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendImageMessage_ref_arr_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_SendImageMessage_ref_arr_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendImageMessage_ref_arr_ref:
    .asciz "identifier"
.LN_3_m_Matrix_Core_SendImageMessage_ref_arr_ref:
    .asciz "imageData"
.LN_4_m_Matrix_Core_SendImageMessage_ref_arr_ref:
    .asciz "filename"
.LN_5_m_Matrix_Core_SendImageMessage_ref_arr_ref:
    .asciz "<>1__state"
.LN_6_m_Matrix_Core_SendImageMessage_ref_arr_ref:
    .asciz "<>t__builder"
.LN_7_m_Matrix_Core_SendImageMessage_ref_arr_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SendReplyMessage_ref_ref_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_SendReplyMessage_ref_ref_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendReplyMessage_ref_ref_ref:
    .asciz "identifier"
.LN_3_m_Matrix_Core_SendReplyMessage_ref_ref_ref:
    .asciz "text"
.LN_4_m_Matrix_Core_SendReplyMessage_ref_ref_ref:
    .asciz "replyToEventId"
.LN_5_m_Matrix_Core_SendReplyMessage_ref_ref_ref:
    .asciz "<>1__state"
.LN_6_m_Matrix_Core_SendReplyMessage_ref_ref_ref:
    .asciz "<>t__builder"
.LN_7_m_Matrix_Core_SendReplyMessage_ref_ref_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_EditMessage_ref_ref_ref:
    .asciz "DialogTube"
.LS_1_m_Matrix_Core_EditMessage_ref_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 32, 101, 100, 105, 116, 105, 110, 103, 32, 105, 115, 32, 110, 111, 116, 32, 105, 109, 112, 108, 101, 109, 101, 110, 116, 101, 100, 46
.LN_2_m_Matrix_Core_EditMessage_ref_ref_ref:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_0_m_Matrix_Core_DeleteMessage_ref_ref:
    .asciz "DialogTube"
.LS_1_m_Matrix_Core_DeleteMessage_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 32, 100, 101, 108, 101, 116, 105, 111, 110, 32, 105, 115, 32, 110, 111, 116, 32, 105, 109, 112, 108, 101, 109, 101, 110, 116, 101, 100, 46
.LN_2_m_Matrix_Core_DeleteMessage_ref_ref:
    .asciz "Yggdrasil.Bottles.DialogBottle"
.LN_0_m_Matrix_Core_SendTypingIndicator_ref_b:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_SendTypingIndicator_ref_b:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SendTypingIndicator_ref_b:
    .asciz "identifier"
.LN_3_m_Matrix_Core_SendTypingIndicator_ref_b:
    .asciz "isTyping"
.LN_4_m_Matrix_Core_SendTypingIndicator_ref_b:
    .asciz "<>1__state"
.LN_5_m_Matrix_Core_SendTypingIndicator_ref_b:
    .asciz "<>t__builder"
.LN_6_m_Matrix_Core_SendTypingIndicator_ref_b:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SetConnectionStatus_v:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_SetConnectionStatus_v:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SetConnectionStatus_v:
    .asciz "status"
.LN_3_m_Matrix_Core_SetConnectionStatus_v:
    .asciz "<>1__state"
.LN_4_m_Matrix_Core_SetConnectionStatus_v:
    .asciz "<>t__builder"
.LN_5_m_Matrix_Core_SetConnectionStatus_v:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_SetMood_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_SetMood_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SetMood_ref:
    .asciz "status"
.LN_3_m_Matrix_Core_SetMood_ref:
    .asciz "<>1__state"
.LN_4_m_Matrix_Core_SetMood_ref:
    .asciz "<>t__builder"
.LN_5_m_Matrix_Core_SetMood_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "conversation"
.LN_3_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "fetch_type"
.LN_4_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "message_count"
.LN_5_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "identifier"
.LN_6_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "<>1__state"
.LN_7_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "<>t__builder"
.LN_8_m_Matrix_Core_FetchMessages_ref_v_i4_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_StoreCredential_void:
    .asciz "_credData"
.LN_0_m_Matrix_Core_Dispose_void:
    .asciz "_syncCancellationTokenSource"
.LN_1_m_Matrix_Core_Dispose_void:
    .asciz "_syncCancellationTokenSource"
.LN_2_m_Matrix_Core_Dispose_void:
    .asciz "_syncCancellationTokenSource"
.LN_3_m_Matrix_Core_Dispose_void:
    .asciz "_displayNameCache"
.LN_4_m_Matrix_Core_Dispose_void:
    .asciz "_recentRoomMap"
.LN_5_m_Matrix_Core_Dispose_void:
    .asciz "_accessToken"
.LN_6_m_Matrix_Core_Dispose_void:
    .asciz "_user"
.LN_7_m_Matrix_Core_Dispose_void:
    .asciz "_pendingBeeperUser"
.LS_8_m_Matrix_Core_Dispose_void:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 109, 97, 116, 114, 105, 120, 46, 111, 114, 103
.LN_9_m_Matrix_Core_Dispose_void:
    .asciz "_homeserver"
.LN_10_m_Matrix_Core_Dispose_void:
    .asciz "_nextBatch"
.LN_11_m_Matrix_Core_Dispose_void:
    .asciz "_activeRoomId"
.LN_12_m_Matrix_Core_Dispose_void:
    .asciz "_credData"
.LN_13_m_Matrix_Core_Dispose_void:
    .asciz "_initialSyncDone"
.LN_0_m_Matrix_Core_StartSyncLoop_void:
    .asciz "_syncCancellationTokenSource"
.LN_1_m_Matrix_Core_StartSyncLoop_void:
    .asciz "System.Threading.CancellationTokenSource"
.LN_2_m_Matrix_Core_StartSyncLoop_void:
    .asciz "_syncCancellationTokenSource"
.LN_3_m_Matrix_Core_StartSyncLoop_void:
    .asciz "System.Threading.Tasks.Task>"
.LN_0_m_Matrix_Core_SyncLoop_v:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_SyncLoop_v:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_SyncLoop_v:
    .asciz "cancellationToken"
.LN_3_m_Matrix_Core_SyncLoop_v:
    .asciz "<>1__state"
.LN_4_m_Matrix_Core_SyncLoop_v:
    .asciz "<>t__builder"
.LN_5_m_Matrix_Core_SyncLoop_v:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_ProcessTimelineEvent_ref_v:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_ProcessTimelineEvent_ref_v:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_ProcessTimelineEvent_ref_v:
    .asciz "roomId"
.LN_3_m_Matrix_Core_ProcessTimelineEvent_ref_v:
    .asciz "evt"
.LN_4_m_Matrix_Core_ProcessTimelineEvent_ref_v:
    .asciz "<>1__state"
.LN_5_m_Matrix_Core_ProcessTimelineEvent_ref_v:
    .asciz "<>t__builder"
.LN_6_m_Matrix_Core_ProcessTimelineEvent_ref_v:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_ProcessEphemeralEvent_ref_v:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_ProcessEphemeralEvent_ref_v:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_ProcessEphemeralEvent_ref_v:
    .asciz "roomId"
.LN_3_m_Matrix_Core_ProcessEphemeralEvent_ref_v:
    .asciz "evt"
.LN_4_m_Matrix_Core_ProcessEphemeralEvent_ref_v:
    .asciz "<>1__state"
.LN_5_m_Matrix_Core_ProcessEphemeralEvent_ref_v:
    .asciz "<>t__builder"
.LN_6_m_Matrix_Core_ProcessEphemeralEvent_ref_v:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_GetMessageById_ref_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_GetMessageById_ref_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_GetMessageById_ref_ref:
    .asciz "roomId"
.LN_3_m_Matrix_Core_GetMessageById_ref_ref:
    .asciz "eventId"
.LN_4_m_Matrix_Core_GetMessageById_ref_ref:
    .asciz "<>1__state"
.LN_5_m_Matrix_Core_GetMessageById_ref_ref:
    .asciz "<>t__builder"
.LN_6_m_Matrix_Core_GetMessageById_ref_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_GetRoomMemberDisplayNames_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_GetRoomMemberDisplayNames_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_GetRoomMemberDisplayNames_ref:
    .asciz "roomId"
.LN_3_m_Matrix_Core_GetRoomMemberDisplayNames_ref:
    .asciz "<>1__state"
.LN_4_m_Matrix_Core_GetRoomMemberDisplayNames_ref:
    .asciz "<>t__builder"
.LN_5_m_Matrix_Core_GetRoomMemberDisplayNames_ref:
    .asciz "<>t__builder"
.LN_0_m_Matrix_Core_GetDisplayNameForUser_ref_ref:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_GetDisplayNameForUser_ref_ref:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_GetDisplayNameForUser_ref_ref:
    .asciz "userId"
.LN_3_m_Matrix_Core_GetDisplayNameForUser_ref_ref:
    .asciz "roomId"
.LN_4_m_Matrix_Core_GetDisplayNameForUser_ref_ref:
    .asciz "<>1__state"
.LN_5_m_Matrix_Core_GetDisplayNameForUser_ref_ref:
    .asciz "<>t__builder"
.LN_6_m_Matrix_Core_GetDisplayNameForUser_ref_ref:
    .asciz "<>t__builder"
.LS_0_m_Matrix_Core_ctor_void:
    .short 104, 116, 116, 112, 115, 58, 47, 47, 109, 97, 116, 114, 105, 120, 46, 111, 114, 103
.LN_1_m_Matrix_Core_ctor_void:
    .asciz "_homeserver"
.LN_2_m_Matrix_Core_ctor_void:
    .asciz "Yggdrasil.Models.User>"
.LN_3_m_Matrix_Core_ctor_void:
    .asciz "<TypingUsersList>k__BackingField"
.LN_4_m_Matrix_Core_ctor_void:
    .asciz "string>"
.LN_5_m_Matrix_Core_ctor_void:
    .asciz "_displayNameCache"
.LN_6_m_Matrix_Core_ctor_void:
    .asciz "string>"
.LN_7_m_Matrix_Core_ctor_void:
    .asciz "_recentRoomMap"
.LN_0_m_Matrix_Core_cctor_void:
    .asciz "OmegaAOL.Bifrost.Http.BifrostEngine"
.LN_1_m_Matrix_Core_cctor_void:
    .asciz "System.Net.Http.HttpClient"
.LN_2_m_Matrix_Core_cctor_void:
    .asciz "_httpClient"
.LN_0_m_Matrix_Core_StartSyncLoop_b_60_0_void:
    .asciz "<>t__builder"
.LN_1_m_Matrix_Core_StartSyncLoop_b_60_0_void:
    .asciz "<>4__this"
.LN_2_m_Matrix_Core_StartSyncLoop_b_60_0_void:
    .asciz "<>1__state"
.LN_3_m_Matrix_Core_StartSyncLoop_b_60_0_void:
    .asciz "<>t__builder"
.LN_4_m_Matrix_Core_StartSyncLoop_b_60_0_void:
    .asciz "<>t__builder"

    .section .note.GNU-stack,"",@progbits