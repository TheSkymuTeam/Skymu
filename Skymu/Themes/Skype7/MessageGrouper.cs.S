# Themes/Skype7/MessageGrouper.cs
    .text

.globl m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor__void
.type m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor__void, @function
m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor__void, .-m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor__void

.globl m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0__ref_ref
.type m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0__ref_ref, @function
m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0001:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Specialized_NotifyCollectionChangedEventArgs_get_Action__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0006:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0007:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0008:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_000f
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_000a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_000b:
    mov $1, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_000c:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0059
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_000e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_000f:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0010:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Specialized_NotifyCollectionChangedEventArgs_get_NewItems__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0015:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerable_GetEnumerator__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_001a:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_001b:
    jmp .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_003e
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_001d:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_001e:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0023:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0028:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0029:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_002a:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_003e
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_002c:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_002d:
    mov -88(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0032:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0033:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0034:
    mov -104(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0039:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_Append__ref_b
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_003e:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_003f:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0044:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_001d
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0046:
    jmp .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_00a0
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0059:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_005a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Specialized_NotifyCollectionChangedEventArgs_get_OldItems__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_005f:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerable_GetEnumerator__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0064:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0065:
    jmp .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0085
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0067:
    mov -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0068:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_006d:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0072:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0074:
    mov -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0076:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0085
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0078:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0079:
    mov -88(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_007e:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0080:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_Remove__ref
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0085:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0086:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_008b:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_0067
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_008d:
    jmp .Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_00a0
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_00a0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0__ref_ref, .-m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0__ref_ref

.globl m_Skymu_Skype7_MessageGrouper_get_Grouped__void
.type m_Skymu_Skype7_MessageGrouper_get_Grouped__void, @function
m_Skymu_Skype7_MessageGrouper_get_Grouped__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_get_Grouped_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_get_Grouped_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_MessageGrouper_get_Grouped_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_get_Grouped_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_get_Grouped_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGrouper_get_Grouped__void, .-m_Skymu_Skype7_MessageGrouper_get_Grouped__void

.globl m_Skymu_Skype7_MessageGrouper_ctor__gen
.type m_Skymu_Skype7_MessageGrouper_ctor__gen, @function
m_Skymu_Skype7_MessageGrouper_ctor__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_0001:
    lea .LN_0_m_Skymu_Skype7_MessageGrouper_ctor_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype7_MessageGroup_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_0006:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_MessageGrouper_ctor_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_000b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_000c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_0011:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_0012:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_0013:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_MessageGrouper_ctor_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_ctor_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGrouper_ctor__gen, .-m_Skymu_Skype7_MessageGrouper_ctor__gen

.globl m_Skymu_Skype7_MessageGrouper_Build__ref
.type m_Skymu_Skype7_MessageGrouper_Build__ref, @function
m_Skymu_Skype7_MessageGrouper_Build__ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0000:
    lea .LN_0_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_000e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_get_Grouped__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0013:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_Clear__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0018:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0019:
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_001e:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_MessageGrouper_Build_ref_0031
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0021:
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0027:
    mov -64(%rbp), %rdi
    lea .LN_4_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_002c:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_remove_CollectionChanged__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0031:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0032:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0033:
    mov -72(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0038:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_MessageGrouper_Build_ref_0045
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_003a:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_003b:
    mov -80(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0040:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0041:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    cmp %rcx, %rax
    seta %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0043:
    jmp .Lm_Skymu_Skype7_MessageGrouper_Build_ref_0046
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0045:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0046:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_5_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_004b:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_004c:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_004d:
    jmp .Lm_Skymu_Skype7_MessageGrouper_Build_ref_005d
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_004f:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0050:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0051:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0052:
    mov -96(%rbp), %rdi
    lea .LN_6_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0057:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_ConsumeFrom__i4_b
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_005c:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_005d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_005e:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_005f:
    mov -88(%rbp), %rdi
    lea .LN_7_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0064:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Count__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0069:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Skype7_MessageGrouper_Build_ref_004f
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_006b:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_006c:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_006d:
    lea m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0__ref_ref(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0073:
    lea .LN_8_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Collections_Specialized_NotifyCollectionChangedEventHandler_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0078:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rdi
    lea .LN_9_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_007d:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_007e:
    mov -80(%rbp), %rdi
    lea .LN_10_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0083:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0084:
    mov -88(%rbp), %rdi
    lea .LN_11_m_Skymu_Skype7_MessageGrouper_Build_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_0089:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_add_CollectionChanged__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_008e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_Build_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGrouper_Build__ref, .-m_Skymu_Skype7_MessageGrouper_Build__ref

.globl m_Skymu_Skype7_MessageGrouper_Clear__void
.type m_Skymu_Skype7_MessageGrouper_Clear__void, @function
m_Skymu_Skype7_MessageGrouper_Clear__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_MessageGrouper_Clear_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_MessageGrouper_Clear_void_0020
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0008:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0009:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_MessageGrouper_Clear_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_000f:
    mov -32(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_MessageGrouper_Clear_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0014:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_remove_CollectionChanged__ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0019:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_001a:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_001b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_MessageGrouper_Clear_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0020:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0021:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_get_Grouped__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_0026:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_Clear__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_002b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_Clear_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGrouper_Clear__void, .-m_Skymu_Skype7_MessageGrouper_Clear__void

.globl m_Skymu_Skype7_MessageGrouper_Remove__ref
.type m_Skymu_Skype7_MessageGrouper_Remove__ref, @function
m_Skymu_Skype7_MessageGrouper_Remove__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_get_Grouped__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0006:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Count__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_000b:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_000c:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_000d:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_000e:
    jmp .Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0049
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0010:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0011:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_get_Grouped__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0017:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Item__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_001e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0023:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0024:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_Remove__gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0029:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0045
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_002b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_002c:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0031:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Count__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0036:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0044
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0038:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0039:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGrouper_get_Grouped__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_003e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_003f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_RemoveAt__i4
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0044:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0045:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0046:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0047:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0048:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0049:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_004a:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_004b:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jge .Lm_Skymu_Skype7_MessageGrouper_Remove_ref_0010
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_004d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_Remove_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGrouper_Remove__ref, .-m_Skymu_Skype7_MessageGrouper_Remove__ref

.globl m_Skymu_Skype7_MessageGrouper_IsImageMessage__ref
.type m_Skymu_Skype7_MessageGrouper_IsImageMessage__ref, @function
m_Skymu_Skype7_MessageGrouper_IsImageMessage__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0006:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_000a
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0008:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0009:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_000a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_000b:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0010:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0011:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0012:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0013:
    jmp .Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0030
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0015:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0016:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0017:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0018:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0019:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_001a:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_001f:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_002a
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0021:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0022:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0027:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0028:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_002c
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_002a:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_002b:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_002c:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_002d:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_002e:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_002f:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0030:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0031:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0032:
    mov -56(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0033:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0034:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0015
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0036:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_0037:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGrouper_IsImageMessage_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGrouper_IsImageMessage__ref, .-m_Skymu_Skype7_MessageGrouper_IsImageMessage__ref

.globl m_Skymu_Skype7_MessageGroup_get_Messages__void
.type m_Skymu_Skype7_MessageGroup_get_Messages__void, @function
m_Skymu_Skype7_MessageGroup_get_Messages__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Messages_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Messages_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_MessageGroup_get_Messages_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Messages_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_Messages_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGroup_get_Messages__void, .-m_Skymu_Skype7_MessageGroup_get_Messages__void

.globl m_Skymu_Skype7_MessageGroup_get_ShowSenderName__void
.type m_Skymu_Skype7_MessageGroup_get_ShowSenderName__void, @function
m_Skymu_Skype7_MessageGroup_get_ShowSenderName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_ShowSenderName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_ShowSenderName_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_MessageGroup_get_ShowSenderName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_ShowSenderName_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_ShowSenderName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGroup_get_ShowSenderName__void, .-m_Skymu_Skype7_MessageGroup_get_ShowSenderName__void

.globl m_Skymu_Skype7_MessageGroup_get_Sender__void
.type m_Skymu_Skype7_MessageGroup_get_Sender__void, @function
m_Skymu_Skype7_MessageGroup_get_Sender__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Count__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_000b:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_000c:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    jg .Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0010
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_000e:
    xor %eax, %eax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_000f:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0011:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0016:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0017:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Item__i4
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_001c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Author__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_0021:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_Sender_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGroup_get_Sender__void, .-m_Skymu_Skype7_MessageGroup_get_Sender__void

.globl m_Skymu_Skype7_MessageGroup_get_Time__void
.type m_Skymu_Skype7_MessageGroup_get_Time__void, @function
m_Skymu_Skype7_MessageGroup_get_Time__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0006:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Count__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_000b:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_000c:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    jg .Lm_Skymu_Skype7_MessageGroup_get_Time_void_0018
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_000e:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0010:
    mov -32(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0016:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0017:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0019:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_001e:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_001f:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0024:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Count__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0029:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_002a:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_002b:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Item__i4
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0030:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ConversationItem_get_Time__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_0035:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_Time_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGroup_get_Time__void, .-m_Skymu_Skype7_MessageGroup_get_Time__void

.globl m_Skymu_Skype7_MessageGroup_get_IsSelf__void
.type m_Skymu_Skype7_MessageGroup_get_IsSelf__void, @function
m_Skymu_Skype7_MessageGroup_get_IsSelf__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsSelf_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsSelf_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Skype7_MessageGroup_get_IsSelf_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsSelf_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_IsSelf_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGroup_get_IsSelf__void, .-m_Skymu_Skype7_MessageGroup_get_IsSelf__void

.globl m_Skymu_Skype7_MessageGroup_get_IsImageGroup__void
.type m_Skymu_Skype7_MessageGroup_get_IsImageGroup__void, @function
m_Skymu_Skype7_MessageGroup_get_IsImageGroup__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0006:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Count__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_000b:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_000c:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0021
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_000f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0014:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0015:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Item__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_001a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_001f:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0023
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0021:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0022:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0023:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0024:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Skype7_MessageGroup_get_Messages__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0029:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_002a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Item__i4
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_002f:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Message_get_Attachments__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0034:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0035:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0036:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0037:
    jmp .Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0054
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0039:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_003a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_003b:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_003c:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_003d:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_003e:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0043:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_004e
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0045:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0046:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Attachment_get_Type__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_004b:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_004c:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0050
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_004e:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_004f:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0050:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0051:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0052:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0053:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0054:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0055:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0056:
    mov -56(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0057:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0058:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_0039
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_005a:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_005b:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_get_IsImageGroup_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGroup_get_IsImageGroup__void, .-m_Skymu_Skype7_MessageGroup_get_IsImageGroup__void

.globl m_Skymu_Skype7_MessageGroup_ctor__gen_b_b
.type m_Skymu_Skype7_MessageGroup_ctor__gen_b_b, @function
m_Skymu_Skype7_MessageGroup_ctor__gen_b_b:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0007:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0008:
    lea .LN_0_m_Skymu_Skype7_MessageGroup_ctor_gen_b_b(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Message_ctor__gen
    mov %r12, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_000d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Skype7_MessageGroup_ctor_gen_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0012:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0013:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0014:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Skype7_MessageGroup_ctor_gen_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0019:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_001a:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_001b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Skype7_MessageGroup_ctor_gen_b_b(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_0020:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Skype7_MessageGroup_ctor_gen_b_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Skype7_MessageGroup_ctor__gen_b_b, .-m_Skymu_Skype7_MessageGroup_ctor__gen_b_b

    .globl m_Skymu_Skype7_MessageGrouper_ConsumeFrom__i4_b
    .type m_Skymu_Skype7_MessageGrouper_ConsumeFrom__i4_b, @function
m_Skymu_Skype7_MessageGrouper_ConsumeFrom__i4_b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Skype7_MessageGrouper_ConsumeFrom_i4_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Skype7_MessageGrouper_ConsumeFrom__i4_b, .-m_Skymu_Skype7_MessageGrouper_ConsumeFrom__i4_b

    .globl m_Skymu_Skype7_MessageGrouper_Append__ref_b
    .type m_Skymu_Skype7_MessageGrouper_Append__ref_b, @function
m_Skymu_Skype7_MessageGrouper_Append__ref_b:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Skype7_MessageGrouper_Append_ref_b(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Skype7_MessageGrouper_Append__ref_b, .-m_Skymu_Skype7_MessageGrouper_Append__ref_b

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref:
    .asciz "<>4__this"

.LN_1_m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref:
    .asciz "isGroupOrServer"

.LN_2_m_Skymu_Skype7_MessageGrouper_c_DisplayClass6_0_Build_b_0_ref_ref:
    .asciz "<>4__this"

.LN_0_m_Skymu_Skype7_MessageGrouper_get_Grouped_void:
    .asciz "<Grouped>k__BackingField"

.LN_0_m_Skymu_Skype7_MessageGrouper_ctor_gen:
    .asciz "Skymu.Skype7.MessageGroup>"

.LN_1_m_Skymu_Skype7_MessageGrouper_ctor_gen:
    .asciz "<Grouped>k__BackingField"

.LN_2_m_Skymu_Skype7_MessageGrouper_ctor_gen:
    .asciz "_source"

.LN_0_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "Skymu.Skype7.MessageGrouper/'<>c__DisplayClass6_0'"

.LN_1_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "<>4__this"

.LN_2_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "_handler"

.LN_3_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "_source"

.LN_4_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "_handler"

.LN_5_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "isGroupOrServer"

.LN_6_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "isGroupOrServer"

.LN_7_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "_source"

.LN_8_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "System.Collections.Specialized.NotifyCollectionChangedEventHandler"

.LN_9_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "_handler"

.LN_10_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "_source"

.LN_11_m_Skymu_Skype7_MessageGrouper_Build_ref:
    .asciz "_handler"

.LN_0_m_Skymu_Skype7_MessageGrouper_Clear_void:
    .asciz "_handler"

.LN_1_m_Skymu_Skype7_MessageGrouper_Clear_void:
    .asciz "_source"

.LN_2_m_Skymu_Skype7_MessageGrouper_Clear_void:
    .asciz "_handler"

.LN_3_m_Skymu_Skype7_MessageGrouper_Clear_void:
    .asciz "_handler"

.LN_0_m_Skymu_Skype7_MessageGroup_get_Messages_void:
    .asciz "<Messages>k__BackingField"

.LN_0_m_Skymu_Skype7_MessageGroup_get_ShowSenderName_void:
    .asciz "<ShowSenderName>k__BackingField"

.LN_0_m_Skymu_Skype7_MessageGroup_get_IsSelf_void:
    .asciz "<IsSelf>k__BackingField"

.LN_0_m_Skymu_Skype7_MessageGroup_ctor_gen_b_b:
    .asciz "Yggdrasil.Models.Message>"

.LN_1_m_Skymu_Skype7_MessageGroup_ctor_gen_b_b:
    .asciz "<Messages>k__BackingField"

.LN_2_m_Skymu_Skype7_MessageGroup_ctor_gen_b_b:
    .asciz "<ShowSenderName>k__BackingField"

.LN_3_m_Skymu_Skype7_MessageGroup_ctor_gen_b_b:
    .asciz "<IsSelf>k__BackingField"

.LSTUB_m_Skymu_Skype7_MessageGrouper_ConsumeFrom_i4_b:
    .asciz "Skymu.Skype7.MessageGrouper::ConsumeFrom  [stack underflow at IL_003c (call): depth 1 < pops 2]"

.LSTUB_m_Skymu_Skype7_MessageGrouper_Append_ref_b:
    .asciz "Skymu.Skype7.MessageGrouper::Append  [stack underflow at IL_0009 (pop): depth 0 < pops 1]"

    .section .note.GNU-stack,"",@progbits
