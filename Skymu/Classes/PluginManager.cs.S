# Classes/PluginManager.cs
    .text

.globl m_Skymu_Plugins_PluginManager_DisposeAll__void
.type m_Skymu_Plugins_PluginManager_DisposeAll__void, @function
m_Skymu_Plugins_PluginManager_DisposeAll__void:
    push %rbp
    mov %rsp, %rbp
    sub $96, %rsp
    mov %r12, -8(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0000:
    lea .LN_0_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0005:
    mov -48(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0011
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0007:
    lea .LN_1_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_000c:
    mov -48(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_Dispose__void
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0011:
    lea .LN_2_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0016:
    mov -48(%rbp), %rax
    test %rax, %rax
    jne .Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0019
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0018:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0019:
    lea .LN_3_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_global_slot
    mov (%rax), %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_001e:
    mov -48(%rbp), %rax
    mov %rax, -16(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_001f:
    mov $0, %rax
    mov %rax, -48(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0020:
    mov -48(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0021:
    jmp .Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0064
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0023:
    mov -16(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0024:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0025:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    mov 16(%rax,%rcx,8), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0026:
    mov -64(%rbp), %rax
    mov %rax, -32(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0027:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0028:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0029:
    lea m_Skymu_Universal_PluginDialogHandler__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_002f:
    lea .LN_4_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_DialogBottle_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0034:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_remove_DialogTube__gen
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0039:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_003a:
    xor %eax, %eax
    mov %rax, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_003b:
    lea m_Skymu_Universal_PluginNotificationHandler__ref_ref(%rip), %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0041:
    lea .LN_5_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_obj_alloc
    mov %rax, %r12
    mov -80(%rbp), %rdx
    mov -72(%rbp), %rsi
    mov %r12, %rdi
    call m_Yggdrasil_Bottles_MessageBottle_ctor__ref_v
    mov %r12, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0046:
    mov -72(%rbp), %rsi
    mov -64(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_Yggdrasil_ICore_remove_MessageTube__gen
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_004b:
    mov -32(%rbp), %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_004c:
    mov -64(%rbp), %rax
    test %rax, %rax
    setne %al
    movzbl %al, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0051:
    mov -72(%rbp), %rax
    mov %rax, -40(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0052:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0053:
    mov -72(%rbp), %rax
    test %rax, %rax
    je .Lm_Skymu_Plugins_PluginManager_DisposeAll_void_005b
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0055:
    mov -40(%rbp), %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0056:
    mov -72(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_IDisposable_Dispose__void
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_005b:
    jmp .Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0060
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0060:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0061:
    mov $1, %rax
    mov %rax, -80(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0062:
    mov -80(%rbp), %rcx
    mov -72(%rbp), %rax
    add %ecx, %eax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0063:
    mov -72(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0064:
    mov -24(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -72(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0065:
    mov -16(%rbp), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0066:
    mov -56(%rbp), %rax
    mov 8(%rax), %rax
    mov %rax, -56(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0067:
    mov -64(%rbp), %rax
    movslq %eax, %rax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0068:
    mov -72(%rbp), %rcx
    mov -64(%rbp), %rax
    cmp %ecx, %eax
    jl .Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0023
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_006a:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_006b:
    lea .LN_6_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_global_slot
    mov -64(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0070:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0071:
    lea .LN_7_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_global_slot
    mov -64(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0076:
    xor %eax, %eax
    mov %rax, -64(%rbp)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_0077:
    lea .LN_8_m_Skymu_Plugins_PluginManager_DisposeAll_void(%rip), %rdi
    call shim_global_slot
    mov -64(%rbp), %rcx
    mov %rcx, (%rax)
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_007c:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Plugins_PluginManager_DisposeAll_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Plugins_PluginManager_DisposeAll__void, .-m_Skymu_Plugins_PluginManager_DisposeAll__void

.globl m_Skymu_Plugins_PluginManager_ctor__void
.type m_Skymu_Plugins_PluginManager_ctor__void, @function
m_Skymu_Plugins_PluginManager_ctor__void:
    push %rbp
    mov %rsp, %rbp
    sub $32, %rsp
    mov %r12, -8(%rbp)
    mov %rdi, -16(%rbp)
.Lm_Skymu_Plugins_PluginManager_ctor_void_0000:
    mov -16(%rbp), %rax
    mov %rax, -24(%rbp)
.Lm_Skymu_Plugins_PluginManager_ctor_void_0001:
    mov -24(%rbp), %rdi
    test %rdi, %rdi
    jne 1f
    lea .Lnullmsg(%rip), %rdi
    call shim_nullref
1:
    call m_System_Object_ctor__void
.Lm_Skymu_Plugins_PluginManager_ctor_void_0006:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.Lm_Skymu_Plugins_PluginManager_ctor_void_end:
    mov -8(%rbp), %r12
    mov %rbp, %rsp
    pop %rbp
    ret
.size m_Skymu_Plugins_PluginManager_ctor__void, .-m_Skymu_Plugins_PluginManager_ctor__void

    .globl m_Skymu_Plugins_PluginManager_Load__ref
    .type m_Skymu_Plugins_PluginManager_Load__ref, @function
m_Skymu_Plugins_PluginManager_Load__ref:
    push %rbp
    mov %rsp, %rbp
    lea .LSTUB_m_Skymu_Plugins_PluginManager_Load_ref(%rip), %rdi
    call shim_unimplemented
    xor %eax, %eax
    pop %rbp
    ret
    .size m_Skymu_Plugins_PluginManager_Load__ref, .-m_Skymu_Plugins_PluginManager_Load__ref

.Lnullmsg:
    .asciz "null receiver"

    .section .rodata
.LN_0_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "Plugin"

.LN_1_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "Plugin"

.LN_2_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "PluginList"

.LN_3_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "PluginList"

.LN_4_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "Yggdrasil.Bottles.DialogBottle>"

.LN_5_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "Yggdrasil.Bottles.MessageBottle>"

.LN_6_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "PluginList"

.LN_7_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "Plugin"

.LN_8_m_Skymu_Plugins_PluginManager_DisposeAll_void:
    .asciz "CallPlugin"

.LSTUB_m_Skymu_Plugins_PluginManager_Load_ref:
    .asciz "Skymu.Plugins.PluginManager::Load  [ldtoken (metadata token)]"

    .section .note.GNU-stack,"",@progbits
