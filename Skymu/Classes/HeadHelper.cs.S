# Classes/HeadHelper.cs
    .text

.globl m_Skymu_DateHeaderItem_get_DateText__void
.type m_Skymu_DateHeaderItem_get_DateText__void, @function
m_Skymu_DateHeaderItem_get_DateText__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_DateHeaderItem_get_DateText_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_DateHeaderItem_get_DateText_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_DateHeaderItem_get_DateText_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_DateHeaderItem_get_DateText_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_DateHeaderItem_get_DateText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_DateHeaderItem_get_DateText__void, .-m_Skymu_DateHeaderItem_get_DateText__void

.globl m_Skymu_DateHeaderItem_set_DateText__ref
.type m_Skymu_DateHeaderItem_set_DateText__ref, @function
m_Skymu_DateHeaderItem_set_DateText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_DateHeaderItem_set_DateText_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_DateHeaderItem_set_DateText_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_DateHeaderItem_set_DateText_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_DateHeaderItem_set_DateText_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_DateHeaderItem_set_DateText_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_DateHeaderItem_set_DateText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_DateHeaderItem_set_DateText__ref, .-m_Skymu_DateHeaderItem_set_DateText__ref

.globl m_Skymu_DateHeaderItem_ctor__void
.type m_Skymu_DateHeaderItem_ctor__void, @function
m_Skymu_DateHeaderItem_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_DateHeaderItem_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_DateHeaderItem_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_DateHeaderItem_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_DateHeaderItem_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_DateHeaderItem_ctor__void, .-m_Skymu_DateHeaderItem_ctor__void

.globl m_Skymu_CategoryHeaderItem_get_CategoryName__void
.type m_Skymu_CategoryHeaderItem_get_CategoryName__void, @function
m_Skymu_CategoryHeaderItem_get_CategoryName__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_CategoryHeaderItem_get_CategoryName_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_CategoryHeaderItem_get_CategoryName_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_CategoryHeaderItem_get_CategoryName_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_CategoryHeaderItem_get_CategoryName_void_0006:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CategoryHeaderItem_get_CategoryName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CategoryHeaderItem_get_CategoryName__void, .-m_Skymu_CategoryHeaderItem_get_CategoryName__void

.globl m_Skymu_CategoryHeaderItem_set_CategoryName__ref
.type m_Skymu_CategoryHeaderItem_set_CategoryName__ref, @function
m_Skymu_CategoryHeaderItem_set_CategoryName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_CategoryHeaderItem_set_CategoryName_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CategoryHeaderItem_set_CategoryName_ref_0001:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CategoryHeaderItem_set_CategoryName_ref_0002:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_CategoryHeaderItem_set_CategoryName_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_CategoryHeaderItem_set_CategoryName_ref_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CategoryHeaderItem_set_CategoryName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CategoryHeaderItem_set_CategoryName__ref, .-m_Skymu_CategoryHeaderItem_set_CategoryName__ref

.globl m_Skymu_CategoryHeaderItem_ctor__void
.type m_Skymu_CategoryHeaderItem_ctor__void, @function
m_Skymu_CategoryHeaderItem_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_CategoryHeaderItem_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_CategoryHeaderItem_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_CategoryHeaderItem_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CategoryHeaderItem_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CategoryHeaderItem_ctor__void, .-m_Skymu_CategoryHeaderItem_ctor__void

.globl m_Skymu_CompactRecentsHelper_c_cctor__void
.type m_Skymu_CompactRecentsHelper_c_cctor__void, @function
m_Skymu_CompactRecentsHelper_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_cctor_void_0000:
    lea .LN_0_m_Skymu_CompactRecentsHelper_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_CompactRecentsHelper_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_cctor_void_0005:
    lea .LN_1_m_Skymu_CompactRecentsHelper_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_CompactRecentsHelper_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_c_cctor__void, .-m_Skymu_CompactRecentsHelper_c_cctor__void

.globl m_Skymu_CompactRecentsHelper_c_ctor__void
.type m_Skymu_CompactRecentsHelper_c_ctor__void, @function
m_Skymu_CompactRecentsHelper_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_CompactRecentsHelper_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_c_ctor__void, .-m_Skymu_CompactRecentsHelper_c_ctor__void

.globl m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0__ref
.type m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0__ref, @function
m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_LastMessageTime__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0_ref_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0__ref, .-m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0__ref

.globl m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1__ref
.type m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1__ref, @function
m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_LastMessageTime__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1_ref_0006:
    mov -32(%rbp), %rdi
    call m_Skymu_CompactRecentsHelper_GetDateKey__v
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1_ref_000b:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1__ref, .-m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1__ref

.globl m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2__gen
.type m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2__gen, @function
m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2_gen_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Key__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2_gen_0006:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2__gen, .-m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2__gen

.globl m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3__gen
.type m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3__gen, @function
m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3_gen_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3_gen_0001:
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_Conversation__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3_gen_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3__gen, .-m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3__gen

.globl m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor__void
.type m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor__void, @function
m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor__void, .-m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor__void

.globl m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4__ref
.type m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4__ref, @function
m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_0002:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_0007:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_0008:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Item__i4
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_000d:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_LastMessageTime__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_0012:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_Skymu_CompactRecentsHelper_ParseDateKey__ref_v
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_0017:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4__ref, .-m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4__ref

.globl m_Skymu_CompactRecentsHelper_GroupByDate__gen
.type m_Skymu_CompactRecentsHelper_GroupByDate__gen, @function
m_Skymu_CompactRecentsHelper_GroupByDate__gen:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0000:
    lea .LN_0_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_ctor__void
    mov %r12, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0005:
    mov -80(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0006:
    lea .LN_1_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_ObjectModel_ObservableCollection_1_object_ctor__void
    mov %r12, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_000b:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_000c:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_000d:
    mov -80(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0017
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_000f:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0010:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Count__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0015:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0019
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0017:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0018:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0019:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_001a:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_001b:
    lea .LN_2_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0020:
    mov -96(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0021:
    mov -96(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_003a
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0023:
    mov -88(%rbp), %rax
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0024:
    lea .LN_3_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0029:
    lea m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_0__ref(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_002f:
    lea .LN_4_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTime_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0034:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0035:
    lea .LN_5_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov -88(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_003a:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_Linq_Enumerable_OrderByDescending_class_Yggdrasil_Yggdrasil_Models_Conversation_valuetype_System_Runtime_System_DateTime__gen_gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_003f:
    mov -80(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_Conversation__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0044:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_6_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0049:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_004a:
    mov -80(%rbp), %rdi
    lea .LN_7_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_004f:
    lea .LN_8_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0054:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0055:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_006e
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0057:
    mov -80(%rbp), %rax
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0058:
    lea .LN_9_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_005d:
    lea m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_1__ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0063:
    lea .LN_10_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0068:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0069:
    lea .LN_11_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov -80(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_006e:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    call m_System_Linq_Enumerable_GroupBy_class_Yggdrasil_Yggdrasil_Models_Conversation_string__gen_gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0073:
    lea .LN_12_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0078:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0079:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0092
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_007b:
    mov -80(%rbp), %rax
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_007c:
    lea .LN_13_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0081:
    lea m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_2__gen(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0087:
    lea .LN_14_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_008c:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_008d:
    lea .LN_15_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov -80(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0092:
    lea .LN_16_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0097:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0098:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00b1
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_009a:
    mov -80(%rbp), %rax
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_009b:
    lea .LN_17_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00a0:
    lea m_Skymu_CompactRecentsHelper_c_GroupByDate_b_0_3__gen(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00a6:
    lea .LN_18_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Models_Conversation_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00ab:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00ac:
    lea .LN_19_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_global_slot
    mov -80(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00b1:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Linq_Enumerable_ToDictionary_class_System_Linq_System_Linq_IGrouping_2_string_class_Yggdrasil_Yggdrasil_Models_Conversation_string_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_Conversation__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00b6:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00b7:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00b8:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Keys__void
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00bd:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00be:
    lea m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4__ref(%rip), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00c4:
    lea .LN_20_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_DateTime_ctor__ref_v
    mov %r12, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00c9:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    call m_System_Linq_Enumerable_OrderByDescending_string_valuetype_System_Runtime_System_DateTime__gen_gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00ce:
    mov -80(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_string__gen
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00d3:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_string_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00d8:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00d9:
    jmp .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0132
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00db:
    lea -48(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00dd:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_Enumerator_string_get_Current__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00e2:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00e4:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00e5:
    lea .LN_21_m_Skymu_CompactRecentsHelper_GroupByDate_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_DateHeaderItem_ctor__void
    mov %r12, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00ea:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00eb:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00ed:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_DateHeaderItem_set_DateText__ref
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00f2:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_ObjectModel_Collection_1_object_Add__gen
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00f7:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00f8:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00fa:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Item__gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00ff:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0104:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0106:
    jmp .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0119
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0108:
    lea -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_010a:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Current__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_010f:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0111:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0112:
    mov -72(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0114:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_ObjectModel_Collection_1_object_Add__gen
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0119:
    lea -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_011b:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_MoveNext__void
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0120:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0108
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0122:
    jmp .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0132
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0132:
    lea -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0134:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_List_1_Enumerator_string_MoveNext__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_0139:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_00db
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_013b:
    jmp .Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_014b
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_014b:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_014c:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_GroupByDate_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_GroupByDate__gen, .-m_Skymu_CompactRecentsHelper_GroupByDate__gen

.globl m_Skymu_CompactRecentsHelper_GetDateKey__v
.type m_Skymu_CompactRecentsHelper_GetDateKey__v, @function
m_Skymu_CompactRecentsHelper_GetDateKey__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0000:
    call m_System_DateTime_get_Today__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0005:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0006:
    lea -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0008:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTime_get_Date__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_000d:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_000f:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0010:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_DateTime_op_Equality__v_v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0015:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0027
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0017:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_001c:
    lea .LS_0_m_Skymu_CompactRecentsHelper_GetDateKey_v(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0021:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0026:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0027:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0028:
    lea -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_002a:
    movsd .LD_1_m_Skymu_CompactRecentsHelper_GetDateKey_v(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0033:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTime_AddDays__f8
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0038:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_DateTime_op_Equality__v_v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_003d:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_CompactRecentsHelper_GetDateKey_v_004f
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_003f:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0044:
    lea .LS_2_m_Skymu_CompactRecentsHelper_GetDateKey_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0049:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_004e:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_004f:
    lea -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0051:
    lea .LS_3_m_Skymu_CompactRecentsHelper_GetDateKey_v(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0056:
    call m_System_Globalization_CultureInfo_get_CurrentCulture__void
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_005b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTime_ToString__ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_0060:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_GetDateKey_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_GetDateKey__v, .-m_Skymu_CompactRecentsHelper_GetDateKey__v

.globl m_Skymu_CompactRecentsHelper_ParseDateKey__ref_v
.type m_Skymu_CompactRecentsHelper_ParseDateKey__ref_v, @function
m_Skymu_CompactRecentsHelper_ParseDateKey__ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0000:
    call m_System_DateTime_get_Today__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0005:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0006:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0007:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_000c:
    lea .LS_0_m_Skymu_CompactRecentsHelper_ParseDateKey_ref_v(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0011:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0016:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_001b:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_001f
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_001d:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_001e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_001f:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0020:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0025:
    lea .LS_1_m_Skymu_CompactRecentsHelper_ParseDateKey_ref_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_002a:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_002f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0034:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0047
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0036:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0038:
    movsd .LD_2_m_Skymu_CompactRecentsHelper_ParseDateKey_ref_v(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0041:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_DateTime_AddDays__f8
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0046:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0047:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0048:
    lea .LS_3_m_Skymu_CompactRecentsHelper_ParseDateKey_ref_v(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_004d:
    call m_System_Globalization_CultureInfo_get_CurrentCulture__void
    mov %rax, -64(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0052:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0053:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_0055:
    mov -80(%rbp), %r8
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_DateTime_TryParseExact__ref_ref_ref_v_v
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_005a:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_005e
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_005c:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_005d:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_005e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_005f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_ParseDateKey_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_ParseDateKey__ref_v, .-m_Skymu_CompactRecentsHelper_ParseDateKey__ref_v

.globl m_Skymu_CompactRecentsHelper_ctor__void
.type m_Skymu_CompactRecentsHelper_ctor__void, @function
m_Skymu_CompactRecentsHelper_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_CompactRecentsHelper_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_CompactRecentsHelper_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_CompactRecentsHelper_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_CompactRecentsHelper_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_CompactRecentsHelper_ctor__void, .-m_Skymu_CompactRecentsHelper_ctor__void

.globl m_Skymu_ServerChannelHelper_c_cctor__void
.type m_Skymu_ServerChannelHelper_c_cctor__void, @function
m_Skymu_ServerChannelHelper_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_ServerChannelHelper_c_cctor_void_0000:
    lea .LN_0_m_Skymu_ServerChannelHelper_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_ServerChannelHelper_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_ServerChannelHelper_c_cctor_void_0005:
    lea .LN_1_m_Skymu_ServerChannelHelper_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_cctor__void, .-m_Skymu_ServerChannelHelper_c_cctor__void

.globl m_Skymu_ServerChannelHelper_c_ctor__void
.type m_Skymu_ServerChannelHelper_c_ctor__void, @function
m_Skymu_ServerChannelHelper_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ServerChannelHelper_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ServerChannelHelper_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_ctor__void, .-m_Skymu_ServerChannelHelper_c_ctor__void

.globl m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0__ref
.type m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0__ref, @function
m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_CategoryID__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0_ref_0006:
    mov -32(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0_ref_000b:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0__ref, .-m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0__ref

.globl m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1__ref
.type m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1__ref, @function
m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_Position__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1_ref_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1__ref, .-m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1__ref

.globl m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2__ref
.type m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2__ref, @function
m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_CategoryID__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2_ref_0006:
    mov -32(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2_ref_000b:
    mov $0, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2_ref_000c:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2_ref_000e:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2__ref, .-m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2__ref

.globl m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3__ref
.type m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3__ref, @function
m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_CategoryID__void
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3_ref_0006:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3__ref, .-m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3__ref

.globl m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4__gen
.type m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4__gen, @function
m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4__gen:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_Key__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0007:
    lea .LN_0_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_000c:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_000d:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0026
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_000f:
    mov -40(%rbp), %rax
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0010:
    lea .LN_1_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0015:
    lea m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_001b:
    lea .LN_2_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0020:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0021:
    lea .LN_3_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0026:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_OrderBy_class_Yggdrasil_Yggdrasil_Models_ServerChannel_int32__gen_gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_002b:
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_Yggdrasil_Yggdrasil_Models_ServerChannel__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0030:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0031:
    lea .LN_4_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0036:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0037:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0050
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0039:
    mov -40(%rbp), %rax
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_003a:
    lea .LN_5_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_003f:
    lea m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7__ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0045:
    lea .LN_6_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_004a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_004b:
    lea .LN_7_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0050:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_Min_class_Yggdrasil_Yggdrasil_Models_ServerChannel__gen_gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_0055:
    lea .LN_8_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rdx
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__gen_gen_gen
    mov %r12, -16(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_005a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4__gen, .-m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4__gen

.globl m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6__ref
.type m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6__ref, @function
m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_Position__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6_ref_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6__ref, .-m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_6__ref

.globl m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7__ref
.type m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7__ref, @function
m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_Position__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7_ref_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7__ref, .-m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_7__ref

.globl m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5__gen
.type m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5__gen, @function
m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5__gen:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5_gen_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5_gen_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_get_Position__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5_gen_0006:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5__gen, .-m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5__gen

.globl m_Skymu_ServerChannelHelper_GroupByCategory__gen_gen
.type m_Skymu_ServerChannelHelper_GroupByCategory__gen_gen, @function
m_Skymu_ServerChannelHelper_GroupByCategory__gen_gen:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0000:
    lea .LN_0_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Collections_ObjectModel_ObservableCollection_1_object_ctor__void
    mov %r12, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0005:
    mov -104(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0006:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0007:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0011
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0009:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_000a:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_Count__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_000f:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0013
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0011:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0012:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0013:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0014:
    lea .LN_1_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0019:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_001a:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0033
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_001c:
    mov -104(%rbp), %rax
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_001d:
    lea .LN_2_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0022:
    lea m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_0__ref(%rip), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0028:
    lea .LN_3_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_002d:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_002e:
    lea .LN_4_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov -104(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0033:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_Linq_Enumerable_Where_class_Yggdrasil_Yggdrasil_Models_ServerChannel__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0038:
    lea .LN_5_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_003d:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_003e:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0057
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0040:
    mov -104(%rbp), %rax
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0041:
    lea .LN_6_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0046:
    lea m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_1__ref(%rip), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_004c:
    lea .LN_7_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__ref_v
    mov %r12, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0051:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0052:
    lea .LN_8_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov -104(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0057:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_Linq_Enumerable_OrderBy_class_Yggdrasil_Yggdrasil_Models_ServerChannel_int32__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_005c:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_GetEnumerator__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0061:
    mov -104(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0062:
    jmp .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0072
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0064:
    mov -40(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0065:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_Current__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_006a:
    mov -104(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_006b:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_006c:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_006d:
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_ObjectModel_Collection_1_object_Add__gen
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0072:
    mov -40(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0073:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0078:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0064
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_007a:
    jmp .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0086
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0086:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0087:
    lea .LN_9_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_008c:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_008d:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00a6
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_008f:
    mov -104(%rbp), %rax
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0090:
    lea .LN_10_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0095:
    lea m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_2__ref(%rip), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_009b:
    lea .LN_11_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00a0:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00a1:
    lea .LN_12_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov -104(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00a6:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_Linq_Enumerable_Where_class_Yggdrasil_Yggdrasil_Models_ServerChannel__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00ab:
    lea .LN_13_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00b0:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00b1:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00ca
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00b3:
    mov -104(%rbp), %rax
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00b4:
    lea .LN_14_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00b9:
    lea m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_3__ref(%rip), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00bf:
    lea .LN_15_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__ref_v
    mov %r12, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00c4:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00c5:
    lea .LN_16_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov -104(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00ca:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_Linq_Enumerable_GroupBy_class_Yggdrasil_Yggdrasil_Models_ServerChannel_string__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00cf:
    lea .LN_17_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00d4:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00d5:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00ee
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00d7:
    mov -104(%rbp), %rax
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00d8:
    lea .LN_18_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00dd:
    lea m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4__gen(%rip), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00e3:
    lea .LN_19_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__ref_v
    mov %r12, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00e8:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00e9:
    lea .LN_20_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov -104(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00ee:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_Linq_Enumerable_Select_class_System_Linq_System_Linq_IGrouping_2_string_class_Yggdrasil_Yggdrasil_Models_ServerChannel_class_f_AnonymousType0_3_string_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_ServerChannel_int32__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00f3:
    lea .LN_21_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00f8:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00f9:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0112
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00fb:
    mov -104(%rbp), %rax
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_00fc:
    lea .LN_22_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0101:
    lea m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_5__gen(%rip), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0107:
    lea .LN_23_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -112(%rbp), %rdx
    mov -104(%rbp), %rsi
    mov %r12, %rdi
    call m_int32_ctor__ref_v
    mov %r12, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_010c:
    mov -104(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_010d:
    lea .LN_24_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_global_slot
    mov -104(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0112:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_Linq_Enumerable_OrderBy_class_f_AnonymousType0_3_string_class_System_Collections_System_Collections_Generic_List_1_class_Yggdrasil_Yggdrasil_Models_ServerChannel_int32_int32__gen_gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0117:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_GetEnumerator__void
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_011c:
    mov -104(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_011d:
    jmp .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0193
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_011f:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0120:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_get_Current__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0125:
    mov -104(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0127:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0128:
    mov -104(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_013b
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_012a:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_012b:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_012d:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_get_CategoryId__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0132:
    lea -80(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0134:
    mov -120(%rbp), %rdx
    mov -112(%rbp), %rsi
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0139:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0142
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_013b:
    lea .LS_25_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0140:
    jmp .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0144
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0142:
    mov -80(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0144:
    mov -104(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0146:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0147:
    lea .LN_26_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_CategoryHeaderItem_ctor__void
    mov %r12, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_014c:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_014d:
    mov -72(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_014f:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_CategoryHeaderItem_set_CategoryName__ref
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0154:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_ObjectModel_Collection_1_object_Add__gen
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0159:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_015b:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int32_get_Channels__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0160:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0165:
    mov -112(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0167:
    jmp .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_017a
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0169:
    lea -88(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_016b:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_get_Current__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0170:
    mov -112(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0172:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0173:
    mov -96(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0175:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_ObjectModel_Collection_1_object_Add__gen
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_017a:
    lea -88(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_017c:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_ServerChannel_MoveNext__void
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0181:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0169
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0183:
    jmp .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0193
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0193:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0194:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_0199:
    mov -104(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_011f
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_019b:
    jmp .Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_01a7
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_01a7:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_01a8:
    mov -104(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_GroupByCategory_gen_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_GroupByCategory__gen_gen, .-m_Skymu_ServerChannelHelper_GroupByCategory__gen_gen

.globl m_Skymu_ServerChannelHelper_ctor__void
.type m_Skymu_ServerChannelHelper_ctor__void, @function
m_Skymu_ServerChannelHelper_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_ServerChannelHelper_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_ServerChannelHelper_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_ServerChannelHelper_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_ServerChannelHelper_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_ServerChannelHelper_ctor__void, .-m_Skymu_ServerChannelHelper_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_DateHeaderItem_get_DateText_void:
    .asciz "<DateText>k__BackingField"

.LN_0_m_Skymu_DateHeaderItem_set_DateText_ref:
    .asciz "<DateText>k__BackingField"

.LN_0_m_Skymu_CategoryHeaderItem_get_CategoryName_void:
    .asciz "<CategoryName>k__BackingField"

.LN_0_m_Skymu_CategoryHeaderItem_set_CategoryName_ref:
    .asciz "<CategoryName>k__BackingField"

.LN_0_m_Skymu_CompactRecentsHelper_c_cctor_void:
    .asciz "Skymu.CompactRecentsHelper/'<>c'"

.LN_1_m_Skymu_CompactRecentsHelper_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_CompactRecentsHelper_c_DisplayClass0_0_GroupByDate_b_4_ref:
    .asciz "sorted"

.LN_0_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "Skymu.CompactRecentsHelper/'<>c__DisplayClass0_0'"

.LN_1_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "System.Collections.ObjectModel.ObservableCollection`1<object>"

.LN_2_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9__0_0"

.LN_3_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9"

.LN_4_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "System.DateTime>"

.LN_5_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9__0_0"

.LN_6_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "sorted"

.LN_7_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "sorted"

.LN_8_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9__0_1"

.LN_9_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9"

.LN_10_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "string>"

.LN_11_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9__0_1"

.LN_12_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9__0_2"

.LN_13_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9"

.LN_14_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "string>"

.LN_15_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9__0_2"

.LN_16_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9__0_3"

.LN_17_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9"

.LN_18_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "Yggdrasil.Models.Conversation>>"

.LN_19_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "<>9__0_3"

.LN_20_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "System.DateTime>"

.LN_21_m_Skymu_CompactRecentsHelper_GroupByDate_gen:
    .asciz "Skymu.DateHeaderItem"

.LS_0_m_Skymu_CompactRecentsHelper_GetDateKey_v:
    .short 115, 84, 79, 68, 65, 89

.LD_1_m_Skymu_CompactRecentsHelper_GetDateKey_v:
    .double -1

.LS_2_m_Skymu_CompactRecentsHelper_GetDateKey_v:
    .short 115, 89, 69, 83, 84, 69, 82, 68, 65, 89

.LS_3_m_Skymu_CompactRecentsHelper_GetDateKey_v:
    .short 100, 100, 100, 100, 44, 32, 77, 77, 77, 77, 32, 100, 44, 32, 121, 121, 121, 121

.LS_0_m_Skymu_CompactRecentsHelper_ParseDateKey_ref_v:
    .short 115, 84, 79, 68, 65, 89

.LS_1_m_Skymu_CompactRecentsHelper_ParseDateKey_ref_v:
    .short 115, 89, 69, 83, 84, 69, 82, 68, 65, 89

.LD_2_m_Skymu_CompactRecentsHelper_ParseDateKey_ref_v:
    .double -1

.LS_3_m_Skymu_CompactRecentsHelper_ParseDateKey_ref_v:
    .short 100, 100, 100, 100, 44, 32, 77, 77, 77, 77, 32, 100, 44, 32, 121, 121, 121, 121

.LN_0_m_Skymu_ServerChannelHelper_c_cctor_void:
    .asciz "Skymu.ServerChannelHelper/'<>c'"

.LN_1_m_Skymu_ServerChannelHelper_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "<>9__0_6"

.LN_1_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "<>9"

.LN_2_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "int32>"

.LN_3_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "<>9__0_6"

.LN_4_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "<>9__0_7"

.LN_5_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "<>9"

.LN_6_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "int32>"

.LN_7_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "<>9__0_7"

.LN_8_m_Skymu_ServerChannelHelper_c_GroupByCategory_b_0_4_gen:
    .asciz "int32>"

.LN_0_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "System.Collections.ObjectModel.ObservableCollection`1<object>"

.LN_1_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_0"

.LN_2_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9"

.LN_3_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "bool>"

.LN_4_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_0"

.LN_5_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_1"

.LN_6_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9"

.LN_7_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "int32>"

.LN_8_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_1"

.LN_9_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_2"

.LN_10_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9"

.LN_11_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "bool>"

.LN_12_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_2"

.LN_13_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_3"

.LN_14_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9"

.LN_15_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "string>"

.LN_16_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_3"

.LN_17_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_4"

.LN_18_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9"

.LN_19_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "int32>>"

.LN_20_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_4"

.LN_21_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_5"

.LN_22_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9"

.LN_23_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "int32>"

.LN_24_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "<>9__0_5"

.LS_25_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .short 85, 110, 107, 110, 111, 119, 110, 32, 67, 97, 116, 101, 103, 111, 114, 121

.LN_26_m_Skymu_ServerChannelHelper_GroupByCategory_gen_gen:
    .asciz "Skymu.CategoryHeaderItem"

    .section .note.GNU-stack,"",@progbits
