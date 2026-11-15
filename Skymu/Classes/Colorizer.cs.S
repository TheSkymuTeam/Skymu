# Classes/Colorizer.cs
    .text

.globl m_Skymu_Theming_Colorizer_c_cctor__void
.type m_Skymu_Theming_Colorizer_c_cctor__void, @function
m_Skymu_Theming_Colorizer_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Theming_Colorizer_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Theming_Colorizer_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Theming_Colorizer_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Theming_Colorizer_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Theming_Colorizer_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_c_cctor__void, .-m_Skymu_Theming_Colorizer_c_cctor__void

.globl m_Skymu_Theming_Colorizer_c_ctor__void
.type m_Skymu_Theming_Colorizer_c_ctor__void, @function
m_Skymu_Theming_Colorizer_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_Colorizer_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Theming_Colorizer_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_c_ctor__void, .-m_Skymu_Theming_Colorizer_c_ctor__void

.globl m_Skymu_Theming_Colorizer_c_Scan_b_6_0__ref_ref
.type m_Skymu_Theming_Colorizer_c_Scan_b_6_0__ref_ref, @function
m_Skymu_Theming_Colorizer_c_Scan_b_6_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_PropertyChangedEventArgs_get_PropertyName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_0006:
    lea .LS_0_m_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_000b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_0010:
    mov -40(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_0017
.Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_0012:
    call m_Skymu_Theming_Colorizer_LoadFromSettings__void
.Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_c_Scan_b_6_0__ref_ref, .-m_Skymu_Theming_Colorizer_c_Scan_b_6_0__ref_ref

.globl m_Skymu_Theming_Colorizer_get_Colorways__void
.type m_Skymu_Theming_Colorizer_get_Colorways__void, @function
m_Skymu_Theming_Colorizer_get_Colorways__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Theming_Colorizer_get_Colorways_void_0000:
    lea .LN_0_m_Skymu_Theming_Colorizer_get_Colorways_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_get_Colorways_void_0005:
    lea .LN_1_m_Skymu_Theming_Colorizer_get_Colorways_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__gen
    mov %r12, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_get_Colorways_void_000a:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_get_Colorways_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_get_Colorways__void, .-m_Skymu_Theming_Colorizer_get_Colorways__void

.globl m_Skymu_Theming_Colorizer_Scan__void
.type m_Skymu_Theming_Colorizer_Scan__void, @function
m_Skymu_Theming_Colorizer_Scan__void:
    push %rbp
    mov %rsp, %rbp
    sub $112, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0000:
    call m_System_AppDomain_get_CurrentDomain__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0005:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_AppDomain_get_BaseDirectory__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_000a:
    lea .LS_0_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_000f:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_IO_Path_Combine__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0014:
    mov -56(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0015:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0016:
    mov -56(%rbp), %rdi
    call m_System_IO_Directory_Exists__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_001b:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_Colorizer_Scan_void_001f
.Lm_Skymu_Theming_Colorizer_Scan_void_001d:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_001e:
    mov -56(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_Scan_void_001f:
    lea .LN_1_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0024:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Clear__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0029:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_002a:
    lea .LS_2_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_002f:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_IO_Directory_GetFiles__ref_ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0034:
    mov -64(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0035:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0036:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0037:
    jmp .Lm_Skymu_Theming_Colorizer_Scan_void_0069
.Lm_Skymu_Theming_Colorizer_Scan_void_0039:
    mov -24(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_003a:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_003b:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_003c:
    mov -80(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_003d:
    mov -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_003e:
    mov -80(%rbp), %rdi
    call m_Skymu_Theming_Colorizer_ReadColorwayInfo__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0043:
    mov -80(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0045:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0047:
    mov -80(%rbp), %rdi
    lea .LN_3_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_004c:
    mov -80(%rbp), %rdi
    call m_System_String_IsNullOrWhiteSpace__ref
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0051:
    mov -80(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_Colorizer_Scan_void_0065
.Lm_Skymu_Theming_Colorizer_Scan_void_0053:
    lea .LN_4_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0058:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_005a:
    mov -88(%rbp), %rdi
    lea .LN_5_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_005f:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0060:
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
.Lm_Skymu_Theming_Colorizer_Scan_void_0065:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0066:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0067:
    mov -96(%rbp), %rcx
    mov -88(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0068:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0069:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_006a:
    mov -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_006b:
    mov -72(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_006c:
    mov -80(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_006d:
    mov -88(%rbp), %rcx
    mov -80(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Theming_Colorizer_Scan_void_0039
.Lm_Skymu_Theming_Colorizer_Scan_void_006f:
    lea .LN_6_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0074:
    lea .LN_7_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0079:
    mov -88(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_007a:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_Colorizer_Scan_void_0093
.Lm_Skymu_Theming_Colorizer_Scan_void_007c:
    mov -80(%rbp), %rax
.Lm_Skymu_Theming_Colorizer_Scan_void_007d:
    lea .LN_8_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0082:
    lea m_Skymu_Theming_Colorizer_c_Scan_b_6_0__ref_ref(%rip), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_0088:
    lea .LN_9_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -88(%rbp), %rdx
    mov -80(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventHandler_ctor__ref_v
    mov %r12, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_008d:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_008e:
    lea .LN_10_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    call shim_global_slot
    mov -80(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Theming_Colorizer_Scan_void_0093:
    mov -80(%rbp), %rsi
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref
.Lm_Skymu_Theming_Colorizer_Scan_void_0098:
    lea .LN_11_m_Skymu_Theming_Colorizer_Scan_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_009d:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Count__void
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_00a2:
    mov $0, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_00a3:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    cmp %ecx, %eax
    setg %al
    movzbl %al, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_Colorizer_Scan_void_00a5:
    mov -72(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_Scan_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_Scan__void, .-m_Skymu_Theming_Colorizer_Scan__void

.globl m_Skymu_Theming_Colorizer_LoadFromSettings__void
.type m_Skymu_Theming_Colorizer_LoadFromSettings__void, @function
m_Skymu_Theming_Colorizer_LoadFromSettings__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0000:
    lea .LN_0_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0005:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0008
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0007:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0008:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0009:
    lea .LN_1_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    call shim_global_slot
    mov -56(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_000e:
    call m_Skymu_Preferences_Settings_get_Colorway__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0013:
    mov -56(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0014:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0015:
    mov -56(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_001a:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0036
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_001c:
    lea .LN_2_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0021:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0022:
    lea -24(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0024:
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
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0029:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0036
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_002b:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_002c:
    mov -56(%rbp), %rdi
    call m_Skymu_Theming_Colorizer_LoadFromPath__ref
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0031:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00bc
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0036:
    lea .LN_3_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_003b:
    lea .LS_4_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0040:
    lea -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0042:
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
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0047:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_005b
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0049:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_004a:
    mov -56(%rbp), %rdi
    call m_Skymu_Theming_Colorizer_LoadFromPath__ref
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_004f:
    lea .LS_5_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0054:
    mov -56(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_Colorway__ref
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0059:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00bc
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_005b:
    lea .LN_6_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0060:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0065:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0066:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_008b
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0068:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_006a:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Current__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_006f:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0071:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0073:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Value__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0078:
    mov -56(%rbp), %rdi
    call m_Skymu_Theming_Colorizer_LoadFromPath__ref
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_007d:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_007f:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_get_Key__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0084:
    mov -56(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_Colorway__ref
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0089:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00bc
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_008b:
    lea -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_008d:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_MoveNext__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0092:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0068
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_0094:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00a4
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00a4:
    lea .LS_7_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00a9:
    lea .LN_8_m_Skymu_Theming_Colorizer_LoadFromSettings_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_InvalidOperationException_ctor__ref
    mov %r12, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00ae:
    mov -56(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00b3:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00bc
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_00bc:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_LoadFromSettings_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_LoadFromSettings__void, .-m_Skymu_Theming_Colorizer_LoadFromSettings__void

.globl m_Skymu_Theming_Colorizer_Load__ref
.type m_Skymu_Theming_Colorizer_Load__ref, @function
m_Skymu_Theming_Colorizer_Load__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_0000:
    lea .LN_0_m_Skymu_Theming_Colorizer_Load_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_0005:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_0006:
    lea -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_TryGetValue__gen_gen
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_000d:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_Load_ref_0016
.Lm_Skymu_Theming_Colorizer_Load_ref_000f:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_0010:
    mov -32(%rbp), %rdi
    call m_Skymu_Theming_Colorizer_LoadFromPath__ref
.Lm_Skymu_Theming_Colorizer_Load_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_Load_ref_0016:
    lea .LS_1_m_Skymu_Theming_Colorizer_Load_ref(%rip), %rdi
    mov $10, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_001c:
    lea .LS_2_m_Skymu_Theming_Colorizer_Load_ref(%rip), %rdi
    mov $39, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_0021:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_0026:
    lea .LN_3_m_Skymu_Theming_Colorizer_Load_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_FileNotFoundException_ctor__ref
    mov %r12, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_Load_ref_002b:
    mov -32(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_Theming_Colorizer_Load_ref_0030:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_Load_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_Load__ref, .-m_Skymu_Theming_Colorizer_Load__ref

.globl m_Skymu_Theming_Colorizer_LoadFromPath__ref
.type m_Skymu_Theming_Colorizer_LoadFromPath__ref, @function
m_Skymu_Theming_Colorizer_LoadFromPath__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0000:
    lea .LN_0_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_ResourceDictionary_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0007:
    mov $1, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0008:
    lea .LN_1_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_000d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_set_Source__ref
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0012:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0013:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0018:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_001d:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_001e:
    lea .LN_2_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0023:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0036
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0025:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0026:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_MergedDictionaries__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_002b:
    lea .LN_3_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0030:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_Remove__gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0035:
    mov -48(%rbp), %rax
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0036:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0037:
    mov -48(%rbp), %rdi
    call m_Skymu_Theming_Colorizer_ReadColorwayInfo__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_003c:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0041:
    mov -48(%rbp), %rdi
    call m_Skymu_Universal_set_IsDarkTheme__b
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0046:
    call m_Skymu_Preferences_Settings_get_PresentationFramework__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_004b:
    lea .LS_5_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0050:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0055:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_009d
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0057:
    call m_Skymu_Universal_get_IsDarkTheme__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_005c:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_007b
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_005e:
    call m_Skymu_Preferences_Settings_get_PresentationFramework__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0063:
    lea .LS_6_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0068:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_006d:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_007b
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_006f:
    lea .LS_7_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0074:
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_PresentationFramework__ref
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0079:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_009d
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_007b:
    call m_Skymu_Universal_get_IsDarkTheme__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0080:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_009d
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0082:
    call m_Skymu_Preferences_Settings_get_PresentationFramework__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0087:
    lea .LS_8_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    mov $11, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_008c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0091:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_009d
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0093:
    lea .LS_9_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_0098:
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_PresentationFramework__ref
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_009d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_009e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_MergedDictionaries__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00a3:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00a4:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_Add__gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00a9:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00aa:
    lea .LN_10_m_Skymu_Theming_Colorizer_LoadFromPath_ref(%rip), %rdi
    call shim_global_slot
    mov -56(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00af:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00b4:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00b9:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_MergedDictionaries__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00be:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_GetEnumerator__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00c3:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00c4:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00cd
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00c6:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00c7:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Current__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00cc:
    mov -56(%rbp), %rax
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00cd:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00ce:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00d3:
    mov -56(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00c6
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00d5:
    jmp .Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00e1
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_00e1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_LoadFromPath_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_LoadFromPath__ref, .-m_Skymu_Theming_Colorizer_LoadFromPath__ref

.globl m_Skymu_Theming_Colorizer_ReadColorwayInfo__ref
.type m_Skymu_Theming_Colorizer_ReadColorwayInfo__ref, @function
m_Skymu_Theming_Colorizer_ReadColorwayInfo__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0000:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0001:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0002:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0003:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0004:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0005:
    mov -48(%rbp), %rdi
    call m_System_Xml_XmlReader_Create__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_000a:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_000b:
    jmp .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0093
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0010:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0011:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_get_NodeType__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0016:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0017:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0050
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0019:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_001a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_get_LocalName__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_001f:
    lea .LS_0_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0024:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0029:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0050
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_002b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_002c:
    lea .LS_1_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0031:
    lea .LS_2_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    mov $44, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0036:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_GetAttribute__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_003b:
    lea .LS_3_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    mov $13, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0040:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0045:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0093
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0047:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0048:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_ReadElementContentAsString__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_004d:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_004e:
    jmp .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0093
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0050:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0051:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_get_NodeType__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0056:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0057:
    mov -56(%rbp), %rcx
    mov -48(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0093
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0059:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_005a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_get_LocalName__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_005f:
    lea .LS_4_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0064:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0069:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0093
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_006b:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_006c:
    lea .LS_5_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    mov $3, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0071:
    lea .LS_6_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    mov $44, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0076:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_GetAttribute__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_007b:
    lea .LS_7_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0080:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0085:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0093
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0087:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0088:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_ReadElementContentAsString__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_008d:
    mov -48(%rbp), %rdi
    call m_System_Boolean_Parse__ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0092:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0093:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0094:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Xml_XmlReader_Read__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0099:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_0010
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_009e:
    jmp .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_00aa
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_00aa:
    jmp .Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_00af
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_00af:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_00b0:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_00b1:
    lea .LN_8_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__gen_gen
    mov %r12, -48(%rbp)
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_00b6:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_ReadColorwayInfo_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_ReadColorwayInfo__ref, .-m_Skymu_Theming_Colorizer_ReadColorwayInfo__ref

.globl m_Skymu_Theming_Colorizer_cctor__void
.type m_Skymu_Theming_Colorizer_cctor__void, @function
m_Skymu_Theming_Colorizer_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Theming_Colorizer_cctor_void_0000:
    mov $0, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_cctor_void_0001:
    lea .LN_0_m_Skymu_Theming_Colorizer_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Theming_Colorizer_cctor_void_0006:
    call m_System_StringComparer_get_OrdinalIgnoreCase__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_cctor_void_000b:
    lea .LN_1_m_Skymu_Theming_Colorizer_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -16(%rbp), %rsi
    mov %r12, %rdi
    call m_string_ctor__gen
    mov %r12, -16(%rbp)
.Lm_Skymu_Theming_Colorizer_cctor_void_0010:
    lea .LN_2_m_Skymu_Theming_Colorizer_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Theming_Colorizer_cctor_void_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Theming_Colorizer_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Theming_Colorizer_cctor__void, .-m_Skymu_Theming_Colorizer_cctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Theming_Colorizer_c_cctor_void:
    .asciz "Skymu.Theming.Colorizer/'<>c'"

.LN_1_m_Skymu_Theming_Colorizer_c_cctor_void:
    .asciz "<>9"

.LS_0_m_Skymu_Theming_Colorizer_c_Scan_b_6_0_ref_ref:
    .short 67, 111, 108, 111, 114, 119, 97, 121

.LN_0_m_Skymu_Theming_Colorizer_get_Colorways_void:
    .asciz "_colorwayList"

.LN_1_m_Skymu_Theming_Colorizer_get_Colorways_void:
    .asciz "string>>"

.LS_0_m_Skymu_Theming_Colorizer_Scan_void:
    .short 67, 111, 108, 111, 114, 119, 97, 121, 115

.LN_1_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "_colorwayList"

.LS_2_m_Skymu_Theming_Colorizer_Scan_void:
    .short 42, 46, 120, 97, 109, 108

.LN_3_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "Item1"

.LN_4_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "_colorwayList"

.LN_5_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "Item1"

.LN_6_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "Default"

.LN_7_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "<>9__6_0"

.LN_8_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "<>9"

.LN_9_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "System.ComponentModel.PropertyChangedEventHandler"

.LN_10_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "<>9__6_0"

.LN_11_m_Skymu_Theming_Colorizer_Scan_void:
    .asciz "_colorwayList"

.LN_0_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .asciz "_loading"

.LN_1_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .asciz "_loading"

.LN_2_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .asciz "_colorwayList"

.LN_3_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .asciz "_colorwayList"

.LS_4_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .short 68, 101, 102, 97, 117, 108, 116

.LS_5_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .short 68, 101, 102, 97, 117, 108, 116

.LN_6_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .asciz "_colorwayList"

.LS_7_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .short 78, 111, 32, 99, 111, 108, 111, 114, 119, 97, 121, 115, 32, 97, 118, 97, 105, 108, 97, 98, 108, 101, 32, 116, 111, 32, 108, 111, 97, 100, 46

.LN_8_m_Skymu_Theming_Colorizer_LoadFromSettings_void:
    .asciz "System.InvalidOperationException"

.LN_0_m_Skymu_Theming_Colorizer_Load_ref:
    .asciz "_colorwayList"

.LS_1_m_Skymu_Theming_Colorizer_Load_ref:
    .short 67, 111, 108, 111, 114, 119, 97, 121, 32, 39

.LS_2_m_Skymu_Theming_Colorizer_Load_ref:
    .short 39, 32, 110, 111, 116, 32, 102, 111, 117, 110, 100, 46, 32, 68, 105, 100, 32, 121, 111, 117, 32, 99, 97, 108, 108, 32, 83, 99, 97, 110, 40, 41, 32, 102, 105, 114, 115, 116, 63

.LN_3_m_Skymu_Theming_Colorizer_Load_ref:
    .asciz "System.IO.FileNotFoundException"

.LN_0_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .asciz "System.Windows.ResourceDictionary"

.LN_1_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .asciz "System.Uri"

.LN_2_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .asciz "_currentColorway"

.LN_3_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .asciz "_currentColorway"

.LN_4_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .asciz "Item2"

.LS_5_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .short 70, 108, 117, 101, 110, 116

.LS_6_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .short 70, 108, 117, 101, 110, 116, 46, 76, 105, 103, 104, 116

.LS_7_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .short 70, 108, 117, 101, 110, 116, 46, 68, 97, 114, 107

.LS_8_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .short 70, 108, 117, 101, 110, 116, 46, 68, 97, 114, 107

.LS_9_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .short 70, 108, 117, 101, 110, 116, 46, 76, 105, 103, 104, 116

.LN_10_m_Skymu_Theming_Colorizer_LoadFromPath_ref:
    .asciz "_currentColorway"

.LS_0_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .short 83, 116, 114, 105, 110, 103

.LS_1_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .short 75, 101, 121

.LS_2_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .short 104, 116, 116, 112, 58, 47, 47, 115, 99, 104, 101, 109, 97, 115, 46, 109, 105, 99, 114, 111, 115, 111, 102, 116, 46, 99, 111, 109, 47, 119, 105, 110, 102, 120, 47, 50, 48, 48, 54, 47, 120, 97, 109, 108

.LS_3_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .short 67, 111, 108, 111, 114, 119, 97, 121, 46, 78, 97, 109, 101

.LS_4_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .short 66, 111, 111, 108, 101, 97, 110

.LS_5_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .short 75, 101, 121

.LS_6_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .short 104, 116, 116, 112, 58, 47, 47, 115, 99, 104, 101, 109, 97, 115, 46, 109, 105, 99, 114, 111, 115, 111, 102, 116, 46, 99, 111, 109, 47, 119, 105, 110, 102, 120, 47, 50, 48, 48, 54, 47, 120, 97, 109, 108

.LS_7_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .short 67, 111, 108, 111, 114, 119, 97, 121, 46, 73, 115, 68, 97, 114, 107, 84, 104, 101, 109, 101

.LN_8_m_Skymu_Theming_Colorizer_ReadColorwayInfo_ref:
    .asciz "bool>"

.LN_0_m_Skymu_Theming_Colorizer_cctor_void:
    .asciz "_loading"

.LN_1_m_Skymu_Theming_Colorizer_cctor_void:
    .asciz "string>"

.LN_2_m_Skymu_Theming_Colorizer_cctor_void:
    .asciz "_colorwayList"

    .section .note.GNU-stack,"",@progbits
