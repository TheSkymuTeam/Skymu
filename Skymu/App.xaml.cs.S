# App.xaml.cs
    .text

.globl m_Skymu_Universal_c_cctor__void
.type m_Skymu_Universal_c_cctor__void, @function
m_Skymu_Universal_c_cctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Universal_c_cctor_void_0000:
    lea .LN_0_m_Skymu_Universal_c_cctor_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Universal_c_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Universal_c_cctor_void_0005:
    lea .LN_1_m_Skymu_Universal_c_cctor_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Universal_c_cctor_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_cctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_cctor__void, .-m_Skymu_Universal_c_cctor__void

.globl m_Skymu_Universal_c_ctor__void
.type m_Skymu_Universal_c_ctor__void, @function
m_Skymu_Universal_c_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_ctor__void, .-m_Skymu_Universal_c_ctor__void

.globl m_Skymu_Universal_c_cctor_b_44_0__ref_ref
.type m_Skymu_Universal_c_cctor_b_44_0__ref_ref, @function
m_Skymu_Universal_c_cctor_b_44_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Universal_c_cctor_b_44_0_ref_ref_0000:
    call m_Skymu_Native_Windows_Tray_DisposeIcon__void
.Lm_Skymu_Universal_c_cctor_b_44_0_ref_ref_0005:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_cctor_b_44_0_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_cctor_b_44_0__ref_ref, .-m_Skymu_Universal_c_cctor_b_44_0__ref_ref

.globl m_Skymu_Universal_c_OnStartup_b_59_2__void
.type m_Skymu_Universal_c_OnStartup_b_59_2__void, @function
m_Skymu_Universal_c_OnStartup_b_59_2__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_OnStartup_b_59_2_void_0000:
    call m_Skymu_Preferences_Settings_Save__void
.Lm_Skymu_Universal_c_OnStartup_b_59_2_void_0005:
    call m_Skymu_Universal_Restart__void
.Lm_Skymu_Universal_c_OnStartup_b_59_2_void_000a:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_OnStartup_b_59_2_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_OnStartup_b_59_2__void, .-m_Skymu_Universal_c_OnStartup_b_59_2__void

.globl m_Skymu_Universal_c_DisplayClass41_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass41_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass41_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass41_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass41_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass41_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass41_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1__void
.type m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1__void, @function
m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_get_CopyToClipboardText__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_000b:
    mov -24(%rbp), %rdi
    call m_System_Windows_Clipboard_SetText__ref
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_0010:
    lea .LS_1_m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_0015:
    xor %eax, %eax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_0016:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_0017:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    call m_Skymu_Universal_ShowMessage__ref_ref_v
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_001c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1__void, .-m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1__void

.globl m_Skymu_Universal_c_DisplayClass42_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass42_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass42_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass42_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass42_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass42_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass42_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass42_1_ctor__void
.type m_Skymu_Universal_c_DisplayClass42_1_ctor__void, @function
m_Skymu_Universal_c_DisplayClass42_1_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass42_1_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass42_1_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass42_1_ctor__void, .-m_Skymu_Universal_c_DisplayClass42_1_ctor__void

.globl m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1__void
.type m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1__void, @function
m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0006:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_000b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_get_Action__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0010:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0011:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_object_Invoke__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0016:
    mov -24(%rbp), %rax
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0018:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_001d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1__void, .-m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1__void

.globl m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2__void
.type m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2__void, @function
m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0006:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_000b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_get_Action__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0010:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0011:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_object_Invoke__gen
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0016:
    mov -24(%rbp), %rax
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0017:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0018:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_001d:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2__void, .-m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2__void

.globl m_Skymu_Universal_c_DisplayClass43_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass43_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass43_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass43_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass43_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass43_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass43_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass43_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass43_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0__void
.type m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0__void, @function
m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_0000:
    lea .LN_0_m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_0005:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_0006:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_000a
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_0008:
    mov -16(%rbp), %rax
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_0009:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_000a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_000b:
    mov -24(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_0010:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_HandleIncoming__ref
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0__void, .-m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0__void

.globl m_Skymu_Universal_c_DisplayClass45_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass45_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass45_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass45_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass45_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass45_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass45_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0__ref
.type m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0__ref, @function
m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0001:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Globalization_CultureInfo_get_NativeName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0006:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0007:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_000c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0011:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0038
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0013:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0014:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Globalization_CultureInfo_get_DisplayName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0019:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_001a:
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_001f:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0024:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0038
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0026:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0027:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Globalization_CultureInfo_get_EnglishName__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_002c:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_002d:
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0032:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0037:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0038:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_0039:
    mov -32(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0__ref, .-m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0__ref

.globl m_Skymu_Universal_c_DisplayClass47_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass47_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass47_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass47_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass47_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass47_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass47_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass47_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass47_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0__void
.type m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0__void, @function
m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void_0000:
    lea .LN_0_m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void_0006:
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void_000b:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_ViewModels_MainViewModel_SelectConversation__ref
.Lm_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void_0010:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0__void, .-m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0__void

.globl m_Skymu_Universal_c_DisplayClass53_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass53_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass53_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass53_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass53_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass53_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass53_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass53_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass53_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass53_0_Close_b_0__void
.type m_Skymu_Universal_c_DisplayClass53_0_Close_b_0__void, @function
m_Skymu_Universal_c_DisplayClass53_0_Close_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_IsCheckBoxTicked__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_000b:
    mov -24(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_0013
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_000d:
    mov $1, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_000e:
    mov -24(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_QuitWithoutAsking__b
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_0013:
    call m_Skymu_Universal_Terminate__void
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass53_0_Close_b_0__void, .-m_Skymu_Universal_c_DisplayClass53_0_Close_b_0__void

.globl m_Skymu_Universal_c_DisplayClass55_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass55_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass55_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass55_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass55_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass55_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass55_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass55_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass55_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0__void
.type m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0__void, @function
m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Close__void
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0__void, .-m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0__void

.globl m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1__void
.type m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1__void, @function
m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_ErrorWindow_CopyToClipboard__void
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1__void, .-m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1__void

.globl m_Skymu_Universal_c_DisplayClass59_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass59_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass59_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass59_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass59_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass59_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass59_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass59_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass59_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1__void
.type m_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1__void, @function
m_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1__void, .-m_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1__void

.globl m_Skymu_Universal_c_DisplayClass61_0_ctor__void
.type m_Skymu_Universal_c_DisplayClass61_0_ctor__void, @function
m_Skymu_Universal_c_DisplayClass61_0_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Universal_c_DisplayClass61_0_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass61_0_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass61_0_ctor__void, .-m_Skymu_Universal_c_DisplayClass61_0_ctor__void

.globl m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2__ref_ref
.type m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2__ref_ref, @function
m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0001:
    mov -40(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0006:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0022
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0008:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0009:
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_000e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_IsCheckBoxTicked__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0013:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_001c
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0015:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0016:
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning__b
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_001b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_001c:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_001d:
    mov -48(%rbp), %rdi
    call m_Skymu_Preferences_Settings_set_ShowInlineLinkWarning__b
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_0022:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2__ref_ref, .-m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2__ref_ref

.globl m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0__void
.type m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0__void, @function
m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0_void_000b:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0__void, .-m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0__void

.globl m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1__void
.type m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1__void, @function
m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_0001:
    mov -24(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_0006:
    lea .LN_1_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Diagnostics_ProcessStartInfo_ctor__ref
    mov %r12, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_000b:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_000c:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_000d:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_ProcessStartInfo_set_UseShellExecute__b
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_0012:
    mov -16(%rbp), %rdi
    call m_System_Diagnostics_Process_Start__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_0017:
    mov -24(%rbp), %rax
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_0018:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_0019:
    mov -24(%rbp), %rdi
    lea .LN_2_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_001e:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_Pages_Dialog_Close__void
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_0023:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1__void, .-m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1__void

.globl m_Skymu_Universal_get_Lang__void
.type m_Skymu_Universal_get_Lang__void, @function
m_Skymu_Universal_get_Lang__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Universal_get_Lang_void_0000:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_get_Lang_void_0005:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_get_Lang_void_000a:
    lea .LS_0_m_Skymu_Universal_get_Lang_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_get_Lang_void_000f:
    mov -24(%rbp), %rsi
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_get_Lang_void_0014:
.Lm_Skymu_Universal_get_Lang_void_0019:
    mov -24(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_get_Lang_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_get_Lang__void, .-m_Skymu_Universal_get_Lang__void

.globl m_Skymu_Universal_add_ThemeChanged__ref
.type m_Skymu_Universal_add_ThemeChanged__ref, @function
m_Skymu_Universal_add_ThemeChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0000:
    lea .LN_0_m_Skymu_Universal_add_ThemeChanged_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0007:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_000a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Delegate_Combine__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_000f:
.Lm_Skymu_Universal_add_ThemeChanged_ref_0014:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0015:
    lea .LN_1_m_Skymu_Universal_add_ThemeChanged_ref(%rip), %rdi
    call shim_global_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_001a:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_001b:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_001c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0021:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0022:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_add_ThemeChanged_ref_0024:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Universal_add_ThemeChanged_ref_0006
.Lm_Skymu_Universal_add_ThemeChanged_ref_0026:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_add_ThemeChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_add_ThemeChanged__ref, .-m_Skymu_Universal_add_ThemeChanged__ref

.globl m_Skymu_Universal_remove_ThemeChanged__ref
.type m_Skymu_Universal_remove_ThemeChanged__ref, @function
m_Skymu_Universal_remove_ThemeChanged__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0000:
    lea .LN_0_m_Skymu_Universal_remove_ThemeChanged_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0007:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0008:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0009:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_000a:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_Delegate_Remove__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_000f:
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0014:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0015:
    lea .LN_1_m_Skymu_Universal_remove_ThemeChanged_ref(%rip), %rdi
    call shim_global_slot
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_001a:
    mov -40(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_001b:
    mov -32(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_001c:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_Threading_Interlocked_CompareExchange_class_System_Runtime_System_Action__gen_gen_gen
    movslq %eax, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0021:
    mov -56(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0022:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0024:
    mov -64(%rbp), %rcx
    mov -56(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Universal_remove_ThemeChanged_ref_0006
.Lm_Skymu_Universal_remove_ThemeChanged_ref_0026:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_remove_ThemeChanged_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_remove_ThemeChanged__ref, .-m_Skymu_Universal_remove_ThemeChanged__ref

.globl m_Skymu_Universal_get_IsDarkTheme__void
.type m_Skymu_Universal_get_IsDarkTheme__void, @function
m_Skymu_Universal_get_IsDarkTheme__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Universal_get_IsDarkTheme_void_0000:
    lea .LN_0_m_Skymu_Universal_get_IsDarkTheme_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_get_IsDarkTheme_void_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_get_IsDarkTheme_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_get_IsDarkTheme__void, .-m_Skymu_Universal_get_IsDarkTheme__void

.globl m_Skymu_Universal_set_IsDarkTheme__v
.type m_Skymu_Universal_set_IsDarkTheme__v, @function
m_Skymu_Universal_set_IsDarkTheme__v:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_set_IsDarkTheme_v_0000:
    lea .LN_0_m_Skymu_Universal_set_IsDarkTheme_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_set_IsDarkTheme_v_0005:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_set_IsDarkTheme_v_0006:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %rcx, %rax
    jne .Lm_Skymu_Universal_set_IsDarkTheme_v_0009
.Lm_Skymu_Universal_set_IsDarkTheme_v_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_set_IsDarkTheme_v_0009:
    mov -16(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_set_IsDarkTheme_v_000a:
    lea .LN_1_m_Skymu_Universal_set_IsDarkTheme_v(%rip), %rdi
    call shim_global_slot
    mov -24(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Universal_set_IsDarkTheme_v_000f:
    lea .LN_2_m_Skymu_Universal_set_IsDarkTheme_v(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_set_IsDarkTheme_v_0014:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_set_IsDarkTheme_v_0015:
    mov -24(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_set_IsDarkTheme_v_0019
.Lm_Skymu_Universal_set_IsDarkTheme_v_0017:
    mov -16(%rbp), %rax
.Lm_Skymu_Universal_set_IsDarkTheme_v_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_set_IsDarkTheme_v_0019:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Action_Invoke__void
.Lm_Skymu_Universal_set_IsDarkTheme_v_001e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_set_IsDarkTheme_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_set_IsDarkTheme__v, .-m_Skymu_Universal_set_IsDarkTheme__v

.globl m_Skymu_Universal_PluginPopup__ref_ref_ref_v
.type m_Skymu_Universal_PluginPopup__ref_ref_ref_v, @function
m_Skymu_Universal_PluginPopup__ref_ref_ref_v:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
    mov %rcx, -40(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0000:
    lea .LN_0_m_Skymu_Universal_PluginPopup_ref_ref_ref_v(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Universal_c_DisplayClass41_0_ctor__void
    mov %r12, -56(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0005:
    mov -56(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0006:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0007:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0008:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_PluginPopup_ref_ref_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_000d:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_000e:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_000f:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_2_m_Skymu_Universal_PluginPopup_ref_ref_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0014:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0015:
    mov -24(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0016:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_3_m_Skymu_Universal_PluginPopup_ref_ref_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_001b:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_001c:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_001d:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rdi
    lea .LN_4_m_Skymu_Universal_PluginPopup_ref_ref_ref_v(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0022:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0027:
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_002c:
    mov -48(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_002d:
    lea m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_0__void(%rip), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0033:
    lea .LN_5_m_Skymu_Universal_PluginPopup_ref_ref_ref_v(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -64(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0038:
    call m_System_Array_Empty_object__void
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_003d:
    mov -72(%rbp), %rdx
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_BeginInvoke__ref_arr
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0042:
    mov -56(%rbp), %rax
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_0043:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_PluginPopup_ref_ref_ref_v_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_PluginPopup__ref_ref_ref_v, .-m_Skymu_Universal_PluginPopup__ref_ref_ref_v

.globl m_Skymu_Universal_PluginDialogHandler__ref_ref
.type m_Skymu_Universal_PluginDialogHandler__ref_ref, @function
m_Skymu_Universal_PluginDialogHandler__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0000:
    lea .LN_0_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Universal_c_DisplayClass42_0_ctor__void
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0005:
    mov -48(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0008:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_000d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_000e:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_000f:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rdi
    lea .LN_2_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0014:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0015:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_001a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Bottles_DialogBottle_get_Type__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_001f:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0020:
    mov -40(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0021:
    mov -48(%rbp), %rax
    cmp $0, %eax
    je .Lm_Skymu_Universal_PluginDialogHandler_ref_ref_004f
    cmp $1, %eax
    je .Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0037
    cmp $2, %eax
    je .Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0067
    cmp $3, %eax
    je .Lm_Skymu_Universal_PluginDialogHandler_ref_ref_007f
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0036:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0037:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0038:
    mov -48(%rbp), %rdi
    lea .LN_4_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_003d:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_003e:
    mov -56(%rbp), %rdi
    lea .LN_5_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0043:
    lea .LS_6_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0048:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0049:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Universal_PluginPopup__ref_ref_ref_v
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_004e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_004f:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0050:
    mov -48(%rbp), %rdi
    lea .LN_7_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0055:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0056:
    mov -56(%rbp), %rdi
    lea .LN_8_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_005b:
    lea .LS_9_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0060:
    mov $1, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0061:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Universal_PluginPopup__ref_ref_ref_v
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0066:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0067:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0068:
    mov -48(%rbp), %rdi
    lea .LN_10_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_006d:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_006e:
    mov -56(%rbp), %rdi
    lea .LN_11_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0073:
    lea .LS_12_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rdi
    mov $20, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0078:
    mov $2, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0079:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_Skymu_Universal_PluginPopup__ref_ref_ref_v
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_007e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_007f:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0084:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0089:
    mov -32(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_008a:
    lea m_Skymu_Universal_c_DisplayClass42_0_PluginDialogHandler_b_0__void(%rip), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0090:
    lea .LN_13_m_Skymu_Universal_PluginDialogHandler_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -56(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_0095:
    call m_System_Array_Empty_object__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_009a:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_BeginInvoke__ref_arr
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_009f:
    mov -48(%rbp), %rax
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_00a0:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_PluginDialogHandler_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_PluginDialogHandler__ref_ref, .-m_Skymu_Universal_PluginDialogHandler__ref_ref

.globl m_Skymu_Universal_PluginNotificationHandler__ref_ref
.type m_Skymu_Universal_PluginNotificationHandler__ref_ref, @function
m_Skymu_Universal_PluginNotificationHandler__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0000:
    lea .LN_0_m_Skymu_Universal_PluginNotificationHandler_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Universal_c_DisplayClass43_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0005:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0006:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0007:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_PluginNotificationHandler_ref_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_000d:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0012:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0017:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0018:
    lea m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_001e:
    lea .LN_2_m_Skymu_Universal_PluginNotificationHandler_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0023:
    call m_System_Array_Empty_object__void
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_0028:
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_BeginInvoke__ref_arr
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_002d:
    mov -40(%rbp), %rax
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_002e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_PluginNotificationHandler_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_PluginNotificationHandler__ref_ref, .-m_Skymu_Universal_PluginNotificationHandler__ref_ref

.globl m_Skymu_Universal_GetCultureCode__ref
.type m_Skymu_Universal_GetCultureCode__ref, @function
m_Skymu_Universal_GetCultureCode__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0000:
    lea .LN_0_m_Skymu_Universal_GetCultureCode_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Universal_c_DisplayClass45_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0005:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0006:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0007:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0008:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_GetCultureCode_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_GetCultureCode_ref_000d:
    mov $7, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_000e:
    mov -40(%rbp), %rdi
    call m_System_Globalization_CultureInfo_GetCultures__v
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0013:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0014:
    lea m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0__ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_001a:
    lea .LN_2_m_Skymu_Universal_GetCultureCode_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_bool_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_001f:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_Linq_Enumerable_FirstOrDefault_class_System_Runtime_System_Globalization_CultureInfo__gen_gen
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0024:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0025:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_GetCultureCode_ref_002b
.Lm_Skymu_Universal_GetCultureCode_ref_0027:
    mov -32(%rbp), %rax
.Lm_Skymu_Universal_GetCultureCode_ref_0028:
    xor %eax, %eax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0029:
    jmp .Lm_Skymu_Universal_GetCultureCode_ref_0030
.Lm_Skymu_Universal_GetCultureCode_ref_002b:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Globalization_CultureInfo_get_Name__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0030:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0031:
    mov -40(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_GetCultureCode_ref_0039
.Lm_Skymu_Universal_GetCultureCode_ref_0033:
    mov -32(%rbp), %rax
.Lm_Skymu_Universal_GetCultureCode_ref_0034:
    lea .LS_3_m_Skymu_Universal_GetCultureCode_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0039:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_003a:
    jmp .Lm_Skymu_Universal_GetCultureCode_ref_0045
.Lm_Skymu_Universal_GetCultureCode_ref_0045:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_GetCultureCode_ref_0046:
    mov -40(%rbp), %rax
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_GetCultureCode_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_GetCultureCode__ref, .-m_Skymu_Universal_GetCultureCode__ref

.globl m_Skymu_Universal_App_Startup__ref_ref
.type m_Skymu_Universal_App_Startup__ref_ref, @function
m_Skymu_Universal_App_Startup__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0000:
    call m_Skymu_Preferences_Settings_get_UseSystemCulture__void
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0005:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_App_Startup_ref_ref_001c
.Lm_Skymu_Universal_App_Startup_ref_ref_0007:
    call m_Skymu_Preferences_Settings_get_Language__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_000c:
    mov -48(%rbp), %rdi
    call m_Skymu_Universal_GetCultureCode__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0011:
    mov $0, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0012:
    lea .LN_0_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Globalization_CultureInfo_ctor__ref_b
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0017:
    mov -48(%rbp), %rdi
    call m_System_Globalization_CultureInfo_set_CurrentCulture__ref
.Lm_Skymu_Universal_App_Startup_ref_ref_001c:
    lea .LN_1_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0021:
    mov -48(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0022:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0023:
    lea .LS_2_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0028:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_002d:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_App_Startup_ref_ref_0058
.Lm_Skymu_Universal_App_Startup_ref_ref_002f:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0030:
    lea .LS_3_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0035:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_003a:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_App_Startup_ref_ref_0065
.Lm_Skymu_Universal_App_Startup_ref_ref_003c:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_003d:
    lea .LS_4_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0042:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0047:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_App_Startup_ref_ref_00b8
.Lm_Skymu_Universal_App_Startup_ref_ref_0049:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_004a:
    lea .LS_5_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_004f:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0054:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_App_Startup_ref_ref_00c5
.Lm_Skymu_Universal_App_Startup_ref_ref_0056:
    jmp .Lm_Skymu_Universal_App_Startup_ref_ref_00c5
.Lm_Skymu_Universal_App_Startup_ref_ref_0058:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0059:
    lea .LN_6_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype7_Login_ctor__b
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_005e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Universal_App_Startup_ref_ref_0063:
    jmp .Lm_Skymu_Universal_App_Startup_ref_ref_00d0
.Lm_Skymu_Universal_App_Startup_ref_ref_0065:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_006a:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_006f:
    lea .LS_7_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0074:
    lea .LS_8_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0079:
    mov -64(%rbp), %rdi
    call m_System_Windows_Media_ColorConverter_ConvertFromString__ref
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_007e:
    mov -64(%rbp), %rdi
    call shim_unbox
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0083:
    lea .LN_9_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -64(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0088:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_set_Item__ref_ref
.Lm_Skymu_Universal_App_Startup_ref_ref_008d:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0092:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_0097:
    lea .LS_10_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    mov $22, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_009c:
    call m_System_Windows_Media_Colors_get_White__void
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00a1:
    lea .LN_11_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -64(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Media_SolidColorBrush_ctor__v
    mov %r12, -64(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00a6:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_set_Item__ref_ref
.Lm_Skymu_Universal_App_Startup_ref_ref_00ab:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00ac:
    lea .LN_12_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype6_Login_ctor__b
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00b1:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Universal_App_Startup_ref_ref_00b6:
    jmp .Lm_Skymu_Universal_App_Startup_ref_ref_00d0
.Lm_Skymu_Universal_App_Startup_ref_ref_00b8:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00b9:
    lea .LN_13_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype4_Login_ctor__b
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00be:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Universal_App_Startup_ref_ref_00c3:
    jmp .Lm_Skymu_Universal_App_Startup_ref_ref_00d0
.Lm_Skymu_Universal_App_Startup_ref_ref_00c5:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00c6:
    lea .LN_14_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Skype5_Login_ctor__b
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00cb:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Universal_App_Startup_ref_ref_00d0:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00d1:
    lea m_Skymu_Universal_App_Startup_b_46_0__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00d7:
    lea .LN_15_m_Skymu_Universal_App_Startup_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Threading_Tasks_Task_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00dc:
    mov -48(%rbp), %rdi
    call m_System_Threading_Tasks_Task_Run__gen
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_ref_ref_00e1:
    mov -48(%rbp), %rax
.Lm_Skymu_Universal_App_Startup_ref_ref_00e2:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_App_Startup_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_App_Startup__ref_ref, .-m_Skymu_Universal_App_Startup__ref_ref

.globl m_Skymu_Universal_URIHandler__ref
.type m_Skymu_Universal_URIHandler__ref, @function
m_Skymu_Universal_URIHandler__ref:
    push %rbp
    mov %rsp, %rbp
    sub $128, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0001:
    lea .LS_0_m_Skymu_Universal_URIHandler_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0006:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_000b:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_URIHandler_ref_0016
.Lm_Skymu_Universal_URIHandler_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_000e:
    mov $1, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_000f:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0014:
    mov -88(%rbp), %rax
.Lm_Skymu_Universal_URIHandler_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_URIHandler_ref_0016:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0017:
    lea .LS_1_m_Skymu_Universal_URIHandler_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_001c:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0021:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_URIHandler_ref_0133
.Lm_Skymu_Universal_URIHandler_ref_0026:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0027:
    lea .LS_2_m_Skymu_Universal_URIHandler_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_002c:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_IndexOf__ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0031:
    mov -88(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0032:
    mov -16(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0033:
    mov $0, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0034:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0035:
    mov $-1, %rax
    mov %rax, -112(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0036:
    mov -112(%rbp), %rcx
    mov -104(%rbp), %rax
    cmp %ecx, %eax
    je .Lm_Skymu_Universal_URIHandler_ref_003b
.Lm_Skymu_Universal_URIHandler_ref_0038:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0039:
    jmp .Lm_Skymu_Universal_URIHandler_ref_0041
.Lm_Skymu_Universal_URIHandler_ref_003b:
    mov -16(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_003c:
    mov -104(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_get_Length__void
    movslq %eax, %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0041:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4_i4
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0046:
    mov -88(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0047:
    lea .LN_3_m_Skymu_Universal_URIHandler_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_004c:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_URIHandler_ref_0133
.Lm_Skymu_Universal_URIHandler_ref_0051:
    lea .LN_4_m_Skymu_Universal_URIHandler_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Universal_c_DisplayClass47_0_ctor__void
    mov %r12, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0056:
    mov -88(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0057:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0058:
    xor %eax, %eax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0059:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_5_m_Skymu_Universal_URIHandler_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_URIHandler_ref_005e:
    lea .LN_6_m_Skymu_Universal_URIHandler_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0063:
    mov -88(%rbp), %rdi
    lea .LN_7_m_Skymu_Universal_URIHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0068:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_GetEnumerator__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_006d:
    mov -88(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_006e:
    jmp .Lm_Skymu_Universal_URIHandler_ref_00a3
.Lm_Skymu_Universal_URIHandler_ref_0070:
    mov -48(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0071:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_Conversation_get_Current__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0076:
    mov -88(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0078:
    mov -56(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_007a:
    mov -88(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_007f:
    mov -96(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0081:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0083:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_URIHandler_ref_00a3
.Lm_Skymu_Universal_URIHandler_ref_0085:
    mov -64(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0087:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_008c:
    mov -96(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0091:
    mov -32(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0092:
    mov -104(%rbp), %rsi
    mov -96(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0097:
    mov -96(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_URIHandler_ref_00a3
.Lm_Skymu_Universal_URIHandler_ref_0099:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_009a:
    mov -56(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_009c:
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rdi
    lea .LN_8_m_Skymu_Universal_URIHandler_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_URIHandler_ref_00a1:
    jmp .Lm_Skymu_Universal_URIHandler_ref_00b7
.Lm_Skymu_Universal_URIHandler_ref_00a3:
    mov -48(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00a4:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00a9:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_URIHandler_ref_0070
.Lm_Skymu_Universal_URIHandler_ref_00ab:
    jmp .Lm_Skymu_Universal_URIHandler_ref_00b7
.Lm_Skymu_Universal_URIHandler_ref_00b7:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00b8:
    mov -88(%rbp), %rdi
    lea .LN_9_m_Skymu_Universal_URIHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00bd:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_URIHandler_ref_0110
.Lm_Skymu_Universal_URIHandler_ref_00bf:
    lea .LN_10_m_Skymu_Universal_URIHandler_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00c4:
    mov -88(%rbp), %rdi
    lea .LN_11_m_Skymu_Universal_URIHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00c9:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_GetEnumerator__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00ce:
    mov -88(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00d0:
    jmp .Lm_Skymu_Universal_URIHandler_ref_00f9
.Lm_Skymu_Universal_URIHandler_ref_00d2:
    mov -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00d4:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Current__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00d9:
    mov -88(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00db:
    mov -80(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00dd:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_DirectMessage_get_Partner__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00e2:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_Models_User_get_Username__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00e7:
    mov -32(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00e8:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00ed:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_URIHandler_ref_00f9
.Lm_Skymu_Universal_URIHandler_ref_00ef:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00f0:
    mov -80(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00f2:
    mov -96(%rbp), %rdx
    mov -88(%rbp), %rdi
    lea .LN_12_m_Skymu_Universal_URIHandler_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_URIHandler_ref_00f7:
    jmp .Lm_Skymu_Universal_URIHandler_ref_0110
.Lm_Skymu_Universal_URIHandler_ref_00f9:
    mov -72(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_00fb:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0100:
    mov -88(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_URIHandler_ref_00d2
.Lm_Skymu_Universal_URIHandler_ref_0102:
    jmp .Lm_Skymu_Universal_URIHandler_ref_0110
.Lm_Skymu_Universal_URIHandler_ref_0110:
    mov -40(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0111:
    mov -88(%rbp), %rdi
    lea .LN_13_m_Skymu_Universal_URIHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0116:
    mov -88(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_URIHandler_ref_0133
.Lm_Skymu_Universal_URIHandler_ref_0118:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_011d:
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0122:
    mov -40(%rbp), %rax
    mov %rax, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0123:
    lea m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0__void(%rip), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_0129:
    lea .LN_14_m_Skymu_Universal_URIHandler_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -104(%rbp), %rdx
    mov -96(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -96(%rbp)
.Lm_Skymu_Universal_URIHandler_ref_012e:
    mov -96(%rbp), %rsi
    mov -88(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke__ref
.Lm_Skymu_Universal_URIHandler_ref_0133:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_URIHandler_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_URIHandler__ref, .-m_Skymu_Universal_URIHandler__ref

.globl m_Skymu_Universal_Restart__void
.type m_Skymu_Universal_Restart__void, @function
m_Skymu_Universal_Restart__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Universal_Restart_void_0000:
    lea .LN_0_m_Skymu_Universal_Restart_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_Restart_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_Restart_void_0006:
    mov -16(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_Restart_void_000b
.Lm_Skymu_Universal_Restart_void_0008:
    mov -8(%rbp), %rax
.Lm_Skymu_Universal_Restart_void_0009:
    jmp .Lm_Skymu_Universal_Restart_void_0010
.Lm_Skymu_Universal_Restart_void_000b:
    mov -8(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Threading_WaitHandle_Dispose__void
.Lm_Skymu_Universal_Restart_void_0010:
    xor %eax, %eax
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_Restart_void_0011:
    lea .LN_1_m_Skymu_Universal_Restart_void(%rip), %rdi
    call shim_global_slot
    mov -16(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Universal_Restart_void_0016:
    call m_System_Diagnostics_Process_GetCurrentProcess__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_Restart_void_001b:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_Process_get_MainModule__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_Restart_void_0020:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Diagnostics_ProcessModule_get_FileName__void
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_Restart_void_0025:
    mov -16(%rbp), %rdi
    call m_System_Diagnostics_Process_Start__ref
    mov %rax, -16(%rbp)
.Lm_Skymu_Universal_Restart_void_002a:
    mov -16(%rbp), %rax
.Lm_Skymu_Universal_Restart_void_002b:
    call m_Skymu_Universal_Terminate__void
.Lm_Skymu_Universal_Restart_void_0030:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_Restart_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_Restart__void, .-m_Skymu_Universal_Restart__void

.globl m_Skymu_Universal_App_DispatcherUnhandledException__ref_ref
.type m_Skymu_Universal_App_DispatcherUnhandledException__ref_ref, @function
m_Skymu_Universal_App_DispatcherUnhandledException__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Universal_App_DispatcherUnhandledException_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_DispatcherUnhandledException_ref_ref_0001:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherUnhandledExceptionEventArgs_get_Exception__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_DispatcherUnhandledException_ref_ref_0006:
    mov -40(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_Universal_App_DispatcherUnhandledException_ref_ref_000b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_DispatcherUnhandledException_ref_ref_000c:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_DispatcherUnhandledException_ref_ref_000d:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherUnhandledExceptionEventArgs_set_Handled__b
.Lm_Skymu_Universal_App_DispatcherUnhandledException_ref_ref_0012:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_App_DispatcherUnhandledException_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_App_DispatcherUnhandledException__ref_ref, .-m_Skymu_Universal_App_DispatcherUnhandledException__ref_ref

.globl m_Skymu_Universal_CurrentDomain_UnhandledException__ref_ref
.type m_Skymu_Universal_CurrentDomain_UnhandledException__ref_ref, @function
m_Skymu_Universal_CurrentDomain_UnhandledException__ref_ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
    mov %rdx, -32(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0000:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0001:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_UnhandledExceptionEventArgs_get_ExceptionObject__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0006:
    mov -48(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_000b:
    mov -56(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_000c:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_000d:
    mov -56(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0016
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_000f:
    mov -40(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0010:
    mov -56(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0016:
    lea .LS_0_m_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref(%rip), %rdi
    mov $91, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_001b:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_001c:
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0021:
    mov -64(%rbp), %rsi
    mov -56(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0026:
    lea .LN_1_m_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Exception_ctor__ref
    mov %r12, -56(%rbp)
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_002b:
    mov -56(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_0030:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_CurrentDomain_UnhandledException__ref_ref, .-m_Skymu_Universal_CurrentDomain_UnhandledException__ref_ref

.globl m_Skymu_Universal_Hide__ref
.type m_Skymu_Universal_Hide__ref, @function
m_Skymu_Universal_Hide__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_Hide_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_0001:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_Hide_ref_000a
.Lm_Skymu_Universal_Hide_ref_0003:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_0004:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_Hide_ref_0005:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_ComponentModel_CancelEventArgs_set_Cancel__b
.Lm_Skymu_Universal_Hide_ref_000a:
    call m_System_Windows_Application_get_Current__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_000f:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Windows__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_0014:
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_OfType_class_PresentationFramework_System_Windows_Window__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_0019:
    mov -32(%rbp), %rdi
    call m_System_Linq_Enumerable_ToList_class_PresentationFramework_System_Windows_Window__gen
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_001e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_GetEnumerator__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_0023:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_Hide_ref_0024:
    jmp .Lm_Skymu_Universal_Hide_ref_0032
.Lm_Skymu_Universal_Hide_ref_0026:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_0028:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_get_Current__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_002d:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Hide__void
.Lm_Skymu_Universal_Hide_ref_0032:
    lea -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_0034:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_MoveNext__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_Hide_ref_0039:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_Hide_ref_0026
.Lm_Skymu_Universal_Hide_ref_003b:
    jmp .Lm_Skymu_Universal_Hide_ref_004b
.Lm_Skymu_Universal_Hide_ref_004b:
    jmp .Lm_Skymu_Universal_Hide_ref_0050
.Lm_Skymu_Universal_Hide_ref_0050:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_Hide_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_Hide__ref, .-m_Skymu_Universal_Hide__ref

.globl m_Skymu_Universal_Terminate__void
.type m_Skymu_Universal_Terminate__void, @function
m_Skymu_Universal_Terminate__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Universal_Terminate_void_0000:
    call m_Skymu_Native_Windows_Tray_DisposeIcon__void
.Lm_Skymu_Universal_Terminate_void_0005:
    jmp .Lm_Skymu_Universal_Terminate_void_0015
.Lm_Skymu_Universal_Terminate_void_0015:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_Terminate_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_Terminate__void, .-m_Skymu_Universal_Terminate__void

.globl m_Skymu_Universal_ExceptionHandler__ref
.type m_Skymu_Universal_ExceptionHandler__ref, @function
m_Skymu_Universal_ExceptionHandler__ref:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0000:
    lea .LN_0_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Universal_c_DisplayClass55_0_ctor__void
    mov %r12, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0005:
    mov -40(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0006:
    call m_Skymu_Preferences_Settings_get_BrandingName__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_000b:
    mov -40(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_000c:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_000d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_000e:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0013:
    lea .LN_1_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_Pages_ErrorWindow_ctor__ref
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0018:
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rdi
    lea .LN_2_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_ExceptionHandler_ref_001d:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_001e:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_001f:
    mov -48(%rbp), %rdi
    lea .LN_3_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0024:
    lea .LN_4_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_Skymu_Forms_WindowBase_ctor__ref
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0029:
    mov -48(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_002a:
    mov $29, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_002c:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_HeaderIcon__v
.Lm_Skymu_Universal_ExceptionHandler_ref_0031:
    mov -40(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0032:
    lea .LS_5_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    mov $33, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0037:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_HeaderText__ref
.Lm_Skymu_Universal_ExceptionHandler_ref_003c:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_003d:
    mov -32(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_003e:
    lea .LS_6_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0043:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0048:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_Title__ref
.Lm_Skymu_Universal_ExceptionHandler_ref_004d:
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rdi
    lea .LN_7_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_ExceptionHandler_ref_0052:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0053:
    mov -40(%rbp), %rdi
    lea .LN_8_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0058:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0059:
    lea m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_005f:
    lea .LN_9_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0064:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonRightAction__ref
.Lm_Skymu_Universal_ExceptionHandler_ref_0069:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_006a:
    mov -40(%rbp), %rdi
    lea .LN_10_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_006f:
    call m_Skymu_Universal_get_Lang__void
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0074:
    lea .LS_11_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0079:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_LanguageManager_get_Item__ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_007e:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonRightText__ref
.Lm_Skymu_Universal_ExceptionHandler_ref_0083:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0084:
    mov -40(%rbp), %rdi
    lea .LN_12_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0089:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_008a:
    lea m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1__void(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0090:
    lea .LN_13_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_0095:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftAction__ref
.Lm_Skymu_Universal_ExceptionHandler_ref_009a:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_009b:
    mov -40(%rbp), %rdi
    lea .LN_14_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_00a0:
    lea .LS_15_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rdi
    mov $17, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_00a5:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Forms_WindowBase_set_ButtonLeftText__ref
.Lm_Skymu_Universal_ExceptionHandler_ref_00aa:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_00ab:
    mov -40(%rbp), %rdi
    lea .LN_16_m_Skymu_Universal_ExceptionHandler_ref(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_00b0:
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_ShowDialog__void
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ExceptionHandler_ref_00b5:
    mov -40(%rbp), %rax
.Lm_Skymu_Universal_ExceptionHandler_ref_00b6:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_ExceptionHandler_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_ExceptionHandler__ref, .-m_Skymu_Universal_ExceptionHandler__ref

.globl m_Skymu_Universal_WriteToPipe__ref
.type m_Skymu_Universal_WriteToPipe__ref, @function
m_Skymu_Universal_WriteToPipe__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0000:
    lea .LS_0_m_Skymu_Universal_WriteToPipe_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0005:
    lea .LS_1_m_Skymu_Universal_WriteToPipe_ref(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_000a:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_000b:
    lea .LN_2_m_Skymu_Universal_WriteToPipe_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rcx
    mov -32(%rbp), %rdx
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_Pipes_NamedPipeClientStream_ctor__ref_ref_v
    mov %r12, -24(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0010:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0011:
    mov $1000, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0016:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Pipes_NamedPipeClientStream_Connect__i4
.Lm_Skymu_Universal_WriteToPipe_ref_001b:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_001c:
    lea .LN_3_m_Skymu_Universal_WriteToPipe_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -24(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_StreamWriter_ctor__ref
    mov %r12, -24(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0021:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0022:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0023:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_StreamWriter_set_AutoFlush__b
.Lm_Skymu_Universal_WriteToPipe_ref_0028:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_0029:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_WriteToPipe_ref_002a:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_TextWriter_WriteLine__ref
.Lm_Skymu_Universal_WriteToPipe_ref_002f:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_TextWriter_Dispose__void
.Lm_Skymu_Universal_WriteToPipe_ref_0034:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_Dispose__void
.Lm_Skymu_Universal_WriteToPipe_ref_0039:
    jmp .Lm_Skymu_Universal_WriteToPipe_ref_003e
.Lm_Skymu_Universal_WriteToPipe_ref_003e:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_WriteToPipe_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_WriteToPipe__ref, .-m_Skymu_Universal_WriteToPipe__ref

.globl m_Skymu_Universal_OnStartup__ref
.type m_Skymu_Universal_OnStartup__ref, @function
m_Skymu_Universal_OnStartup__ref:
    push %rbp
    mov %rsp, %rbp
    sub $80, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0001:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0002:
    lea m_Skymu_Universal_App_DispatcherUnhandledException__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0008:
    lea .LN_0_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_Threading_DispatcherUnhandledExceptionEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_000d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_add_DispatcherUnhandledException__ref
.Lm_Skymu_Universal_OnStartup_ref_0012:
    call m_System_AppDomain_get_CurrentDomain__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0017:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0018:
    lea m_Skymu_Universal_CurrentDomain_UnhandledException__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_001e:
    lea .LN_1_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_UnhandledExceptionEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0023:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_AppDomain_add_UnhandledException__ref
.Lm_Skymu_Universal_OnStartup_ref_0028:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0029:
    call m_Skymu_Preferences_Settings_get_PresentationFramework__void
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_002e:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Universal_ApplyPresentationFramework__ref
.Lm_Skymu_Universal_OnStartup_ref_0033:
    call m_Skymu_Native_Windows_AutoLaunch_Get__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0038:
    mov -32(%rbp), %rax
.Lm_Skymu_Universal_OnStartup_ref_0039:
    call m_Skymu_Theming_Colorizer_Scan__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_003e:
    mov -32(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_OnStartup_ref_004f
.Lm_Skymu_Universal_OnStartup_ref_0040:
    lea .LS_2_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    mov $64, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0045:
    lea .LN_3_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Exception_ctor__ref
    mov %r12, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_004a:
    mov -32(%rbp), %rdi
    call m_Skymu_Universal_ExceptionHandler__ref
.Lm_Skymu_Universal_OnStartup_ref_004f:
    call m_Skymu_Theming_Colorizer_LoadFromSettings__void
.Lm_Skymu_Universal_OnStartup_ref_0054:
    call m_Skymu_Migration_Migrator_Run__void
.Lm_Skymu_Universal_OnStartup_ref_0059:
    lea .LN_4_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_005e:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_HttpClient_get_DefaultRequestHeaders__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0063:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_HttpRequestHeaders_get_UserAgent__void
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0068:
    lea .LS_5_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    mov $12, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_006d:
    lea .LN_6_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0072:
    mov $1, %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0073:
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Versioning_BuildInfo_GetVersionString__b
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0078:
    lea .LS_7_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_007d:
    lea .LS_8_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    mov $2, %esi
    call shim_string_new
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0082:
    mov -64(%rbp), %rdx
    mov -56(%rbp), %rsi
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Replace__ref_ref
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0087:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    call m_System_String_Concat__ref_ref
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_008c:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Net_Http_Headers_ProductInfoHeaderValue_ParseAdd__ref
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0091:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0092:
    mov -24(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_0093:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_OnStartup__ref
.Lm_Skymu_Universal_OnStartup_ref_0098:
    lea .LN_9_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_009d:
    mov -16(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_009e:
    lea m_Skymu_Universal_OnStartup_b_59_0__ref_ref(%rip), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_00a4:
    lea .LN_10_m_Skymu_Universal_OnStartup_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -56(%rbp), %rdx
    mov -48(%rbp), %rsi
    mov %r12, %rdi
    call m_System_ComponentModel_PropertyChangedEventHandler_ctor__ref_v
    mov %r12, -48(%rbp)
.Lm_Skymu_Universal_OnStartup_ref_00a9:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Preferences_Settings_SettingsProxy_add_PropertyChanged__ref
.Lm_Skymu_Universal_OnStartup_ref_00ae:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_OnStartup_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_OnStartup__ref, .-m_Skymu_Universal_OnStartup__ref

.globl m_Skymu_Universal_ApplyPresentationFramework__ref
.type m_Skymu_Universal_ApplyPresentationFramework__ref, @function
m_Skymu_Universal_ApplyPresentationFramework__ref:
    push %rbp
    mov %rsp, %rbp
    sub $176, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0000:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0001:
    mov -120(%rbp), %rdi
    call m_System_String_IsNullOrEmpty__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0006:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_000f
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0008:
    lea .LS_0_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $16, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_000d:
    mov -120(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_000f:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0010:
    lea .LS_1_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0015:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_001a:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0051
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_001c:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_001d:
    mov $46, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_001f:
    mov $0, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0020:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Split__c_v
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0025:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0026:
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0027:
    mov -120(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0028:
    lea .LS_2_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $57, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_002d:
    mov -40(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_002e:
    lea .LS_3_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0033:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    call m_System_String_Concat__ref_ref_ref
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0038:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0039:
    lea .LN_4_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_003e:
    mov -120(%rbp), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_003f:
    lea .LN_5_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_ResourceDictionary_ctor__void
    mov %r12, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0044:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0045:
    mov -48(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0046:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_set_Source__ref
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_004b:
    mov -112(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_004c:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0129
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0051:
    lea .LS_6_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $0, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0056:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0057:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0058:
    lea .LS_7_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_005d:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0062:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_006c
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0064:
    lea .LS_8_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0069:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_006a:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e8
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_006c:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_006d:
    lea .LS_9_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0072:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0077:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0081
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0079:
    lea .LS_10_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_007e:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_007f:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e8
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0081:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0082:
    lea .LS_11_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0087:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_008c:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0096
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_008e:
    lea .LS_12_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $28, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0093:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0094:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e8
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0096:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0097:
    lea .LS_13_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_009c:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00a1:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00ab
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00a3:
    lea .LS_14_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $27, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00a8:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00a9:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e8
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00ab:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00ac:
    lea .LS_15_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $8, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00b1:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00b6:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00c0
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00b8:
    lea .LS_16_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $30, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00bd:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00be:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e8
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00c0:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00c1:
    lea .LS_17_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00c6:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00cb:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00d5
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00cd:
    lea .LS_18_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $26, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00d2:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00d3:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e8
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00d5:
    mov -24(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00d6:
    lea .LS_19_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $7, %esi
    call shim_string_new
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00db:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e0:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e8
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e2:
    lea .LS_20_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $29, %esi
    call shim_string_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e7:
    mov -120(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e8:
    mov $5, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00e9:
    mov -120(%rbp), %rdi
    mov $8, %esi
    call shim_array_new
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00ee:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00ef:
    mov $0, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00f0:
    lea .LS_21_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00f5:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00f6:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00f7:
    mov $1, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00f8:
    mov -56(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00f9:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00fa:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00fb:
    mov $2, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_00fc:
    lea .LS_22_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $18, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0101:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0102:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0103:
    mov $3, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0104:
    mov -24(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0105:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0106:
    mov -112(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0107:
    mov $4, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0108:
    lea .LS_23_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    mov $5, %esi
    call shim_string_new
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_010d:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rcx
    mov -120(%rbp), %rax
    mov %rdx, 16(%rax,%rcx,8)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_010e:
    mov -112(%rbp), %rdi
    call m_System_String_Concat__arr
    mov %rax, -112(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0113:
    mov $2, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0114:
    lea .LN_24_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -128(%rbp), %rdx
    mov -120(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0119:
    mov -120(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_011b:
    lea .LN_25_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_ResourceDictionary_ctor__void
    mov %r12, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0120:
    mov -120(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0121:
    mov -64(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0123:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_set_Source__ref
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0128:
    mov -112(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0129:
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_012a:
    lea .LN_26_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_System_Windows_ResourceDictionary_ctor__void
    mov %r12, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_012f:
    mov -120(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0131:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0132:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0137:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Keys__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_013c:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerable_GetEnumerator__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0141:
    mov -120(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0143:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0177
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0145:
    mov -80(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0147:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_014c:
    mov -120(%rbp), %rax
    mov %rax, -88(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_014e:
    mov -88(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0150:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ToString__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0155:
    lea .LN_27_m_Skymu_Universal_ApplyPresentationFramework_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_015a:
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    call m_System_String_op_Inequality__ref_ref
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_015f:
    mov -120(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0177
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0161:
    mov -72(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0163:
    mov -88(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0165:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0166:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_016b:
    mov -88(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_016d:
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0172:
    mov -136(%rbp), %rdx
    mov -128(%rbp), %rsi
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_set_Item__ref_ref
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0177:
    mov -80(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0179:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_017e:
    mov -120(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0145
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0180:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0197
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0197:
    mov -16(%rbp), %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0198:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_019d:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_MergedDictionaries__void
    movslq %eax, %rax
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01a2:
    mov -120(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_Clear__void
    mov %rax, -120(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01a7:
    mov -16(%rbp), %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01a8:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01ad:
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_MergedDictionaries__void
    movslq %eax, %rax
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01b2:
    mov -32(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01b3:
    mov -136(%rbp), %rsi
    mov -128(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_Add__gen
    mov %rax, -128(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01b8:
    mov -72(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01ba:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Keys__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01bf:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerable_GetEnumerator__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01c4:
    mov -136(%rbp), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01c6:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_01e7
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01c8:
    mov -80(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01ca:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_get_Current__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01cf:
    mov -136(%rbp), %rax
    mov %rax, -104(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01d1:
    mov -16(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01d2:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_Resources__void
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01d7:
    mov -104(%rbp), %rax
    mov %rax, -144(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01d9:
    mov -72(%rbp), %rax
    mov %rax, -152(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01db:
    mov -104(%rbp), %rax
    mov %rax, -160(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01dd:
    mov -160(%rbp), %rsi
    mov -152(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_get_Item__ref
    mov %rax, -152(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01e2:
    mov -152(%rbp), %rdx
    mov -144(%rbp), %rsi
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_ResourceDictionary_set_Item__ref_ref
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01e7:
    mov -80(%rbp), %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01e9:
    mov -136(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Collections_IEnumerator_MoveNext__void
    movslq %eax, %rax
    mov %rax, -136(%rbp)
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01ee:
    mov -136(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Universal_ApplyPresentationFramework_ref_01c8
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_01f0:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0207
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0207:
    jmp .Lm_Skymu_Universal_ApplyPresentationFramework_ref_0225
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_0225:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_ApplyPresentationFramework_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_ApplyPresentationFramework__ref, .-m_Skymu_Universal_ApplyPresentationFramework__ref

.globl m_Skymu_Universal_OnExit__ref
.type m_Skymu_Universal_OnExit__ref, @function
m_Skymu_Universal_OnExit__ref:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
    mov %rsi, -24(%rbp)
.Lm_Skymu_Universal_OnExit_ref_0000:
    call m_Skymu_Native_Windows_Tray_DisposeIcon__void
.Lm_Skymu_Universal_OnExit_ref_0005:
    call m_Skymu_Plugins_PluginManager_DisposeAll__void
.Lm_Skymu_Universal_OnExit_ref_000a:
    call m_Skymu_WebServices_UserServerAPI_StopPolling__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnExit_ref_000f:
    mov -32(%rbp), %rax
.Lm_Skymu_Universal_OnExit_ref_0010:
    jmp .Lm_Skymu_Universal_OnExit_ref_0015
.Lm_Skymu_Universal_OnExit_ref_0015:
    lea .LN_0_m_Skymu_Universal_OnExit_ref(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnExit_ref_001a:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_OnExit_ref_002b
.Lm_Skymu_Universal_OnExit_ref_001c:
    call m_Skymu_Plugins_PluginManager_DisposeAll__void
.Lm_Skymu_Universal_OnExit_ref_0021:
    lea .LS_1_m_Skymu_Universal_OnExit_ref(%rip), %rdi
    mov $6, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnExit_ref_0026:
    mov -32(%rbp), %rdi
    call m_Skymu_Sounds_SoundManager_PlaySynchronous__ref
.Lm_Skymu_Universal_OnExit_ref_002b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_OnExit_ref_002c:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_OnExit_ref_002d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_OnExit__ref
.Lm_Skymu_Universal_OnExit_ref_0032:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_OnExit_ref_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_OnExit__ref, .-m_Skymu_Universal_OnExit__ref

.globl m_Skymu_Universal_InitializeComponent__void
.type m_Skymu_Universal_InitializeComponent__void, @function
m_Skymu_Universal_InitializeComponent__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0001:
    mov -32(%rbp), %rdi
    lea .LN_0_m_Skymu_Universal_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov (%rax), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0006:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_InitializeComponent_void_0009
.Lm_Skymu_Universal_InitializeComponent_void_0008:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_InitializeComponent_void_0009:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_000a:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_000b:
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rdi
    lea .LN_1_m_Skymu_Universal_InitializeComponent_void(%rip), %rsi
    call shim_field_slot
    mov %rdx, (%rax)
.Lm_Skymu_Universal_InitializeComponent_void_0010:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0011:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0012:
    lea m_Skymu_Universal_App_Startup__ref_ref(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0018:
    lea .LN_2_m_Skymu_Universal_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Windows_StartupEventHandler_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_001d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_add_Startup__ref
.Lm_Skymu_Universal_InitializeComponent_void_0022:
    lea .LS_3_m_Skymu_Universal_InitializeComponent_void(%rip), %rdi
    mov $25, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0027:
    mov $2, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0028:
    lea .LN_4_m_Skymu_Universal_InitializeComponent_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Uri_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_002d:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_002e:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_002f:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_InitializeComponent_void_0030:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_Windows_Application_LoadComponent__ref_ref
.Lm_Skymu_Universal_InitializeComponent_void_0035:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_InitializeComponent_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_InitializeComponent__void, .-m_Skymu_Universal_InitializeComponent__void

.globl m_Skymu_Universal_Main__void
.type m_Skymu_Universal_Main__void, @function
m_Skymu_Universal_Main__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Universal_Main_void_0000:
    lea .LN_0_m_Skymu_Universal_Main_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov %r12, %rdi
    call m_Skymu_Universal_ctor__void
    mov %r12, -16(%rbp)
.Lm_Skymu_Universal_Main_void_0005:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_Main_void_0006:
    mov -16(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Skymu_Universal_InitializeComponent__void
.Lm_Skymu_Universal_Main_void_000b:
    mov -8(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_Run__void
    movslq %eax, %rax
    mov %rax, -8(%rbp)
.Lm_Skymu_Universal_Main_void_0010:
    mov -16(%rbp), %rax
.Lm_Skymu_Universal_Main_void_0011:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_Main_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_Main__void, .-m_Skymu_Universal_Main__void

.globl m_Skymu_Universal_ctor__void
.type m_Skymu_Universal_ctor__void, @function
m_Skymu_Universal_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_ctor__void
.Lm_Skymu_Universal_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_ctor__void, .-m_Skymu_Universal_ctor__void

.globl m_Skymu_Universal_App_Startup_b_46_0__void
.type m_Skymu_Universal_App_Startup_b_46_0__void, @function
m_Skymu_Universal_App_Startup_b_46_0__void:
    push %rbp
    mov %rsp, %rbp
    sub $64, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0000:
    lea .LS_0_m_Skymu_Universal_App_Startup_b_46_0_void(%rip), %rdi
    mov $9, %esi
    call shim_string_new
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0005:
    mov $1, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0006:
    lea .LN_1_m_Skymu_Universal_App_Startup_b_46_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -40(%rbp), %rdx
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_Pipes_NamedPipeServerStream_ctor__ref_v
    mov %r12, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_000b:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_000c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Pipes_NamedPipeServerStream_WaitForConnection__void
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0011:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0012:
    lea .LN_2_m_Skymu_Universal_App_Startup_b_46_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -32(%rbp), %rsi
    mov %r12, %rdi
    call m_System_IO_StreamReader_ctor__ref
    mov %r12, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0017:
    mov -32(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0018:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_TextReader_ReadLine__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_001d:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_001e:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_001f:
    lea .LS_3_m_Skymu_Universal_App_Startup_b_46_0_void(%rip), %rdi
    mov $15, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0024:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    call m_System_String_op_Equality__ref_ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0029:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_App_Startup_b_46_0_void_0044
.Lm_Skymu_Universal_App_Startup_b_46_0_void_002b:
    mov -16(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_002c:
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_DispatcherObject_get_Dispatcher__void
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0031:
    mov -16(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0032:
    lea m_Skymu_Universal_App_Startup_b_46_1__void(%rip), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0038:
    lea .LN_4_m_Skymu_Universal_App_Startup_b_46_0_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -48(%rbp), %rdx
    mov -40(%rbp), %rsi
    mov %r12, %rdi
    call m_System_Action_ctor__ref_v
    mov %r12, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_003d:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Threading_Dispatcher_Invoke__ref
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0042:
    jmp .Lm_Skymu_Universal_App_Startup_b_46_0_void_006b
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0044:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0045:
    lea .LS_5_m_Skymu_Universal_App_Startup_b_46_0_void(%rip), %rdi
    mov $4, %esi
    call shim_string_new
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_004a:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_StartsWith__ref
    movslq %eax, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_004f:
    mov -32(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Universal_App_Startup_b_46_0_void_006b
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0051:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0052:
    mov -24(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0053:
    lea .LS_6_m_Skymu_Universal_App_Startup_b_46_0_void(%rip), %rdi
    mov $1, %esi
    call shim_string_new
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0058:
    mov -48(%rbp), %rsi
    mov -40(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_IndexOf__ref
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_005d:
    mov $1, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_005e:
    mov -48(%rbp), %rcx
    mov -40(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_005f:
    mov -40(%rbp), %rsi
    mov -32(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_String_Substring__i4
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0064:
    mov -32(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0065:
    mov -24(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0066:
    mov -32(%rbp), %rdi
    call m_Skymu_Universal_URIHandler__ref
.Lm_Skymu_Universal_App_Startup_b_46_0_void_006b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_TextReader_Dispose__void
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0070:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IO_Stream_Dispose__void
.Lm_Skymu_Universal_App_Startup_b_46_0_void_0075:
    jmp .Lm_Skymu_Universal_App_Startup_b_46_0_void_0000
.Lm_Skymu_Universal_App_Startup_b_46_0_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_App_Startup_b_46_0__void, .-m_Skymu_Universal_App_Startup_b_46_0__void

.globl m_Skymu_Universal_App_Startup_b_46_1__void
.type m_Skymu_Universal_App_Startup_b_46_1__void, @function
m_Skymu_Universal_App_Startup_b_46_1__void:
    push %rbp
    mov %rsp, %rbp
    sub $48, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_MainWindow__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0006:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_get_WindowState__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_000b:
    mov $1, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_000c:
    mov -32(%rbp), %rcx
    mov -24(%rbp), %rax
    cmp %ecx, %eax
    jne .Lm_Skymu_Universal_App_Startup_b_46_1_void_001a
.Lm_Skymu_Universal_App_Startup_b_46_1_void_000e:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_000f:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_MainWindow__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0014:
    mov $0, %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0015:
    mov -32(%rbp), %rsi
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_set_WindowState__v
.Lm_Skymu_Universal_App_Startup_b_46_1_void_001a:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_001b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_MainWindow__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0020:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Show__void
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0025:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0026:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Application_get_MainWindow__void
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_002b:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Windows_Window_Activate__void
    movslq %eax, %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0030:
    mov -24(%rbp), %rax
.Lm_Skymu_Universal_App_Startup_b_46_1_void_0031:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Universal_App_Startup_b_46_1_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Universal_App_Startup_b_46_1__void, .-m_Skymu_Universal_App_Startup_b_46_1__void

    .globl m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_0__void
    .type m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_0__void, @function
m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_0__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_0_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_0__void, .-m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_0__void

    .globl m_Skymu_Universal_c_DisplayClass42_0_PluginDialogHandler_b_0__void
    .type m_Skymu_Universal_c_DisplayClass42_0_PluginDialogHandler_b_0__void, @function
m_Skymu_Universal_c_DisplayClass42_0_PluginDialogHandler_b_0__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Universal_c_DisplayClass42_0_PluginDialogHandler_b_0_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Universal_c_DisplayClass42_0_PluginDialogHandler_b_0__void, .-m_Skymu_Universal_c_DisplayClass42_0_PluginDialogHandler_b_0__void

    .globl m_Skymu_Universal_cctor__void
    .type m_Skymu_Universal_cctor__void, @function
m_Skymu_Universal_cctor__void:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Universal_cctor_void(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Universal_cctor__void, .-m_Skymu_Universal_cctor__void

    .globl m_Skymu_Universal_Close__ref
    .type m_Skymu_Universal_Close__ref, @function
m_Skymu_Universal_Close__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Universal_Close_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Universal_Close__ref, .-m_Skymu_Universal_Close__ref

    .globl m_Skymu_Universal_ShowMessage__ref_ref_ref
    .type m_Skymu_Universal_ShowMessage__ref_ref_ref, @function
m_Skymu_Universal_ShowMessage__ref_ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Universal_ShowMessage_ref_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Universal_ShowMessage__ref_ref_ref, .-m_Skymu_Universal_ShowMessage__ref_ref_ref

    .globl m_Skymu_Universal_NotImplemented__ref
    .type m_Skymu_Universal_NotImplemented__ref, @function
m_Skymu_Universal_NotImplemented__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Universal_NotImplemented_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Universal_NotImplemented__ref, .-m_Skymu_Universal_NotImplemented__ref

    .globl m_Skymu_Universal_OpenURL__ref_ref
    .type m_Skymu_Universal_OpenURL__ref_ref, @function
m_Skymu_Universal_OpenURL__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Universal_OpenURL_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Universal_OpenURL__ref_ref, .-m_Skymu_Universal_OpenURL__ref_ref

    .globl m_Skymu_Universal_OnStartup_b_59_0__ref_ref
    .type m_Skymu_Universal_OnStartup_b_59_0__ref_ref, @function
m_Skymu_Universal_OnStartup_b_59_0__ref_ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Universal_OnStartup_b_59_0_ref_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Universal_OnStartup_b_59_0__ref_ref, .-m_Skymu_Universal_OnStartup_b_59_0__ref_ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Universal_c_cctor_void:
    .asciz "Skymu.Universal/'<>c'"

.LN_1_m_Skymu_Universal_c_cctor_void:
    .asciz "<>9"

.LN_0_m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void:
    .asciz "e"

.LS_1_m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_1_void:
    .short 67, 111, 112, 105, 101, 100, 32, 116, 111, 32, 99, 108, 105, 112, 98, 111, 97, 114, 100, 46

.LN_0_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void:
    .asciz "CS$<>8__locals1"

.LN_1_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void:
    .asciz "e"

.LN_2_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_1_void:
    .asciz "dialog"

.LN_0_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void:
    .asciz "CS$<>8__locals1"

.LN_1_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void:
    .asciz "e"

.LN_2_m_Skymu_Universal_c_DisplayClass42_1_PluginDialogHandler_b_2_void:
    .asciz "dialog"

.LN_0_m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void:
    .asciz "ActiveViewModel"

.LN_1_m_Skymu_Universal_c_DisplayClass43_0_PluginNotificationHandler_b_0_void:
    .asciz "e"

.LN_0_m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref:
    .asciz "displayName"

.LN_1_m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref:
    .asciz "displayName"

.LN_2_m_Skymu_Universal_c_DisplayClass45_0_GetCultureCode_b_0_ref:
    .asciz "displayName"

.LN_0_m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void:
    .asciz "ActiveViewModel"

.LN_1_m_Skymu_Universal_c_DisplayClass47_0_URIHandler_b_0_void:
    .asciz "found"

.LN_0_m_Skymu_Universal_c_DisplayClass53_0_Close_b_0_void:
    .asciz "dialog"

.LN_0_m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_0_void:
    .asciz "frame"

.LN_0_m_Skymu_Universal_c_DisplayClass55_0_ExceptionHandler_b_1_void:
    .asciz "page"

.LN_0_m_Skymu_Universal_c_DisplayClass59_0_OnStartup_b_1_void:
    .asciz "dialog"

.LN_0_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_2_ref_ref:
    .asciz "notWebpage"

.LN_0_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_0_void:
    .asciz "dialog"

.LN_0_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void:
    .asciz "url"

.LN_1_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void:
    .asciz "System.Diagnostics.ProcessStartInfo"

.LN_2_m_Skymu_Universal_c_DisplayClass61_0_OpenURL_b_1_void:
    .asciz "dialog"

.LS_0_m_Skymu_Universal_get_Lang_void:
    .short 76, 97, 110, 103

.LN_0_m_Skymu_Universal_add_ThemeChanged_ref:
    .asciz "ThemeChanged"

.LN_1_m_Skymu_Universal_add_ThemeChanged_ref:
    .asciz "ThemeChanged"

.LN_0_m_Skymu_Universal_remove_ThemeChanged_ref:
    .asciz "ThemeChanged"

.LN_1_m_Skymu_Universal_remove_ThemeChanged_ref:
    .asciz "ThemeChanged"

.LN_0_m_Skymu_Universal_get_IsDarkTheme_void:
    .asciz "_isDarkTheme"

.LN_0_m_Skymu_Universal_set_IsDarkTheme_v:
    .asciz "_isDarkTheme"

.LN_1_m_Skymu_Universal_set_IsDarkTheme_v:
    .asciz "_isDarkTheme"

.LN_2_m_Skymu_Universal_set_IsDarkTheme_v:
    .asciz "ThemeChanged"

.LN_0_m_Skymu_Universal_PluginPopup_ref_ref_ref_v:
    .asciz "Skymu.Universal/'<>c__DisplayClass41_0'"

.LN_1_m_Skymu_Universal_PluginPopup_ref_ref_ref_v:
    .asciz "sender"

.LN_2_m_Skymu_Universal_PluginPopup_ref_ref_ref_v:
    .asciz "itype"

.LN_3_m_Skymu_Universal_PluginPopup_ref_ref_ref_v:
    .asciz "e"

.LN_4_m_Skymu_Universal_PluginPopup_ref_ref_ref_v:
    .asciz "prefix"

.LN_5_m_Skymu_Universal_PluginPopup_ref_ref_ref_v:
    .asciz "System.Action"

.LN_0_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "Skymu.Universal/'<>c__DisplayClass42_0'"

.LN_1_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "e"

.LN_2_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "sender"

.LN_3_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "e"

.LN_4_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "sender"

.LN_5_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "e"

.LS_6_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .short 87, 97, 114, 110, 105, 110, 103, 32, 102, 114, 111, 109, 32, 112, 108, 117, 103, 105, 110, 32

.LN_7_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "sender"

.LN_8_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "e"

.LS_9_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .short 69, 114, 114, 111, 114, 32, 105, 110, 32, 112, 108, 117, 103, 105, 110, 32

.LN_10_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "sender"

.LN_11_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "e"

.LS_12_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .short 77, 101, 115, 115, 97, 103, 101, 32, 102, 114, 111, 109, 32, 112, 108, 117, 103, 105, 110, 32

.LN_13_m_Skymu_Universal_PluginDialogHandler_ref_ref:
    .asciz "System.Action"

.LN_0_m_Skymu_Universal_PluginNotificationHandler_ref_ref:
    .asciz "Skymu.Universal/'<>c__DisplayClass43_0'"

.LN_1_m_Skymu_Universal_PluginNotificationHandler_ref_ref:
    .asciz "e"

.LN_2_m_Skymu_Universal_PluginNotificationHandler_ref_ref:
    .asciz "System.Action"

.LN_0_m_Skymu_Universal_GetCultureCode_ref:
    .asciz "Skymu.Universal/'<>c__DisplayClass45_0'"

.LN_1_m_Skymu_Universal_GetCultureCode_ref:
    .asciz "displayName"

.LN_2_m_Skymu_Universal_GetCultureCode_ref:
    .asciz "bool>"

.LS_3_m_Skymu_Universal_GetCultureCode_ref:
    .short 101, 110, 45, 85, 83

.LN_0_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "System.Globalization.CultureInfo"

.LN_1_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "Theme"

.LS_2_m_Skymu_Universal_App_Startup_ref_ref:
    .short 83, 107, 121, 112, 101, 55

.LS_3_m_Skymu_Universal_App_Startup_ref_ref:
    .short 83, 107, 121, 112, 101, 54

.LS_4_m_Skymu_Universal_App_Startup_ref_ref:
    .short 83, 107, 121, 112, 101, 52

.LS_5_m_Skymu_Universal_App_Startup_ref_ref:
    .short 83, 107, 121, 112, 101, 53

.LN_6_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "Skymu.Skype7.Login"

.LS_7_m_Skymu_Universal_App_Startup_ref_ref:
    .short 83, 101, 116, 116, 105, 110, 103, 115, 46, 65, 99, 116, 105, 118, 101, 84, 97, 98

.LS_8_m_Skymu_Universal_App_Startup_ref_ref:
    .short 35, 48, 48, 57, 53, 99, 99

.LN_9_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LS_10_m_Skymu_Universal_App_Startup_ref_ref:
    .short 83, 101, 116, 116, 105, 110, 103, 115, 46, 65, 99, 116, 105, 118, 101, 84, 97, 98, 84, 101, 120, 116

.LN_11_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "System.Windows.Media.SolidColorBrush"

.LN_12_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "Skymu.Skype6.Login"

.LN_13_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "Skymu.Skype4.Login"

.LN_14_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "Skymu.Skype5.Login"

.LN_15_m_Skymu_Universal_App_Startup_ref_ref:
    .asciz "System.Threading.Tasks.Task>"

.LS_0_m_Skymu_Universal_URIHandler_ref:
    .short 63

.LS_1_m_Skymu_Universal_URIHandler_ref:
    .short 35

.LS_2_m_Skymu_Universal_URIHandler_ref:
    .short 63

.LN_3_m_Skymu_Universal_URIHandler_ref:
    .asciz "ActiveViewModel"

.LN_4_m_Skymu_Universal_URIHandler_ref:
    .asciz "Skymu.Universal/'<>c__DisplayClass47_0'"

.LN_5_m_Skymu_Universal_URIHandler_ref:
    .asciz "found"

.LN_6_m_Skymu_Universal_URIHandler_ref:
    .asciz "ActiveViewModel"

.LN_7_m_Skymu_Universal_URIHandler_ref:
    .asciz "ConversationList"

.LN_8_m_Skymu_Universal_URIHandler_ref:
    .asciz "found"

.LN_9_m_Skymu_Universal_URIHandler_ref:
    .asciz "found"

.LN_10_m_Skymu_Universal_URIHandler_ref:
    .asciz "ActiveViewModel"

.LN_11_m_Skymu_Universal_URIHandler_ref:
    .asciz "ContactList"

.LN_12_m_Skymu_Universal_URIHandler_ref:
    .asciz "found"

.LN_13_m_Skymu_Universal_URIHandler_ref:
    .asciz "found"

.LN_14_m_Skymu_Universal_URIHandler_ref:
    .asciz "System.Action"

.LN_0_m_Skymu_Universal_Restart_void:
    .asciz "mutex"

.LN_1_m_Skymu_Universal_Restart_void:
    .asciz "mutex"

.LS_0_m_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref:
    .short 83, 107, 121, 109, 117, 32, 69, 120, 99, 101, 112, 116, 105, 111, 110, 32, 72, 97, 110, 100, 108, 105, 110, 103, 58, 32, 67, 117, 114, 114, 101, 110, 116, 68, 111, 109, 97, 105, 110, 32, 110, 111, 110, 45, 101, 120, 99, 101, 112, 116, 105, 111, 110, 32, 111, 98, 106, 101, 99, 116, 32, 116, 104, 114, 111, 119, 110, 32, 111, 102, 32, 97, 110, 32, 117, 110, 107, 110, 111, 119, 110, 32, 110, 97, 116, 117, 114, 101, 46, 10, 10

.LN_1_m_Skymu_Universal_CurrentDomain_UnhandledException_ref_ref:
    .asciz "System.Exception"

.LN_0_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "Skymu.Universal/'<>c__DisplayClass55_0'"

.LN_1_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "Skymu.Forms.Pages.ErrorWindow"

.LN_2_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "page"

.LN_3_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "page"

.LN_4_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "Skymu.Forms.WindowBase"

.LS_5_m_Skymu_Universal_ExceptionHandler_ref:
    .short 84, 104, 97, 116, 32, 119, 97, 115, 110, 39, 116, 32, 115, 117, 112, 112, 111, 115, 101, 100, 32, 116, 111, 32, 104, 97, 112, 112, 101, 110, 46, 46, 46

.LS_6_m_Skymu_Universal_ExceptionHandler_ref:
    .short 32, 69, 114, 114, 111, 114

.LN_7_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "frame"

.LN_8_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "frame"

.LN_9_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "System.Action"

.LN_10_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "frame"

.LS_11_m_Skymu_Universal_ExceptionHandler_ref:
    .short 115, 90, 65, 80, 66, 85, 84, 84, 79, 78, 95, 67, 76, 79, 83, 69

.LN_12_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "frame"

.LN_13_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "System.Action"

.LN_14_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "frame"

.LS_15_m_Skymu_Universal_ExceptionHandler_ref:
    .short 67, 111, 112, 121, 32, 116, 111, 32, 99, 108, 105, 112, 98, 111, 97, 114, 100

.LN_16_m_Skymu_Universal_ExceptionHandler_ref:
    .asciz "frame"

.LS_0_m_Skymu_Universal_WriteToPipe_ref:
    .short 46

.LS_1_m_Skymu_Universal_WriteToPipe_ref:
    .short 83, 107, 121, 109, 117, 80, 105, 112, 101

.LN_2_m_Skymu_Universal_WriteToPipe_ref:
    .asciz "System.IO.Pipes.NamedPipeClientStream"

.LN_3_m_Skymu_Universal_WriteToPipe_ref:
    .asciz "System.IO.StreamWriter"

.LN_0_m_Skymu_Universal_OnStartup_ref:
    .asciz "System.Windows.Threading.DispatcherUnhandledExceptionEventHandler"

.LN_1_m_Skymu_Universal_OnStartup_ref:
    .asciz "System.UnhandledExceptionEventHandler"

.LS_2_m_Skymu_Universal_OnStartup_ref:
    .short 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 102, 105, 110, 100, 32, 97, 110, 121, 32, 99, 111, 109, 112, 97, 116, 105, 98, 108, 101, 32, 99, 111, 108, 111, 114, 119, 97, 121, 115, 32, 105, 110, 32, 100, 105, 114, 101, 99, 116, 111, 114, 121, 32, 47, 67, 111, 108, 111, 114, 119, 97, 121, 115, 46

.LN_3_m_Skymu_Universal_OnStartup_ref:
    .asciz "System.Exception"

.LN_4_m_Skymu_Universal_OnStartup_ref:
    .asciz "SkymuHttpClient"

.LS_5_m_Skymu_Universal_OnStartup_ref:
    .short 83, 107, 121, 109, 117, 67, 108, 105, 101, 110, 116, 45

.LN_6_m_Skymu_Universal_OnStartup_ref:
    .asciz "BUILD_INFO"

.LS_7_m_Skymu_Universal_OnStartup_ref:
    .short 58

.LS_8_m_Skymu_Universal_OnStartup_ref:
    .short 45, 45

.LN_9_m_Skymu_Universal_OnStartup_ref:
    .asciz "Default"

.LN_10_m_Skymu_Universal_OnStartup_ref:
    .asciz "System.ComponentModel.PropertyChangedEventHandler"

.LS_0_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 65, 101, 114, 111, 46, 78, 111, 114, 109, 97, 108, 67, 111, 108, 111, 114

.LS_1_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 70, 108, 117, 101, 110, 116

.LS_2_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 112, 97, 99, 107, 58, 47, 47, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 58, 44, 44, 44, 47, 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 47, 70, 108, 117, 101, 110, 116, 47, 84, 104, 101, 109, 101, 115, 47, 70, 108, 117, 101, 110, 116, 46

.LS_3_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 46, 120, 97, 109, 108

.LN_4_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .asciz "System.Uri"

.LN_5_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .asciz "System.Windows.ResourceDictionary"

.LS_6_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 0

.LS_7_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 67, 108, 97, 115, 115, 105, 99

.LS_8_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107, 46, 67, 108, 97, 115, 115, 105, 99

.LS_9_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 76, 117, 110, 97

.LS_10_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107, 46, 76, 117, 110, 97

.LS_11_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 82, 111, 121, 97, 108, 101

.LS_12_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107, 46, 82, 111, 121, 97, 108, 101

.LS_13_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 65, 101, 114, 111, 50

.LS_14_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107, 46, 65, 101, 114, 111, 50

.LS_15_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 65, 101, 114, 111, 76, 105, 116, 101

.LS_16_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107, 46, 65, 101, 114, 111, 76, 105, 116, 101

.LS_17_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 65, 101, 114, 111

.LS_18_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107, 46, 65, 101, 114, 111

.LS_19_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 67, 108, 97, 115, 115, 105, 99

.LS_20_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 80, 114, 101, 115, 101, 110, 116, 97, 116, 105, 111, 110, 70, 114, 97, 109, 101, 119, 111, 114, 107, 46, 67, 108, 97, 115, 115, 105, 99

.LS_21_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 47

.LS_22_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 116, 104, 101, 109, 101, 115, 47

.LS_23_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .short 46, 120, 97, 109, 108

.LN_24_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .asciz "System.Uri"

.LN_25_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .asciz "System.Windows.ResourceDictionary"

.LN_26_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .asciz "System.Windows.ResourceDictionary"

.LN_27_m_Skymu_Universal_ApplyPresentationFramework_ref:
    .asciz "Empty"

.LN_0_m_Skymu_Universal_OnExit_ref:
    .asciz "SignedIn"

.LS_1_m_Skymu_Universal_OnExit_ref:
    .short 76, 79, 71, 79, 85, 84

.LN_0_m_Skymu_Universal_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_1_m_Skymu_Universal_InitializeComponent_void:
    .asciz "_contentLoaded"

.LN_2_m_Skymu_Universal_InitializeComponent_void:
    .asciz "System.Windows.StartupEventHandler"

.LS_3_m_Skymu_Universal_InitializeComponent_void:
    .short 47, 83, 107, 121, 109, 117, 59, 99, 111, 109, 112, 111, 110, 101, 110, 116, 47, 97, 112, 112, 46, 120, 97, 109, 108

.LN_4_m_Skymu_Universal_InitializeComponent_void:
    .asciz "System.Uri"

.LN_0_m_Skymu_Universal_Main_void:
    .asciz "Skymu.Universal"

.LS_0_m_Skymu_Universal_App_Startup_b_46_0_void:
    .short 83, 107, 121, 109, 117, 80, 105, 112, 101

.LN_1_m_Skymu_Universal_App_Startup_b_46_0_void:
    .asciz "System.IO.Pipes.NamedPipeServerStream"

.LN_2_m_Skymu_Universal_App_Startup_b_46_0_void:
    .asciz "System.IO.StreamReader"

.LS_3_m_Skymu_Universal_App_Startup_b_46_0_void:
    .short 87, 73, 78, 68, 79, 87, 95, 65, 67, 84, 73, 86, 65, 84, 69

.LN_4_m_Skymu_Universal_App_Startup_b_46_0_void:
    .asciz "System.Action"

.LS_5_m_Skymu_Universal_App_Startup_b_46_0_void:
    .short 85, 82, 73, 58

.LS_6_m_Skymu_Universal_App_Startup_b_46_0_void:
    .short 58

.LSTUB_m_Skymu_Universal_c_DisplayClass41_0_PluginPopup_b_0_void:
    .asciz "Skymu.Universal/<>c__DisplayClass41_0::'<PluginPopup>b__0'  [constructor with 17 arguments (limit 5)]"

.LSTUB_m_Skymu_Universal_c_DisplayClass42_0_PluginDialogHandler_b_0_void:
    .asciz "Skymu.Universal/<>c__DisplayClass42_0::'<PluginDialogHandler>b__0'  [constructor with 17 arguments (limit 5)]"

.LSTUB_m_Skymu_Universal_cctor_void:
    .asciz "Skymu.Universal::.cctor  [constructor with 7 arguments (limit 5)]"

.LSTUB_m_Skymu_Universal_Close_ref:
    .asciz "Skymu.Universal::Close  [constructor with 17 arguments (limit 5)]"

.LSTUB_m_Skymu_Universal_ShowMessage_ref_ref_ref:
    .asciz "Skymu.Universal::ShowMessage  [constructor with 17 arguments (limit 5)]"

.LSTUB_m_Skymu_Universal_NotImplemented_ref:
    .asciz "Skymu.Universal::NotImplemented  [constructor with 17 arguments (limit 5)]"

.LSTUB_m_Skymu_Universal_OpenURL_ref_ref:
    .asciz "Skymu.Universal::OpenURL  [stack underflow at IL_009c (call): depth 0 < pops 1]"

.LSTUB_m_Skymu_Universal_OnStartup_b_59_0_ref_ref:
    .asciz "Skymu.Universal::'<OnStartup>b__59_0'  [inconsistent stack depth at IL_0114: 1 vs 0]"

    .section .note.GNU-stack,"",@progbits
