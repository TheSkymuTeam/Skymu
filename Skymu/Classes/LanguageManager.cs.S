# Classes/LanguageManager.cs
    .text

.globl m_Skymu_LanguageManager_c_DisplayClass15_0_ctor__void
.type m_Skymu_LanguageManager_c_DisplayClass15_0_ctor__void, @function
m_Skymu_LanguageManager_c_DisplayClass15_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_c_DisplayClass15_0_ctor__void, .-m_Skymu_LanguageManager_c_DisplayClass15_0_ctor__void

.globl m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0__ref
.type m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0__ref, @function
m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_0000:
    lea .LS_0_m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_0006:
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_000b:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_000d:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_000e:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_000f:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_0010:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_0015:
    lea -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_0017:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_001c:
    lea .LS_3_m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_0021:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_0026:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0__ref, .-m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0__ref

.globl m_Skymu_LanguageManager_get_Languages__void
.type m_Skymu_LanguageManager_get_Languages__void, @function
m_Skymu_LanguageManager_get_Languages__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_LanguageManager_get_Languages_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_LanguageManager_get_Languages_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_LanguageManager_get_Languages_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_LanguageManager_get_Languages_void_0006:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_get_Languages_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_get_Languages__void, .-m_Skymu_LanguageManager_get_Languages__void

.globl m_Skymu_LanguageManager_get_Item__ref
.type m_Skymu_LanguageManager_get_Item__ref, @function
m_Skymu_LanguageManager_get_Item__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_LanguageManager_get_Item_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0007:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0009:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_000e:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_get_Item_ref_0012
.Lm_Skymu_LanguageManager_get_Item_ref_0010:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0011:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_get_Item_ref_0012:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0013:
    lea .LS_1_m_Skymu_LanguageManager_get_Item_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0018:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_001d:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0022:
    lea .LS_2_m_Skymu_LanguageManager_get_Item_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0027:
    lea .LS_3_m_Skymu_LanguageManager_get_Item_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_002c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_ToLowerInvariant__void
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0031:
    lea .LS_4_m_Skymu_LanguageManager_get_Item_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0036:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_003b:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_get_Item_ref_0040:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_get_Item_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_get_Item__ref, .-m_Skymu_LanguageManager_get_Item__ref

.globl m_Skymu_LanguageManager_add_PropertyChanged__ref
.type m_Skymu_LanguageManager_add_PropertyChanged__ref, @function
m_Skymu_LanguageManager_add_PropertyChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_LanguageManager_add_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0010:
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_LanguageManager_add_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_ObjectModel_System_ComponentModel_PropertyChangedEventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0007
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_add_PropertyChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_add_PropertyChanged__ref, .-m_Skymu_LanguageManager_add_PropertyChanged__ref

.globl m_Skymu_LanguageManager_remove_PropertyChanged__ref
.type m_Skymu_LanguageManager_remove_PropertyChanged__ref, @function
m_Skymu_LanguageManager_remove_PropertyChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_LanguageManager_remove_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0010:
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_LanguageManager_remove_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_ObjectModel_System_ComponentModel_PropertyChangedEventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0007
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_remove_PropertyChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_remove_PropertyChanged__ref, .-m_Skymu_LanguageManager_remove_PropertyChanged__ref

.globl m_Skymu_LanguageManager_ctor__void
.type m_Skymu_LanguageManager_ctor__void, @function
m_Skymu_LanguageManager_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0001:
    lea .LN_0_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0006:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_LanguageManager_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_LanguageManager_ctor_void_000b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_000c:
    call m_System_StringComparer_get_OrdinalIgnoreCase__void
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0011:
    lea .LN_2_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__gen
    mov %r12, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0016:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_3_m_Skymu_LanguageManager_ctor_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_LanguageManager_ctor_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_001c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_LanguageManager_ctor_void_0021:
    lea .LN_4_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0026:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_ctor_void_0035
.Lm_Skymu_LanguageManager_ctor_void_0028:
    lea .LN_5_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_DependencyObject_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_002d:
    mov -40(%rbp), %rdi
    call m_System_ComponentModel_DesignerProperties_GetIsInDesignMode__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0032:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_LanguageManager_ctor_void_0035
.Lm_Skymu_LanguageManager_ctor_void_0034:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_ctor_void_0035:
    call m_Skymu_Preferences_Settings_get_Language__void
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_003a:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_003b:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_ctor_void_0043
.Lm_Skymu_LanguageManager_ctor_void_003d:
    mov -32(%rbp), %rax
.Lm_Skymu_LanguageManager_ctor_void_003e:
    lea .LS_6_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0043:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0045:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_Scan__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_004a:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_ctor_void_005b
.Lm_Skymu_LanguageManager_ctor_void_004c:
    lea .LS_7_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    mov $60, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0051:
    lea .LN_8_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Exception_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0056:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_LanguageManager_ctor_void_005b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_005c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_005d:
    mov -48(%rbp), %rdi
    lea .LN_9_m_Skymu_LanguageManager_ctor_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0062:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0063:
    lea -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0065:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_006a:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_ctor_void_0073
.Lm_Skymu_LanguageManager_ctor_void_006c:
    lea .LN_10_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0071:
    jmp .Lm_Skymu_LanguageManager_ctor_void_0074
.Lm_Skymu_LanguageManager_ctor_void_0073:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0074:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_Load__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0079:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_ctor_void_0095
.Lm_Skymu_LanguageManager_ctor_void_007b:
    lea .LS_11_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0080:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0081:
    lea .LS_12_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0086:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_008b:
    lea .LN_13_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Exception_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_0090:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_LanguageManager_ctor_void_0095:
    lea .LN_14_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_009a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_009b:
    lea m_Skymu_LanguageManager_Settings_PropertyChanged__ref_ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_00a1:
    lea .LN_15_m_Skymu_LanguageManager_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventHandler_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_LanguageManager_ctor_void_00a6:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref
.Lm_Skymu_LanguageManager_ctor_void_00ab:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_ctor__void, .-m_Skymu_LanguageManager_ctor__void

.globl m_Skymu_LanguageManager_Settings_PropertyChanged__ref_ref
.type m_Skymu_LanguageManager_Settings_PropertyChanged__ref_ref, @function
m_Skymu_LanguageManager_Settings_PropertyChanged__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventArgs_get_PropertyName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_0006:
    lea .LS_0_m_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_0010:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_0018
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_0013:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_LoadFromSettings__void
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_Settings_PropertyChanged__ref_ref, .-m_Skymu_LanguageManager_Settings_PropertyChanged__ref_ref

.globl m_Skymu_LanguageManager_LoadFromSettings__void
.type m_Skymu_LanguageManager_LoadFromSettings__void, @function
m_Skymu_LanguageManager_LoadFromSettings__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0000:
    call m_Skymu_Preferences_Settings_get_Language__void
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0005:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_LoadFromSettings_void_000e
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0008:
    mov -32(%rbp), %rax
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0009:
    lea .LS_0_m_Skymu_LanguageManager_LoadFromSettings_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_000e:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_000f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0010:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_LanguageManager_LoadFromSettings_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0015:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0016:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0018:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_001d:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_LanguageManager_LoadFromSettings_void_0027
.Lm_Skymu_LanguageManager_LoadFromSettings_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0020:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0021:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_Load__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0026:
    mov -40(%rbp), %rax
.Lm_Skymu_LanguageManager_LoadFromSettings_void_0027:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_LoadFromSettings_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_LoadFromSettings__void, .-m_Skymu_LanguageManager_LoadFromSettings__void

.globl m_Skymu_LanguageManager_Load__ref
.type m_Skymu_LanguageManager_Load__ref, @function
m_Skymu_LanguageManager_Load__ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0001:
    mov -72(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0006:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Load_ref_0010
.Lm_Skymu_LanguageManager_Load_ref_0008:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0009:
    mov -72(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_000e:
    mov -72(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Load_ref_0012
.Lm_Skymu_LanguageManager_Load_ref_0010:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0011:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_Load_ref_0012:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0013:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0014:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rdi
    lea .LN_0_m_Skymu_LanguageManager_Load_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_LanguageManager_Load_ref_0019:
    mov -16(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_001a:
    mov -72(%rbp), %rdi
    lea .LN_1_m_Skymu_LanguageManager_Load_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_001f:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Clear__void
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0024:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0025:
    mov -80(%rbp), %rdi
    lea .LN_2_m_Skymu_LanguageManager_Load_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_002a:
    mov -80(%rbp), %rdi
    call m_System_IO_File_ReadLines__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_002f:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_IEnumerable_1_string_GetEnumerator__void
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0034:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0035:
    jmp .Lm_Skymu_LanguageManager_Load_ref_008c
.Lm_Skymu_LanguageManager_Load_ref_0037:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0038:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_IEnumerator_1_string_get_Current__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_003d:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_003e:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_003f:
    mov -80(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0044:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Load_ref_008c
.Lm_Skymu_LanguageManager_Load_ref_0046:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0047:
    lea .LS_3_m_Skymu_LanguageManager_Load_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_004c:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0051:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Load_ref_008c
.Lm_Skymu_LanguageManager_Load_ref_0053:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0054:
    mov $61, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0056:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_IndexOf__c
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_005b:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_005c:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_005d:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_005e:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_LanguageManager_Load_ref_008c
.Lm_Skymu_LanguageManager_Load_ref_0060:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0061:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0062:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0063:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4_i4
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0068:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Trim__void
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_006d:
    mov -80(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_006e:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_006f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0070:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0071:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0072:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0077:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Trim__void
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_007c:
    mov -80(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_007e:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_007f:
    mov -80(%rbp), %rdi
    lea .LN_4_m_Skymu_LanguageManager_Load_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0084:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0085:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0087:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_set_Item__gen_gen
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_008c:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_008d:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_0092:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Load_ref_0037
.Lm_Skymu_LanguageManager_Load_ref_0094:
    jmp .Lm_Skymu_LanguageManager_Load_ref_00a0
.Lm_Skymu_LanguageManager_Load_ref_00a0:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_00a1:
    mov -80(%rbp), %rdi
    lea .LN_5_m_Skymu_LanguageManager_Load_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_00a6:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_00a7:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Load_ref_00ac
.Lm_Skymu_LanguageManager_Load_ref_00a9:
    mov -72(%rbp), %rax
.Lm_Skymu_LanguageManager_Load_ref_00aa:
    jmp .Lm_Skymu_LanguageManager_Load_ref_00b8
.Lm_Skymu_LanguageManager_Load_ref_00ac:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_00ad:
    xor %eax, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_00ae:
    lea .LN_6_m_Skymu_LanguageManager_Load_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventArgs_ctor__ref
    mov %r12, -88(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_00b3:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventHandler_Invoke__ref_ref
.Lm_Skymu_LanguageManager_Load_ref_00b8:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Load_ref_00b9:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_Load_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_Load__ref, .-m_Skymu_LanguageManager_Load__ref

.globl m_Skymu_LanguageManager_Scan__void
.type m_Skymu_LanguageManager_Scan__void, @function
m_Skymu_LanguageManager_Scan__void:
    push %rbp
    mov %rsp, %rbp
    sub $144, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0000:
    call m_System_AppDomain_get_CurrentDomain__void
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0005:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_AppDomain_get_BaseDirectory__void
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_000a:
    lea .LS_0_m_Skymu_LanguageManager_Scan_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_000f:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0014:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0015:
    mov -24(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0016:
    mov -88(%rbp), %rdi
    call m_System_IO_Directory_Exists__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_001b:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Scan_void_001f
.Lm_Skymu_LanguageManager_Scan_void_001d:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_001e:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_Scan_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0020:
    mov -88(%rbp), %rdi
    lea .LN_1_m_Skymu_LanguageManager_Scan_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0025:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Clear__void
    mov %rax, -88(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_002a:
    mov -24(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_002b:
    lea .LS_2_m_Skymu_LanguageManager_Scan_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -104(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0030:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_IO_Directory_GetFiles__ref_ref
    mov %rax, -96(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0035:
    mov -96(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0036:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0037:
    mov -96(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0038:
    jmp .Lm_Skymu_LanguageManager_Scan_void_00e5
.Lm_Skymu_LanguageManager_Scan_void_003d:
    mov -32(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_003e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_003f:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0040:
    mov -112(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0041:
    xor %eax, %eax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0042:
    mov -112(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0044:
    mov -48(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0045:
    mov -112(%rbp), %rdi
    call m_System_IO_File_ReadLines__ref
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_004a:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_IEnumerable_1_string_GetEnumerator__void
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_004f:
    mov -112(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0051:
    jmp .Lm_Skymu_LanguageManager_Scan_void_00b3
.Lm_Skymu_LanguageManager_Scan_void_0053:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0055:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_Generic_IEnumerator_1_string_get_Current__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_005a:
    mov -112(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_005c:
    mov -72(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_005e:
    mov -112(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0063:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Scan_void_00b3
.Lm_Skymu_LanguageManager_Scan_void_0065:
    mov -72(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0067:
    lea .LS_3_m_Skymu_LanguageManager_Scan_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_006c:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0071:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Scan_void_00b3
.Lm_Skymu_LanguageManager_Scan_void_0073:
    mov -72(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0075:
    mov $61, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0077:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_IndexOf__c
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_007c:
    mov -112(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_007e:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0080:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0081:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    cmp %ecx, %eax
    jle .Lm_Skymu_LanguageManager_Scan_void_00b3
.Lm_Skymu_LanguageManager_Scan_void_0083:
    mov -72(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0085:
    mov $0, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0086:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0088:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4_i4
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_008d:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Trim__void
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0092:
    lea .LS_4_m_Skymu_LanguageManager_Scan_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0097:
    mov $5, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_0098:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Equals__ref_v
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_009d:
    mov -112(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_LanguageManager_Scan_void_00b3
.Lm_Skymu_LanguageManager_Scan_void_009f:
    mov -72(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00a1:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00a3:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00a4:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00a5:
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00aa:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Trim__void
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00af:
    mov -112(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00b1:
    jmp .Lm_Skymu_LanguageManager_Scan_void_00ca
.Lm_Skymu_LanguageManager_Scan_void_00b3:
    mov -64(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00b5:
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00ba:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Scan_void_0053
.Lm_Skymu_LanguageManager_Scan_void_00bc:
    jmp .Lm_Skymu_LanguageManager_Scan_void_00ca
.Lm_Skymu_LanguageManager_Scan_void_00ca:
    mov -56(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00cc:
    mov -112(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00d1:
    mov -112(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Scan_void_00e1
.Lm_Skymu_LanguageManager_Scan_void_00d3:
    mov -16(%rbp), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00d4:
    mov -112(%rbp), %rdi
    lea .LN_5_m_Skymu_LanguageManager_Scan_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00d9:
    mov -56(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00db:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00dc:
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov -112(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_set_Item__gen_gen
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e1:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e2:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e3:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e4:
    mov -120(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e5:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e6:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e7:
    mov -104(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e8:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00e9:
    mov -120(%rbp), %rcx
    mov -112(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_LanguageManager_Scan_void_003d
.Lm_Skymu_LanguageManager_Scan_void_00ee:
    mov $1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_LanguageManager_Scan_void_00ef:
    mov -112(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_Scan_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_Scan__void, .-m_Skymu_LanguageManager_Scan__void

.globl m_Skymu_LanguageManager_Format__ref_arr
.type m_Skymu_LanguageManager_Format__ref_arr, @function
m_Skymu_LanguageManager_Format__ref_arr:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0000:
    lea .LN_0_m_Skymu_LanguageManager_Format_ref_arr(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_LanguageManager_c_DisplayClass15_0_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0005:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0007:
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_LanguageManager_Format_ref_arr(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_000c:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_000d:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_000f:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0014:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_LanguageManager_Format_ref_arr_0018
.Lm_Skymu_LanguageManager_Format_ref_arr_0016:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0017:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_Format_ref_arr_0018:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0019:
    lea .LS_2_m_Skymu_LanguageManager_Format_ref_arr(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_001e:
    lea .LS_3_m_Skymu_LanguageManager_Format_ref_arr(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0023:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0028:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0029:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_002a:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_002b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_LanguageManager_Format_ref_arr(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_LanguageManager_Format_ref_arr_0030:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0031:
    lea .LS_5_m_Skymu_LanguageManager_Format_ref_arr(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0036:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0037:
    lea m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0__ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_003d:
    lea .LN_6_m_Skymu_LanguageManager_Format_ref_arr(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Text_RegularExpressions_MatchEvaluator_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0042:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Text_RegularExpressions_Regex_Replace__ref_ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0047:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0048:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_0049:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_004a:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Format__ref_arr
    mov %rax, -56(%rbp)
.Lm_Skymu_LanguageManager_Format_ref_arr_004f:
    mov -56(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_LanguageManager_Format_ref_arr_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_LanguageManager_Format__ref_arr, .-m_Skymu_LanguageManager_Format__ref_arr

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LS_0_m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref:
    .short 123

.LN_1_m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref:
    .asciz "index"

.LN_2_m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref:
    .asciz "index"

.LS_3_m_Skymu_LanguageManager_c_DisplayClass15_0_Format_b_0_ref:
    .short 125

.LN_0_m_Skymu_LanguageManager_get_Languages_void:
    .asciz "llist"

.LN_0_m_Skymu_LanguageManager_get_Item_ref:
    .asciz "ldict"

.LS_1_m_Skymu_LanguageManager_get_Item_ref:
    .short 83, 107, 121, 112, 101

.LS_2_m_Skymu_LanguageManager_get_Item_ref:
    .short 115, 107, 121, 112, 101, 58

.LS_3_m_Skymu_LanguageManager_get_Item_ref:
    .short 83, 107, 121, 109, 117

.LS_4_m_Skymu_LanguageManager_get_Item_ref:
    .short 58

.LN_0_m_Skymu_LanguageManager_add_PropertyChanged_ref:
    .asciz "PropertyChanged"

.LN_1_m_Skymu_LanguageManager_add_PropertyChanged_ref:
    .asciz "PropertyChanged"

.LN_0_m_Skymu_LanguageManager_remove_PropertyChanged_ref:
    .asciz "PropertyChanged"

.LN_1_m_Skymu_LanguageManager_remove_PropertyChanged_ref:
    .asciz "PropertyChanged"

.LN_0_m_Skymu_LanguageManager_ctor_void:
    .asciz "string>"

.LN_1_m_Skymu_LanguageManager_ctor_void:
    .asciz "ldict"

.LN_2_m_Skymu_LanguageManager_ctor_void:
    .asciz "string>"

.LN_3_m_Skymu_LanguageManager_ctor_void:
    .asciz "llist"

.LN_4_m_Skymu_LanguageManager_ctor_void:
    .asciz "LocalizeDesigner"

.LN_5_m_Skymu_LanguageManager_ctor_void:
    .asciz "System.Windows.DependencyObject"

.LS_6_m_Skymu_LanguageManager_ctor_void:
    .short 69, 110, 103, 108, 105, 115, 104

.LS_7_m_Skymu_LanguageManager_ctor_void:
    .short 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 102, 105, 110, 100, 32, 97, 110, 121, 32, 99, 111, 109, 112, 97, 116, 105, 98, 108, 101, 32, 102, 105, 108, 101, 115, 32, 105, 110, 32, 100, 105, 114, 101, 99, 116, 111, 114, 121, 32, 47, 108, 97, 110, 103, 117, 97, 103, 101, 115, 46

.LN_8_m_Skymu_LanguageManager_ctor_void:
    .asciz "System.Exception"

.LN_9_m_Skymu_LanguageManager_ctor_void:
    .asciz "llist"

.LN_10_m_Skymu_LanguageManager_ctor_void:
    .asciz "Empty"

.LS_11_m_Skymu_LanguageManager_ctor_void:
    .short 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 108, 111, 97, 100, 32, 108, 97, 110, 103, 117, 97, 103, 101, 32, 34

.LS_12_m_Skymu_LanguageManager_ctor_void:
    .short 34, 46

.LN_13_m_Skymu_LanguageManager_ctor_void:
    .asciz "System.Exception"

.LN_14_m_Skymu_LanguageManager_ctor_void:
    .asciz "Default"

.LN_15_m_Skymu_LanguageManager_ctor_void:
    .asciz "System.ComponentModel.PropertyChangedEventHandler"

.LS_0_m_Skymu_LanguageManager_Settings_PropertyChanged_ref_ref:
    .short 76, 97, 110, 103, 117, 97, 103, 101

.LS_0_m_Skymu_LanguageManager_LoadFromSettings_void:
    .short 69, 110, 103, 108, 105, 115, 104

.LN_1_m_Skymu_LanguageManager_LoadFromSettings_void:
    .asciz "llist"

.LN_0_m_Skymu_LanguageManager_Load_ref:
    .asciz "currentPath"

.LN_1_m_Skymu_LanguageManager_Load_ref:
    .asciz "ldict"

.LN_2_m_Skymu_LanguageManager_Load_ref:
    .asciz "currentPath"

.LS_3_m_Skymu_LanguageManager_Load_ref:
    .short 35

.LN_4_m_Skymu_LanguageManager_Load_ref:
    .asciz "ldict"

.LN_5_m_Skymu_LanguageManager_Load_ref:
    .asciz "PropertyChanged"

.LN_6_m_Skymu_LanguageManager_Load_ref:
    .asciz "System.ComponentModel.PropertyChangedEventArgs"

.LS_0_m_Skymu_LanguageManager_Scan_void:
    .short 108, 97, 110, 103, 117, 97, 103, 101, 115

.LN_1_m_Skymu_LanguageManager_Scan_void:
    .asciz "llist"

.LS_2_m_Skymu_LanguageManager_Scan_void:
    .short 42, 46, 108, 97, 110, 103

.LS_3_m_Skymu_LanguageManager_Scan_void:
    .short 35

.LS_4_m_Skymu_LanguageManager_Scan_void:
    .short 115, 95, 76, 65, 78, 71, 85, 65, 71, 69, 95, 78, 65, 77, 69

.LN_5_m_Skymu_LanguageManager_Scan_void:
    .asciz "llist"

.LN_0_m_Skymu_LanguageManager_Format_ref_arr:
    .asciz "Skymu.LanguageManager/'<>c__DisplayClass15_0'"

.LN_1_m_Skymu_LanguageManager_Format_ref_arr:
    .asciz "ldict"

.LS_2_m_Skymu_LanguageManager_Format_ref_arr:
    .short 37, 37

.LS_3_m_Skymu_LanguageManager_Format_ref_arr:
    .short 37

.LN_4_m_Skymu_LanguageManager_Format_ref_arr:
    .asciz "index"

.LS_5_m_Skymu_LanguageManager_Format_ref_arr:
    .short 37, 91, 100, 115, 102, 93

.LN_6_m_Skymu_LanguageManager_Format_ref_arr:
    .asciz "System.Text.RegularExpressions.MatchEvaluator"

    .section .note.GNU-stack,"",@progbits
