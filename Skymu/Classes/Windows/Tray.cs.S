# Classes/Windows/Tray.cs
    .text

.globl m_Skymu_Native_Windows_Tray_MessageWindow_ctor__void
.type m_Skymu_Native_Windows_Tray_MessageWindow_ctor__void, @function
m_Skymu_Native_Windows_Tray_MessageWindow_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NativeWindow_ctor__void
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_0006:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_0007:
    lea .LN_0_m_Skymu_Native_Windows_Tray_MessageWindow_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Forms_CreateParams_ctor__void
    mov %r12, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_000c:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_000d:
    mov $-3, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_000f:
    lea .LN_1_m_Skymu_Native_Windows_Tray_MessageWindow_ctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IntPtr_ctor__i4
    mov %r12, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_0014:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_CreateParams_set_Parent__v
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_0019:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NativeWindow_CreateHandle__ref
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_001e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_MessageWindow_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_MessageWindow_ctor__void, .-m_Skymu_Native_Windows_Tray_MessageWindow_ctor__void

.globl m_Skymu_Native_Windows_Tray_MessageWindow_WndProc__v
.type m_Skymu_Native_Windows_Tray_MessageWindow_WndProc__v, @function
m_Skymu_Native_Windows_Tray_MessageWindow_WndProc__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0000:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_Message_get_Msg__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0006:
    mov $273, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_000b:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0026
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_000d:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_000e:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_Message_get_WParam__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0013:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0014:
    lea -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0016:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IntPtr_ToInt32__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_001b:
    mov $65535, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0020:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    and %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0021:
    mov -40(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_HandleMenuCommand__u4
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0026:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0027:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_0028:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NativeWindow_WndProc__v
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_002d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_MessageWindow_WndProc_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_MessageWindow_WndProc__v, .-m_Skymu_Native_Windows_Tray_MessageWindow_WndProc__v

.globl m_Skymu_Native_Windows_Tray_c_cctor__void
.type m_Skymu_Native_Windows_Tray_c_cctor__void, @function
m_Skymu_Native_Windows_Tray_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Native_Windows_Tray_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Native_Windows_Tray_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Native_Windows_Tray_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_c_cctor__void, .-m_Skymu_Native_Windows_Tray_c_cctor__void

.globl m_Skymu_Native_Windows_Tray_c_ctor__void
.type m_Skymu_Native_Windows_Tray_c_ctor__void, @function
m_Skymu_Native_Windows_Tray_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_Tray_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_c_ctor__void, .-m_Skymu_Native_Windows_Tray_c_ctor__void

.globl m_Skymu_Native_Windows_Tray_c_cctor_b_31_0__ref_ref
.type m_Skymu_Native_Windows_Tray_c_cctor_b_31_0__ref_ref, @function
m_Skymu_Native_Windows_Tray_c_cctor_b_31_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_MouseEventArgs_get_Button__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0006:
    mov $1048576, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_000b:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0018
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_000d:
    mov $1001, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0012:
    mov -40(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_HandleMenuCommand__u4
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0017:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0018:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0019:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_MouseEventArgs_get_Button__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_001e:
    mov $2097152, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0023:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_002a
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_0025:
    call m_Skymu_Native_Windows_Tray_ShowContextMenu__void
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_002a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_c_cctor_b_31_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_c_cctor_b_31_0__ref_ref, .-m_Skymu_Native_Windows_Tray_c_cctor_b_31_0__ref_ref

.globl m_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0__void
.type m_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0__void, @function
m_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0000:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0005:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Windows__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_000a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_WindowCollection_GetEnumerator__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_000f:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0010:
    jmp .Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_003a
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0012:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0013:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0018:
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_001d:
    mov -56(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_001e:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_001f:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_FrameworkElement_get_IsInitialized__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0024:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_003a
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0026:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0027:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_002c:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_002d:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_002e:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_WindowState__v
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0033:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0034:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Activate__void
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0039:
    mov -56(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_003a:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_003b:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0040:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0012
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0042:
    jmp .Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0055
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_0055:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0__void, .-m_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0__void

.globl m_Skymu_Native_Windows_Tray_cctor__void
.type m_Skymu_Native_Windows_Tray_cctor__void, @function
m_Skymu_Native_Windows_Tray_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0000:
    lea .LN_0_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_string_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0006:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0007:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_000c:
    lea .LS_1_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0011:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0016:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_001b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_001c:
    mov $2, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_001d:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0022:
    lea .LS_2_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0027:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_002c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0032:
    mov $8, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0033:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0038:
    lea .LS_3_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_003d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0042:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0047:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0048:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0049:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_004e:
    lea .LS_4_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0053:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0058:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_005d:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_005e:
    mov $6, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_005f:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0064:
    lea .LS_5_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0069:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_006e:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_string_Add__gen_gen
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0073:
    lea .LN_6_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0078:
    lea .LN_7_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_int_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_007d:
    lea .LN_8_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0082:
    lea .LN_9_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Native_Windows_Tray_MessageWindow_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0087:
    lea .LN_10_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_cctor_void_008c:
    mov $0, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_008d:
    lea .LN_11_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0092:
    lea .LN_12_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_Forms_NotifyIcon_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0097:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0098:
    mov $8, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_0099:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_LoadIcon__v
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_009e:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NotifyIcon_set_Icon__ref
.Lm_Skymu_Native_Windows_Tray_cctor_void_00a3:
    mov -8(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00a4:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00a9:
    lea .LS_13_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00ae:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00b3:
    lea .LS_14_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00b8:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00bd:
    lea .LS_15_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00c2:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00c7:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NotifyIcon_set_Text__ref
.Lm_Skymu_Native_Windows_Tray_cctor_void_00cc:
    mov -8(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00cd:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00ce:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NotifyIcon_set_Visible__b
.Lm_Skymu_Native_Windows_Tray_cctor_void_00d3:
    lea .LN_16_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -8(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00d8:
    lea .LN_17_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00dd:
    lea .LN_18_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00e2:
    lea m_Skymu_Native_Windows_Tray_c_cctor_b_31_0__ref_ref(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00e8:
    lea .LN_19_m_Skymu_Native_Windows_Tray_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Forms_MouseEventHandler_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_cctor_void_00ed:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NotifyIcon_add_MouseClick__ref
.Lm_Skymu_Native_Windows_Tray_cctor_void_00f2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_cctor__void, .-m_Skymu_Native_Windows_Tray_cctor__void

.globl m_Skymu_Native_Windows_Tray_HandleMenuCommand__u4
.type m_Skymu_Native_Windows_Tray_HandleMenuCommand__u4, @function
m_Skymu_Native_Windows_Tray_HandleMenuCommand__u4:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0000:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0001:
    mov $1001, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0006:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    sub %ecx, %eax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0007:
    mov -24(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0049
    cmp $1, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00ac
    cmp $2, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0078
    cmp $3, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00ac
    cmp $4, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00ac
    cmp $5, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00ac
    cmp $6, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00ac
    cmp $7, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00ac
    cmp $8, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00ac
    cmp $9, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_007f
    cmp $10, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0086
    cmp $11, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_008d
    cmp $12, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0094
    cmp $13, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_009b
    cmp $14, %eax
    je .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00a2
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0048:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0049:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_004e:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0053:
    lea .LN_0_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0058:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0059:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0072
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_005b:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_005c:
    lea .LN_1_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0061:
    lea m_Skymu_Native_Windows_Tray_c_HandleMenuCommand_b_33_0__void(%rip), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0067:
    lea .LN_2_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_006c:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_006d:
    lea .LN_3_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0072:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke__ref
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0077:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0078:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0079:
    mov -24(%rbp), %rdi
    call m_Skymu_Universal_Close__b
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_007e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_007f:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0080:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SS__v
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0085:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0086:
    mov $2, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0087:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SS__v
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_008c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_008d:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_008e:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SS__v
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0093:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0094:
    mov $6, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_0095:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SS__v
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_009a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_009b:
    mov $8, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_009c:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SS__v
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00a1:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00a2:
    lea .LS_4_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00a7:
    mov -24(%rbp), %rdi
    call m_Skymu_Universal_NotImplemented__ref
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_00ac:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_HandleMenuCommand_u4_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_HandleMenuCommand__u4, .-m_Skymu_Native_Windows_Tray_HandleMenuCommand__u4

.globl m_Skymu_Native_Windows_Tray_SS__v
.type m_Skymu_Native_Windows_Tray_SS__v, @function
m_Skymu_Native_Windows_Tray_SS__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_SS_v_0000:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_SS_v_0001:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_SS_v_0002:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Native_Windows_Tray_SS_v_000e
.Lm_Skymu_Native_Windows_Tray_SS_v_0004:
    lea .LN_0_m_Skymu_Native_Windows_Tray_SS_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_SS_v_0009:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_InformDND__void
.Lm_Skymu_Native_Windows_Tray_SS_v_000e:
    lea .LN_1_m_Skymu_Native_Windows_Tray_SS_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_SS_v_0013:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_SS_v_0014:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_SetConnectionStatus__v
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_SS_v_0019:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_SS_v_001a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_SS_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_SS__v, .-m_Skymu_Native_Windows_Tray_SS__v

.globl m_Skymu_Native_Windows_Tray_SetMenuItemBitmap__i8_u4_i8
.type m_Skymu_Native_Windows_Tray_SetMenuItemBitmap__i8_u4_i8, @function
m_Skymu_Native_Windows_Tray_SetMenuItemBitmap__i8_u4_i8:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0000:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0002:
    mov -56(%rbp), %rax
    movq $0, (%rax)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0008:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_000a:
    call m_System_Runtime_InteropServices_Marshal_SizeOf_valuetype_Skymu_Native_Windows_Tray_MENUITEMINFO__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0014:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0016:
    mov $128, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_001b:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0020:
    lea -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0022:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0023:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0028:
    mov -48(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0029:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_002a:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_002b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_002c:
    mov $0, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_002d:
    lea -40(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_002f:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetMenuItemInfo__v_u4_b_v
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0034:
    mov -56(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_0035:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_SetMenuItemBitmap__i8_u4_i8, .-m_Skymu_Native_Windows_Tray_SetMenuItemBitmap__i8_u4_i8

.globl m_Skymu_Native_Windows_Tray_ClearMenuBitmaps__void
.type m_Skymu_Native_Windows_Tray_ClearMenuBitmaps__void, @function
m_Skymu_Native_Windows_Tray_ClearMenuBitmaps__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0000:
    lea .LN_0_m_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0005:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_000a:
    mov -24(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_000b:
    jmp .Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_001a
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_000d:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_000f:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int_get_Current__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0014:
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_DeleteObject__v
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0019:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_001a:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_001c:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int_MoveNext__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0021:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_000d
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0023:
    jmp .Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0033
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0033:
    lea .LN_1_m_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_0038:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int_Clear__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_003d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_ClearMenuBitmaps__void, .-m_Skymu_Native_Windows_Tray_ClearMenuBitmaps__void

.globl m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu__void
.type m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu__void, @function
m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0000:
    call m_Skymu_Native_Windows_Tray_CreatePopupMenu__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0006:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0007:
    mov $1001, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_000c:
    mov -32(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u4
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0011:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0016:
    lea .LS_0_m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_001b:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0020:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0025:
    mov -16(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0026:
    mov -8(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0027:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0028:
    mov $1002, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_002d:
    mov -32(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u4
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0032:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0037:
    lea .LS_1_m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_003c:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0041:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0046:
    mov -16(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0047:
    mov -8(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0048:
    mov $2048, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_004d:
    lea .LN_2_m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0052:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0053:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0058:
    mov -16(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0059:
    mov -8(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_005a:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_005b:
    mov $1003, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0060:
    mov -32(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u4
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0065:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_006a:
    lea .LS_3_m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_006f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0074:
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_0079:
    mov -16(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_007a:
    mov -8(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu__void, .-m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu__void

.globl m_Skymu_Native_Windows_Tray_BuildLoggedInMenu__void
.type m_Skymu_Native_Windows_Tray_BuildLoggedInMenu__void, @function
m_Skymu_Native_Windows_Tray_BuildLoggedInMenu__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0000:
    call m_Skymu_Native_Windows_Tray_ClearMenuBitmaps__void
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0005:
    lea -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0007:
    call m_Skymu_Native_Windows_Tray_CreatePopupMenu__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_000c:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0011:
    mov $1010, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0016:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0017:
    lea .LS_1_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_001c:
    lea -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_001e:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0023:
    mov $1011, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0028:
    mov $2, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0029:
    lea .LS_2_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $19, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_002e:
    lea -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0030:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0035:
    mov $1012, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_003a:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_003b:
    lea .LS_3_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0040:
    lea -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0042:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0047:
    mov $1013, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_004c:
    mov $6, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_004d:
    lea .LS_4_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $24, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0052:
    lea -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0054:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0059:
    mov $1014, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_005e:
    mov $8, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_005f:
    lea .LS_5_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0064:
    lea -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0066:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_006b:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_006c:
    mov -24(%rbp), %rdi
    lea .LN_6_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0071:
    mov $2048, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0076:
    lea .LN_7_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_007b:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_007c:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0081:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0082:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0083:
    mov -24(%rbp), %rdi
    lea .LN_8_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0088:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0089:
    mov $1015, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_008e:
    mov -40(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u4
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0093:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0098:
    lea .LS_9_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $31, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_009d:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00a2:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00a7:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00a8:
    call m_Skymu_Native_Windows_Tray_CreatePopupMenu__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00ad:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00ae:
    mov $16, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00b0:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00b1:
    mov -40(%rbp), %rdi
    lea .LN_10_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00b6:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00bb:
    lea .LS_11_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00c0:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00c5:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenuPopup__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00ca:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00cb:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00cc:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00cd:
    mov $1001, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00d2:
    mov -40(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u4
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00d7:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00dc:
    lea .LS_12_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $21, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00e1:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00e6:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00eb:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00ec:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00ed:
    mov $2048, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00f2:
    lea .LN_13_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00f7:
    xor %eax, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00f8:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00fd:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00fe:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_00ff:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0100:
    mov $1003, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0105:
    mov -40(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u4
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_010a:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_010f:
    lea .LS_14_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void(%rip), %rdi
    mov $14, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0114:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_0119:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_011e:
    mov -24(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_011f:
    mov -16(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_BuildLoggedInMenu__void, .-m_Skymu_Native_Windows_Tray_BuildLoggedInMenu__void

.globl m_Skymu_Native_Windows_Tray_DisposeIcon__void
.type m_Skymu_Native_Windows_Tray_DisposeIcon__void, @function
m_Skymu_Native_Windows_Tray_DisposeIcon__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0000:
    call m_Skymu_Native_Windows_Tray_ClearMenuBitmaps__void
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0005:
    lea .LN_0_m_Skymu_Native_Windows_Tray_DisposeIcon_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_000a:
    mov -16(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0027
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_000c:
    lea .LN_1_m_Skymu_Native_Windows_Tray_DisposeIcon_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0011:
    mov $0, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0012:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NotifyIcon_set_Visible__b
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0017:
    lea .LN_2_m_Skymu_Native_Windows_Tray_DisposeIcon_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_001c:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_Component_Dispose__void
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0021:
    xor %eax, %eax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0022:
    lea .LN_3_m_Skymu_Native_Windows_Tray_DisposeIcon_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0027:
    lea .LN_4_m_Skymu_Native_Windows_Tray_DisposeIcon_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_002c:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_002d:
    mov -16(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0032
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_002f:
    mov -8(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0030:
    jmp .Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0037
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0032:
    mov -8(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NativeWindow_DestroyHandle__void
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0037:
    xor %eax, %eax
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_0038:
    lea .LN_5_m_Skymu_Native_Windows_Tray_DisposeIcon_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_003d:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_DisposeIcon_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_DisposeIcon__void, .-m_Skymu_Native_Windows_Tray_DisposeIcon__void

.globl m_Skymu_Native_Windows_Tray_LoadIcon__v
.type m_Skymu_Native_Windows_Tray_LoadIcon__v, @function
m_Skymu_Native_Windows_Tray_LoadIcon__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_0000:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_0001:
    mov -24(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_0006:
    lea .LS_0_m_Skymu_Native_Windows_Tray_LoadIcon_v(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_000b:
    call m_Skymu_Preferences_Settings_get_Theme__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_0010:
    lea .LS_1_m_Skymu_Native_Windows_Tray_LoadIcon_v(%rip), %rdi
    mov $39, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_0015:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_001a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_LoadIconFromSheet__i4_ref
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_001f:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_LoadIcon_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_LoadIcon__v, .-m_Skymu_Native_Windows_Tray_LoadIcon__v

.globl m_Skymu_Native_Windows_Tray_SetStatusInternal__ref_v_b
.type m_Skymu_Native_Windows_Tray_SetStatusInternal__ref_v_b, @function
m_Skymu_Native_Windows_Tray_SetStatusInternal__ref_v_b:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0000:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0001:
    lea .LN_0_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b(%rip), %rdi
    call shim_global_slot
    mov -40(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0006:
    lea .LN_1_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_000b:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_000c:
    mov -48(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_LoadIcon__v
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0011:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NotifyIcon_set_Icon__ref
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0016:
    lea .LN_2_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_001b:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0020:
    lea .LS_3_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0025:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0026:
    lea .LS_4_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_002b:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0030:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Forms_NotifyIcon_set_Text__ref
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_0035:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_SetStatusInternal__ref_v_b, .-m_Skymu_Native_Windows_Tray_SetStatusInternal__ref_v_b

.globl m_Skymu_Native_Windows_Tray_SetStatus__v
.type m_Skymu_Native_Windows_Tray_SetStatus__v, @function
m_Skymu_Native_Windows_Tray_SetStatus__v:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0000:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0001:
    mov $8, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0002:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0004:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0005:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    cmp %ecx, %eax
    sete %al
    movzbl %al, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0007:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0008:
    lea .LN_0_m_Skymu_Native_Windows_Tray_SetStatus_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_000d:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_000e:
    lea -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0010:
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
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0015:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Native_Windows_Tray_SetStatus_v_0027
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0017:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_001c:
    lea .LS_1_m_Skymu_Native_Windows_Tray_SetStatus_v(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0021:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0026:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0027:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0028:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_0029:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_002a:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetStatusInternal__ref_v_b
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_002f:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_SetStatus_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_SetStatus__v, .-m_Skymu_Native_Windows_Tray_SetStatus__v

.globl m_Skymu_Native_Windows_Tray_SetConnecting__void
.type m_Skymu_Native_Windows_Tray_SetConnecting__void, @function
m_Skymu_Native_Windows_Tray_SetConnecting__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetConnecting_void_0000:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetConnecting_void_0005:
    lea .LS_0_m_Skymu_Native_Windows_Tray_SetConnecting_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetConnecting_void_000a:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetConnecting_void_000f:
    mov $8, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetConnecting_void_0010:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Native_Windows_Tray_SetConnecting_void_0011:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetStatusInternal__ref_v_b
.Lm_Skymu_Native_Windows_Tray_SetConnecting_void_0016:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_SetConnecting_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_SetConnecting__void, .-m_Skymu_Native_Windows_Tray_SetConnecting__void

.globl m_Skymu_Native_Windows_Tray_ctor__void
.type m_Skymu_Native_Windows_Tray_ctor__void, @function
m_Skymu_Native_Windows_Tray_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Native_Windows_Tray_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Native_Windows_Tray_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Native_Windows_Tray_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_ctor__void, .-m_Skymu_Native_Windows_Tray_ctor__void

.globl m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v
.type m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v, @function
m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0000:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0001:
    mov -56(%rbp), %rdi
    lea .LN_0_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0006:
    mov $0, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0007:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0008:
    mov -72(%rbp), %rdi
    call m_System_UIntPtr_op_Explicit__u4
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_000d:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0012:
    mov -32(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0013:
    mov -88(%rbp), %rsi
    mov -80(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0018:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_AppendMenu__v_u4_v_ref
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_001d:
    mov -56(%rbp), %rax
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_001e:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_001f:
    mov -56(%rbp), %rdi
    call m_Skymu_ViewModels_MainViewModel_GetIntFromStatus__v
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0024:
    lea .LS_1_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0029:
    call m_Skymu_Preferences_Settings_get_Theme__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_002e:
    lea .LS_2_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v(%rip), %rdi
    mov $39, %esi
    call shim_string_new
    mov %rax, -80(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0033:
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0038:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Native_Windows_IconHelper_LoadHBitmapFromSheet__i4_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_003d:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_003e:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_003f:
    lea .LN_3_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0044:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_IntPtr_op_Inequality__v_v
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0049:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0063
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_004b:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_004c:
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0051:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0052:
    mov -48(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0053:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_Skymu_Native_Windows_Tray_SetMenuItemBitmap__v_u4_v
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0058:
    lea .LN_5_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_005d:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_005e:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_int_Add__gen
    mov %rax, -56(%rbp)
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_0063:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v, .-m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0__u4_v_ref_v

    .globl m_Skymu_Native_Windows_Tray_AppendMenu__i8_u4_u8_ref
    .type m_Skymu_Native_Windows_Tray_AppendMenu__i8_u4_u8_ref, @function
m_Skymu_Native_Windows_Tray_AppendMenu__i8_u4_u8_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_AppendMenu_i8_u4_u8_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_AppendMenu__i8_u4_u8_ref, .-m_Skymu_Native_Windows_Tray_AppendMenu__i8_u4_u8_ref

    .globl m_Skymu_Native_Windows_Tray_AppendMenuPopup__i8_u4_i8_ref
    .type m_Skymu_Native_Windows_Tray_AppendMenuPopup__i8_u4_i8_ref, @function
m_Skymu_Native_Windows_Tray_AppendMenuPopup__i8_u4_i8_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_AppendMenuPopup_i8_u4_i8_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_AppendMenuPopup__i8_u4_i8_ref, .-m_Skymu_Native_Windows_Tray_AppendMenuPopup__i8_u4_i8_ref

    .globl m_Skymu_Native_Windows_Tray_CreatePopupMenu__void
    .type m_Skymu_Native_Windows_Tray_CreatePopupMenu__void, @function
m_Skymu_Native_Windows_Tray_CreatePopupMenu__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_CreatePopupMenu_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_CreatePopupMenu__void, .-m_Skymu_Native_Windows_Tray_CreatePopupMenu__void

    .globl m_Skymu_Native_Windows_Tray_TrackPopupMenu__i8_u4_i4_i4_i4_i8_i8
    .type m_Skymu_Native_Windows_Tray_TrackPopupMenu__i8_u4_i4_i4_i4_i8_i8, @function
m_Skymu_Native_Windows_Tray_TrackPopupMenu__i8_u4_i4_i4_i4_i8_i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_TrackPopupMenu_i8_u4_i4_i4_i4_i8_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_TrackPopupMenu__i8_u4_i4_i4_i4_i8_i8, .-m_Skymu_Native_Windows_Tray_TrackPopupMenu__i8_u4_i4_i4_i4_i8_i8

    .globl m_Skymu_Native_Windows_Tray_DestroyMenu__i8
    .type m_Skymu_Native_Windows_Tray_DestroyMenu__i8, @function
m_Skymu_Native_Windows_Tray_DestroyMenu__i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_DestroyMenu_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_DestroyMenu__i8, .-m_Skymu_Native_Windows_Tray_DestroyMenu__i8

    .globl m_Skymu_Native_Windows_Tray_SetForegroundWindow__i8
    .type m_Skymu_Native_Windows_Tray_SetForegroundWindow__i8, @function
m_Skymu_Native_Windows_Tray_SetForegroundWindow__i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_SetForegroundWindow_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_SetForegroundWindow__i8, .-m_Skymu_Native_Windows_Tray_SetForegroundWindow__i8

    .globl m_Skymu_Native_Windows_Tray_PostMessage__i8_u4_i8_i8
    .type m_Skymu_Native_Windows_Tray_PostMessage__i8_u4_i8_i8, @function
m_Skymu_Native_Windows_Tray_PostMessage__i8_u4_i8_i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_PostMessage_i8_u4_i8_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_PostMessage__i8_u4_i8_i8, .-m_Skymu_Native_Windows_Tray_PostMessage__i8_u4_i8_i8

    .globl m_Skymu_Native_Windows_Tray_SetMenuItemInfo__i8_u4_b_v
    .type m_Skymu_Native_Windows_Tray_SetMenuItemInfo__i8_u4_b_v, @function
m_Skymu_Native_Windows_Tray_SetMenuItemInfo__i8_u4_b_v:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_SetMenuItemInfo_i8_u4_b_v(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_SetMenuItemInfo__i8_u4_b_v, .-m_Skymu_Native_Windows_Tray_SetMenuItemInfo__i8_u4_b_v

    .globl m_Skymu_Native_Windows_Tray_DeleteObject__i8
    .type m_Skymu_Native_Windows_Tray_DeleteObject__i8, @function
m_Skymu_Native_Windows_Tray_DeleteObject__i8:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_DeleteObject_i8(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_DeleteObject__i8, .-m_Skymu_Native_Windows_Tray_DeleteObject__i8

    .globl m_Skymu_Native_Windows_Tray_ShowContextMenu__void
    .type m_Skymu_Native_Windows_Tray_ShowContextMenu__void, @function
m_Skymu_Native_Windows_Tray_ShowContextMenu__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Native_Windows_Tray_ShowContextMenu_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Native_Windows_Tray_ShowContextMenu__void, .-m_Skymu_Native_Windows_Tray_ShowContextMenu__void

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Native_Windows_Tray_MessageWindow_ctor_void:
    .asciz "System.Windows.Forms.CreateParams"

.LN_1_m_Skymu_Native_Windows_Tray_MessageWindow_ctor_void:
    .asciz "System.IntPtr"

.LN_0_m_Skymu_Native_Windows_Tray_c_cctor_void:
    .asciz "Skymu.Native.Windows.Tray/'<>c'"

.LN_1_m_Skymu_Native_Windows_Tray_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "string>"

.LS_1_m_Skymu_Native_Windows_Tray_cctor_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 79, 78, 76, 73, 78, 69

.LS_2_m_Skymu_Native_Windows_Tray_cctor_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 65, 87, 65, 89

.LS_3_m_Skymu_Native_Windows_Tray_cctor_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 80, 82, 79, 70, 73, 76, 69, 95, 78, 79, 84, 95, 76, 79, 71, 71, 69, 68, 95, 73, 78

.LS_4_m_Skymu_Native_Windows_Tray_cctor_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 68, 78, 68

.LS_5_m_Skymu_Native_Windows_Tray_cctor_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 73, 78, 86, 73, 83, 73, 66, 76, 69

.LN_6_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "StatusMap"

.LN_7_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "int>"

.LN_8_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "_menuBitmaps"

.LN_9_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "Skymu.Native.Windows.Tray/MessageWindow"

.LN_10_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "_msgWindow"

.LN_11_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "_isSignedIn"

.LN_12_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "System.Windows.Forms.NotifyIcon"

.LS_13_m_Skymu_Native_Windows_Tray_cctor_void:
    .short 32, 40

.LS_14_m_Skymu_Native_Windows_Tray_cctor_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 80, 82, 79, 70, 73, 76, 69, 95, 78, 79, 84, 95, 76, 79, 71, 71, 69, 68, 95, 73, 78

.LS_15_m_Skymu_Native_Windows_Tray_cctor_void:
    .short 41

.LN_16_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "_icon"

.LN_17_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "_icon"

.LN_18_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "<>9"

.LN_19_m_Skymu_Native_Windows_Tray_cctor_void:
    .asciz "System.Windows.Forms.MouseEventHandler"

.LN_0_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4:
    .asciz "<>9__33_0"

.LN_1_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4:
    .asciz "<>9"

.LN_2_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4:
    .asciz "System.Action"

.LN_3_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4:
    .asciz "<>9__33_0"

.LS_4_m_Skymu_Native_Windows_Tray_HandleMenuCommand_u4:
    .short 67, 97, 108, 108, 32, 102, 111, 114, 119, 97, 114, 100, 105, 110, 103

.LN_0_m_Skymu_Native_Windows_Tray_SS_v:
    .asciz "ActiveViewModel"

.LN_1_m_Skymu_Native_Windows_Tray_SS_v:
    .asciz "Plugin"

.LN_0_m_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8:
    .asciz "cbSize"

.LN_1_m_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8:
    .asciz "fMask"

.LN_2_m_Skymu_Native_Windows_Tray_SetMenuItemBitmap_i8_u4_i8:
    .asciz "hbmpItem"

.LN_0_m_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void:
    .asciz "_menuBitmaps"

.LN_1_m_Skymu_Native_Windows_Tray_ClearMenuBitmaps_void:
    .asciz "_menuBitmaps"

.LS_0_m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void:
    .short 115, 84, 82, 65, 89, 77, 69, 78, 85, 95, 83, 72, 79, 87, 70, 82, 73, 69, 78, 68, 83

.LS_1_m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void:
    .short 115, 84, 82, 65, 89, 77, 69, 78, 85, 95, 76, 79, 71, 73, 78

.LN_2_m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void:
    .asciz "Zero"

.LS_3_m_Skymu_Native_Windows_Tray_BuildLoggedOutMenu_void:
    .short 115, 84, 82, 65, 89, 77, 69, 78, 85, 95, 81, 85, 73, 84

.LN_0_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .asciz "hStatus"

.LS_1_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 79, 78, 76, 73, 78, 69

.LS_2_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 65, 87, 65, 89

.LS_3_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 68, 78, 68

.LS_4_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 73, 78, 86, 73, 83, 73, 66, 76, 69

.LS_5_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 85, 83, 69, 82, 95, 79, 70, 70, 76, 73, 78, 69

.LN_6_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .asciz "hStatus"

.LN_7_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .asciz "Zero"

.LN_8_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .asciz "hStatus"

.LS_9_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 83, 84, 65, 84, 85, 83, 77, 69, 78, 85, 95, 67, 65, 80, 84, 73, 79, 78, 95, 67, 70, 95, 79, 80, 84, 73, 79, 78, 83, 50

.LN_10_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .asciz "hStatus"

.LS_11_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 84, 82, 65, 89, 77, 69, 78, 85, 95, 67, 72, 65, 78, 71, 69, 83, 84, 65, 84, 85, 83

.LS_12_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 84, 82, 65, 89, 77, 69, 78, 85, 95, 83, 72, 79, 87, 70, 82, 73, 69, 78, 68, 83

.LN_13_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .asciz "Zero"

.LS_14_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_void:
    .short 115, 84, 82, 65, 89, 77, 69, 78, 85, 95, 81, 85, 73, 84

.LN_0_m_Skymu_Native_Windows_Tray_DisposeIcon_void:
    .asciz "_icon"

.LN_1_m_Skymu_Native_Windows_Tray_DisposeIcon_void:
    .asciz "_icon"

.LN_2_m_Skymu_Native_Windows_Tray_DisposeIcon_void:
    .asciz "_icon"

.LN_3_m_Skymu_Native_Windows_Tray_DisposeIcon_void:
    .asciz "_icon"

.LN_4_m_Skymu_Native_Windows_Tray_DisposeIcon_void:
    .asciz "_msgWindow"

.LN_5_m_Skymu_Native_Windows_Tray_DisposeIcon_void:
    .asciz "_msgWindow"

.LS_0_m_Skymu_Native_Windows_Tray_LoadIcon_v:
    .short 112, 97, 99, 107, 58, 47, 47, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 58, 44, 44, 44, 47, 84, 104, 101, 109, 101, 115, 47

.LS_1_m_Skymu_Native_Windows_Tray_LoadIcon_v:
    .short 47, 65, 115, 115, 101, 116, 115, 47, 85, 110, 105, 118, 101, 114, 115, 97, 108, 47, 73, 99, 111, 110, 47, 115, 107, 121, 112, 101, 45, 115, 116, 97, 116, 117, 115, 46, 112, 110, 103

.LN_0_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b:
    .asciz "_isSignedIn"

.LN_1_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b:
    .asciz "_icon"

.LN_2_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b:
    .asciz "_icon"

.LS_3_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b:
    .short 32, 40

.LS_4_m_Skymu_Native_Windows_Tray_SetStatusInternal_ref_v_b:
    .short 41

.LN_0_m_Skymu_Native_Windows_Tray_SetStatus_v:
    .asciz "StatusMap"

.LS_1_m_Skymu_Native_Windows_Tray_SetStatus_v:
    .short 115, 83, 84, 65, 84, 85, 83, 95, 85, 78, 75, 78, 79, 87, 78

.LS_0_m_Skymu_Native_Windows_Tray_SetConnecting_void:
    .short 115, 84, 82, 65, 89, 72, 73, 78, 84, 95, 67, 79, 78, 78, 95, 67, 79, 78, 78, 69, 67, 84, 73, 78, 71

.LN_0_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v:
    .asciz "hStatus"

.LS_1_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v:
    .short 112, 97, 99, 107, 58, 47, 47, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 58, 44, 44, 44, 47, 84, 104, 101, 109, 101, 115, 47

.LS_2_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v:
    .short 47, 65, 115, 115, 101, 116, 115, 47, 85, 110, 105, 118, 101, 114, 115, 97, 108, 47, 73, 99, 111, 110, 47, 115, 107, 121, 112, 101, 45, 115, 116, 97, 116, 117, 115, 46, 112, 110, 103

.LN_3_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v:
    .asciz "Zero"

.LN_4_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v:
    .asciz "hStatus"

.LN_5_m_Skymu_Native_Windows_Tray_BuildLoggedInMenu_g_AddStatusItem_38_0_u4_v_ref_v:
    .asciz "_menuBitmaps"

.LSTUB_m_Skymu_Native_Windows_Tray_AppendMenu_i8_u4_u8_ref:
    .asciz "Skymu.Native.Windows.Tray::AppendMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_AppendMenuPopup_i8_u4_i8_ref:
    .asciz "Skymu.Native.Windows.Tray::AppendMenuPopup  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_CreatePopupMenu_void:
    .asciz "Skymu.Native.Windows.Tray::CreatePopupMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_TrackPopupMenu_i8_u4_i4_i4_i4_i8_i8:
    .asciz "Skymu.Native.Windows.Tray::TrackPopupMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_DestroyMenu_i8:
    .asciz "Skymu.Native.Windows.Tray::DestroyMenu  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_SetForegroundWindow_i8:
    .asciz "Skymu.Native.Windows.Tray::SetForegroundWindow  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_PostMessage_i8_u4_i8_i8:
    .asciz "Skymu.Native.Windows.Tray::PostMessage  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_SetMenuItemInfo_i8_u4_b_v:
    .asciz "Skymu.Native.Windows.Tray::SetMenuItemInfo  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_DeleteObject_i8:
    .asciz "Skymu.Native.Windows.Tray::DeleteObject  [P/Invoke declaration (native import, no IL body)]"

.LSTUB_m_Skymu_Native_Windows_Tray_ShowContextMenu_void:
    .asciz "Skymu.Native.Windows.Tray::ShowContextMenu  [stack underflow at IL_0053 (call): depth 0 < pops 1]"

    .section .note.GNU-stack,"",@progbits
