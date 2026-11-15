# Classes/SettingsManager.cs
    .text

.globl m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref
.type m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref, @function
m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0010:
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_ObjectModel_System_ComponentModel_PropertyChangedEventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0007
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref, .-m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref

.globl m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged__ref
.type m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged__ref, @function
m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0006:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0007:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0008:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_000a:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_000b:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0010:
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0015:
    mov -64(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0017:
    mov -64(%rbp), %rdi
    lea .LN_1_m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref(%rip), %rsi
    call shim_field_slot
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_001c:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_001e:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_ObjectModel_System_ComponentModel_PropertyChangedEventHandler__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0023:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0024:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0025:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0026:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0007
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_0028:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged__ref, .-m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged__ref

.globl m_Skymu_Preferences_Settings_SettingsProxy_Notify__ref
.type m_Skymu_Preferences_Settings_SettingsProxy_Notify__ref, @function
m_Skymu_Preferences_Settings_SettingsProxy_Notify__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Preferences_Settings_SettingsProxy_Notify_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_0007:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_000b
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_0009:
    mov -24(%rbp), %rax
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_000c:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_000d:
    lea .LN_1_m_Skymu_Preferences_Settings_SettingsProxy_Notify_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventArgs_ctor__ref
    mov %r12, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_0012:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventHandler_Invoke__ref_ref
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_Notify_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SettingsProxy_Notify__ref, .-m_Skymu_Preferences_Settings_SettingsProxy_Notify__ref

.globl m_Skymu_Preferences_Settings_SettingsProxy_get_Item__ref
.type m_Skymu_Preferences_Settings_SettingsProxy_get_Item__ref, @function
m_Skymu_Preferences_Settings_SettingsProxy_get_Item__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0000:
    lea .LN_0_m_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0005:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0006:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Reflection_PropertyInfo_TryGetValue__gen_gen
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_000d:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0011
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_000f:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0010:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0011:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0012:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0013:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Reflection_PropertyInfo_GetValue__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_0018:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SettingsProxy_get_Item__ref, .-m_Skymu_Preferences_Settings_SettingsProxy_get_Item__ref

.globl m_Skymu_Preferences_Settings_SettingsProxy_set_Item__ref_ref
.type m_Skymu_Preferences_Settings_SettingsProxy_set_Item__ref_ref, @function
m_Skymu_Preferences_Settings_SettingsProxy_set_Item__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0000:
    lea .LN_0_m_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0005:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0006:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0008:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Reflection_PropertyInfo_TryGetValue__gen_gen
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_000d:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0010
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_000f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0010:
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0011:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0012:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0013:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Reflection_PropertyInfo_get_PropertyType__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0018:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Convert_ChangeType__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_001d:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_001f:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0020:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0021:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Reflection_PropertyInfo_SetValue__ref_ref
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0027:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0028:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Preferences_Settings_SettingsProxy_Notify__ref
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_002d:
    jmp .Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0032
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SettingsProxy_set_Item__ref_ref, .-m_Skymu_Preferences_Settings_SettingsProxy_set_Item__ref_ref

.globl m_Skymu_Preferences_Settings_SettingsProxy_ctor__void
.type m_Skymu_Preferences_Settings_SettingsProxy_ctor__void, @function
m_Skymu_Preferences_Settings_SettingsProxy_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_SettingsProxy_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Preferences_Settings_SettingsProxy_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SettingsProxy_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SettingsProxy_ctor__void, .-m_Skymu_Preferences_Settings_SettingsProxy_ctor__void

.globl m_Skymu_Preferences_Settings_get_InputName__void
.type m_Skymu_Preferences_Settings_get_InputName__void, @function
m_Skymu_Preferences_Settings_get_InputName__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_InputName_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_InputName_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_InputName_void_0005:
    lea .LN_1_m_Skymu_Preferences_Settings_get_InputName_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_InputName_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_InputName_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_InputName_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_InputName_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_InputName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_InputName__void, .-m_Skymu_Preferences_Settings_get_InputName__void

.globl m_Skymu_Preferences_Settings_set_InputName__ref
.type m_Skymu_Preferences_Settings_set_InputName__ref, @function
m_Skymu_Preferences_Settings_set_InputName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_InputName_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_InputName_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_InputName_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_InputName_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_InputName_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_InputName_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_InputName_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_InputName_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_InputName_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_InputName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_InputName__ref, .-m_Skymu_Preferences_Settings_set_InputName__ref

.globl m_Skymu_Preferences_Settings_get_OutputName__void
.type m_Skymu_Preferences_Settings_get_OutputName__void, @function
m_Skymu_Preferences_Settings_get_OutputName__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_OutputName_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_OutputName_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_OutputName_void_0005:
    lea .LN_1_m_Skymu_Preferences_Settings_get_OutputName_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_OutputName_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_OutputName_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_OutputName_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_OutputName_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_OutputName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_OutputName__void, .-m_Skymu_Preferences_Settings_get_OutputName__void

.globl m_Skymu_Preferences_Settings_set_OutputName__ref
.type m_Skymu_Preferences_Settings_set_OutputName__ref, @function
m_Skymu_Preferences_Settings_set_OutputName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_OutputName_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_OutputName_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_OutputName_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_OutputName_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_OutputName_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_OutputName_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_OutputName_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_OutputName_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_OutputName_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_OutputName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_OutputName__ref, .-m_Skymu_Preferences_Settings_set_OutputName__ref

.globl m_Skymu_Preferences_Settings_get_RingingName__void
.type m_Skymu_Preferences_Settings_get_RingingName__void, @function
m_Skymu_Preferences_Settings_get_RingingName__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_RingingName_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_RingingName_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_RingingName_void_0005:
    lea .LN_1_m_Skymu_Preferences_Settings_get_RingingName_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_RingingName_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_RingingName_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_RingingName_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_RingingName_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_RingingName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_RingingName__void, .-m_Skymu_Preferences_Settings_get_RingingName__void

.globl m_Skymu_Preferences_Settings_set_RingingName__ref
.type m_Skymu_Preferences_Settings_set_RingingName__ref, @function
m_Skymu_Preferences_Settings_set_RingingName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_RingingName_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_RingingName_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_RingingName_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_RingingName_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_RingingName_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_RingingName_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_RingingName_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_RingingName_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_RingingName_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_RingingName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_RingingName__ref, .-m_Skymu_Preferences_Settings_set_RingingName__ref

.globl m_Skymu_Preferences_Settings_get_CheckUpdates__void
.type m_Skymu_Preferences_Settings_get_CheckUpdates__void, @function
m_Skymu_Preferences_Settings_get_CheckUpdates__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckUpdates_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_CheckUpdates_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckUpdates_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckUpdates_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_CheckUpdates_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckUpdates_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckUpdates_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_CheckUpdates_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_CheckUpdates__void, .-m_Skymu_Preferences_Settings_get_CheckUpdates__void

.globl m_Skymu_Preferences_Settings_set_CheckUpdates__v
.type m_Skymu_Preferences_Settings_set_CheckUpdates__v, @function
m_Skymu_Preferences_Settings_set_CheckUpdates__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckUpdates_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_CheckUpdates_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckUpdates_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckUpdates_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_CheckUpdates_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckUpdates_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_CheckUpdates_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckUpdates_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_CheckUpdates_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_CheckUpdates_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_CheckUpdates__v, .-m_Skymu_Preferences_Settings_set_CheckUpdates__v

.globl m_Skymu_Preferences_Settings_get_Language__void
.type m_Skymu_Preferences_Settings_get_Language__void, @function
m_Skymu_Preferences_Settings_get_Language__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Language_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Language_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Language_void_0005:
    lea .LS_1_m_Skymu_Preferences_Settings_get_Language_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Language_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_Language_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Language_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Language_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Language_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Language__void, .-m_Skymu_Preferences_Settings_get_Language__void

.globl m_Skymu_Preferences_Settings_set_Language__ref
.type m_Skymu_Preferences_Settings_set_Language__ref, @function
m_Skymu_Preferences_Settings_set_Language__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Language_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Language_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Language_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Language_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Language_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Language_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Language_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Language_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Language_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Language_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Language__ref, .-m_Skymu_Preferences_Settings_set_Language__ref

.globl m_Skymu_Preferences_Settings_get_UseSystemCulture__void
.type m_Skymu_Preferences_Settings_get_UseSystemCulture__void, @function
m_Skymu_Preferences_Settings_get_UseSystemCulture__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseSystemCulture_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_UseSystemCulture_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseSystemCulture_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseSystemCulture_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_UseSystemCulture_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseSystemCulture_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseSystemCulture_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_UseSystemCulture_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_UseSystemCulture__void, .-m_Skymu_Preferences_Settings_get_UseSystemCulture__void

.globl m_Skymu_Preferences_Settings_set_UseSystemCulture__v
.type m_Skymu_Preferences_Settings_set_UseSystemCulture__v, @function
m_Skymu_Preferences_Settings_set_UseSystemCulture__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseSystemCulture_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_UseSystemCulture_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseSystemCulture_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseSystemCulture_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_UseSystemCulture_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseSystemCulture_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_UseSystemCulture_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseSystemCulture_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_UseSystemCulture_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_UseSystemCulture_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_UseSystemCulture__v, .-m_Skymu_Preferences_Settings_set_UseSystemCulture__v

.globl m_Skymu_Preferences_Settings_get_EnableNotifications__void
.type m_Skymu_Preferences_Settings_get_EnableNotifications__void, @function
m_Skymu_Preferences_Settings_get_EnableNotifications__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableNotifications_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_EnableNotifications_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableNotifications_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableNotifications_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_EnableNotifications_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableNotifications_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableNotifications_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_EnableNotifications_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_EnableNotifications__void, .-m_Skymu_Preferences_Settings_get_EnableNotifications__void

.globl m_Skymu_Preferences_Settings_set_EnableNotifications__v
.type m_Skymu_Preferences_Settings_set_EnableNotifications__v, @function
m_Skymu_Preferences_Settings_set_EnableNotifications__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableNotifications_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_EnableNotifications_v(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableNotifications_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableNotifications_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_EnableNotifications_v(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableNotifications_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_EnableNotifications_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableNotifications_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_EnableNotifications_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_EnableNotifications_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_EnableNotifications__v, .-m_Skymu_Preferences_Settings_set_EnableNotifications__v

.globl m_Skymu_Preferences_Settings_get_QuitWithoutAsking__void
.type m_Skymu_Preferences_Settings_get_QuitWithoutAsking__void, @function
m_Skymu_Preferences_Settings_get_QuitWithoutAsking__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_QuitWithoutAsking_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_QuitWithoutAsking_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_QuitWithoutAsking_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_QuitWithoutAsking_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_QuitWithoutAsking_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_QuitWithoutAsking_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_QuitWithoutAsking_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_QuitWithoutAsking_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_QuitWithoutAsking__void, .-m_Skymu_Preferences_Settings_get_QuitWithoutAsking__void

.globl m_Skymu_Preferences_Settings_set_QuitWithoutAsking__v
.type m_Skymu_Preferences_Settings_set_QuitWithoutAsking__v, @function
m_Skymu_Preferences_Settings_set_QuitWithoutAsking__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_QuitWithoutAsking_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_QuitWithoutAsking_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_QuitWithoutAsking_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_QuitWithoutAsking_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_QuitWithoutAsking_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_QuitWithoutAsking_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_QuitWithoutAsking_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_QuitWithoutAsking_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_QuitWithoutAsking_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_QuitWithoutAsking_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_QuitWithoutAsking__v, .-m_Skymu_Preferences_Settings_set_QuitWithoutAsking__v

.globl m_Skymu_Preferences_Settings_get_InformDND__void
.type m_Skymu_Preferences_Settings_get_InformDND__void, @function
m_Skymu_Preferences_Settings_get_InformDND__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_InformDND_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_InformDND_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_InformDND_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_InformDND_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_InformDND_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_InformDND_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_InformDND_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_InformDND_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_InformDND__void, .-m_Skymu_Preferences_Settings_get_InformDND__void

.globl m_Skymu_Preferences_Settings_set_InformDND__v
.type m_Skymu_Preferences_Settings_set_InformDND__v, @function
m_Skymu_Preferences_Settings_set_InformDND__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_InformDND_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_InformDND_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_InformDND_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_InformDND_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_InformDND_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_InformDND_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_InformDND_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_InformDND_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_InformDND_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_InformDND_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_InformDND__v, .-m_Skymu_Preferences_Settings_set_InformDND__v

.globl m_Skymu_Preferences_Settings_get_InboxNoticeShown__void
.type m_Skymu_Preferences_Settings_get_InboxNoticeShown__void, @function
m_Skymu_Preferences_Settings_get_InboxNoticeShown__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_InboxNoticeShown_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_InboxNoticeShown_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_InboxNoticeShown_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_InboxNoticeShown_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_InboxNoticeShown_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_InboxNoticeShown_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_InboxNoticeShown_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_InboxNoticeShown_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_InboxNoticeShown__void, .-m_Skymu_Preferences_Settings_get_InboxNoticeShown__void

.globl m_Skymu_Preferences_Settings_set_InboxNoticeShown__v
.type m_Skymu_Preferences_Settings_set_InboxNoticeShown__v, @function
m_Skymu_Preferences_Settings_set_InboxNoticeShown__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_InboxNoticeShown_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_InboxNoticeShown_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_InboxNoticeShown_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_InboxNoticeShown_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_InboxNoticeShown_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_InboxNoticeShown_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_InboxNoticeShown_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_InboxNoticeShown_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_InboxNoticeShown_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_InboxNoticeShown_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_InboxNoticeShown__v, .-m_Skymu_Preferences_Settings_set_InboxNoticeShown__v

.globl m_Skymu_Preferences_Settings_get_HideLeftHandSide__void
.type m_Skymu_Preferences_Settings_get_HideLeftHandSide__void, @function
m_Skymu_Preferences_Settings_get_HideLeftHandSide__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_HideLeftHandSide_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_HideLeftHandSide_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_HideLeftHandSide_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_HideLeftHandSide_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_HideLeftHandSide_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_HideLeftHandSide_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_HideLeftHandSide_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_HideLeftHandSide_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_HideLeftHandSide__void, .-m_Skymu_Preferences_Settings_get_HideLeftHandSide__void

.globl m_Skymu_Preferences_Settings_set_HideLeftHandSide__v
.type m_Skymu_Preferences_Settings_set_HideLeftHandSide__v, @function
m_Skymu_Preferences_Settings_set_HideLeftHandSide__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_HideLeftHandSide_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_HideLeftHandSide_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_HideLeftHandSide_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_HideLeftHandSide_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_HideLeftHandSide_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_HideLeftHandSide_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_HideLeftHandSide_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_HideLeftHandSide_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_HideLeftHandSide_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_HideLeftHandSide_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_HideLeftHandSide__v, .-m_Skymu_Preferences_Settings_set_HideLeftHandSide__v

.globl m_Skymu_Preferences_Settings_get_Watermark__void
.type m_Skymu_Preferences_Settings_get_Watermark__void, @function
m_Skymu_Preferences_Settings_get_Watermark__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Watermark_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Watermark_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Watermark_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Watermark_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_Watermark_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Watermark_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Watermark_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Watermark_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Watermark__void, .-m_Skymu_Preferences_Settings_get_Watermark__void

.globl m_Skymu_Preferences_Settings_set_Watermark__v
.type m_Skymu_Preferences_Settings_set_Watermark__v, @function
m_Skymu_Preferences_Settings_set_Watermark__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Watermark_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Watermark_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Watermark_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Watermark_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Watermark_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Watermark_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Watermark_v(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Watermark_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Watermark_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Watermark_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Watermark__v, .-m_Skymu_Preferences_Settings_set_Watermark__v

.globl m_Skymu_Preferences_Settings_get_AutoLogin__void
.type m_Skymu_Preferences_Settings_get_AutoLogin__void, @function
m_Skymu_Preferences_Settings_get_AutoLogin__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_AutoLogin_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_AutoLogin_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AutoLogin_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_AutoLogin_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_AutoLogin_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_AutoLogin_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AutoLogin_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_AutoLogin_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_AutoLogin__void, .-m_Skymu_Preferences_Settings_get_AutoLogin__void

.globl m_Skymu_Preferences_Settings_set_AutoLogin__v
.type m_Skymu_Preferences_Settings_set_AutoLogin__v, @function
m_Skymu_Preferences_Settings_set_AutoLogin__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_AutoLogin_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_AutoLogin_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_AutoLogin_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_AutoLogin_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_AutoLogin_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_AutoLogin_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_AutoLogin_v(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_AutoLogin_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_AutoLogin_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_AutoLogin_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_AutoLogin__v, .-m_Skymu_Preferences_Settings_set_AutoLogin__v

.globl m_Skymu_Preferences_Settings_get_SaveCredentials__void
.type m_Skymu_Preferences_Settings_get_SaveCredentials__void, @function
m_Skymu_Preferences_Settings_get_SaveCredentials__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveCredentials_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_SaveCredentials_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveCredentials_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveCredentials_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_SaveCredentials_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveCredentials_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveCredentials_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_SaveCredentials_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_SaveCredentials__void, .-m_Skymu_Preferences_Settings_get_SaveCredentials__void

.globl m_Skymu_Preferences_Settings_set_SaveCredentials__v
.type m_Skymu_Preferences_Settings_set_SaveCredentials__v, @function
m_Skymu_Preferences_Settings_set_SaveCredentials__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveCredentials_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_SaveCredentials_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveCredentials_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveCredentials_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_SaveCredentials_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveCredentials_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_SaveCredentials_v(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveCredentials_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_SaveCredentials_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_SaveCredentials_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_SaveCredentials__v, .-m_Skymu_Preferences_Settings_set_SaveCredentials__v

.globl m_Skymu_Preferences_Settings_get_ConvListWidth__void
.type m_Skymu_Preferences_Settings_get_ConvListWidth__void, @function
m_Skymu_Preferences_Settings_get_ConvListWidth__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_ConvListWidth_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_ConvListWidth_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_ConvListWidth_void_0005:
    movsd .LD_1_m_Skymu_Preferences_Settings_get_ConvListWidth_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_ConvListWidth_void_000e:
    lea .LS_2_m_Skymu_Preferences_Settings_get_ConvListWidth_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_ConvListWidth_void_0013:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_f8_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_ConvListWidth_void_0018:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_ConvListWidth_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_ConvListWidth__void, .-m_Skymu_Preferences_Settings_get_ConvListWidth__void

.globl m_Skymu_Preferences_Settings_set_ConvListWidth__f8
.type m_Skymu_Preferences_Settings_set_ConvListWidth__f8, @function
m_Skymu_Preferences_Settings_set_ConvListWidth__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_ConvListWidth_f8_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_ConvListWidth_f8(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_ConvListWidth_f8_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_ConvListWidth_f8_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_ConvListWidth_f8(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_ConvListWidth_f8_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_ConvListWidth_f8(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_ConvListWidth_f8_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_float64__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_ConvListWidth_f8_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_ConvListWidth_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_ConvListWidth__f8, .-m_Skymu_Preferences_Settings_set_ConvListWidth__f8

.globl m_Skymu_Preferences_Settings_get_SaveWindowPosition__void
.type m_Skymu_Preferences_Settings_get_SaveWindowPosition__void, @function
m_Skymu_Preferences_Settings_get_SaveWindowPosition__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveWindowPosition_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_SaveWindowPosition_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveWindowPosition_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveWindowPosition_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_SaveWindowPosition_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveWindowPosition_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SaveWindowPosition_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_SaveWindowPosition_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_SaveWindowPosition__void, .-m_Skymu_Preferences_Settings_get_SaveWindowPosition__void

.globl m_Skymu_Preferences_Settings_set_SaveWindowPosition__v
.type m_Skymu_Preferences_Settings_set_SaveWindowPosition__v, @function
m_Skymu_Preferences_Settings_set_SaveWindowPosition__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveWindowPosition_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_SaveWindowPosition_v(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveWindowPosition_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveWindowPosition_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_SaveWindowPosition_v(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveWindowPosition_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_SaveWindowPosition_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_SaveWindowPosition_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_SaveWindowPosition_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_SaveWindowPosition_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_SaveWindowPosition__v, .-m_Skymu_Preferences_Settings_set_SaveWindowPosition__v

.globl m_Skymu_Preferences_Settings_get_Height__void
.type m_Skymu_Preferences_Settings_get_Height__void, @function
m_Skymu_Preferences_Settings_get_Height__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Height_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Height_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Height_void_0005:
    movsd .LD_1_m_Skymu_Preferences_Settings_get_Height_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Height_void_000e:
    lea .LS_2_m_Skymu_Preferences_Settings_get_Height_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Height_void_0013:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_f8_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Height_void_0018:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Height_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Height__void, .-m_Skymu_Preferences_Settings_get_Height__void

.globl m_Skymu_Preferences_Settings_set_Height__f8
.type m_Skymu_Preferences_Settings_set_Height__f8, @function
m_Skymu_Preferences_Settings_set_Height__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Height_f8_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Height_f8(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Height_f8_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Height_f8_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Height_f8(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Height_f8_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Height_f8(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Height_f8_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_float64__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Height_f8_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Height_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Height__f8, .-m_Skymu_Preferences_Settings_set_Height__f8

.globl m_Skymu_Preferences_Settings_get_Maximized__void
.type m_Skymu_Preferences_Settings_get_Maximized__void, @function
m_Skymu_Preferences_Settings_get_Maximized__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Maximized_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Maximized_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Maximized_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Maximized_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_Maximized_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Maximized_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Maximized_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Maximized_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Maximized__void, .-m_Skymu_Preferences_Settings_get_Maximized__void

.globl m_Skymu_Preferences_Settings_set_Maximized__v
.type m_Skymu_Preferences_Settings_set_Maximized__v, @function
m_Skymu_Preferences_Settings_set_Maximized__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Maximized_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Maximized_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Maximized_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Maximized_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Maximized_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Maximized_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Maximized_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Maximized_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Maximized_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Maximized_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Maximized__v, .-m_Skymu_Preferences_Settings_set_Maximized__v

.globl m_Skymu_Preferences_Settings_get_Width__void
.type m_Skymu_Preferences_Settings_get_Width__void, @function
m_Skymu_Preferences_Settings_get_Width__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Width_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Width_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Width_void_0005:
    movsd .LD_1_m_Skymu_Preferences_Settings_get_Width_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Width_void_000e:
    lea .LS_2_m_Skymu_Preferences_Settings_get_Width_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Width_void_0013:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_f8_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Width_void_0018:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Width_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Width__void, .-m_Skymu_Preferences_Settings_get_Width__void

.globl m_Skymu_Preferences_Settings_set_Width__f8
.type m_Skymu_Preferences_Settings_set_Width__f8, @function
m_Skymu_Preferences_Settings_set_Width__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Width_f8_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Width_f8(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Width_f8_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Width_f8_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Width_f8(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Width_f8_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Width_f8(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Width_f8_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_float64__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Width_f8_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Width_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Width__f8, .-m_Skymu_Preferences_Settings_set_Width__f8

.globl m_Skymu_Preferences_Settings_get_X__void
.type m_Skymu_Preferences_Settings_get_X__void, @function
m_Skymu_Preferences_Settings_get_X__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_X_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_X_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_X_void_0005:
    movsd .LD_1_m_Skymu_Preferences_Settings_get_X_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_X_void_000e:
    lea .LS_2_m_Skymu_Preferences_Settings_get_X_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_X_void_0013:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_f8_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_X_void_0018:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_X_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_X__void, .-m_Skymu_Preferences_Settings_get_X__void

.globl m_Skymu_Preferences_Settings_set_X__f8
.type m_Skymu_Preferences_Settings_set_X__f8, @function
m_Skymu_Preferences_Settings_set_X__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_X_f8_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_X_f8(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_X_f8_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_X_f8_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_X_f8(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_X_f8_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_X_f8(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_X_f8_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_float64__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_X_f8_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_X_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_X__f8, .-m_Skymu_Preferences_Settings_set_X__f8

.globl m_Skymu_Preferences_Settings_get_Y__void
.type m_Skymu_Preferences_Settings_get_Y__void, @function
m_Skymu_Preferences_Settings_get_Y__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Y_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Y_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Y_void_0005:
    movsd .LD_1_m_Skymu_Preferences_Settings_get_Y_void(%rip), %xmm0
    movq %xmm0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Y_void_000e:
    lea .LS_2_m_Skymu_Preferences_Settings_get_Y_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Y_void_0013:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_f8_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Y_void_0018:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Y_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Y__void, .-m_Skymu_Preferences_Settings_get_Y__void

.globl m_Skymu_Preferences_Settings_set_Y__f8
.type m_Skymu_Preferences_Settings_set_Y__f8, @function
m_Skymu_Preferences_Settings_set_Y__f8:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Y_f8_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Y_f8(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Y_f8_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Y_f8_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Y_f8(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Y_f8_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Y_f8(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Y_f8_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_float64__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Y_f8_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Y_f8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Y__f8, .-m_Skymu_Preferences_Settings_set_Y__f8

.globl m_Skymu_Preferences_Settings_get_WindowChrome__void
.type m_Skymu_Preferences_Settings_get_WindowChrome__void, @function
m_Skymu_Preferences_Settings_get_WindowChrome__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_WindowChrome_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_WindowChrome_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_WindowChrome_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_WindowChrome_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_WindowChrome_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_WindowChrome_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT_valuetype_Skymu_Enumerations_WindowChrome__ref_gen_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_WindowChrome_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_WindowChrome_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_WindowChrome__void, .-m_Skymu_Preferences_Settings_get_WindowChrome__void

.globl m_Skymu_Preferences_Settings_set_WindowChrome__v
.type m_Skymu_Preferences_Settings_set_WindowChrome__v, @function
m_Skymu_Preferences_Settings_set_WindowChrome__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0000:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0001:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0002:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0016
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0004:
    lea .LS_0_m_Skymu_Preferences_Settings_set_WindowChrome_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0009:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_000a:
    lea .LS_1_m_Skymu_Preferences_Settings_set_WindowChrome_v(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_000f:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0014:
    jmp .Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0026
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0016:
    lea .LS_2_m_Skymu_Preferences_Settings_set_WindowChrome_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_001b:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_001c:
    lea .LS_3_m_Skymu_Preferences_Settings_set_WindowChrome_v(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0021:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0026:
    lea .LS_4_m_Skymu_Preferences_Settings_set_WindowChrome_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_002b:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_002c:
    lea .LS_5_m_Skymu_Preferences_Settings_set_WindowChrome_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0031:
    lea .LS_6_m_Skymu_Preferences_Settings_set_WindowChrome_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_0036:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_valuetype_Skymu_Enumerations_WindowChrome__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_003b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_WindowChrome_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_WindowChrome__v, .-m_Skymu_Preferences_Settings_set_WindowChrome__v

.globl m_Skymu_Preferences_Settings_get_NativeMenuBar__void
.type m_Skymu_Preferences_Settings_get_NativeMenuBar__void, @function
m_Skymu_Preferences_Settings_get_NativeMenuBar__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_NativeMenuBar_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_NativeMenuBar_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_NativeMenuBar_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_NativeMenuBar_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_NativeMenuBar_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_NativeMenuBar_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_NativeMenuBar_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_NativeMenuBar_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_NativeMenuBar__void, .-m_Skymu_Preferences_Settings_get_NativeMenuBar__void

.globl m_Skymu_Preferences_Settings_set_NativeMenuBar__v
.type m_Skymu_Preferences_Settings_set_NativeMenuBar__v, @function
m_Skymu_Preferences_Settings_set_NativeMenuBar__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_NativeMenuBar_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_NativeMenuBar_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_NativeMenuBar_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_NativeMenuBar_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_NativeMenuBar_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_NativeMenuBar_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_NativeMenuBar_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_NativeMenuBar_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_NativeMenuBar_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_NativeMenuBar_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_NativeMenuBar__v, .-m_Skymu_Preferences_Settings_set_NativeMenuBar__v

.globl m_Skymu_Preferences_Settings_get_RoomCallUI__void
.type m_Skymu_Preferences_Settings_get_RoomCallUI__void, @function
m_Skymu_Preferences_Settings_get_RoomCallUI__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_RoomCallUI_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_RoomCallUI_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_RoomCallUI_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_RoomCallUI_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_RoomCallUI_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_RoomCallUI_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_RoomCallUI_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_RoomCallUI_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_RoomCallUI__void, .-m_Skymu_Preferences_Settings_get_RoomCallUI__void

.globl m_Skymu_Preferences_Settings_set_RoomCallUI__v
.type m_Skymu_Preferences_Settings_set_RoomCallUI__v, @function
m_Skymu_Preferences_Settings_set_RoomCallUI__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_RoomCallUI_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_RoomCallUI_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_RoomCallUI_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_RoomCallUI_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_RoomCallUI_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_RoomCallUI_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_RoomCallUI_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_RoomCallUI_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_RoomCallUI_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_RoomCallUI_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_RoomCallUI__v, .-m_Skymu_Preferences_Settings_set_RoomCallUI__v

.globl m_Skymu_Preferences_Settings_get_EmojiFps__void
.type m_Skymu_Preferences_Settings_get_EmojiFps__void, @function
m_Skymu_Preferences_Settings_get_EmojiFps__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_EmojiFps_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_EmojiFps_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_EmojiFps_void_0005:
    mov $50, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_EmojiFps_void_0007:
    lea .LS_1_m_Skymu_Preferences_Settings_get_EmojiFps_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_EmojiFps_void_000c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_i4_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_EmojiFps_void_0011:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_EmojiFps_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_EmojiFps__void, .-m_Skymu_Preferences_Settings_get_EmojiFps__void

.globl m_Skymu_Preferences_Settings_set_EmojiFps__i4
.type m_Skymu_Preferences_Settings_set_EmojiFps__i4, @function
m_Skymu_Preferences_Settings_set_EmojiFps__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_EmojiFps_i4_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_EmojiFps_i4(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_EmojiFps_i4_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_EmojiFps_i4_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_EmojiFps_i4(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_EmojiFps_i4_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_EmojiFps_i4(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_EmojiFps_i4_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_int32__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_EmojiFps_i4_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_EmojiFps_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_EmojiFps__i4, .-m_Skymu_Preferences_Settings_set_EmojiFps__i4

.globl m_Skymu_Preferences_Settings_get_Colorway__void
.type m_Skymu_Preferences_Settings_get_Colorway__void, @function
m_Skymu_Preferences_Settings_get_Colorway__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Colorway_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Colorway_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Colorway_void_0005:
    lea .LS_1_m_Skymu_Preferences_Settings_get_Colorway_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Colorway_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_Colorway_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Colorway_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Colorway_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Colorway_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Colorway__void, .-m_Skymu_Preferences_Settings_get_Colorway__void

.globl m_Skymu_Preferences_Settings_set_Colorway__ref
.type m_Skymu_Preferences_Settings_set_Colorway__ref, @function
m_Skymu_Preferences_Settings_set_Colorway__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Colorway_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Colorway_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Colorway_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Colorway_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Colorway_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Colorway_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Colorway_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Colorway_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Colorway_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Colorway_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Colorway__ref, .-m_Skymu_Preferences_Settings_set_Colorway__ref

.globl m_Skymu_Preferences_Settings_get_PresentationFramework__void
.type m_Skymu_Preferences_Settings_get_PresentationFramework__void, @function
m_Skymu_Preferences_Settings_get_PresentationFramework__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_PresentationFramework_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_PresentationFramework_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_PresentationFramework_void_0005:
    lea .LS_1_m_Skymu_Preferences_Settings_get_PresentationFramework_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_PresentationFramework_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_PresentationFramework_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_PresentationFramework_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_PresentationFramework_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_PresentationFramework_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_PresentationFramework__void, .-m_Skymu_Preferences_Settings_get_PresentationFramework__void

.globl m_Skymu_Preferences_Settings_set_PresentationFramework__ref
.type m_Skymu_Preferences_Settings_set_PresentationFramework__ref, @function
m_Skymu_Preferences_Settings_set_PresentationFramework__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0001:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0002:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0003:
    lea .LS_0_m_Skymu_Preferences_Settings_set_PresentationFramework_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0008:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0024
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_000f:
    call m_Skymu_Universal_get_IsDarkTheme__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0014:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_001e
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0016:
    lea .LS_1_m_Skymu_Preferences_Settings_set_PresentationFramework_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_001b:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_001c:
    jmp .Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0024
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_001e:
    lea .LS_2_m_Skymu_Preferences_Settings_set_PresentationFramework_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0024:
    lea .LS_3_m_Skymu_Preferences_Settings_set_PresentationFramework_ref(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0029:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_002a:
    lea .LS_4_m_Skymu_Preferences_Settings_set_PresentationFramework_ref(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_002f:
    lea .LS_5_m_Skymu_Preferences_Settings_set_PresentationFramework_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0034:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_0039:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_PresentationFramework_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_PresentationFramework__ref, .-m_Skymu_Preferences_Settings_set_PresentationFramework__ref

.globl m_Skymu_Preferences_Settings_get_Theme__void
.type m_Skymu_Preferences_Settings_get_Theme__void, @function
m_Skymu_Preferences_Settings_get_Theme__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Theme_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Theme_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Theme_void_0005:
    lea .LS_1_m_Skymu_Preferences_Settings_get_Theme_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Theme_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_Theme_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Theme_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Theme_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Theme_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Theme__void, .-m_Skymu_Preferences_Settings_get_Theme__void

.globl m_Skymu_Preferences_Settings_set_Theme__ref
.type m_Skymu_Preferences_Settings_set_Theme__ref, @function
m_Skymu_Preferences_Settings_set_Theme__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Theme_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Theme_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Theme_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Theme_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Theme_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Theme_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Theme_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Theme_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Theme_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Theme_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Theme__ref, .-m_Skymu_Preferences_Settings_set_Theme__ref

.globl m_Skymu_Preferences_Settings_get_UseClearType__void
.type m_Skymu_Preferences_Settings_get_UseClearType__void, @function
m_Skymu_Preferences_Settings_get_UseClearType__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseClearType_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_UseClearType_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseClearType_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseClearType_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_UseClearType_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseClearType_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_UseClearType_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_UseClearType_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_UseClearType__void, .-m_Skymu_Preferences_Settings_get_UseClearType__void

.globl m_Skymu_Preferences_Settings_set_UseClearType__v
.type m_Skymu_Preferences_Settings_set_UseClearType__v, @function
m_Skymu_Preferences_Settings_set_UseClearType__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseClearType_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_UseClearType_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseClearType_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseClearType_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_UseClearType_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseClearType_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_UseClearType_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_UseClearType_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_UseClearType_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_UseClearType_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_UseClearType__v, .-m_Skymu_Preferences_Settings_set_UseClearType__v

.globl m_Skymu_Preferences_Settings_get_DynamicSidebarTabs__void
.type m_Skymu_Preferences_Settings_get_DynamicSidebarTabs__void, @function
m_Skymu_Preferences_Settings_get_DynamicSidebarTabs__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_DynamicSidebarTabs__void, .-m_Skymu_Preferences_Settings_get_DynamicSidebarTabs__void

.globl m_Skymu_Preferences_Settings_set_DynamicSidebarTabs__v
.type m_Skymu_Preferences_Settings_set_DynamicSidebarTabs__v, @function
m_Skymu_Preferences_Settings_set_DynamicSidebarTabs__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_DynamicSidebarTabs__v, .-m_Skymu_Preferences_Settings_set_DynamicSidebarTabs__v

.globl m_Skymu_Preferences_Settings_get_BlueNotifications__void
.type m_Skymu_Preferences_Settings_get_BlueNotifications__void, @function
m_Skymu_Preferences_Settings_get_BlueNotifications__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_BlueNotifications_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_BlueNotifications_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_BlueNotifications_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_BlueNotifications_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_BlueNotifications_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_BlueNotifications_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_BlueNotifications_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_BlueNotifications_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_BlueNotifications__void, .-m_Skymu_Preferences_Settings_get_BlueNotifications__void

.globl m_Skymu_Preferences_Settings_set_BlueNotifications__v
.type m_Skymu_Preferences_Settings_set_BlueNotifications__v, @function
m_Skymu_Preferences_Settings_set_BlueNotifications__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_BlueNotifications_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_BlueNotifications_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_BlueNotifications_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_BlueNotifications_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_BlueNotifications_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_BlueNotifications_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_BlueNotifications_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_BlueNotifications_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_BlueNotifications_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_BlueNotifications_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_BlueNotifications__v, .-m_Skymu_Preferences_Settings_set_BlueNotifications__v

.globl m_Skymu_Preferences_Settings_get_FallbackFillColors__void
.type m_Skymu_Preferences_Settings_get_FallbackFillColors__void, @function
m_Skymu_Preferences_Settings_get_FallbackFillColors__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_FallbackFillColors_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_FallbackFillColors_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_FallbackFillColors_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_FallbackFillColors_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_FallbackFillColors_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_FallbackFillColors_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_FallbackFillColors_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_FallbackFillColors_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_FallbackFillColors__void, .-m_Skymu_Preferences_Settings_get_FallbackFillColors__void

.globl m_Skymu_Preferences_Settings_set_FallbackFillColors__v
.type m_Skymu_Preferences_Settings_set_FallbackFillColors__v, @function
m_Skymu_Preferences_Settings_set_FallbackFillColors__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_FallbackFillColors_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_FallbackFillColors_v(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_FallbackFillColors_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_FallbackFillColors_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_FallbackFillColors_v(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_FallbackFillColors_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_FallbackFillColors_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_FallbackFillColors_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_FallbackFillColors_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_FallbackFillColors_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_FallbackFillColors__v, .-m_Skymu_Preferences_Settings_set_FallbackFillColors__v

.globl m_Skymu_Preferences_Settings_get_NikoIcons__void
.type m_Skymu_Preferences_Settings_get_NikoIcons__void, @function
m_Skymu_Preferences_Settings_get_NikoIcons__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_NikoIcons_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_NikoIcons_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_NikoIcons_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_NikoIcons_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_NikoIcons_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_NikoIcons_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_NikoIcons_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_NikoIcons_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_NikoIcons__void, .-m_Skymu_Preferences_Settings_get_NikoIcons__void

.globl m_Skymu_Preferences_Settings_set_NikoIcons__v
.type m_Skymu_Preferences_Settings_set_NikoIcons__v, @function
m_Skymu_Preferences_Settings_set_NikoIcons__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_NikoIcons_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_NikoIcons_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_NikoIcons_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_NikoIcons_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_NikoIcons_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_NikoIcons_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_NikoIcons_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_NikoIcons_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_NikoIcons_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_NikoIcons_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_NikoIcons__v, .-m_Skymu_Preferences_Settings_set_NikoIcons__v

.globl m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug__void
.type m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug__void, @function
m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug__void, .-m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug__void

.globl m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug__v
.type m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug__v, @function
m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug__v, .-m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug__v

.globl m_Skymu_Preferences_Settings_get_CredsSubCount__void
.type m_Skymu_Preferences_Settings_get_CredsSubCount__void, @function
m_Skymu_Preferences_Settings_get_CredsSubCount__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsSubCount_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_CredsSubCount_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsSubCount_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsSubCount_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_CredsSubCount_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsSubCount_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_i4_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsSubCount_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_CredsSubCount_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_CredsSubCount__void, .-m_Skymu_Preferences_Settings_get_CredsSubCount__void

.globl m_Skymu_Preferences_Settings_set_CredsSubCount__i4
.type m_Skymu_Preferences_Settings_set_CredsSubCount__i4, @function
m_Skymu_Preferences_Settings_set_CredsSubCount__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsSubCount_i4_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_CredsSubCount_i4(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsSubCount_i4_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsSubCount_i4_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_CredsSubCount_i4(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsSubCount_i4_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_CredsSubCount_i4(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsSubCount_i4_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_int32__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_CredsSubCount_i4_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_CredsSubCount_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_CredsSubCount__i4, .-m_Skymu_Preferences_Settings_set_CredsSubCount__i4

.globl m_Skymu_Preferences_Settings_get_BrandingName__void
.type m_Skymu_Preferences_Settings_get_BrandingName__void, @function
m_Skymu_Preferences_Settings_get_BrandingName__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_BrandingName_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_BrandingName_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_BrandingName_void_0005:
    lea .LS_1_m_Skymu_Preferences_Settings_get_BrandingName_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_BrandingName_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_BrandingName_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_BrandingName_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_BrandingName_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_BrandingName_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_BrandingName__void, .-m_Skymu_Preferences_Settings_get_BrandingName__void

.globl m_Skymu_Preferences_Settings_set_BrandingName__ref
.type m_Skymu_Preferences_Settings_set_BrandingName__ref, @function
m_Skymu_Preferences_Settings_set_BrandingName__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_BrandingName_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_BrandingName_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_BrandingName_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_BrandingName_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_BrandingName_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_BrandingName_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_BrandingName_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_BrandingName_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_BrandingName_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_BrandingName_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_BrandingName__ref, .-m_Skymu_Preferences_Settings_set_BrandingName__ref

.globl m_Skymu_Preferences_Settings_get_CredsText__void
.type m_Skymu_Preferences_Settings_get_CredsText__void, @function
m_Skymu_Preferences_Settings_get_CredsText__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsText_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_CredsText_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsText_void_0005:
    lea .LS_1_m_Skymu_Preferences_Settings_get_CredsText_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsText_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_CredsText_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsText_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CredsText_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_CredsText_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_CredsText__void, .-m_Skymu_Preferences_Settings_get_CredsText__void

.globl m_Skymu_Preferences_Settings_set_CredsText__ref
.type m_Skymu_Preferences_Settings_set_CredsText__ref, @function
m_Skymu_Preferences_Settings_set_CredsText__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsText_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_CredsText_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsText_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsText_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_CredsText_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsText_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_CredsText_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_CredsText_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_CredsText_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_CredsText_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_CredsText__ref, .-m_Skymu_Preferences_Settings_set_CredsText__ref

.globl m_Skymu_Preferences_Settings_get_NotificationTrigger__void
.type m_Skymu_Preferences_Settings_get_NotificationTrigger__void, @function
m_Skymu_Preferences_Settings_get_NotificationTrigger__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_NotificationTrigger_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_NotificationTrigger_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_NotificationTrigger_void_0005:
    mov $6, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_NotificationTrigger_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_NotificationTrigger_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_NotificationTrigger_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT_valuetype_Skymu_Enumerations_NotificationTriggerType__ref_gen_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_NotificationTrigger_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_NotificationTrigger_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_NotificationTrigger__void, .-m_Skymu_Preferences_Settings_get_NotificationTrigger__void

.globl m_Skymu_Preferences_Settings_set_NotificationTrigger__v
.type m_Skymu_Preferences_Settings_set_NotificationTrigger__v, @function
m_Skymu_Preferences_Settings_set_NotificationTrigger__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_NotificationTrigger_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_NotificationTrigger_v(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_NotificationTrigger_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_NotificationTrigger_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_NotificationTrigger_v(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_NotificationTrigger_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_NotificationTrigger_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_NotificationTrigger_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_valuetype_Skymu_Enumerations_NotificationTriggerType__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_NotificationTrigger_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_NotificationTrigger_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_NotificationTrigger__v, .-m_Skymu_Preferences_Settings_set_NotificationTrigger__v

.globl m_Skymu_Preferences_Settings_get_AllowImplicitMentions__void
.type m_Skymu_Preferences_Settings_get_AllowImplicitMentions__void, @function
m_Skymu_Preferences_Settings_get_AllowImplicitMentions__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowImplicitMentions_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_AllowImplicitMentions_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowImplicitMentions_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowImplicitMentions_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_AllowImplicitMentions_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowImplicitMentions_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowImplicitMentions_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_AllowImplicitMentions_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_AllowImplicitMentions__void, .-m_Skymu_Preferences_Settings_get_AllowImplicitMentions__void

.globl m_Skymu_Preferences_Settings_set_AllowImplicitMentions__v
.type m_Skymu_Preferences_Settings_set_AllowImplicitMentions__v, @function
m_Skymu_Preferences_Settings_set_AllowImplicitMentions__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowImplicitMentions_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_AllowImplicitMentions_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowImplicitMentions_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowImplicitMentions_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_AllowImplicitMentions_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowImplicitMentions_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_AllowImplicitMentions_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowImplicitMentions_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_AllowImplicitMentions_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_AllowImplicitMentions_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_AllowImplicitMentions__v, .-m_Skymu_Preferences_Settings_set_AllowImplicitMentions__v

.globl m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning__void
.type m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning__void, @function
m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning__void, .-m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning__void

.globl m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning__v
.type m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning__v, @function
m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning__v, .-m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning__v

.globl m_Skymu_Preferences_Settings_get_MessagesToFetch__void
.type m_Skymu_Preferences_Settings_get_MessagesToFetch__void, @function
m_Skymu_Preferences_Settings_get_MessagesToFetch__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessagesToFetch_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_MessagesToFetch_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessagesToFetch_void_0005:
    mov $30, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessagesToFetch_void_0007:
    lea .LS_1_m_Skymu_Preferences_Settings_get_MessagesToFetch_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessagesToFetch_void_000c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_i4_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessagesToFetch_void_0011:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_MessagesToFetch_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_MessagesToFetch__void, .-m_Skymu_Preferences_Settings_get_MessagesToFetch__void

.globl m_Skymu_Preferences_Settings_set_MessagesToFetch__i4
.type m_Skymu_Preferences_Settings_set_MessagesToFetch__i4, @function
m_Skymu_Preferences_Settings_set_MessagesToFetch__i4:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessagesToFetch_i4_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_MessagesToFetch_i4(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessagesToFetch_i4_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessagesToFetch_i4_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_MessagesToFetch_i4(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessagesToFetch_i4_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_MessagesToFetch_i4(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessagesToFetch_i4_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_int32__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_MessagesToFetch_i4_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_MessagesToFetch_i4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_MessagesToFetch__i4, .-m_Skymu_Preferences_Settings_set_MessagesToFetch__i4

.globl m_Skymu_Preferences_Settings_get_MessageLogger__void
.type m_Skymu_Preferences_Settings_get_MessageLogger__void, @function
m_Skymu_Preferences_Settings_get_MessageLogger__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessageLogger_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_MessageLogger_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessageLogger_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessageLogger_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_MessageLogger_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessageLogger_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_MessageLogger_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_MessageLogger_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_MessageLogger__void, .-m_Skymu_Preferences_Settings_get_MessageLogger__void

.globl m_Skymu_Preferences_Settings_set_MessageLogger__v
.type m_Skymu_Preferences_Settings_set_MessageLogger__v, @function
m_Skymu_Preferences_Settings_set_MessageLogger__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessageLogger_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_MessageLogger_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessageLogger_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessageLogger_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_MessageLogger_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessageLogger_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_MessageLogger_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_MessageLogger_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_MessageLogger_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_MessageLogger_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_MessageLogger__v, .-m_Skymu_Preferences_Settings_set_MessageLogger__v

.globl m_Skymu_Preferences_Settings_get_CustomPluginPath__void
.type m_Skymu_Preferences_Settings_get_CustomPluginPath__void, @function
m_Skymu_Preferences_Settings_get_CustomPluginPath__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_CustomPluginPath_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_CustomPluginPath_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CustomPluginPath_void_0005:
    lea .LN_1_m_Skymu_Preferences_Settings_get_CustomPluginPath_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_CustomPluginPath_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_CustomPluginPath_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_CustomPluginPath_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CustomPluginPath_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_CustomPluginPath_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_CustomPluginPath__void, .-m_Skymu_Preferences_Settings_get_CustomPluginPath__void

.globl m_Skymu_Preferences_Settings_set_CustomPluginPath__ref
.type m_Skymu_Preferences_Settings_set_CustomPluginPath__ref, @function
m_Skymu_Preferences_Settings_set_CustomPluginPath__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_CustomPluginPath_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_CustomPluginPath_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_CustomPluginPath_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_CustomPluginPath_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_CustomPluginPath_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_CustomPluginPath_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_CustomPluginPath_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_CustomPluginPath_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_CustomPluginPath_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_CustomPluginPath_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_CustomPluginPath__ref, .-m_Skymu_Preferences_Settings_set_CustomPluginPath__ref

.globl m_Skymu_Preferences_Settings_get_SkippedVersion__void
.type m_Skymu_Preferences_Settings_get_SkippedVersion__void, @function
m_Skymu_Preferences_Settings_get_SkippedVersion__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_SkippedVersion_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_SkippedVersion_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SkippedVersion_void_0005:
    lea .LN_1_m_Skymu_Preferences_Settings_get_SkippedVersion_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_SkippedVersion_void_000a:
    lea .LS_2_m_Skymu_Preferences_Settings_get_SkippedVersion_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_SkippedVersion_void_000f:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SkippedVersion_void_0014:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_SkippedVersion_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_SkippedVersion__void, .-m_Skymu_Preferences_Settings_get_SkippedVersion__void

.globl m_Skymu_Preferences_Settings_set_SkippedVersion__ref
.type m_Skymu_Preferences_Settings_set_SkippedVersion__ref, @function
m_Skymu_Preferences_Settings_set_SkippedVersion__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_SkippedVersion_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_SkippedVersion_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_SkippedVersion_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_SkippedVersion_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_SkippedVersion_ref(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_SkippedVersion_ref_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_SkippedVersion_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_SkippedVersion_ref_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_string__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_SkippedVersion_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_SkippedVersion_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_SkippedVersion__ref, .-m_Skymu_Preferences_Settings_set_SkippedVersion__ref

.globl m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates__void
.type m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates__void, @function
m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates__void, .-m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates__void

.globl m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates__v
.type m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates__v, @function
m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates__v, .-m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates__v

.globl m_Skymu_Preferences_Settings_get_Anonymize__void
.type m_Skymu_Preferences_Settings_get_Anonymize__void, @function
m_Skymu_Preferences_Settings_get_Anonymize__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_Anonymize_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_Anonymize_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Anonymize_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_Anonymize_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_Anonymize_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_Anonymize_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_Anonymize_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_Anonymize_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_Anonymize__void, .-m_Skymu_Preferences_Settings_get_Anonymize__void

.globl m_Skymu_Preferences_Settings_set_Anonymize__v
.type m_Skymu_Preferences_Settings_set_Anonymize__v, @function
m_Skymu_Preferences_Settings_set_Anonymize__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_Anonymize_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_Anonymize_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_Anonymize_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_Anonymize_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_Anonymize_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_Anonymize_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_Anonymize_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_Anonymize_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_Anonymize_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_Anonymize_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_Anonymize__v, .-m_Skymu_Preferences_Settings_set_Anonymize__v

.globl m_Skymu_Preferences_Settings_get_DisableSWS__void
.type m_Skymu_Preferences_Settings_get_DisableSWS__void, @function
m_Skymu_Preferences_Settings_get_DisableSWS__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_DisableSWS_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_DisableSWS_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_DisableSWS_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_DisableSWS_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_DisableSWS_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_DisableSWS_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_DisableSWS_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_DisableSWS_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_DisableSWS__void, .-m_Skymu_Preferences_Settings_get_DisableSWS__void

.globl m_Skymu_Preferences_Settings_set_DisableSWS__v
.type m_Skymu_Preferences_Settings_set_DisableSWS__v, @function
m_Skymu_Preferences_Settings_set_DisableSWS__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_DisableSWS_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_DisableSWS_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_DisableSWS_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_DisableSWS_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_DisableSWS_v(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_DisableSWS_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_DisableSWS_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_DisableSWS_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_DisableSWS_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_DisableSWS_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_DisableSWS__v, .-m_Skymu_Preferences_Settings_set_DisableSWS__v

.globl m_Skymu_Preferences_Settings_get_SWSOptOutShown__void
.type m_Skymu_Preferences_Settings_get_SWSOptOutShown__void, @function
m_Skymu_Preferences_Settings_get_SWSOptOutShown__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_SWSOptOutShown_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_SWSOptOutShown_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SWSOptOutShown_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_SWSOptOutShown_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_SWSOptOutShown_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_SWSOptOutShown_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SWSOptOutShown_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_SWSOptOutShown_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_SWSOptOutShown__void, .-m_Skymu_Preferences_Settings_get_SWSOptOutShown__void

.globl m_Skymu_Preferences_Settings_set_SWSOptOutShown__v
.type m_Skymu_Preferences_Settings_set_SWSOptOutShown__v, @function
m_Skymu_Preferences_Settings_set_SWSOptOutShown__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_SWSOptOutShown_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_SWSOptOutShown_v(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_SWSOptOutShown_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_SWSOptOutShown_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_SWSOptOutShown_v(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_SWSOptOutShown_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_SWSOptOutShown_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_SWSOptOutShown_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_SWSOptOutShown_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_SWSOptOutShown_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_SWSOptOutShown__v, .-m_Skymu_Preferences_Settings_set_SWSOptOutShown__v

.globl m_Skymu_Preferences_Settings_get_EnableSkypeHome__void
.type m_Skymu_Preferences_Settings_get_EnableSkypeHome__void, @function
m_Skymu_Preferences_Settings_get_EnableSkypeHome__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableSkypeHome_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_EnableSkypeHome_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableSkypeHome_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableSkypeHome_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_EnableSkypeHome_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableSkypeHome_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableSkypeHome_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_EnableSkypeHome_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_EnableSkypeHome__void, .-m_Skymu_Preferences_Settings_get_EnableSkypeHome__void

.globl m_Skymu_Preferences_Settings_set_EnableSkypeHome__v
.type m_Skymu_Preferences_Settings_set_EnableSkypeHome__v, @function
m_Skymu_Preferences_Settings_set_EnableSkypeHome__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableSkypeHome_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_EnableSkypeHome_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableSkypeHome_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableSkypeHome_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_EnableSkypeHome_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableSkypeHome_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_EnableSkypeHome_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableSkypeHome_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_EnableSkypeHome_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_EnableSkypeHome_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_EnableSkypeHome__v, .-m_Skymu_Preferences_Settings_set_EnableSkypeHome__v

.globl m_Skymu_Preferences_Settings_get_EnableAdBlock__void
.type m_Skymu_Preferences_Settings_get_EnableAdBlock__void, @function
m_Skymu_Preferences_Settings_get_EnableAdBlock__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableAdBlock_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_EnableAdBlock_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableAdBlock_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableAdBlock_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_EnableAdBlock_void(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableAdBlock_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_EnableAdBlock_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_EnableAdBlock_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_EnableAdBlock__void, .-m_Skymu_Preferences_Settings_get_EnableAdBlock__void

.globl m_Skymu_Preferences_Settings_set_EnableAdBlock__v
.type m_Skymu_Preferences_Settings_set_EnableAdBlock__v, @function
m_Skymu_Preferences_Settings_set_EnableAdBlock__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableAdBlock_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_EnableAdBlock_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableAdBlock_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableAdBlock_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_EnableAdBlock_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableAdBlock_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_EnableAdBlock_v(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_EnableAdBlock_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_EnableAdBlock_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_EnableAdBlock_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_EnableAdBlock__v, .-m_Skymu_Preferences_Settings_set_EnableAdBlock__v

.globl m_Skymu_Preferences_Settings_get_CallOutToReconnectSound__void
.type m_Skymu_Preferences_Settings_get_CallOutToReconnectSound__void, @function
m_Skymu_Preferences_Settings_get_CallOutToReconnectSound__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_CallOutToReconnectSound__void, .-m_Skymu_Preferences_Settings_get_CallOutToReconnectSound__void

.globl m_Skymu_Preferences_Settings_set_CallOutToReconnectSound__v
.type m_Skymu_Preferences_Settings_set_CallOutToReconnectSound__v, @function
m_Skymu_Preferences_Settings_set_CallOutToReconnectSound__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_CallOutToReconnectSound__v, .-m_Skymu_Preferences_Settings_set_CallOutToReconnectSound__v

.globl m_Skymu_Preferences_Settings_get_SoundPack__void
.type m_Skymu_Preferences_Settings_get_SoundPack__void, @function
m_Skymu_Preferences_Settings_get_SoundPack__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_SoundPack_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_SoundPack_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SoundPack_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_SoundPack_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_SoundPack_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_SoundPack_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT_valuetype_Skymu_Enumerations_Soundpack__ref_gen_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_SoundPack_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_SoundPack_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_SoundPack__void, .-m_Skymu_Preferences_Settings_get_SoundPack__void

.globl m_Skymu_Preferences_Settings_set_SoundPack__v
.type m_Skymu_Preferences_Settings_set_SoundPack__v, @function
m_Skymu_Preferences_Settings_set_SoundPack__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_SoundPack_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_SoundPack_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_SoundPack_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_SoundPack_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_SoundPack_v(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_SoundPack_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_SoundPack_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_SoundPack_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_valuetype_Skymu_Enumerations_Soundpack__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_SoundPack_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_SoundPack_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_SoundPack__v, .-m_Skymu_Preferences_Settings_set_SoundPack__v

.globl m_Skymu_Preferences_Settings_get_OldPlatformWarningShown__void
.type m_Skymu_Preferences_Settings_get_OldPlatformWarningShown__void, @function
m_Skymu_Preferences_Settings_get_OldPlatformWarningShown__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_OldPlatformWarningShown__void, .-m_Skymu_Preferences_Settings_get_OldPlatformWarningShown__void

.globl m_Skymu_Preferences_Settings_set_OldPlatformWarningShown__v
.type m_Skymu_Preferences_Settings_set_OldPlatformWarningShown__v, @function
m_Skymu_Preferences_Settings_set_OldPlatformWarningShown__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v(%rip), %rdi
    mov $23, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_OldPlatformWarningShown__v, .-m_Skymu_Preferences_Settings_set_OldPlatformWarningShown__v

.globl m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings__void
.type m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings__void, @function
m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings__void, .-m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings__void

.globl m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings__v
.type m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings__v, @function
m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings__v, .-m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings__v

.globl m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup__void
.type m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup__void, @function
m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup__void, .-m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup__void

.globl m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup__v
.type m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup__v, @function
m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup__v, .-m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup__v

.globl m_Skymu_Preferences_Settings_get_AllowMultipleInstances__void
.type m_Skymu_Preferences_Settings_get_AllowMultipleInstances__void, @function
m_Skymu_Preferences_Settings_get_AllowMultipleInstances__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowMultipleInstances_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_AllowMultipleInstances_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowMultipleInstances_void_0005:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowMultipleInstances_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_AllowMultipleInstances_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowMultipleInstances_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AllowMultipleInstances_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_AllowMultipleInstances_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_AllowMultipleInstances__void, .-m_Skymu_Preferences_Settings_get_AllowMultipleInstances__void

.globl m_Skymu_Preferences_Settings_set_AllowMultipleInstances__v
.type m_Skymu_Preferences_Settings_set_AllowMultipleInstances__v, @function
m_Skymu_Preferences_Settings_set_AllowMultipleInstances__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowMultipleInstances_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_AllowMultipleInstances_v(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowMultipleInstances_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowMultipleInstances_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_AllowMultipleInstances_v(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowMultipleInstances_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_AllowMultipleInstances_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_AllowMultipleInstances_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_AllowMultipleInstances_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_AllowMultipleInstances_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_AllowMultipleInstances__v, .-m_Skymu_Preferences_Settings_set_AllowMultipleInstances__v

.globl m_Skymu_Preferences_Settings_get_StartMinimized__void
.type m_Skymu_Preferences_Settings_get_StartMinimized__void, @function
m_Skymu_Preferences_Settings_get_StartMinimized__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_StartMinimized_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_StartMinimized_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_StartMinimized_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_StartMinimized_void_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_get_StartMinimized_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_get_StartMinimized_void_000b:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_SELECT__ref_b_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_StartMinimized_void_0010:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_StartMinimized_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_StartMinimized__void, .-m_Skymu_Preferences_Settings_get_StartMinimized__void

.globl m_Skymu_Preferences_Settings_set_StartMinimized__v
.type m_Skymu_Preferences_Settings_set_StartMinimized__v, @function
m_Skymu_Preferences_Settings_set_StartMinimized__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_StartMinimized_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_StartMinimized_v(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_StartMinimized_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_StartMinimized_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_StartMinimized_v(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_StartMinimized_v_000b:
    lea .LS_2_m_Skymu_Preferences_Settings_set_StartMinimized_v(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_set_StartMinimized_v_0010:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_WRITE_bool__ref_gen_ref_ref
.Lm_Skymu_Preferences_Settings_set_StartMinimized_v_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_StartMinimized_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_StartMinimized__v, .-m_Skymu_Preferences_Settings_set_StartMinimized__v

.globl m_Skymu_Preferences_Settings_get_AutoLaunch__void
.type m_Skymu_Preferences_Settings_get_AutoLaunch__void, @function
m_Skymu_Preferences_Settings_get_AutoLaunch__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_AutoLaunch_void_0000:
    call m_Skymu_Native_Windows_AutoLaunch_Get__void
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_AutoLaunch_void_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_AutoLaunch_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_AutoLaunch__void, .-m_Skymu_Preferences_Settings_get_AutoLaunch__void

.globl m_Skymu_Preferences_Settings_set_AutoLaunch__v
.type m_Skymu_Preferences_Settings_set_AutoLaunch__v, @function
m_Skymu_Preferences_Settings_set_AutoLaunch__v:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_AutoLaunch_v_0000:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_AutoLaunch_v_0001:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_AutoLaunch_Set__b
.Lm_Skymu_Preferences_Settings_set_AutoLaunch_v_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_AutoLaunch_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_AutoLaunch__v, .-m_Skymu_Preferences_Settings_set_AutoLaunch__v

.globl m_Skymu_Preferences_Settings_get_CertificateStore__void
.type m_Skymu_Preferences_Settings_get_CertificateStore__void, @function
m_Skymu_Preferences_Settings_get_CertificateStore__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_CertificateStore_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_CertificateStore_void(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CertificateStore_void_0005:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_CertificateStore_void_0006:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Y_SELECT_valuetype_Bifrost_OmegaAOL_Bifrost_Tls_CertStore__ref_gen
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CertificateStore_void_000b:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_CertificateStore_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_CertificateStore__void, .-m_Skymu_Preferences_Settings_get_CertificateStore__void

.globl m_Skymu_Preferences_Settings_set_CertificateStore__v
.type m_Skymu_Preferences_Settings_set_CertificateStore__v, @function
m_Skymu_Preferences_Settings_set_CertificateStore__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_CertificateStore_v_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_CertificateStore_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_CertificateStore_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_CertificateStore_v_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_CertificateStore_v(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_CertificateStore_v_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Y_WRITE_valuetype_Bifrost_OmegaAOL_Bifrost_Tls_CertStore__ref_gen_ref
.Lm_Skymu_Preferences_Settings_set_CertificateStore_v_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_CertificateStore_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_CertificateStore__v, .-m_Skymu_Preferences_Settings_set_CertificateStore__v

.globl m_Skymu_Preferences_Settings_get_CertPath__void
.type m_Skymu_Preferences_Settings_get_CertPath__void, @function
m_Skymu_Preferences_Settings_get_CertPath__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_get_CertPath_void_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_get_CertPath_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CertPath_void_0005:
    lea .LN_1_m_Skymu_Preferences_Settings_get_CertPath_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_get_CertPath_void_000a:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Y_SELECT__ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_get_CertPath_void_000f:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_get_CertPath_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_get_CertPath__void, .-m_Skymu_Preferences_Settings_get_CertPath__void

.globl m_Skymu_Preferences_Settings_set_CertPath__ref
.type m_Skymu_Preferences_Settings_set_CertPath__ref, @function
m_Skymu_Preferences_Settings_set_CertPath__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Preferences_Settings_set_CertPath_ref_0000:
    lea .LS_0_m_Skymu_Preferences_Settings_set_CertPath_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_set_CertPath_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_set_CertPath_ref_0006:
    lea .LS_1_m_Skymu_Preferences_Settings_set_CertPath_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_set_CertPath_ref_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Y_WRITE_string__ref_gen_ref
.Lm_Skymu_Preferences_Settings_set_CertPath_ref_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_set_CertPath_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_set_CertPath__ref, .-m_Skymu_Preferences_Settings_set_CertPath__ref

.globl m_Skymu_Preferences_Settings_Save__void
.type m_Skymu_Preferences_Settings_Save__void, @function
m_Skymu_Preferences_Settings_Save__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_Save_void_0000:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_Save_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_Save__void, .-m_Skymu_Preferences_Settings_Save__void

.globl m_Skymu_Preferences_Settings_Reset__void
.type m_Skymu_Preferences_Settings_Reset__void, @function
m_Skymu_Preferences_Settings_Reset__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_Reset_void_0000:
    lea .LN_0_m_Skymu_Preferences_Settings_Reset_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Reset_void_0005:
    mov -16(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Reset_void_000a:
    mov -16(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_Reset_void_0016
.Lm_Skymu_Preferences_Settings_Reset_void_000c:
    lea .LN_1_m_Skymu_Preferences_Settings_Reset_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Reset_void_0011:
    mov -16(%rbp), %rdi
    call m_System_IO_File_Delete__ref
.Lm_Skymu_Preferences_Settings_Reset_void_0016:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_Reset_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_Reset__void, .-m_Skymu_Preferences_Settings_Reset__void

.globl m_Skymu_Preferences_Settings_LoadOrCreate__void
.type m_Skymu_Preferences_Settings_LoadOrCreate__void, @function
m_Skymu_Preferences_Settings_LoadOrCreate__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0000:
    lea .LN_0_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0005:
    mov -40(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_000a:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_LoadOrCreate_void_006a
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_000c:
    lea .LN_1_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0011:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_XDocument_Load__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0016:
    mov -40(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0018:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_001d:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0048
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_001f:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0020:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0025:
    lea .LS_2_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_002a:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_002f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_Attribute__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0034:
    mov -40(%rbp), %rdi
    call m_System_Xml_Linq_XAttribute_op_Explicit__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0039:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_003a:
    lea -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_003c:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Nullable_1_int32_GetValueOrDefault__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0041:
    mov $3, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0042:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0048
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0045:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0046:
    jmp .Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00b8
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0048:
    jmp .Lm_Skymu_Preferences_Settings_LoadOrCreate_void_004d
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_004d:
    lea .LS_3_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    mov $165, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0052:
    lea .LS_4_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0057:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0058:
    mov $64, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_005a:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Windows_MessageBox_Show__ref_ref_v_v
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_005f:
    mov -40(%rbp), %rax
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0060:
    lea .LN_5_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0065:
    mov -40(%rbp), %rdi
    call m_System_IO_File_Delete__ref
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_006a:
    lea .LN_6_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_006f:
    mov -40(%rbp), %rdi
    call m_System_IO_Path_GetDirectoryName__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0074:
    mov -40(%rbp), %rdi
    call m_System_IO_Directory_CreateDirectory__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0079:
    mov -40(%rbp), %rax
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_007a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_007b:
    mov -40(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0080:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0081:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0082:
    lea .LS_7_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0087:
    mov -56(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_008c:
    lea .LS_8_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0091:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0096:
    mov $3, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_0097:
    mov -72(%rbp), %rdi
    lea .LN_9_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rsi
    call shim_box
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_009c:
    lea .LN_10_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XAttribute_ctor__ref_ref
    mov %r12, -64(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00a1:
    lea .LN_11_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -56(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00a6:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00a7:
    lea .LN_12_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XDocument_ctor__arr
    mov %r12, -32(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00ac:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00ad:
    lea .LN_13_m_Skymu_Preferences_Settings_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00b2:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_Save__ref
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00b7:
    mov -32(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00b8:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_00b9:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_LoadOrCreate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_LoadOrCreate__void, .-m_Skymu_Preferences_Settings_LoadOrCreate__void

.globl m_Skymu_Preferences_Settings_GetOrCreateNode__ref_ref
.type m_Skymu_Preferences_Settings_GetOrCreateNode__ref_ref, @function
m_Skymu_Preferences_Settings_GetOrCreateNode__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0001:
    mov $47, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0003:
    mov $0, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0004:
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_000a:
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_000f:
    mov -80(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0010:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0011:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0012:
    mov -72(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0013:
    jmp .Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0047
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0015:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0016:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0017:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0018:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0019:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_001a:
    mov -56(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_001b:
    mov -96(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -96(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0020:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0025:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0027:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0029:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0040
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_002b:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_002c:
    mov -88(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0031:
    lea .LN_0_m_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref
    mov %r12, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0036:
    mov -88(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0038:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0039:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_003b:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Add__ref
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0040:
    mov -64(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0042:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0043:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0044:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0045:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0046:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0047:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0048:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0049:
    mov -80(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_004a:
    mov -88(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_004b:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_0015
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_004d:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_004e:
    mov -88(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_GetOrCreateNode__ref_ref, .-m_Skymu_Preferences_Settings_GetOrCreateNode__ref_ref

.globl m_Skymu_Preferences_Settings_Get__ref_ref_ref
.type m_Skymu_Preferences_Settings_Get__ref_ref_ref, @function
m_Skymu_Preferences_Settings_Get__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0000:
    call m_Skymu_Preferences_Settings_LoadOrCreate__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0005:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0006:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_GetOrCreateNode__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_000b:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_000c:
    mov -56(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0011:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0016:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0017:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_001d
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0019:
    mov -40(%rbp), %rax
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_001a:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_001b:
    jmp .Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0022
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_001d:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Value__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0022:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0023:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0027
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0025:
    mov -40(%rbp), %rax
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0026:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0027:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0028:
    jmp .Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_002f
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_002f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_0030:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_Get_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_Get__ref_ref_ref, .-m_Skymu_Preferences_Settings_Get__ref_ref_ref

.globl m_Skymu_Preferences_Settings_Set__ref_ref_ref
.type m_Skymu_Preferences_Settings_Set__ref_ref_ref, @function
m_Skymu_Preferences_Settings_Set__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0000:
    call m_Skymu_Preferences_Settings_LoadOrCreate__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0005:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0007:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Preferences_Settings_GetOrCreateNode__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_000c:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_000d:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_000f:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0014:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0019:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_001a:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_001b:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0031
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_001d:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_001e:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_001f:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0024:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0025:
    lea .LN_0_m_Skymu_Preferences_Settings_Set_ref_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref_ref
    mov %r12, -64(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_002a:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Add__ref
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_002f:
    jmp .Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0038
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0031:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0032:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0033:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_set_Value__ref
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0038:
    lea .LN_1_m_Skymu_Preferences_Settings_Set_ref_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_003d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_Save__ref
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_0042:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_Set_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_Set__ref_ref_ref, .-m_Skymu_Preferences_Settings_Set__ref_ref_ref

.globl m_Skymu_Preferences_Settings_SELECT__ref_ref_ref
.type m_Skymu_Preferences_Settings_SELECT__ref_ref_ref, @function
m_Skymu_Preferences_Settings_SELECT__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0001:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0002:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0003:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Get__ref_ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0008:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0009:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_000a:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0016
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_000c:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_000d:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Set__ref_ref_ref
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0014:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0015:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0016:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_0017:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SELECT__ref_ref_ref, .-m_Skymu_Preferences_Settings_SELECT__ref_ref_ref

.globl m_Skymu_Preferences_Settings_SELECT__ref_b_ref
.type m_Skymu_Preferences_Settings_SELECT__ref_b_ref, @function
m_Skymu_Preferences_Settings_SELECT__ref_b_ref:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0001:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0003:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Boolean_ToString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0009:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Get__ref_ref_ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_000e:
    mov -64(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_000f:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0010:
    lea -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0012:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Int32_TryParse__ref_v
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0017:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_001e
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0019:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_001a:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_001b:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    setg %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_001d:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_001e:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_001f:
    lea -56(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0021:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_Boolean_TryParse__ref_v
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0026:
    mov -64(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_002a
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0028:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0029:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_002a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_002b:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_002d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Boolean_ToString__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0032:
    mov -32(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0033:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Set__ref_ref_ref
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0038:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_0039:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_b_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SELECT__ref_b_ref, .-m_Skymu_Preferences_Settings_SELECT__ref_b_ref

.globl m_Skymu_Preferences_Settings_SELECT__ref_i4_ref
.type m_Skymu_Preferences_Settings_SELECT__ref_i4_ref, @function
m_Skymu_Preferences_Settings_SELECT__ref_i4_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0001:
    lea -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0003:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0009:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Get__ref_ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_000e:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0010:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Int32_TryParse__ref_v
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0015:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0019
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0017:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0018:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0019:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_001a:
    lea -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_001c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Int32_ToString__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0021:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0022:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Set__ref_ref_ref
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0027:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_0028:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_i4_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SELECT__ref_i4_ref, .-m_Skymu_Preferences_Settings_SELECT__ref_i4_ref

.globl m_Skymu_Preferences_Settings_SELECT__ref_f8_ref
.type m_Skymu_Preferences_Settings_SELECT__ref_f8_ref, @function
m_Skymu_Preferences_Settings_SELECT__ref_f8_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0001:
    lea -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0003:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Double_ToString__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0009:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Get__ref_ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_000e:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0010:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Double_TryParse__ref_v
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0015:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0019
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0017:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0018:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0019:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_001a:
    lea -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_001c:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Double_ToString__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0021:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0022:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Set__ref_ref_ref
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0027:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_0028:
    mov -48(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_SELECT_ref_f8_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_SELECT__ref_f8_ref, .-m_Skymu_Preferences_Settings_SELECT__ref_f8_ref

.globl m_Skymu_Preferences_Settings_TEnum__ref_gen_ref
.type m_Skymu_Preferences_Settings_TEnum__ref_gen_ref, @function
m_Skymu_Preferences_Settings_TEnum__ref_gen_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0001:
    lea -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0003:
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0009:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_000e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Get__ref_ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0014:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0015:
    lea -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0017:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Enum_TryParse_TEnum__ref_b_gen
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_001c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0020
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_001e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_001f:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0020:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0021:
    lea -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0023:
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0029:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_002e:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_002f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_Set__ref_ref_ref
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0034:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_0035:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_TEnum_ref_gen_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_TEnum__ref_gen_ref, .-m_Skymu_Preferences_Settings_TEnum__ref_gen_ref

.globl m_Skymu_Preferences_Settings_Y_LoadOrCreate__void
.type m_Skymu_Preferences_Settings_Y_LoadOrCreate__void, @function
m_Skymu_Preferences_Settings_Y_LoadOrCreate__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0000:
    lea .LN_0_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0005:
    mov -16(%rbp), %rdi
    call m_System_IO_File_Exists__ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_000a:
    mov -16(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0017
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_000c:
    lea .LN_1_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0011:
    mov -16(%rbp), %rdi
    call m_System_Xml_Linq_XDocument_Load__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0016:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0017:
    lea .LN_2_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_001c:
    mov -16(%rbp), %rdi
    call m_System_IO_Path_GetDirectoryName__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0021:
    mov -16(%rbp), %rdi
    call m_System_IO_Directory_CreateDirectory__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0026:
    mov -16(%rbp), %rax
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0027:
    mov $1, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0028:
    mov -16(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_002d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_002e:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_002f:
    lea .LS_3_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0034:
    mov -32(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0039:
    lea .LN_4_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XElement_ctor__ref
    mov %r12, -32(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_003e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rcx
    mov -16(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_003f:
    lea .LN_5_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -8(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Xml_Linq_XDocument_ctor__arr
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0044:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_0045:
    lea .LN_6_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_004a:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_Save__ref
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_004f:
    mov -8(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_Y_LoadOrCreate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_Y_LoadOrCreate__void, .-m_Skymu_Preferences_Settings_Y_LoadOrCreate__void

.globl m_Skymu_Preferences_Settings_T__ref_gen
.type m_Skymu_Preferences_Settings_T__ref_gen, @function
m_Skymu_Preferences_Settings_T__ref_gen:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0000:
    call m_Skymu_Preferences_Settings_Y_LoadOrCreate__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0005:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_000a:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_000b:
    mov -64(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0010:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0015:
    mov -56(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0016:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_T_ref_gen_001c
.Lm_Skymu_Preferences_Settings_T_ref_gen_0018:
    mov -48(%rbp), %rax
.Lm_Skymu_Preferences_Settings_T_ref_gen_0019:
    xor %eax, %eax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_001a:
    jmp .Lm_Skymu_Preferences_Settings_T_ref_gen_0021
.Lm_Skymu_Preferences_Settings_T_ref_gen_001c:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Value__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0021:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0022:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0023:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_T_ref_gen_0034
.Lm_Skymu_Preferences_Settings_T_ref_gen_0025:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0026:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0027:
    lea -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0029:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Enum_TryParse_T__ref_b_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_002e:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Preferences_Settings_T_ref_gen_0034
.Lm_Skymu_Preferences_Settings_T_ref_gen_0030:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0031:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0032:
    jmp .Lm_Skymu_Preferences_Settings_T_ref_gen_003d
.Lm_Skymu_Preferences_Settings_T_ref_gen_0034:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0035:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_0036:
    jmp .Lm_Skymu_Preferences_Settings_T_ref_gen_003d
.Lm_Skymu_Preferences_Settings_T_ref_gen_003d:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Preferences_Settings_T_ref_gen_003e:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_T_ref_gen_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_T__ref_gen, .-m_Skymu_Preferences_Settings_T__ref_gen

.globl m_Skymu_Preferences_Settings_Y_SELECT__ref_ref
.type m_Skymu_Preferences_Settings_Y_SELECT__ref_ref, @function
m_Skymu_Preferences_Settings_Y_SELECT__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0000:
    call m_Skymu_Preferences_Settings_Y_LoadOrCreate__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0005:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XDocument_get_Root__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_000a:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_000b:
    mov -48(%rbp), %rdi
    call m_System_Xml_Linq_XName_op_Implicit__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0010:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XContainer_Element__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0015:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0016:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_001c
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0018:
    mov -32(%rbp), %rax
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0019:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_001a:
    jmp .Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0021
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_001c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_Linq_XElement_get_Value__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0021:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0022:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0026
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0024:
    mov -32(%rbp), %rax
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0025:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0026:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_0027:
    jmp .Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_002e
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_002e:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_002f:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_Y_SELECT_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_Y_SELECT__ref_ref, .-m_Skymu_Preferences_Settings_Y_SELECT__ref_ref

.globl m_Skymu_Preferences_Settings_cctor__void
.type m_Skymu_Preferences_Settings_cctor__void, @function
m_Skymu_Preferences_Settings_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_0000:
    mov $26, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_0002:
    mov -16(%rbp), %rdi
    call m_System_Environment_GetFolderPath__v
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_0007:
    lea .LS_0_m_Skymu_Preferences_Settings_cctor_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_000c:
    lea .LS_1_m_Skymu_Preferences_Settings_cctor_void(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_0016:
    lea .LN_2_m_Skymu_Preferences_Settings_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Preferences_Settings_cctor_void_001b:
    mov $26, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_001d:
    mov -16(%rbp), %rdi
    call m_System_Environment_GetFolderPath__v
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_0022:
    lea .LS_3_m_Skymu_Preferences_Settings_cctor_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_0027:
    lea .LS_4_m_Skymu_Preferences_Settings_cctor_void(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_002c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref_ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_0031:
    lea .LN_5_m_Skymu_Preferences_Settings_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Preferences_Settings_cctor_void_0036:
    lea .LN_6_m_Skymu_Preferences_Settings_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Preferences_Settings_SettingsProxy_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Preferences_Settings_cctor_void_003b:
    lea .LN_7_m_Skymu_Preferences_Settings_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Preferences_Settings_cctor_void_0040:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Preferences_Settings_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Preferences_Settings_cctor__void, .-m_Skymu_Preferences_Settings_cctor__void

    .globl m_Skymu_Preferences_Settings_SettingsProxy_cctor__void
    .type m_Skymu_Preferences_Settings_SettingsProxy_cctor__void, @function
m_Skymu_Preferences_Settings_SettingsProxy_cctor__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Preferences_Settings_SettingsProxy_cctor_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Preferences_Settings_SettingsProxy_cctor__void, .-m_Skymu_Preferences_Settings_SettingsProxy_cctor__void

    .globl m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref_ref
    .type m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref_ref, @function
m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Preferences_Settings_WRITE_T_ref_gen_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref_ref, .-m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref_ref

    .globl m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref
    .type m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref, @function
m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Preferences_Settings_WRITE_T_ref_gen_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref, .-m_Skymu_Preferences_Settings_WRITE_T__ref_gen_ref

    .globl m_Skymu_Preferences_Settings_Y_WRITE_T__ref_gen_ref
    .type m_Skymu_Preferences_Settings_Y_WRITE_T__ref_gen_ref, @function
m_Skymu_Preferences_Settings_Y_WRITE_T__ref_gen_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Preferences_Settings_Y_WRITE_T_ref_gen_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Preferences_Settings_Y_WRITE_T__ref_gen_ref, .-m_Skymu_Preferences_Settings_Y_WRITE_T__ref_gen_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref:
    .asciz "PropertyChanged"

.LN_1_m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged_ref:
    .asciz "PropertyChanged"

.LN_0_m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref:
    .asciz "PropertyChanged"

.LN_1_m_Skymu_Preferences_Settings_SettingsProxy_remove_PropertyChanged_ref:
    .asciz "PropertyChanged"

.LN_0_m_Skymu_Preferences_Settings_SettingsProxy_Notify_ref:
    .asciz "PropertyChanged"

.LN_1_m_Skymu_Preferences_Settings_SettingsProxy_Notify_ref:
    .asciz "System.ComponentModel.PropertyChangedEventArgs"

.LN_0_m_Skymu_Preferences_Settings_SettingsProxy_get_Item_ref:
    .asciz "_props"

.LN_0_m_Skymu_Preferences_Settings_SettingsProxy_set_Item_ref_ref:
    .asciz "_props"

.LS_0_m_Skymu_Preferences_Settings_get_InputName_void:
    .short 73, 110, 112, 117, 116, 78, 97, 109, 101

.LN_1_m_Skymu_Preferences_Settings_get_InputName_void:
    .asciz "Empty"

.LS_2_m_Skymu_Preferences_Settings_get_InputName_void:
    .short 85, 73, 47, 68, 101, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_set_InputName_ref:
    .short 73, 110, 112, 117, 116, 78, 97, 109, 101

.LS_1_m_Skymu_Preferences_Settings_set_InputName_ref:
    .short 73, 110, 112, 117, 116, 78, 97, 109, 101

.LS_2_m_Skymu_Preferences_Settings_set_InputName_ref:
    .short 85, 73, 47, 68, 101, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_get_OutputName_void:
    .short 79, 117, 116, 112, 117, 116, 78, 97, 109, 101

.LN_1_m_Skymu_Preferences_Settings_get_OutputName_void:
    .asciz "Empty"

.LS_2_m_Skymu_Preferences_Settings_get_OutputName_void:
    .short 85, 73, 47, 68, 101, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_set_OutputName_ref:
    .short 79, 117, 116, 112, 117, 116, 78, 97, 109, 101

.LS_1_m_Skymu_Preferences_Settings_set_OutputName_ref:
    .short 79, 117, 116, 112, 117, 116, 78, 97, 109, 101

.LS_2_m_Skymu_Preferences_Settings_set_OutputName_ref:
    .short 85, 73, 47, 68, 101, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_get_RingingName_void:
    .short 82, 105, 110, 103, 105, 110, 103, 78, 97, 109, 101

.LN_1_m_Skymu_Preferences_Settings_get_RingingName_void:
    .asciz "Empty"

.LS_2_m_Skymu_Preferences_Settings_get_RingingName_void:
    .short 85, 73, 47, 68, 101, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_set_RingingName_ref:
    .short 82, 105, 110, 103, 105, 110, 103, 78, 97, 109, 101

.LS_1_m_Skymu_Preferences_Settings_set_RingingName_ref:
    .short 82, 105, 110, 103, 105, 110, 103, 78, 97, 109, 101

.LS_2_m_Skymu_Preferences_Settings_set_RingingName_ref:
    .short 85, 73, 47, 68, 101, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_get_CheckUpdates_void:
    .short 67, 104, 101, 99, 107, 85, 112, 100, 97, 116, 101, 115

.LS_1_m_Skymu_Preferences_Settings_get_CheckUpdates_void:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_set_CheckUpdates_v:
    .short 67, 104, 101, 99, 107, 85, 112, 100, 97, 116, 101, 115

.LS_1_m_Skymu_Preferences_Settings_set_CheckUpdates_v:
    .short 67, 104, 101, 99, 107, 85, 112, 100, 97, 116, 101, 115

.LS_2_m_Skymu_Preferences_Settings_set_CheckUpdates_v:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_get_Language_void:
    .short 76, 97, 110, 103, 117, 97, 103, 101

.LS_1_m_Skymu_Preferences_Settings_get_Language_void:
    .short 69, 110, 103, 108, 105, 115, 104

.LS_2_m_Skymu_Preferences_Settings_get_Language_void:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_set_Language_ref:
    .short 76, 97, 110, 103, 117, 97, 103, 101

.LS_1_m_Skymu_Preferences_Settings_set_Language_ref:
    .short 76, 97, 110, 103, 117, 97, 103, 101

.LS_2_m_Skymu_Preferences_Settings_set_Language_ref:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_get_UseSystemCulture_void:
    .short 85, 115, 101, 83, 121, 115, 116, 101, 109, 67, 117, 108, 116, 117, 114, 101

.LS_1_m_Skymu_Preferences_Settings_get_UseSystemCulture_void:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_set_UseSystemCulture_v:
    .short 85, 115, 101, 83, 121, 115, 116, 101, 109, 67, 117, 108, 116, 117, 114, 101

.LS_1_m_Skymu_Preferences_Settings_set_UseSystemCulture_v:
    .short 85, 115, 101, 83, 121, 115, 116, 101, 109, 67, 117, 108, 116, 117, 114, 101

.LS_2_m_Skymu_Preferences_Settings_set_UseSystemCulture_v:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_get_EnableNotifications_void:
    .short 69, 110, 97, 98, 108, 101, 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115

.LS_1_m_Skymu_Preferences_Settings_get_EnableNotifications_void:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_set_EnableNotifications_v:
    .short 69, 110, 97, 98, 108, 101, 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115

.LS_1_m_Skymu_Preferences_Settings_set_EnableNotifications_v:
    .short 69, 110, 97, 98, 108, 101, 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115

.LS_2_m_Skymu_Preferences_Settings_set_EnableNotifications_v:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_get_QuitWithoutAsking_void:
    .short 81, 117, 105, 116, 87, 105, 116, 104, 111, 117, 116, 65, 115, 107, 105, 110, 103

.LS_1_m_Skymu_Preferences_Settings_get_QuitWithoutAsking_void:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_set_QuitWithoutAsking_v:
    .short 81, 117, 105, 116, 87, 105, 116, 104, 111, 117, 116, 65, 115, 107, 105, 110, 103

.LS_1_m_Skymu_Preferences_Settings_set_QuitWithoutAsking_v:
    .short 81, 117, 105, 116, 87, 105, 116, 104, 111, 117, 116, 65, 115, 107, 105, 110, 103

.LS_2_m_Skymu_Preferences_Settings_set_QuitWithoutAsking_v:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_get_InformDND_void:
    .short 73, 110, 102, 111, 114, 109, 68, 78, 68

.LS_1_m_Skymu_Preferences_Settings_get_InformDND_void:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_set_InformDND_v:
    .short 73, 110, 102, 111, 114, 109, 68, 78, 68

.LS_1_m_Skymu_Preferences_Settings_set_InformDND_v:
    .short 73, 110, 102, 111, 114, 109, 68, 78, 68

.LS_2_m_Skymu_Preferences_Settings_set_InformDND_v:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_get_InboxNoticeShown_void:
    .short 73, 110, 98, 111, 120, 78, 111, 116, 105, 99, 101, 83, 104, 111, 119, 110

.LS_1_m_Skymu_Preferences_Settings_get_InboxNoticeShown_void:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_set_InboxNoticeShown_v:
    .short 73, 110, 98, 111, 120, 78, 111, 116, 105, 99, 101, 83, 104, 111, 119, 110

.LS_1_m_Skymu_Preferences_Settings_set_InboxNoticeShown_v:
    .short 73, 110, 98, 111, 120, 78, 111, 116, 105, 99, 101, 83, 104, 111, 119, 110

.LS_2_m_Skymu_Preferences_Settings_set_InboxNoticeShown_v:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_get_HideLeftHandSide_void:
    .short 72, 105, 100, 101, 76, 101, 102, 116, 72, 97, 110, 100, 83, 105, 100, 101

.LS_1_m_Skymu_Preferences_Settings_get_HideLeftHandSide_void:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_set_HideLeftHandSide_v:
    .short 72, 105, 100, 101, 76, 101, 102, 116, 72, 97, 110, 100, 83, 105, 100, 101

.LS_1_m_Skymu_Preferences_Settings_set_HideLeftHandSide_v:
    .short 72, 105, 100, 101, 76, 101, 102, 116, 72, 97, 110, 100, 83, 105, 100, 101

.LS_2_m_Skymu_Preferences_Settings_set_HideLeftHandSide_v:
    .short 85, 73, 47, 71, 101, 110, 101, 114, 97, 108

.LS_0_m_Skymu_Preferences_Settings_get_Watermark_void:
    .short 87, 97, 116, 101, 114, 109, 97, 114, 107

.LS_1_m_Skymu_Preferences_Settings_get_Watermark_void:
    .short 85, 73, 47, 76, 105, 118, 101

.LS_0_m_Skymu_Preferences_Settings_set_Watermark_v:
    .short 87, 97, 116, 101, 114, 109, 97, 114, 107

.LS_1_m_Skymu_Preferences_Settings_set_Watermark_v:
    .short 87, 97, 116, 101, 114, 109, 97, 114, 107

.LS_2_m_Skymu_Preferences_Settings_set_Watermark_v:
    .short 85, 73, 47, 76, 105, 118, 101

.LS_0_m_Skymu_Preferences_Settings_get_AutoLogin_void:
    .short 65, 117, 116, 111, 76, 111, 103, 105, 110

.LS_1_m_Skymu_Preferences_Settings_get_AutoLogin_void:
    .short 85, 73, 47, 76, 111, 103, 105, 110

.LS_0_m_Skymu_Preferences_Settings_set_AutoLogin_v:
    .short 65, 117, 116, 111, 76, 111, 103, 105, 110

.LS_1_m_Skymu_Preferences_Settings_set_AutoLogin_v:
    .short 65, 117, 116, 111, 76, 111, 103, 105, 110

.LS_2_m_Skymu_Preferences_Settings_set_AutoLogin_v:
    .short 85, 73, 47, 76, 111, 103, 105, 110

.LS_0_m_Skymu_Preferences_Settings_get_SaveCredentials_void:
    .short 83, 97, 118, 101, 67, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115

.LS_1_m_Skymu_Preferences_Settings_get_SaveCredentials_void:
    .short 85, 73, 47, 76, 111, 103, 105, 110

.LS_0_m_Skymu_Preferences_Settings_set_SaveCredentials_v:
    .short 83, 97, 118, 101, 67, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115

.LS_1_m_Skymu_Preferences_Settings_set_SaveCredentials_v:
    .short 83, 97, 118, 101, 67, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115

.LS_2_m_Skymu_Preferences_Settings_set_SaveCredentials_v:
    .short 85, 73, 47, 76, 111, 103, 105, 110

.LS_0_m_Skymu_Preferences_Settings_get_ConvListWidth_void:
    .short 67, 111, 110, 118, 76, 105, 115, 116, 87, 105, 100, 116, 104

.LD_1_m_Skymu_Preferences_Settings_get_ConvListWidth_void:
    .double -1

.LS_2_m_Skymu_Preferences_Settings_get_ConvListWidth_void:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119

.LS_0_m_Skymu_Preferences_Settings_set_ConvListWidth_f8:
    .short 67, 111, 110, 118, 76, 105, 115, 116, 87, 105, 100, 116, 104

.LS_1_m_Skymu_Preferences_Settings_set_ConvListWidth_f8:
    .short 67, 111, 110, 118, 76, 105, 115, 116, 87, 105, 100, 116, 104

.LS_2_m_Skymu_Preferences_Settings_set_ConvListWidth_f8:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119

.LS_0_m_Skymu_Preferences_Settings_get_SaveWindowPosition_void:
    .short 83, 97, 118, 101, 87, 105, 110, 100, 111, 119, 80, 111, 115, 105, 116, 105, 111, 110

.LS_1_m_Skymu_Preferences_Settings_get_SaveWindowPosition_void:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119

.LS_0_m_Skymu_Preferences_Settings_set_SaveWindowPosition_v:
    .short 83, 97, 118, 101, 87, 105, 110, 100, 111, 119, 80, 111, 115, 105, 116, 105, 111, 110

.LS_1_m_Skymu_Preferences_Settings_set_SaveWindowPosition_v:
    .short 83, 97, 118, 101, 87, 105, 110, 100, 111, 119, 80, 111, 115, 105, 116, 105, 111, 110

.LS_2_m_Skymu_Preferences_Settings_set_SaveWindowPosition_v:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119

.LS_0_m_Skymu_Preferences_Settings_get_Height_void:
    .short 72, 101, 105, 103, 104, 116

.LD_1_m_Skymu_Preferences_Settings_get_Height_void:
    .double -1

.LS_2_m_Skymu_Preferences_Settings_get_Height_void:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_set_Height_f8:
    .short 72, 101, 105, 103, 104, 116

.LS_1_m_Skymu_Preferences_Settings_set_Height_f8:
    .short 72, 101, 105, 103, 104, 116

.LS_2_m_Skymu_Preferences_Settings_set_Height_f8:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_get_Maximized_void:
    .short 77, 97, 120, 105, 109, 105, 122, 101, 100

.LS_1_m_Skymu_Preferences_Settings_get_Maximized_void:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_set_Maximized_v:
    .short 77, 97, 120, 105, 109, 105, 122, 101, 100

.LS_1_m_Skymu_Preferences_Settings_set_Maximized_v:
    .short 77, 97, 120, 105, 109, 105, 122, 101, 100

.LS_2_m_Skymu_Preferences_Settings_set_Maximized_v:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_get_Width_void:
    .short 87, 105, 100, 116, 104

.LD_1_m_Skymu_Preferences_Settings_get_Width_void:
    .double -1

.LS_2_m_Skymu_Preferences_Settings_get_Width_void:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_set_Width_f8:
    .short 87, 105, 100, 116, 104

.LS_1_m_Skymu_Preferences_Settings_set_Width_f8:
    .short 87, 105, 100, 116, 104

.LS_2_m_Skymu_Preferences_Settings_set_Width_f8:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_get_X_void:
    .short 88

.LD_1_m_Skymu_Preferences_Settings_get_X_void:
    .double -1

.LS_2_m_Skymu_Preferences_Settings_get_X_void:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_set_X_f8:
    .short 88

.LS_1_m_Skymu_Preferences_Settings_set_X_f8:
    .short 88

.LS_2_m_Skymu_Preferences_Settings_set_X_f8:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_get_Y_void:
    .short 89

.LD_1_m_Skymu_Preferences_Settings_get_Y_void:
    .double -1

.LS_2_m_Skymu_Preferences_Settings_get_Y_void:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_set_Y_f8:
    .short 89

.LS_1_m_Skymu_Preferences_Settings_set_Y_f8:
    .short 89

.LS_2_m_Skymu_Preferences_Settings_set_Y_f8:
    .short 85, 73, 47, 77, 97, 105, 110, 87, 105, 110, 100, 111, 119, 52, 48

.LS_0_m_Skymu_Preferences_Settings_get_WindowChrome_void:
    .short 87, 105, 110, 100, 111, 119, 67, 104, 114, 111, 109, 101

.LS_1_m_Skymu_Preferences_Settings_get_WindowChrome_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_WindowChrome_v:
    .short 67, 104, 114, 111, 109, 101, 69, 110, 97, 98, 108, 101, 100

.LS_1_m_Skymu_Preferences_Settings_set_WindowChrome_v:
    .short 85, 73

.LS_2_m_Skymu_Preferences_Settings_set_WindowChrome_v:
    .short 67, 104, 114, 111, 109, 101, 69, 110, 97, 98, 108, 101, 100

.LS_3_m_Skymu_Preferences_Settings_set_WindowChrome_v:
    .short 85, 73

.LS_4_m_Skymu_Preferences_Settings_set_WindowChrome_v:
    .short 87, 105, 110, 100, 111, 119, 67, 104, 114, 111, 109, 101

.LS_5_m_Skymu_Preferences_Settings_set_WindowChrome_v:
    .short 87, 105, 110, 100, 111, 119, 67, 104, 114, 111, 109, 101

.LS_6_m_Skymu_Preferences_Settings_set_WindowChrome_v:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_NativeMenuBar_void:
    .short 78, 97, 116, 105, 118, 101, 77, 101, 110, 117, 66, 97, 114

.LS_1_m_Skymu_Preferences_Settings_get_NativeMenuBar_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_NativeMenuBar_v:
    .short 78, 97, 116, 105, 118, 101, 77, 101, 110, 117, 66, 97, 114

.LS_1_m_Skymu_Preferences_Settings_set_NativeMenuBar_v:
    .short 78, 97, 116, 105, 118, 101, 77, 101, 110, 117, 66, 97, 114

.LS_2_m_Skymu_Preferences_Settings_set_NativeMenuBar_v:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_RoomCallUI_void:
    .short 82, 111, 111, 109, 67, 97, 108, 108, 85, 73

.LS_1_m_Skymu_Preferences_Settings_get_RoomCallUI_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_RoomCallUI_v:
    .short 82, 111, 111, 109, 67, 97, 108, 108, 85, 73

.LS_1_m_Skymu_Preferences_Settings_set_RoomCallUI_v:
    .short 82, 111, 111, 109, 67, 97, 108, 108, 85, 73

.LS_2_m_Skymu_Preferences_Settings_set_RoomCallUI_v:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_EmojiFps_void:
    .short 69, 109, 111, 106, 105, 70, 112, 115

.LS_1_m_Skymu_Preferences_Settings_get_EmojiFps_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_EmojiFps_i4:
    .short 69, 109, 111, 106, 105, 70, 112, 115

.LS_1_m_Skymu_Preferences_Settings_set_EmojiFps_i4:
    .short 69, 109, 111, 106, 105, 70, 112, 115

.LS_2_m_Skymu_Preferences_Settings_set_EmojiFps_i4:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_Colorway_void:
    .short 67, 111, 108, 111, 114, 119, 97, 121

.LS_1_m_Skymu_Preferences_Settings_get_Colorway_void:
    .short 68, 101, 102, 97, 117, 108, 116

.LS_2_m_Skymu_Preferences_Settings_get_Colorway_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_Colorway_ref:
    .short 67, 111, 108, 111, 114, 119, 97, 121

.LS_1_m_Skymu_Preferences_Settings_set_Colorway_ref:
    .short 67, 111, 108, 111, 114, 119, 97, 121

.LS_2_m_Skymu_Preferences_Settings_set_Colorway_ref:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_PresentationFramework_void:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107

.LS_1_m_Skymu_Preferences_Settings_get_PresentationFramework_void:
    .short 65, 101, 114, 111, 46, 78, 111, 114, 109, 97, 108, 67, 111, 108, 111, 114

.LS_2_m_Skymu_Preferences_Settings_get_PresentationFramework_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_PresentationFramework_ref:
    .short 70, 108, 117, 101, 110, 116, 46, 68, 121, 110, 97, 109, 105, 99

.LS_1_m_Skymu_Preferences_Settings_set_PresentationFramework_ref:
    .short 70, 108, 117, 101, 110, 116, 46, 68, 97, 114, 107

.LS_2_m_Skymu_Preferences_Settings_set_PresentationFramework_ref:
    .short 70, 108, 117, 101, 110, 116, 46, 76, 105, 103, 104, 116

.LS_3_m_Skymu_Preferences_Settings_set_PresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107

.LS_4_m_Skymu_Preferences_Settings_set_PresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107

.LS_5_m_Skymu_Preferences_Settings_set_PresentationFramework_ref:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_Theme_void:
    .short 84, 104, 101, 109, 101

.LS_1_m_Skymu_Preferences_Settings_get_Theme_void:
    .short 83, 107, 121, 112, 101, 53

.LS_2_m_Skymu_Preferences_Settings_get_Theme_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_Theme_ref:
    .short 84, 104, 101, 109, 101

.LS_1_m_Skymu_Preferences_Settings_set_Theme_ref:
    .short 84, 104, 101, 109, 101

.LS_2_m_Skymu_Preferences_Settings_set_Theme_ref:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_UseClearType_void:
    .short 85, 115, 101, 67, 108, 101, 97, 114, 84, 121, 112, 101

.LS_1_m_Skymu_Preferences_Settings_get_UseClearType_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_UseClearType_v:
    .short 85, 115, 101, 67, 108, 101, 97, 114, 84, 121, 112, 101

.LS_1_m_Skymu_Preferences_Settings_set_UseClearType_v:
    .short 85, 115, 101, 67, 108, 101, 97, 114, 84, 121, 112, 101

.LS_2_m_Skymu_Preferences_Settings_set_UseClearType_v:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void:
    .short 68, 121, 110, 97, 109, 105, 99, 83, 105, 100, 101, 98, 97, 114, 84, 97, 98, 115

.LS_1_m_Skymu_Preferences_Settings_get_DynamicSidebarTabs_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v:
    .short 68, 121, 110, 97, 109, 105, 99, 83, 105, 100, 101, 98, 97, 114, 84, 97, 98, 115

.LS_1_m_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v:
    .short 68, 121, 110, 97, 109, 105, 99, 83, 105, 100, 101, 98, 97, 114, 84, 97, 98, 115

.LS_2_m_Skymu_Preferences_Settings_set_DynamicSidebarTabs_v:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_BlueNotifications_void:
    .short 66, 108, 117, 101, 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115

.LS_1_m_Skymu_Preferences_Settings_get_BlueNotifications_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_BlueNotifications_v:
    .short 66, 108, 117, 101, 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115

.LS_1_m_Skymu_Preferences_Settings_set_BlueNotifications_v:
    .short 66, 108, 117, 101, 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 115

.LS_2_m_Skymu_Preferences_Settings_set_BlueNotifications_v:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_FallbackFillColors_void:
    .short 70, 97, 108, 108, 98, 97, 99, 107, 70, 105, 108, 108, 67, 111, 108, 111, 114, 115

.LS_1_m_Skymu_Preferences_Settings_get_FallbackFillColors_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_FallbackFillColors_v:
    .short 70, 97, 108, 108, 98, 97, 99, 107, 70, 105, 108, 108, 67, 111, 108, 111, 114, 115

.LS_1_m_Skymu_Preferences_Settings_set_FallbackFillColors_v:
    .short 70, 97, 108, 108, 98, 97, 99, 107, 70, 105, 108, 108, 67, 111, 108, 111, 114, 115

.LS_2_m_Skymu_Preferences_Settings_set_FallbackFillColors_v:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_NikoIcons_void:
    .short 78, 105, 107, 111, 73, 99, 111, 110, 115

.LS_1_m_Skymu_Preferences_Settings_get_NikoIcons_void:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_set_NikoIcons_v:
    .short 78, 105, 107, 111, 73, 99, 111, 110, 115

.LS_1_m_Skymu_Preferences_Settings_set_NikoIcons_v:
    .short 78, 105, 107, 111, 73, 99, 111, 110, 115

.LS_2_m_Skymu_Preferences_Settings_set_NikoIcons_v:
    .short 83, 107, 121, 109, 117, 47, 65, 112, 112, 101, 97, 114, 97, 110, 99, 101

.LS_0_m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void:
    .short 83, 101, 112, 97, 114, 97, 116, 101, 67, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115, 70, 111, 114, 68, 101, 98, 117, 103

.LS_1_m_Skymu_Preferences_Settings_get_SeparateCredentialsForDebug_void:
    .short 83, 107, 121, 109, 117, 47, 68, 101, 98, 117, 103

.LS_0_m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v:
    .short 83, 101, 112, 97, 114, 97, 116, 101, 67, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115, 70, 111, 114, 68, 101, 98, 117, 103

.LS_1_m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v:
    .short 83, 101, 112, 97, 114, 97, 116, 101, 67, 114, 101, 100, 101, 110, 116, 105, 97, 108, 115, 70, 111, 114, 68, 101, 98, 117, 103

.LS_2_m_Skymu_Preferences_Settings_set_SeparateCredentialsForDebug_v:
    .short 83, 107, 121, 109, 117, 47, 68, 101, 98, 117, 103

.LS_0_m_Skymu_Preferences_Settings_get_CredsSubCount_void:
    .short 67, 114, 101, 100, 115, 83, 117, 98, 67, 111, 117, 110, 116

.LS_1_m_Skymu_Preferences_Settings_get_CredsSubCount_void:
    .short 83, 107, 121, 109, 117, 47, 76, 97, 114, 112

.LS_0_m_Skymu_Preferences_Settings_set_CredsSubCount_i4:
    .short 67, 114, 101, 100, 115, 83, 117, 98, 67, 111, 117, 110, 116

.LS_1_m_Skymu_Preferences_Settings_set_CredsSubCount_i4:
    .short 67, 114, 101, 100, 115, 83, 117, 98, 67, 111, 117, 110, 116

.LS_2_m_Skymu_Preferences_Settings_set_CredsSubCount_i4:
    .short 83, 107, 121, 109, 117, 47, 76, 97, 114, 112

.LS_0_m_Skymu_Preferences_Settings_get_BrandingName_void:
    .short 66, 114, 97, 110, 100, 105, 110, 103, 78, 97, 109, 101

.LS_1_m_Skymu_Preferences_Settings_get_BrandingName_void:
    .short 83, 107, 121, 112, 101

.LS_2_m_Skymu_Preferences_Settings_get_BrandingName_void:
    .short 83, 107, 121, 109, 117, 47, 76, 97, 114, 112

.LS_0_m_Skymu_Preferences_Settings_set_BrandingName_ref:
    .short 66, 114, 97, 110, 100, 105, 110, 103, 78, 97, 109, 101

.LS_1_m_Skymu_Preferences_Settings_set_BrandingName_ref:
    .short 66, 114, 97, 110, 100, 105, 110, 103, 78, 97, 109, 101

.LS_2_m_Skymu_Preferences_Settings_set_BrandingName_ref:
    .short 83, 107, 121, 109, 117, 47, 76, 97, 114, 112

.LS_0_m_Skymu_Preferences_Settings_get_CredsText_void:
    .short 67, 114, 101, 100, 115, 84, 101, 120, 116

.LS_1_m_Skymu_Preferences_Settings_get_CredsText_void:
    .short 36, 32, 48, 46, 48, 48

.LS_2_m_Skymu_Preferences_Settings_get_CredsText_void:
    .short 83, 107, 121, 109, 117, 47, 76, 97, 114, 112

.LS_0_m_Skymu_Preferences_Settings_set_CredsText_ref:
    .short 67, 114, 101, 100, 115, 84, 101, 120, 116

.LS_1_m_Skymu_Preferences_Settings_set_CredsText_ref:
    .short 67, 114, 101, 100, 115, 84, 101, 120, 116

.LS_2_m_Skymu_Preferences_Settings_set_CredsText_ref:
    .short 83, 107, 121, 109, 117, 47, 76, 97, 114, 112

.LS_0_m_Skymu_Preferences_Settings_get_NotificationTrigger_void:
    .short 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 84, 114, 105, 103, 103, 101, 114

.LS_1_m_Skymu_Preferences_Settings_get_NotificationTrigger_void:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_set_NotificationTrigger_v:
    .short 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 84, 114, 105, 103, 103, 101, 114

.LS_1_m_Skymu_Preferences_Settings_set_NotificationTrigger_v:
    .short 78, 111, 116, 105, 102, 105, 99, 97, 116, 105, 111, 110, 84, 114, 105, 103, 103, 101, 114

.LS_2_m_Skymu_Preferences_Settings_set_NotificationTrigger_v:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_get_AllowImplicitMentions_void:
    .short 65, 108, 108, 111, 119, 73, 109, 112, 108, 105, 99, 105, 116, 77, 101, 110, 116, 105, 111, 110, 115

.LS_1_m_Skymu_Preferences_Settings_get_AllowImplicitMentions_void:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_set_AllowImplicitMentions_v:
    .short 65, 108, 108, 111, 119, 73, 109, 112, 108, 105, 99, 105, 116, 77, 101, 110, 116, 105, 111, 110, 115

.LS_1_m_Skymu_Preferences_Settings_set_AllowImplicitMentions_v:
    .short 65, 108, 108, 111, 119, 73, 109, 112, 108, 105, 99, 105, 116, 77, 101, 110, 116, 105, 111, 110, 115

.LS_2_m_Skymu_Preferences_Settings_set_AllowImplicitMentions_v:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void:
    .short 83, 104, 111, 119, 73, 110, 108, 105, 110, 101, 76, 105, 110, 107, 87, 97, 114, 110, 105, 110, 103

.LS_1_m_Skymu_Preferences_Settings_get_ShowInlineLinkWarning_void:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v:
    .short 83, 104, 111, 119, 73, 110, 108, 105, 110, 101, 76, 105, 110, 107, 87, 97, 114, 110, 105, 110, 103

.LS_1_m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v:
    .short 83, 104, 111, 119, 73, 110, 108, 105, 110, 101, 76, 105, 110, 107, 87, 97, 114, 110, 105, 110, 103

.LS_2_m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning_v:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_get_MessagesToFetch_void:
    .short 77, 101, 115, 115, 97, 103, 101, 115, 84, 111, 70, 101, 116, 99, 104

.LS_1_m_Skymu_Preferences_Settings_get_MessagesToFetch_void:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_set_MessagesToFetch_i4:
    .short 77, 101, 115, 115, 97, 103, 101, 115, 84, 111, 70, 101, 116, 99, 104

.LS_1_m_Skymu_Preferences_Settings_set_MessagesToFetch_i4:
    .short 77, 101, 115, 115, 97, 103, 101, 115, 84, 111, 70, 101, 116, 99, 104

.LS_2_m_Skymu_Preferences_Settings_set_MessagesToFetch_i4:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_get_MessageLogger_void:
    .short 77, 101, 115, 115, 97, 103, 101, 76, 111, 103, 103, 101, 114

.LS_1_m_Skymu_Preferences_Settings_get_MessageLogger_void:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_set_MessageLogger_v:
    .short 77, 101, 115, 115, 97, 103, 101, 76, 111, 103, 103, 101, 114

.LS_1_m_Skymu_Preferences_Settings_set_MessageLogger_v:
    .short 77, 101, 115, 115, 97, 103, 101, 76, 111, 103, 103, 101, 114

.LS_2_m_Skymu_Preferences_Settings_set_MessageLogger_v:
    .short 83, 107, 121, 109, 117, 47, 77, 101, 115, 115, 97, 103, 105, 110, 103

.LS_0_m_Skymu_Preferences_Settings_get_CustomPluginPath_void:
    .short 67, 117, 115, 116, 111, 109, 80, 108, 117, 103, 105, 110, 80, 97, 116, 104

.LN_1_m_Skymu_Preferences_Settings_get_CustomPluginPath_void:
    .asciz "Empty"

.LS_2_m_Skymu_Preferences_Settings_get_CustomPluginPath_void:
    .short 83, 107, 121, 109, 117, 47, 80, 108, 117, 103, 105, 110, 115

.LS_0_m_Skymu_Preferences_Settings_set_CustomPluginPath_ref:
    .short 67, 117, 115, 116, 111, 109, 80, 108, 117, 103, 105, 110, 80, 97, 116, 104

.LS_1_m_Skymu_Preferences_Settings_set_CustomPluginPath_ref:
    .short 67, 117, 115, 116, 111, 109, 80, 108, 117, 103, 105, 110, 80, 97, 116, 104

.LS_2_m_Skymu_Preferences_Settings_set_CustomPluginPath_ref:
    .short 83, 107, 121, 109, 117, 47, 80, 108, 117, 103, 105, 110, 115

.LS_0_m_Skymu_Preferences_Settings_get_SkippedVersion_void:
    .short 83, 107, 105, 112, 112, 101, 100, 86, 101, 114, 115, 105, 111, 110

.LN_1_m_Skymu_Preferences_Settings_get_SkippedVersion_void:
    .asciz "Empty"

.LS_2_m_Skymu_Preferences_Settings_get_SkippedVersion_void:
    .short 83, 107, 121, 109, 117, 47, 85, 112, 100, 97, 116, 101, 114

.LS_0_m_Skymu_Preferences_Settings_set_SkippedVersion_ref:
    .short 83, 107, 105, 112, 112, 101, 100, 86, 101, 114, 115, 105, 111, 110

.LS_1_m_Skymu_Preferences_Settings_set_SkippedVersion_ref:
    .short 83, 107, 105, 112, 112, 101, 100, 86, 101, 114, 115, 105, 111, 110

.LS_2_m_Skymu_Preferences_Settings_set_SkippedVersion_ref:
    .short 83, 107, 121, 109, 117, 47, 85, 112, 100, 97, 116, 101, 114

.LS_0_m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void:
    .short 65, 108, 108, 111, 119, 66, 101, 116, 97, 66, 117, 105, 108, 100, 85, 112, 100, 97, 116, 101, 115

.LS_1_m_Skymu_Preferences_Settings_get_AllowBetaBuildUpdates_void:
    .short 83, 107, 121, 109, 117, 47, 85, 112, 100, 97, 116, 101, 114

.LS_0_m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v:
    .short 65, 108, 108, 111, 119, 66, 101, 116, 97, 66, 117, 105, 108, 100, 85, 112, 100, 97, 116, 101, 115

.LS_1_m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v:
    .short 65, 108, 108, 111, 119, 66, 101, 116, 97, 66, 117, 105, 108, 100, 85, 112, 100, 97, 116, 101, 115

.LS_2_m_Skymu_Preferences_Settings_set_AllowBetaBuildUpdates_v:
    .short 83, 107, 121, 109, 117, 47, 85, 112, 100, 97, 116, 101, 114

.LS_0_m_Skymu_Preferences_Settings_get_Anonymize_void:
    .short 65, 110, 111, 110, 121, 109, 105, 122, 101

.LS_1_m_Skymu_Preferences_Settings_get_Anonymize_void:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_set_Anonymize_v:
    .short 65, 110, 111, 110, 121, 109, 105, 122, 101

.LS_1_m_Skymu_Preferences_Settings_set_Anonymize_v:
    .short 65, 110, 111, 110, 121, 109, 105, 122, 101

.LS_2_m_Skymu_Preferences_Settings_set_Anonymize_v:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_get_DisableSWS_void:
    .short 68, 105, 115, 97, 98, 108, 101, 83, 87, 83

.LS_1_m_Skymu_Preferences_Settings_get_DisableSWS_void:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_set_DisableSWS_v:
    .short 68, 105, 115, 97, 98, 108, 101, 83, 87, 83

.LS_1_m_Skymu_Preferences_Settings_set_DisableSWS_v:
    .short 68, 105, 115, 97, 98, 108, 101, 83, 87, 83

.LS_2_m_Skymu_Preferences_Settings_set_DisableSWS_v:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_get_SWSOptOutShown_void:
    .short 83, 87, 83, 79, 112, 116, 79, 117, 116, 83, 104, 111, 119, 110

.LS_1_m_Skymu_Preferences_Settings_get_SWSOptOutShown_void:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_set_SWSOptOutShown_v:
    .short 83, 87, 83, 79, 112, 116, 79, 117, 116, 83, 104, 111, 119, 110

.LS_1_m_Skymu_Preferences_Settings_set_SWSOptOutShown_v:
    .short 83, 87, 83, 79, 112, 116, 79, 117, 116, 83, 104, 111, 119, 110

.LS_2_m_Skymu_Preferences_Settings_set_SWSOptOutShown_v:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_get_EnableSkypeHome_void:
    .short 69, 110, 97, 98, 108, 101, 83, 107, 121, 112, 101, 72, 111, 109, 101

.LS_1_m_Skymu_Preferences_Settings_get_EnableSkypeHome_void:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_set_EnableSkypeHome_v:
    .short 69, 110, 97, 98, 108, 101, 83, 107, 121, 112, 101, 72, 111, 109, 101

.LS_1_m_Skymu_Preferences_Settings_set_EnableSkypeHome_v:
    .short 69, 110, 97, 98, 108, 101, 83, 107, 121, 112, 101, 72, 111, 109, 101

.LS_2_m_Skymu_Preferences_Settings_set_EnableSkypeHome_v:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_get_EnableAdBlock_void:
    .short 69, 110, 97, 98, 108, 101, 65, 100, 66, 108, 111, 99, 107

.LS_1_m_Skymu_Preferences_Settings_get_EnableAdBlock_void:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_set_EnableAdBlock_v:
    .short 69, 110, 97, 98, 108, 101, 65, 100, 66, 108, 111, 99, 107

.LS_1_m_Skymu_Preferences_Settings_set_EnableAdBlock_v:
    .short 69, 110, 97, 98, 108, 101, 65, 100, 66, 108, 111, 99, 107

.LS_2_m_Skymu_Preferences_Settings_set_EnableAdBlock_v:
    .short 83, 107, 121, 109, 117, 47, 87, 101, 98, 83, 101, 114, 118, 105, 99, 101, 115

.LS_0_m_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void:
    .short 67, 97, 108, 108, 79, 117, 116, 84, 111, 82, 101, 99, 111, 110, 110, 101, 99, 116, 83, 111, 117, 110, 100

.LS_1_m_Skymu_Preferences_Settings_get_CallOutToReconnectSound_void:
    .short 83, 107, 121, 109, 117, 47, 83, 111, 117, 110, 100, 115

.LS_0_m_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v:
    .short 67, 97, 108, 108, 79, 117, 116, 84, 111, 82, 101, 99, 111, 110, 110, 101, 99, 116, 83, 111, 117, 110, 100

.LS_1_m_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v:
    .short 67, 97, 108, 108, 79, 117, 116, 84, 111, 82, 101, 99, 111, 110, 110, 101, 99, 116, 83, 111, 117, 110, 100

.LS_2_m_Skymu_Preferences_Settings_set_CallOutToReconnectSound_v:
    .short 83, 107, 121, 109, 117, 47, 83, 111, 117, 110, 100, 115

.LS_0_m_Skymu_Preferences_Settings_get_SoundPack_void:
    .short 83, 111, 117, 110, 100, 80, 97, 99, 107

.LS_1_m_Skymu_Preferences_Settings_get_SoundPack_void:
    .short 83, 107, 121, 109, 117, 47, 83, 111, 117, 110, 100, 115

.LS_0_m_Skymu_Preferences_Settings_set_SoundPack_v:
    .short 83, 111, 117, 110, 100, 80, 97, 99, 107

.LS_1_m_Skymu_Preferences_Settings_set_SoundPack_v:
    .short 83, 111, 117, 110, 100, 80, 97, 99, 107

.LS_2_m_Skymu_Preferences_Settings_set_SoundPack_v:
    .short 83, 107, 121, 109, 117, 47, 83, 111, 117, 110, 100, 115

.LS_0_m_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void:
    .short 79, 108, 100, 80, 108, 97, 116, 102, 111, 114, 109, 87, 97, 114, 110, 105, 110, 103, 83, 104, 111, 119, 110

.LS_1_m_Skymu_Preferences_Settings_get_OldPlatformWarningShown_void:
    .short 83, 107, 121, 109, 117, 47, 83, 121, 115, 116, 101, 109

.LS_0_m_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v:
    .short 79, 108, 100, 80, 108, 97, 116, 102, 111, 114, 109, 87, 97, 114, 110, 105, 110, 103, 83, 104, 111, 119, 110

.LS_1_m_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v:
    .short 79, 108, 100, 80, 108, 97, 116, 102, 111, 114, 109, 87, 97, 114, 110, 105, 110, 103, 83, 104, 111, 119, 110

.LS_2_m_Skymu_Preferences_Settings_set_OldPlatformWarningShown_v:
    .short 83, 107, 121, 109, 117, 47, 83, 121, 115, 116, 101, 109

.LS_0_m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void:
    .short 83, 104, 111, 119, 79, 108, 100, 68, 111, 116, 78, 101, 116, 87, 97, 114, 110, 105, 110, 103, 115

.LS_1_m_Skymu_Preferences_Settings_get_ShowOldDotNetWarnings_void:
    .short 83, 107, 121, 109, 117, 47, 83, 121, 115, 116, 101, 109

.LS_0_m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v:
    .short 83, 104, 111, 119, 79, 108, 100, 68, 111, 116, 78, 101, 116, 87, 97, 114, 110, 105, 110, 103, 115

.LS_1_m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v:
    .short 83, 104, 111, 119, 79, 108, 100, 68, 111, 116, 78, 101, 116, 87, 97, 114, 110, 105, 110, 103, 115

.LS_2_m_Skymu_Preferences_Settings_set_ShowOldDotNetWarnings_v:
    .short 83, 107, 121, 109, 117, 47, 83, 121, 115, 116, 101, 109

.LS_0_m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void:
    .short 67, 104, 101, 99, 107, 83, 112, 101, 101, 100, 79, 110, 83, 116, 97, 114, 116, 117, 112

.LS_1_m_Skymu_Preferences_Settings_get_CheckSpeedOnStartup_void:
    .short 83, 107, 121, 109, 117, 47, 83, 116, 97, 114, 116, 117, 112

.LS_0_m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v:
    .short 67, 104, 101, 99, 107, 83, 112, 101, 101, 100, 79, 110, 83, 116, 97, 114, 116, 117, 112

.LS_1_m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v:
    .short 67, 104, 101, 99, 107, 83, 112, 101, 101, 100, 79, 110, 83, 116, 97, 114, 116, 117, 112

.LS_2_m_Skymu_Preferences_Settings_set_CheckSpeedOnStartup_v:
    .short 83, 107, 121, 109, 117, 47, 83, 116, 97, 114, 116, 117, 112

.LS_0_m_Skymu_Preferences_Settings_get_AllowMultipleInstances_void:
    .short 65, 108, 108, 111, 119, 77, 117, 108, 116, 105, 112, 108, 101, 73, 110, 115, 116, 97, 110, 99, 101, 115

.LS_1_m_Skymu_Preferences_Settings_get_AllowMultipleInstances_void:
    .short 83, 107, 121, 109, 117, 47, 83, 116, 97, 114, 116, 117, 112

.LS_0_m_Skymu_Preferences_Settings_set_AllowMultipleInstances_v:
    .short 65, 108, 108, 111, 119, 77, 117, 108, 116, 105, 112, 108, 101, 73, 110, 115, 116, 97, 110, 99, 101, 115

.LS_1_m_Skymu_Preferences_Settings_set_AllowMultipleInstances_v:
    .short 65, 108, 108, 111, 119, 77, 117, 108, 116, 105, 112, 108, 101, 73, 110, 115, 116, 97, 110, 99, 101, 115

.LS_2_m_Skymu_Preferences_Settings_set_AllowMultipleInstances_v:
    .short 83, 107, 121, 109, 117, 47, 83, 116, 97, 114, 116, 117, 112

.LS_0_m_Skymu_Preferences_Settings_get_StartMinimized_void:
    .short 83, 116, 97, 114, 116, 77, 105, 110, 105, 109, 105, 122, 101, 100

.LS_1_m_Skymu_Preferences_Settings_get_StartMinimized_void:
    .short 83, 107, 121, 109, 117, 47, 83, 116, 97, 114, 116, 117, 112

.LS_0_m_Skymu_Preferences_Settings_set_StartMinimized_v:
    .short 83, 116, 97, 114, 116, 77, 105, 110, 105, 109, 105, 122, 101, 100

.LS_1_m_Skymu_Preferences_Settings_set_StartMinimized_v:
    .short 83, 116, 97, 114, 116, 77, 105, 110, 105, 109, 105, 122, 101, 100

.LS_2_m_Skymu_Preferences_Settings_set_StartMinimized_v:
    .short 83, 107, 121, 109, 117, 47, 83, 116, 97, 114, 116, 117, 112

.LS_0_m_Skymu_Preferences_Settings_get_CertificateStore_void:
    .short 67, 101, 114, 116, 105, 102, 105, 99, 97, 116, 101, 83, 116, 111, 114, 101

.LS_0_m_Skymu_Preferences_Settings_set_CertificateStore_v:
    .short 67, 101, 114, 116, 105, 102, 105, 99, 97, 116, 101, 83, 116, 111, 114, 101

.LS_1_m_Skymu_Preferences_Settings_set_CertificateStore_v:
    .short 67, 101, 114, 116, 105, 102, 105, 99, 97, 116, 101, 83, 116, 111, 114, 101

.LS_0_m_Skymu_Preferences_Settings_get_CertPath_void:
    .short 67, 101, 114, 116, 80, 97, 116, 104

.LN_1_m_Skymu_Preferences_Settings_get_CertPath_void:
    .asciz "Empty"

.LS_0_m_Skymu_Preferences_Settings_set_CertPath_ref:
    .short 67, 101, 114, 116, 80, 97, 116, 104

.LS_1_m_Skymu_Preferences_Settings_set_CertPath_ref:
    .short 67, 101, 114, 116, 80, 97, 116, 104

.LN_0_m_Skymu_Preferences_Settings_Reset_void:
    .asciz "FilePath"

.LN_1_m_Skymu_Preferences_Settings_Reset_void:
    .asciz "FilePath"

.LN_0_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "FilePath"

.LN_1_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "FilePath"

.LS_2_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .short 114, 101, 118, 105, 115, 105, 111, 110

.LS_3_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .short 83, 107, 121, 109, 117, 32, 104, 97, 115, 32, 100, 105, 115, 99, 111, 118, 101, 114, 101, 100, 32, 116, 104, 97, 116, 32, 121, 111, 117, 114, 32, 99, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 32, 102, 105, 108, 101, 32, 105, 115, 32, 99, 111, 114, 114, 117, 112, 116, 32, 111, 114, 32, 102, 114, 111, 109, 32, 97, 110, 32, 105, 110, 99, 111, 109, 112, 97, 116, 105, 98, 108, 101, 32, 118, 101, 114, 115, 105, 111, 110, 32, 111, 102, 32, 116, 104, 101, 32, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 46, 32, 73, 116, 32, 104, 97, 115, 32, 98, 101, 101, 110, 32, 114, 101, 115, 101, 116, 32, 97, 110, 100, 32, 121, 111, 117, 114, 32, 115, 101, 116, 116, 105, 110, 103, 115, 32, 104, 97, 118, 101, 32, 98, 101, 101, 110, 32, 119, 105, 112, 101, 100, 46

.LS_4_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .short 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 32, 102, 105, 108, 101, 32, 114, 101, 115, 101, 116

.LN_5_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "FilePath"

.LN_6_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "FilePath"

.LS_7_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .short 99, 111, 110, 102, 105, 103

.LS_8_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .short 114, 101, 118, 105, 115, 105, 111, 110

.LN_9_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "System.Int32"

.LN_10_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "System.Xml.Linq.XAttribute"

.LN_11_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "System.Xml.Linq.XElement"

.LN_12_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "System.Xml.Linq.XDocument"

.LN_13_m_Skymu_Preferences_Settings_LoadOrCreate_void:
    .asciz "FilePath"

.LN_0_m_Skymu_Preferences_Settings_GetOrCreateNode_ref_ref:
    .asciz "System.Xml.Linq.XElement"

.LN_0_m_Skymu_Preferences_Settings_Set_ref_ref_ref:
    .asciz "System.Xml.Linq.XElement"

.LN_1_m_Skymu_Preferences_Settings_Set_ref_ref_ref:
    .asciz "FilePath"

.LN_0_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void:
    .asciz "Y_FilePath"

.LN_1_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void:
    .asciz "Y_FilePath"

.LN_2_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void:
    .asciz "Y_FilePath"

.LS_3_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void:
    .short 99, 111, 110, 102, 105, 103

.LN_4_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void:
    .asciz "System.Xml.Linq.XElement"

.LN_5_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void:
    .asciz "System.Xml.Linq.XDocument"

.LN_6_m_Skymu_Preferences_Settings_Y_LoadOrCreate_void:
    .asciz "Y_FilePath"

.LS_0_m_Skymu_Preferences_Settings_cctor_void:
    .short 83, 107, 121, 109, 117

.LS_1_m_Skymu_Preferences_Settings_cctor_void:
    .short 115, 104, 97, 114, 101, 100, 46, 120, 109, 108

.LN_2_m_Skymu_Preferences_Settings_cctor_void:
    .asciz "FilePath"

.LS_3_m_Skymu_Preferences_Settings_cctor_void:
    .short 89, 103, 103, 100, 114, 97, 115, 105, 108

.LS_4_m_Skymu_Preferences_Settings_cctor_void:
    .short 114, 97, 116, 97, 116, 111, 115, 107, 114, 46, 120, 109, 108

.LN_5_m_Skymu_Preferences_Settings_cctor_void:
    .asciz "Y_FilePath"

.LN_6_m_Skymu_Preferences_Settings_cctor_void:
    .asciz "Skymu.Preferences.Settings/SettingsProxy"

.LN_7_m_Skymu_Preferences_Settings_cctor_void:
    .asciz "Default"

.LSTUB_m_Skymu_Preferences_Settings_SettingsProxy_cctor_void:
    .asciz "Skymu.Preferences.Settings/SettingsProxy::.cctor  [inconsistent stack depth at IL_0039: 0 vs 3]"

.LSTUB_m_Skymu_Preferences_Settings_WRITE_T_ref_gen_ref_ref:
    .asciz "Skymu.Preferences.Settings::WRITE<T>  [argument ''value'' not found in signature of Skymu.Preferences.Settings::WRITE<T>]"

.LSTUB_m_Skymu_Preferences_Settings_WRITE_T_ref_gen_ref:
    .asciz "Skymu.Preferences.Settings::WRITE<T>  [argument ''value'' not found in signature of Skymu.Preferences.Settings::WRITE<T>]"

.LSTUB_m_Skymu_Preferences_Settings_Y_WRITE_T_ref_gen_ref:
    .asciz "Skymu.Preferences.Settings::Y_WRITE<T>  [argument ''value'' not found in signature of Skymu.Preferences.Settings::Y_WRITE<T>]"

    .section .note.GNU-stack,"",@progbits
