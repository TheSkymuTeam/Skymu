# Classes/Windows/AutoLaunch.cs
    .text

.globl m_Skymu_Native_Windows_AutoLaunch_Get__void
.type m_Skymu_Native_Windows_AutoLaunch_Get__void, @function
m_Skymu_Native_Windows_AutoLaunch_Get__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0000:
    lea .LN_0_m_Skymu_Native_Windows_AutoLaunch_Get_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0005:
    lea .LS_1_m_Skymu_Native_Windows_AutoLaunch_Get_void(%rip), %rdi
    mov $45, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_000a:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_000b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_RegistryKey_OpenSubKey__ref_b
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0010:
    mov -48(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0012:
    lea .LS_2_m_Skymu_Native_Windows_AutoLaunch_Get_void(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0017:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_RegistryKey_GetValue__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_001c:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_001d:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_001e:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0024
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0020:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0021:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0022:
    jmp .Lm_Skymu_Native_Windows_AutoLaunch_Get_void_005d
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0024:
    lea .LS_3_m_Skymu_Native_Windows_AutoLaunch_Get_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0029:
    call m_System_Diagnostics_Process_GetCurrentProcess__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_002e:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_Process_get_MainModule__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0033:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_ProcessModule_get_FileName__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0038:
    lea .LS_4_m_Skymu_Native_Windows_AutoLaunch_Get_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_003d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0042:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0043:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0044:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0049:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_004a:
    mov $5, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_004b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_Equals__ref_ref_v
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0050:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_0051:
    jmp .Lm_Skymu_Native_Windows_AutoLaunch_Get_void_005d
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_005d:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_005e:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_AutoLaunch_Get_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_AutoLaunch_Get__void, .-m_Skymu_Native_Windows_AutoLaunch_Get__void

.globl m_Skymu_Native_Windows_AutoLaunch_Set__b
.type m_Skymu_Native_Windows_AutoLaunch_Set__b, @function
m_Skymu_Native_Windows_AutoLaunch_Set__b:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0000:
    lea .LN_0_m_Skymu_Native_Windows_AutoLaunch_Set_b(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0005:
    lea .LS_1_m_Skymu_Native_Windows_AutoLaunch_Set_b(%rip), %rdi
    mov $45, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_000a:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_000b:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_RegistryKey_OpenSubKey__ref_b
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0010:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0011:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0012:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_AutoLaunch_Set_b_003f
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0014:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0015:
    lea .LS_2_m_Skymu_Native_Windows_AutoLaunch_Set_b(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_001a:
    lea .LS_3_m_Skymu_Native_Windows_AutoLaunch_Set_b(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_001f:
    call m_System_Diagnostics_Process_GetCurrentProcess__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0024:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_Process_get_MainModule__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0029:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_ProcessModule_get_FileName__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_002e:
    lea .LS_4_m_Skymu_Native_Windows_AutoLaunch_Set_b(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0033:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0038:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_RegistryKey_SetValue__ref_ref
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_003d:
    jmp .Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0057
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_003f:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0040:
    lea .LS_5_m_Skymu_Native_Windows_AutoLaunch_Set_b(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0045:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0046:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Microsoft_Win32_RegistryKey_DeleteValue__ref_b
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_004b:
    jmp .Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0057
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_0057:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_AutoLaunch_Set_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_AutoLaunch_Set__b, .-m_Skymu_Native_Windows_AutoLaunch_Set__b

.globl m_Skymu_Native_Windows_AutoLaunch_ctor__void
.type m_Skymu_Native_Windows_AutoLaunch_ctor__void, @function
m_Skymu_Native_Windows_AutoLaunch_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_AutoLaunch_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_AutoLaunch_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_AutoLaunch_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_AutoLaunch_ctor__void, .-m_Skymu_Native_Windows_AutoLaunch_ctor__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Native_Windows_AutoLaunch_Get_void:
    .asciz "CurrentUser"

.LS_1_m_Skymu_Native_Windows_AutoLaunch_Get_void:
    .short 83, 111, 102, 116, 119, 97, 114, 101, 92, 77, 105, 99, 114, 111, 115, 111, 102, 116, 92, 87, 105, 110, 100, 111, 119, 115, 92, 67, 117, 114, 114, 101, 110, 116, 86, 101, 114, 115, 105, 111, 110, 92, 82, 117, 110

.LS_2_m_Skymu_Native_Windows_AutoLaunch_Get_void:
    .short 83, 107, 121, 109, 117

.LS_3_m_Skymu_Native_Windows_AutoLaunch_Get_void:
    .short 34

.LS_4_m_Skymu_Native_Windows_AutoLaunch_Get_void:
    .short 34

.LN_0_m_Skymu_Native_Windows_AutoLaunch_Set_b:
    .asciz "CurrentUser"

.LS_1_m_Skymu_Native_Windows_AutoLaunch_Set_b:
    .short 83, 111, 102, 116, 119, 97, 114, 101, 92, 77, 105, 99, 114, 111, 115, 111, 102, 116, 92, 87, 105, 110, 100, 111, 119, 115, 92, 67, 117, 114, 114, 101, 110, 116, 86, 101, 114, 115, 105, 111, 110, 92, 82, 117, 110

.LS_2_m_Skymu_Native_Windows_AutoLaunch_Set_b:
    .short 83, 107, 121, 109, 117

.LS_3_m_Skymu_Native_Windows_AutoLaunch_Set_b:
    .short 34

.LS_4_m_Skymu_Native_Windows_AutoLaunch_Set_b:
    .short 34

.LS_5_m_Skymu_Native_Windows_AutoLaunch_Set_b:
    .short 83, 107, 121, 109, 117

    .section .note.GNU-stack,"",@progbits
